package com.project.springai.configurations;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.boot.web.server.WebServerFactoryCustomizer;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.boot.web.servlet.server.ConfigurableServletWebServerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.io.IOException;

@Configuration
public class ServletConfig {

//    @Bean
//    public ServletRegistrationBean<HttpServlet> servletRegistration() {
//        ServletRegistrationBean<HttpServlet> servletRegistrationBean = new ServletRegistrationBean<>(
//                new CustomServlet(),"/customServlet");
//        servletRegistrationBean.setName("CustomServlet");
//        return servletRegistrationBean;
//    }
//
//    @Bean
//    public WebServerFactoryCustomizer<ConfigurableServletWebServerFactory> webServerFactoryCustomizer() {
//        return factory -> factory.setContextPath("/LeakyService");
//    }
//
//    public static class CustomServlet extends HttpServlet {
//        // Custom servlet implementation
//        @Override
//        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//            response.getWriter().write("Hello from Custom Servlet!");
//        }
//    }
}
