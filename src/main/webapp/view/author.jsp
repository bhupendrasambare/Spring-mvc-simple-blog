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
<!-- Begin Top Author Page
================================================== -->
<div class="container">
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8 col-md-offset-2">
			<div class="mainheading">
				<div class="row post-top-meta authorpage">
					<div class="col-md-10 col-xs-12">
						<h1><%=user.getName() %></h1>
						<span class="author-description"><%=user.getDiscription() %></span>
						<div class="sociallinks">
							<a  target="_blank" href="<%= user.getLinkedin()%>"><i class="fa fa-linkedin"></i></a>
							<a target="_blank" href="<%= user.getGoogle()%>"><i class="fa fa-google-plus"></i></a>
							<a target="_blank" href="<%= user.getTwitter()%>"><i class="fa fa-twitter"></i></a>
						</div>
					</div>
					<div class="col-md-2 col-xs-12">
						<img class="author-thumb" src="./assets/img/user/<%= user.getImage()%>" alt="Sal">
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End Top Author Meta
================================================== -->

<!-- Begin Author Posts
================================================== -->
<div class="graybg authorpage">
	<div class="container">
		<div class="listrecent listrelated">
			<%for(blog b :blogList) {%>
				<!-- begin post -->
				<div class="authorpostbox">
					<div class="card">
						<a href="post?id=<%= b.getId()%>">
						<img class="img-fluid img-thumb" src="assets/img/blog/<%=b.getImage() %>" alt="">
						</a>
						<div class="card-block">
							<h2 class="card-title"><a href="post?id=<%= b.getId()%>"><%=b.getName() %></a></h2>
              <h4 class="card-text"><%= b.getInfo()%></h4>
            	<div class="metafooter">
								<div class="wrapfooter">
									<span class="meta-footer-thumb">
										<a href="author.html"><img class="author-thumb" src="./assets/img/user/<%= user.getImage()%>" alt="Sal"></a>
									</span>
									<span class="author-meta">
									<span class="post-name"><a href="author.html"><%=user.getName() %></a></span><br/>
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
				<%} %>
		</div>
	</div>
</div>
<!-- End Author Posts
================================================== -->


<jsp:include page="components/footer.jsp" />
