<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>템플릿 Layout 2</title>
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

	<div class="ml-3 mt-3 mr-5">
		<header class= "d-flex">
			<div class="logo mr-4"><h1 class="text-success">Melong</h1></div>
			<div class="search bar d-flex col-4 ml-3">
			<input type="text" class="form-control"><button type="submit" class="btn btn-info" value="검색">검색</button>
			</div>
		</header>
		<nav class="mt-4">
			<ul class="nav" style="width:500px;">
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">멜롱챠트</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">최신음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">장르음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">멜롱DJ</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">뮤직어워드</a></li>
			</ul>
		</nav>
		
		<div class = "artist_container d-flex border border-success p-3" style ="height:280px;">
				<div class="artist_profile_picture">
					<img src="https://i1.sndcdn.com/artworks-XBwdVXf5gDw2AVMu-oYnUgw-t500x500.jpg" height="250">
				</div>
				<div class="artist_info ml-3">
					<div class="display-4">아이유</div>
					<div class="display-5">EDAM엔터테인먼트</div>
					<div class="display-5">2008 데뷔</div>
				</div>
		</div>
		
	</div>

</body>
</html>