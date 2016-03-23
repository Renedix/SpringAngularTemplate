<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>

	<head>
		<title>Spring MVC Starter Application</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		
		<script data-require="angular.js@*" data-semver="1.2.28" src="https://code.angularjs.org/1.2.28/angular.js"></script>
		<script data-require="angular-route@1.2.28" data-semver="1.2.28" src="https://code.angularjs.org/1.2.28/angular-route.js"></script>
		<script data-require="angular-animate@1.2.28" data-semver="1.2.28" src="https://code.angularjs.org/1.2.28/angular-animate.js"></script>
		
		<link rel="stylesheet" type="text/css" href="<c:url value="/static/resources/css/screen.css"/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value="/static/resources/css/animate.css"/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value="/static/resources/css/style.css"/>"/>
	
		<script src="/static/resources/js/app.js"></script>
		<script src="/static/resources/js/Directives.js"></script>
		<script src="/static/resources/js/View1Controller.js"></script>
		<script src="/static/resources/js/View2Controller.js"></script>
		<script src="/static/resources/js/MainController.js"></script>
	</head>

	<body ng-app="ApplicationName" ng-controller="MainController">

  <div id="header">
		<span class="headerBumper"></span>
		<a class="headerLink noselect" href="" ng-click="navigateToView('View1')">
			View1
		  </a>
		<a class="headerLink noselect" href="" ng-click="navigateToView('View2')">
			View2
		  </a>
		<a class="headerLink noselect" href="" ng-click="toggleSubmenu('Submenu1')">
			Horizontal Menu
		  </a>
		<a class="headerLink noselect" href="" ng-click="toggleSubmenu('Submenu2')">
			Vertical Menu
		  </a>
	  </div>

	  <div class="headerSubmenu" ng-show="submenuHidden('Submenu1')" style="left:209px">
		<a class="headerSubmenuItem noselect" href="">Item 1</a>
		<a class="headerSubmenuItem noselect" href="">Item 2</a>
	  </div>
	  
	  <div class="headerSubmenu" ng-show="submenuHidden('Submenu2')" style="left:397px">
		<a class="headerSubmenuItem noselect" href="">Item 1</a><br>
		<a class="headerSubmenuItem noselect" href="">Item 2</a><br>
		<a class="headerSubmenuItem noselect" href="">Item 3</a><br>
		<a class="headerSubmenuItem noselect" href="">Item 4</a><br>
		<a class="headerSubmenuItem noselect" href="">Item 5</a>
	  </div>

	  <div class="sideBar" style="float:left;left:0px"></div>
          <div ng-view class="viewContent"></div>  
          <div class="sideBar" style="float:right;right:0px"></div>
          
	</body>
</html>
