<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<div id="sidebar" class="sidebar py-3">
	<div
		class="text-gray-400 text-uppercase px-3 px-lg-4 py-4 font-weight-bold small headings-font-family">MAIN</div>
	<ul class="sidebar-menu list-unstyled">
	
		<li class="sidebar-list-item"><a href="index.jsp"
			class="sidebar-link text-muted "><i
				class="o-home-1 mr-3 text-gray"></i><span>Home</span></a></li>
				
		<li class="sidebar-list-item"><a href="#" data-toggle="collapse"
			data-target="#pages" aria-expanded="false" aria-controls="pages"
			class="sidebar-link text-muted"><i
				class="o-wireframe-1 mr-3 text-gray"></i><span>Pages</span></a>
			<div id="pages" class="collapse">
				<ul
					class="sidebar-menu list-unstyled border-left border-primary border-thick">
					<li class="sidebar-list-item"><a href="#"
						class="sidebar-link text-muted pl-lg-5">Page one</a></li>
					<li class="sidebar-list-item"><a href="#"
						class="sidebar-link text-muted pl-lg-5">Page two</a></li>
					<li class="sidebar-list-item"><a href="#"
						class="sidebar-link text-muted pl-lg-5">Page three</a></li>
					<li class="sidebar-list-item"><a href="#"
						class="sidebar-link text-muted pl-lg-5">Page four</a></li>
				</ul>
			</div></li>
			
<%
      if (session.getAttribute("userid") != null) {
    	 out.print("<li class='sidebar-list-item'><a href='memberlist.jsp'class='sidebar-link text-muted'><i class='o-survey-1 mr-3 text-gray'></i><span>Memberlist</span></a></li>");
    	 out.print("<li class='sidebar-list-item'><a href='logoutok.jsp'class='sidebar-link text-muted'><i class='o-survey-1 mr-3 text-gray'></i><span>Logout</span></a></li>");
         
      } else {
    	 out.print("<li class='sidebar-list-item'><a href='login.jsp' class='sidebar-link text-muted'><i class='o-exit-1 mr-3 text-gray'></i><span>Login</span></a></li>");
    	 out.print("<li class='sidebar-list-item'><a href='Signin.jsp' class='sidebar-link text-muted'><i class='o-survey-1 mr-3 text-gray'></i><span>Sign In</span></a></li>");
      }
%>	
	</ul>
	
	<div
		class="text-gray-400 text-uppercase px-3 px-lg-4 py-4 font-weight-bold small headings-font-family"> </div>
	<ul class="sidebar-menu list-unstyled">
		<li class="sidebar-list-item"><a href="#" class="sidebar-link text-muted"><i class="o-database-1 mr-3 text-gray"></i><span>ORACLE DB</span></a></li>

	</ul>
</div>