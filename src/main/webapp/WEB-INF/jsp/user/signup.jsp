<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>MovieFlix</title>
    <meta name="description" content="This is a free Bootstrap landing page theme created for BootstrapZero. Feature video background and one page design." />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="generator" content="Codeply">
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />" />
    <link rel="stylesheet" href="<c:url value="/resources/css/animate.min.css" />" />
    <link rel="stylesheet" href="<c:url value="/resources/css/ionicons.min.css" />" />
    <link rel="stylesheet" href="<c:url value="/resources/css/styles.css" />" />
  </head>
  <body>
  
    <nav id="topNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="<c:url value="/login"/>"><i class="ion-ios-analytics-outline"></i> MovieFlix</a>
            </div>
    </div>
    </nav>
     <header id="first">
        <div class="header-content">
            <div class="inner">
                <h1 class="cursive">Sign Up to MovieFlix</h1>
                <h4>MovieFlix - just a faster and better place for watching online movies for free.</h4>
                <hr>
              <div class="col-lg-6 col-lg-offset-3 col-md-8 col-md-offset-2 text-center">
		            
		             <spring:url value="/user/register" var="registerURL" />
					<div class="col-lg-10 col-lg-offset-1 text-center">
					<form:form action="${registerURL }" modelAttribute="userForm" method="GET">
					<div class="col-md-12">
					<label></label>
					  <form:input path="username" class="form-control" placeholder="Username" type="text" />
					  <form:errors path="username" />
					  <br />
					 </div>
					 <div class="col-md-12">
					  <label></label>
					  <form:password path="password"  placeholder="Password" class="form-control" />
					  <form:errors path="password" />
					  <br/>
					  </div>
					  <div class="col-md-12">
					  <label></label>
					  <form:password path="confirmPassword" placeholder="Confirm password" class="form-control" />
					  <form:errors path="confirmPassword" />
					  <br/>
					  </div>
					  <div class="col-md-4 col-md-offset-4">
					  <form class="page-scroll" data-toggle="modal" title="Login" action="#aboutModal">
					  <button class="btn btn-default btn-lg" type="submit">Sign Up<i class="ion-android-arrow-forward"></i></button>
					  <br/><br/>
					  </form>
						</div>
					</form:form>
					</div>
					<br/>
					<a href="<c:url value="/login"/>" class="btn btn-primary btn-xs">Already have an Account ? Sign In here</a>
                </div>
    </div>
		 </div>
    </header>
    <footer id="footer">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-6 col-sm-3 column">
                    <h4>Information</h4>
                    <ul class="list-unstyled">
                        <li><a href="">Products</a></li>
                        <li><a href="">Services</a></li>
                        <li><a href="">Benefits</a></li>
                        <li><a href="">Developers</a></li>
                    </ul>
                </div>
                <div class="col-xs-6 col-sm-3 column">
                    <h4>About</h4>
                    <ul class="list-unstyled">
                        <li><a href="#">Contact Us</a></li>
                        <li><a href="#">Delivery Information</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Terms &amp; Conditions</a></li>
                    </ul>
                </div>
                <div class="col-xs-12 col-sm-3 column">
                    <h4>Stay Posted</h4>
                    <form>
                        <div class="form-group">
                          <input type="text" class="form-control" title="No spam, we promise!" placeholder="Tell us your email">
                        </div>
                        <div class="form-group">
                          <button class="btn btn-primary" data-toggle="modal" data-target="#alertModal" type="button">Subscribe for updates</button>
                        </div>
                    </form>
                </div>
                <div class="col-xs-12 col-sm-3 text-right">
                    <h4>Follow</h4>
                    <ul class="list-inline">
                      <li><a rel="nofollow" href="" title="Twitter"><i class="icon-lg ion-social-twitter-outline"></i></a>&nbsp;</li>
                      <li><a rel="nofollow" href="" title="Facebook"><i class="icon-lg ion-social-facebook-outline"></i></a>&nbsp;</li>
                      <li><a rel="nofollow" href="" title="Dribble"><i class="icon-lg ion-social-dribbble-outline"></i></a></li>
                    </ul>
                </div>
            </div>
            <br/>
            <span class="pull-right text-muted small"><a href="http://www.bootstrapzero.com">Landing Zero by BootstrapZero</a> ©2015 Company</span>
        </div>
    </footer>
     </body>
</html>