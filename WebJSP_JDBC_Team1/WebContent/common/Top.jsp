<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg px-4 py-2 bg-white shadow"><a href="#" class="sidebar-toggler text-gray-500 mr-4 mr-lg-5 lead"><i class="fas fa-align-left"></i></a><a href="index.jsp" class="navbar-brand font-weight-bold text-uppercase text-base">Bubbly Dashboard</a>
        <ul class="ml-auto d-flex align-items-center list-unstyled mb-0">
          
          <li class="nav-item dropdown mr-3"><a id="notifications" href="http://example.com" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle text-gray-400 px-1"><i class="fa fa-bell"></i><span class="notification-icon"></span></a>
            <div aria-labelledby="notifications" class="dropdown-menu"><a href="#" class="dropdown-item">
                

                <div class="d-flex align-items-center">
                  <div class="icon icon-sm bg-blue text-white"><i class="fas fa-upload"></i></div>
                  <div class="text ml-2">
                    <p class="mb-0"><%=session.getAttribute("ip") %></p>
                  </div>
                </div></a>
              <div class="dropdown-divider"></div><a href="#" class="dropdown-item text-center"><small class="font-weight-bold headings-font-family text-uppercase">Redirect this Page</small></a>
            </div>
          </li>
          


        	  <li class="nav-item dropdown ml-auto"><a id="userInfo" href="http://example.com" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle"><img src="img/avatar-6.jpg" alt="Jason Doe" style="max-width: 2.5rem;" class="img-fluid rounded-circle shadow"></a>

	            <div aria-labelledby="userInfo" class="dropdown-menu"><a href="#" class="dropdown-item"><strong class="d-block text-uppercase headings-font-family"><%=session.getAttribute("userid") %></strong><small><%=session.getAttribute("sn") %></small></a>
	              <div class="dropdown-divider"></div>
	             
	              <%
	              if (session.getAttribute("userid") != null) {
	            	 out.print("<a href='#' class='dropdown-item'>Settings</a>");
	            	 out.print("<a href='#' class='dropdown-item'>Activity log</a>");
	              } else {
	            	 out.print("<p class='dropdown-item'>Plz Login</p>");
	              }
	              %>	
	           
	              <div class="dropdown-divider"></div>
	              
	              <%
	              if (session.getAttribute("userid") != null) {
	            	  out.print("<a href='logoutok.jsp' class='dropdown-item'>Logout</a>");  	
	              } else {
	            	  out.print("<a href='login.jsp' class='dropdown-item'>Log in</a>");
	              }
	              %>	
	             
	            </div>
	          </li>
          
          
        </ul>
      </nav>