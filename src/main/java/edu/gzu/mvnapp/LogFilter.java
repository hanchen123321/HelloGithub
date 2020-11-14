package edu.gzu.mvnapp;

import javax.servlet.Filter;
import javax.servlet.*;
import java.io.IOException;
import java.util.Date;


public class LogFilter implements Filter {

    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        String curData = new Date().toString();
        String address =servletRequest.getRemoteAddr();
        System.out.println(curData + " ip:" + address);
        filterChain.doFilter(servletRequest,servletResponse);
    }

    public void destroy() {
    }
}
