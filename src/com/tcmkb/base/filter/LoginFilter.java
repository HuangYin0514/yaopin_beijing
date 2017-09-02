package com.tcmkb.base.filter;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginFilter implements Filter {

    public FilterConfig config;

    @Override
    public void destroy() {
        config = null;
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {


        System.out.println(request.getRemoteHost() + ":" + request.getRemotePort() + "接入请求");
        HttpSession session = ((HttpServletRequest) request).getSession(true);
        Object user = session.getAttribute("user");


        String ignoresStrings = config.getInitParameter("ignores");
        String logonStrings = "systemConfigs.php";
        String includeStrings = ".php";    // 过滤资源后缀参数
        String[] ignoresList = ignoresStrings.split(";");
        String[] includeList = includeStrings.split(";");
        String[] logonList = logonStrings.split(";");

        if (this.isContains(((HttpServletRequest) request).getRequestURI(), ignoresList)) {// 对静态资源不进行过滤
            chain.doFilter(request, response);
            return;
        }
        if (this.isContains(((HttpServletRequest) request).getRequestURI(), logonList)) {// 对登录页面不进行过滤
            chain.doFilter(request, response);
            return;
        }
        if (!this.isContains(((HttpServletRequest) request).getRequestURI(), includeList)) {// 只对指定过滤参数后缀进行过滤
            chain.doFilter(request, response);
            return;
        }
        if(user==null){
            ((HttpServletResponse)response).sendRedirect("http://localhost:8080/tcmkb/systemConfigs.php");
        }else{
            chain.doFilter(request, response);

        }

    }
    public static boolean isContains(String container, String[] regx) {
        boolean result = false;

        for (int i = 0; i < regx.length; i++) {
            if (container.indexOf(regx[i]) != -1) {
                return true;
            }
        }
        return result;
    }
    @Override
    public void init(FilterConfig config) throws ServletException {
      this.config = config;
    }


}
