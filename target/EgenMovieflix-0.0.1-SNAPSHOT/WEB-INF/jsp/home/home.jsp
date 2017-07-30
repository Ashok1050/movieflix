<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
			<a class="navbar-brand page-scroll" href="#one"><i
				class="ion-ios-analytics-outline"></i> MovieFlix</a>
		</div>
		<div class="navbar-collapse collapse" id="bs-navbar">
			<ul class="nav navbar-nav">
                    <li>
                        <a class="page-scroll" href="#one">Movies</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#two">TV Series</a>
                    </li>
            </ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href='<c:url value="/logout"/>'>Logout</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<section class="bg-primary" id="one">
	<div class="container">
		<div class="row">
		<div align="center">
			<h1 class="cursive">
				Welcome
				<c:if test="${pageContext.request.userPrincipal.name != null}">${pageContext.request.userPrincipal.name}</c:if>
			</h1>
			<br />
			<h1 class="cursive">Watch Free Movies Online</h1>
			<h4>Welcome to the world of entertainment</h4>
			<hr>
			<br/><br/>
		</div>
			<h2 class="margin-top-0 text-primary">LATEST MOVIES ONLINE &nbsp;&nbsp;&nbsp;
			<a href="<c:url value="/homeSorted?sortVal=featured" />" class="btn btn-primary btn-lg">Featured</a> &nbsp;
			<a href="<c:url value="/homeSorted?sortVal=toprated" />" class="btn btn-primary btn-lg">Top Rated</a> &nbsp;
			<a href="<c:url value="/homeSorted?sortVal=latest" />" class="btn btn-primary btn-lg">Latest</a>
			</h2>
			
				<br>
			<div>
				<c:if test="${not empty movieList}">

					<ul>
						<c:forEach var="movie" items="${movieList}">
							<%-- <li>${movie.title}</li> --%>
							<c:if test="${movie.type =='movie'}">
							<div class="col-md-3 w3l-movie-gride-agile">
								<a href="#myModal" data-toggle="modal" data-target="#edit-modal" data-value='{"Title":"${movie.title}","Year":"${movie.year}", "Rated":"${movie.rated}", "Released":"${movie.released}",
								 "Runtime":"${movie.runtime}", "Genre":"${movie.genre}", "Director":"${movie.director}", "Writer":"${movie.writer}",
								  "Actors":"${movie.actors}", "Language":"${movie.language}", "Country":"${movie.country}", "Awards":"${movie.awards}",
								   "Poster":"${movie.poster}",  "ImdbRating":"${movie.imdbRating}", "ImdbVotes":"${movie.imdbVotes}"}'><img
									src="${movie.poster}"
									title="album-name" alt=" " height="300" width="200" />
									<br>
									${movie.title}
									</a>
									
										<h5>Year: ${movie.year} &nbsp;&nbsp;&nbsp; Rating: ${movie.imdbRating} &nbsp;&nbsp;&nbsp; <a href="<c:url value="/movies/editMovie/${movie.id}"/>">Edit</a></h5>
									
							</div>
							</c:if>
						</c:forEach>
					</ul>

				</c:if>
			</div>
		</div>
	</div>
	</section>
	<section id="two">
        <div class="container">
            <h2 class="margin-top-0 text-primary">LATEST TV SERIES ONLINE &nbsp;&nbsp;&nbsp;
			<a href="<c:url value="/homeSorted?sortVal=featured" />" class="btn btn-primary btn-lg">Featured</a> &nbsp;
			<a href="<c:url value="/homeSorted?sortVal=toprated" />" class="btn btn-primary btn-lg">Top Rated</a> &nbsp;
			<a href="<c:url value="/homeSorted?sortVal=latest" />" class="btn btn-primary btn-lg">Latest</a>
			</h2>
			
				<br>
			<div>
				<c:if test="${not empty movieList}">

					<ul>
						<c:forEach var="movie" items="${movieList}">
							<%-- <li>${movie.title}</li> --%>
							<c:if test="${movie.type =='series'}">
							<div class="col-md-3 w3l-movie-gride-agile">
								<a href="#myModal" data-toggle="modal" data-target="#edit-modal" data-value='{"Title":"${movie.title}","Year":"${movie.year}", "Rated":"${movie.rated}", "Released":"${movie.released}",
								 "Runtime":"${movie.runtime}", "Genre":"${movie.genre}", "Director":"${movie.director}", "Writer":"${movie.writer}",
								  "Actors":"${movie.actors}", "Language":"${movie.language}", "Country":"${movie.country}", "Awards":"${movie.awards}",
								   "Poster":"${movie.poster}",  "ImdbRating":"${movie.imdbRating}", "ImdbVotes":"${movie.imdbVotes}"}'><img
									src="${movie.poster}"
									title="album-name" alt=" " height="300" width="200" />
									<br>
									${movie.title}
									</a>
									
										<h5>Year: ${movie.year} &nbsp;&nbsp;&nbsp; Rating: ${movie.imdbRating}&nbsp;&nbsp;&nbsp; <a href="<c:url value="/movies/editMovie/${movie.id}"/>">Edit</a></h5>
									
							</div>
							</c:if>
						</c:forEach>
					</ul>

				</c:if>
			</div>
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
	<div id="aboutModal" class="modal fade" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
					<h2 class="text-center">Login</h2>
					<h5 class="text-center">A free entertainment places.</h5>
					<p class="text-justify">
					<form name="loginForm"
						action='<c:url value="j_spring_security_check"/>' method="post">
						<table>

							<tr>
								<td colspan="2">${msg }</td>
							</tr>
							<tr>
								<td>Username:</td>
								<td><input type="text" name="username" /></td>
							</tr>
							<tr>
								<td>Password:</td>
								<td><input type="password" name="password" /></td>
							</tr>
							<tr>
								<td>Remeber Me:</td>
								<td><input type="checkbox" name="rember-me" /></td>
							</tr>
							<tr>
								<td></td>
								<td>
									<button class="btn btn-primary btn-lg center-block"
										data-dismiss="modal" aria-hidden="true" type="submit">Login</button>
								</td>
							</tr>
							<tr>
								<td></td>
								<td><a href='<c:url value="/user/signup"/>'>Sign Up</a></td>
							</tr>
						</table>
					</form>
					</p>

					<br />

				</div>
			</div>
		</div>
	</div>
	<div id="alertModal" class="modal fade" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-body">
					<h2 class="text-center">Nice Job!</h2>
					<p class="text-center">You clicked the button, but it doesn't
						actually go anywhere because this is only a demo.</p>
					<p class="text-center">
						<a href="http://www.bootstrapzero.com">Learn more at
							BootstrapZero</a>
					</p>
					<br />
					<button class="btn btn-primary btn-lg center-block"
						data-dismiss="modal" aria-hidden="true">
						OK <i class="ion-android-close"></i>
					</button>
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
     <script>
        $('#edit-modal').on('show.bs.modal', function(e) {
            
            var $modal = $(this);
            var button =  $(e.relatedTarget);
            var movieVal = button.data('value');
            var htmlData = '<div align="center"><img src="'+movieVal.Poster+'" title="album-name" alt=" " height="300" width="200" /></div><br/>'+
            	'<table class="table" border=1>'+
                '<tbody>'+
            '<tr>'+
              '<td><strong>Title: </strong></td>'+
              '<td>'+movieVal.Title+'</td>'+
            '</tr>'+
            '<tr>'+
              '<td><strong>Year: </strong></td>'+
              '<td>'+movieVal.Year+'</td>'+
            '</tr>'+
            '<tr>'+
              '<td><strong>Rated: </strong></td>'+
              '<td>'+movieVal.Rated+'</td>'+
            '</tr>'+
            '<tr>'+
            '<td><strong>Released: </strong></td>'+
            '<td>'+movieVal.Released+'</td>'+
			          '</tr>'+
			          '<tr>'+
			          '<td><strong>Runtime: </strong></td>'+
			          '<td>'+movieVal.Runtime+'</td>'+
			        '</tr>'+
			        '<tr>'+
			        '<td><strong>Genre: </strong></td>'+
			        '<td>'+movieVal.Genre+'</td>'+
			      '</tr>'+
			      '<tr>'+
			      '<td><strong>Director: </strong></td>'+
			      '<td>'+movieVal.Director+'</td>'+
			    '</tr>'+
			    '<tr>'+
				  '<td><strong>Writer: </strong></td>'+
				  '<td>'+movieVal.Writer+'</td>'+
				'</tr>'+
			    '<tr>'+
			    '<td><strong>Actors: </strong></td>'+
			    '<td>'+movieVal.Actors+'</td>'+
			  '</tr>'+
			  '<tr>'+
			  '<td><strong>Language: </strong></td>'+
			  '<td>'+movieVal.Language+'</td>'+
			'</tr>'+
			'<tr>'+
			  '<td><strong>Country: </strong></td>'+
			  '<td>'+movieVal.Country+'</td>'+
			'</tr>'+
			'<tr>'+
			  '<td><strong>Awards: </strong></td>'+
			  '<td>'+movieVal.Awards+'</td>'+
			'</tr>'+
			'<tr>'+
	   '</tbody>'+
      '</table>';
            $modal.find('.edit-content').html(htmlData);
        })
    </script>
</html>