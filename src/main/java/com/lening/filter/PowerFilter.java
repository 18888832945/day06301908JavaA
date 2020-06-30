package com.lening.filter;

import com.lening.entity.UserBean;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

/**
 * 创作时间：2020/4/13 15:28
 * 作者：李增强
 */

public class PowerFilter implements Filter {
    Set<String> noturls = new HashSet<String>();
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        String notCheckUrl = filterConfig.getInitParameter("notCheckUrl");
        for (String url : notCheckUrl.split(",")) {
            noturls.add(url.trim());
        }
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req =  (HttpServletRequest)request;
        String uri = req.getRequestURI();
        if(noturls.contains(uri)){
            chain.doFilter(request, response);
        }else{
            UserBean ub = (UserBean)req.getSession().getAttribute("ub");
            if(ub!=null){

                Set<String> urls = (Set<String>)req.getSession().getAttribute("urls");
                if(urls!=null){
                    uri = uri.substring(1);
                    if(urls.contains(uri)){
                        chain.doFilter(request, response);
                    }else{
                        request.setAttribute("msg", "非法访问，哥们你越权了！！！！");
                        request.getRequestDispatcher("index.jsp").forward(request, response);
                    }
                }
            }else{
                req.setAttribute("msg", "请先去登录！！！！");
                request.getRequestDispatcher("index.jsp").forward(req, response);
            }
        }

    }

    @Override
    public void destroy() {

    }
}
