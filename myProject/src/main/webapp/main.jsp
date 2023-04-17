<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
		String id = (String)session.getAttribute("user_id");
%>
<html>

<head>
    <meta charset="utf-8">
    <style>
        @import url('styles/font.css');
        @import url('styles/main.css');
    </style>
</head>

<body>
    <div id="all_wrap">
        <header>
            <div class="inner_width flex_inner">
                <a href="main.html">
                    <figure><img src="images/ARTMU.png"></figure>
                </a>
                <nav>
                    <ul id="nav_list">
                        <li>Notice</li>
                        <li>Introduction</li>
                        <li>Board</li>
                        <li>NAV4</li>
                        <li>NAV5</li>
                    </ul>
                </nav>
                <div id="util_list_wrap">
                    <ul id="util_list">
                    	<li><a href="updatePassword.jsp"><img src="images/user-icon.png" width=20 height=20><%=id  %></a></li>
                        <li><a href="logout.jsp">Sign Out</a></li>
                    </ul>
                </div>
            </div>
        </header>
        <div id="contents_wrap">
            <div class="contents">
                <div id="inner_width flex_inner">
                    <div></div>
                    <div></div>
                </div>
            </div>
            <div class="contents">
                <h1></h1>
                <ul>
                    <li>image</li>
                    <li>image</li>
                    <li>image</li>
                    <li>image</li>
                </ul>
                <div id="slick_slide">
                    <div class="slick_slide_items">
                        <a href="#">
                            <div></div>
                            <div></div>
                            <div></div>
                        </a>
                    </div>
                    <div class="slick_slide_items">
                        <a href="#">
                            <div><img src=""></div>
                            <div></div>
                            <div></div>
                        </a>
                    </div>
                    <div class="slick_slide_items">
                        <a href="#">
                            <div><img src=""></div>
                            <div></div>
                            <div></div>
                        </a>
                    </div>
                    <div class="slick_slide_items">
                        <a href="#">
                            <div><img src=""></div>
                            <div></div>
                            <div></div>
                        </a>
                    </div>
                    <div class="slick_slide_items">
                        <a href="#">
                            <div><img src=""></div>
                            <div></div>
                            <div></div>
                        </a>
                    </div>
                    <div class="slick_slide_items">
                        <a href="#">
                            <div><img src=""></div>
                            <div></div>
                            <div></div>
                        </a>
                    </div>
                    <div class="slick_slide_items">
                        <a href="#">
                            <div><img src=""></div>
                            <div></div>
                            <div></div>
                        </a>
                    </div>
                    <div class="slick_slide_items">
                        <a href="#">
                            <div><img src=""></div>
                            <div></div>
                            <div></div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <footer></footer>
    </div>
</body>

</html>