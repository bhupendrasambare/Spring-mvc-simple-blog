<%@page import="database.model.blog"%>
<%@page import="java.util.List"%>
<%@page import="database.model.user"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	user user = (user)request.getAttribute("user");
    	List<blog> blogList = (List<blog>)request.getAttribute("blog");
    %>
    
<jsp:include page="components/navbar.jsp" />
<!-- Begin Site Title
================================================== -->
<div class="container">
	<div class="mainheading">
		<h1 class="sitetitle"><%=user.getName() %></h1>
		<p class="lead">
			 <%=user.getDiscription() %>
		</p>
	</div>
<!-- End Site Title
================================================== -->

	<!-- Begin Featured
	================================================== -->
	<section class="featured-posts">
	<div class="section-title">
		<h2><span>Featured</span></h2>
	</div>
	<div class="card-columns listfeaturedtag">

		<!-- begin post -->
		<%for(blog b:blogList){ 
			if(b.getFeatured() == 1){
		%>
		
		<div class="card">
			<div class="row">
				<div class="col-md-5 wrapthumbnail">
					<a href="post?id=<%= b.getId()%>">
						<div class="thumbnail" style="background-image:url(assets/img/demopic/<%= b.getImage()%>);">
						</div>
					</a>
				</div>
				<div class="col-md-7">
					<div class="card-block">
						<h2 class="card-title"><a href="post?id=<%= b.getId()%>"><%=b.getName() %></a></h2>
						<h4 class="card-text"><%= b.getInfo()%></h4>
						<div class="metafooter">
							<div class="wrapfooter">
								<span class="meta-footer-thumb">
								<a href="author.html"><img class="author-thumb" src="./assets/img/user/<%= user.getImage()%>" alt="Sal"></a>
								</span>
								<span class="author-meta">
								<span class="post-name"><a href="author.html"><%= user.getName()%></a></span><br/>
								<span class="post-date">
									<a  target="_blank" href="<%= user.getLinkedin()%>"><i class="fa fa-linkedin"></i></a>
									<a target="_blank" href="<%= user.getGoogle()%>"><i class="fa fa-google-plus"></i></a>
									<a target="_blank" href="<%= user.getTwitter()%>"><i class="fa fa-twitter"></i></a>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%} }%>
		<!-- end post -->

	</div>
	</section>
	<!-- End Featured
	================================================== -->

	<!-- Begin List Posts
	================================================== -->
	<section class="recent-posts">
	<div class="section-title">
		<h2><span>All Stories</span></h2>
	</div>
	<div class="card-columns listrecent">

		<%for(blog b:blogList){ 
			if(b.getFeatured() != 1){
		%>
		<!-- begin post -->
		<div class="card">
			<a href="post?id=<%= b.getId()%>">
				<img class="img-fluid" src="assets/img/demopic/<%= b.getImage()%>" alt="">
			</a>
			<div class="card-block">
				<h2 class="card-title"><a href="post?id=<%= b.getId()%>"><%=b.getName() %></a></h2>
				<h4 class="card-text"><%=b.getInfo() %></h4>
				<div class="metafooter">
					<div class="wrapfooter">
						<span class="meta-footer-thumb">
						<a href="author.html"><img class="author-thumb" src="./assets/img/user/<%= user.getImage()%>" alt="<%= user.getName()%>"></a>
						</span>
						<span class="author-meta">
						<span class="post-name"><a href="author"><%= user.getName()%></a></span><br/>
						<span class="post-date">
							<a  target="_blank" href="<%= user.getLinkedin()%>"><i class="fa fa-linkedin"></i></a>
							<a target="_blank" href="<%= user.getGoogle()%>"><i class="fa fa-google-plus"></i></a>
							<a target="_blank" href="<%= user.getTwitter()%>"><i class="fa fa-twitter"></i></a>
						</span>
						</span>
					</div>
				</div>
			</div>
		</div>
		<!-- end post -->
		<%}} %>

	</div>
	</section>
	<!-- End List Posts
	================================================== -->


</div>
<!-- /.container -->

<jsp:include page="components/footer.jsp" />