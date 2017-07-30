<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MovieFlix</title>
<meta name="description"
	content="This is a free Bootstrap landing page theme created for BootstrapZero. Feature video background and one page design." />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="generator" content="Codeply">
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.min.css" />" />
<link rel="stylesheet"
	href="<c:url value="/resources/css/animate.min.css" />" />
<link rel="stylesheet"
	href="<c:url value="/resources/css/ionicons.min.css" />" />
<link rel="stylesheet"
	href="<c:url value="/resources/css/styles.css" />" />
</head>
<body>
	<nav id="topNav" class="navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand page-scroll" href="#first"><i
				class="ion-ios-analytics-outline"></i> MovieFlix</a>
		</div>
		<div class="navbar-collapse collapse" id="bs-navbar">
			<ul class="nav navbar-nav navbar-right">
				<li><a href='<c:url value="/logout"/>'>Logout</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<section class="bg-primary" id="one">
	<div class="container">
		<div class="row">
				<spring:url value="/movies/saveMovie" var="saveMovie" />
				<form:form method="POST" action="${saveMovie }" modelAttribute="movieValue">
				<form:hidden  path="id" />
				<div>
					<div align="center">
						<img src="${movieValue.poster }" title="album-name" alt=" "
							height="300" width="200" />
					</div>
					<br />
					<table class="table" border=1>
						<tbody>
								<tr>
								<td><strong>Title: </strong><form:input path="title" class="form-control" placeholder="Title" type="text" /></td>
							</tr>
							<tr>
								<td><strong>Year: </strong><form:input path="year" class="form-control" placeholder="Year" type="text" /></td>
								
							</tr>
							<tr>
								<td><strong>Rated: </strong><form:input path="rated" class="form-control" placeholder="Year" type="text" /></td>
								</tr>
							<tr>
								<td><strong>Released: </strong><form:input path="released" class="form-control" placeholder="Year" type="text" /></td>
								</tr>
							<tr>
								<td><strong>Runtime: </strong><form:input path="runtime" class="form-control" placeholder="Year" type="text" /></td>
								</tr>
							<tr>
								<td><strong>Genre: </strong><form:input path="genre" class="form-control" placeholder="Year" type="text" /></td>
								</tr>
							<tr>
								<td><strong>Director: </strong><form:input path="director" class="form-control" placeholder="Year" type="text" /></td>
								</tr>
							<tr>
								<td><strong>Writer: </strong><form:input path="writer" class="form-control" placeholder="Year" type="text" /></td>
								</tr>
							<tr>
								<td><strong>Actors: </strong><form:input path="actors" class="form-control" placeholder="Year" type="text" /></td>
								</tr>
							<tr>
								<td><strong>Plot: </strong><form:input path="plot" class="form-control" placeholder="Year" type="text" /></td>
								</tr>
							<tr>
								<td><strong>Language: </strong><form:input path="language" class="form-control" placeholder="Year" type="text" /></td>
								</tr>
							<tr>
								<td><strong>Country: </strong><form:input path="country" class="form-control" placeholder="Year" type="text" /></td>
								</tr>
							<tr>
								<td><strong>Awards: </strong><form:input path="awards" class="form-control" placeholder="Year" type="text" /></td>
								</tr>
							<tr>
								<td><strong>Poster: </strong><form:input path="poster" class="form-control" placeholder="Year" type="text" /></td>
								</tr>
							<tr>
								<td><strong>MetaScore: </strong><form:input path="metaScore" class="form-control" placeholder="Year" type="text" /></td>
								</tr>
							<tr>
								<td><strong>ImdbRating: </strong><form:input path="imdbRating" class="form-control" placeholder="Year" type="text" /></td>
								</tr>
							<tr>
								<td><strong>ImdbVotes: </strong><form:input path="imdbVotes" class="form-control" placeholder="Year" type="text" /></td>
								</tr>
							<tr>
								<td><strong>ImdbId: </strong><form:input path="imdbId" class="form-control" placeholder="Year" type="text" /></td>
								</tr>
							<tr>
								<td><strong>Type: </strong><form:input path="type" class="form-control" placeholder="Year" type="text" /></td>
								</tr>
						</tbody>
					</table>
					<div class="col-md-12" align="center">
                                <button type="submit" class="btn btn-default btn-xl">Save <i class="ion-android-arrow-forward"></i></button> &nbsp;
                                <a href="<c:url value="/home"/>" class="btn btn-primary btn-xl">Cancel</a>
                            </div>
				</div>
			</form:form>
			</div>
	</div>
	</section>
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
						<input type="text" class="form-control"
							title="No spam, we promise!" placeholder="Tell us your email">
					</div>
					<div class="form-group">
						<button class="btn btn-primary" data-toggle="modal"
							data-target="#alertModal" type="button">Subscribe for
							updates</button>
					</div>
				</form>
			</div>
			<div class="col-xs-12 col-sm-3 text-right">
				<h4>Follow</h4>
				<ul class="list-inline">
					<li><a rel="nofollow" href="" title="Twitter"><i
							class="icon-lg ion-social-twitter-outline"></i></a>&nbsp;</li>
					<li><a rel="nofollow" href="" title="Facebook"><i
							class="icon-lg ion-social-facebook-outline"></i></a>&nbsp;</li>
					<li><a rel="nofollow" href="" title="Dribble"><i
							class="icon-lg ion-social-dribbble-outline"></i></a></li>
				</ul>
			</div>
		</div>
		<br /> <span class="pull-right text-muted small"><a
			href="http://www.bootstrapzero.com">Landing Zero by BootstrapZero</a>
			©2015 Company</span>
	</div>
	</footer>
	<div id="galleryModal" class="modal fade" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-body">
					<img src="" id="galleryImage" class="img-responsive" />
					<p>
						<br />
						<button class="btn btn-primary btn-lg center-block"
							data-dismiss="modal" aria-hidden="true">
							Close <i class="ion-android-close"></i>
						</button>
					</p>
				</div>
			</div>
		</div>
	</div>
	<!--scripts loaded here -->
	<script src="<c:url value="/resources/js/jquery.min.js" />" /></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js" />" /></script>
	<script src="<c:url value="/resources/js/jquery.easing.min.js" />" /></script>
	<script src="<c:url value="/resources/js/wow.js" />" /></script>
	<script src="<c:url value="/resources/js/scripts.js" />" /></script>
</body>
<div id="edit-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">Movie Details</h4>
                </div>
                <div class="modal-body edit-content">
                    ...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</html>