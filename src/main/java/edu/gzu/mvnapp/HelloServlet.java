package edu.gzu.mvnapp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

@WebServlet(urlPatterns = "/hello")
public class HelloServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        System.out.println(name);
        System.out.println("------------");
        System.out.println(req.getContextPath());
        resp.setContentType("text/html");
        PrintWriter writer = resp.getWriter();
        writer.write("<h1>hello, " + name + "!</h1>");
        writer.flush();

        //设置cookie
        Cookie cookie = new Cookie("name",name);
        cookie.setMaxAge(60 * 60);//默认单位为秒
        resp.addCookie(cookie);
        //可以添加多个cookie
        //resp.addCookie();

        //获取cookie
        Cookie[] cookies = req.getCookies();
        for (Cookie item : cookies){
            String j = item.getValue();
        }

        //测试header函数
        Enumeration cts = req.getHeaders("accept-encoding");
        while(cts.hasMoreElements()){
            System.out.println("accept-encoding="+cts.nextElement()+"<br>");
        }

    }
}
