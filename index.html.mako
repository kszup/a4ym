<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang = "en" dir="ltr">
<head>

	<title>Avenue For Your Music - Home</title>

	<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
	<meta name="author" content="kszup" />
	<meta name="keywords" content="Avenue For Your Music" />
	<meta name="description" content="A Konrad Szupinski collection." />
	<meta name="robots" content="none" />

	<link rel="stylesheet" href="css/A4YM.css" type="text/css" />
	<link rel="stylesheet" href="css/A4YMnav.css" type="text/css" />
	
<!-- ***SPECIFIC CSS FOR IE START*** -->
	<!--[if IE]>
	<link rel="stylesheet" type="text/css" href="css/A4YM_ie.css" />
	<![endif]-->
<!-- ***SPECIFIC CSS FOR IE END*** -->
        
</head>
<body>
<div id="container">
<div id="border">
	<div id="pageheader">
    <div id="fit">
		<h1 id="title"><span>Avenue For Your Music</span></h1>
		<div id="navcontainer">
			<ul id="navlist">
				<li id="active" ><a href="" title="Welcome">Home</a></li>

				<li><a href="blog/index.html">Blog</a></li>
				<li><a href="resume.html">Resum&#233;</a></li>
				<li><a href="projects.html">Projects</a></li>
			</ul>
		</div><!--navcontainer end-->
	</div>
    </div><!--pageheader end-->
    
	<div id="main">  
        <img id="panorama" src="images/BostonFromNorthEnd.jpg" alt="Boston panorama from a North End roof top." title="Downtown Boston from a North End roof top." />
		
    <div id="content">  
        <h2>Welcome</h2>
		<p>A slow revision of my website. Expect updates throughout November.</p>
    </div><!--content end-->
    
    <div id="right_column">
        <div id="recent_posts">
            <h2>Recent posts:</h2>
            <ul>
                % for post in bf.config.blog.posts[:5]:
                    <li><a href="${post.path}">${post.title}</a></li>
                % endfor
            </ul>
        </div>
        <div id="twitter"></div>
    </div><!--right_column end-->    

	</div><!--main end-->	
	<div id="footer">
		<p>
        Last site update in November, 2011 |
<a title="ave4yourmusic.com Sitemap" href="sitemap.html">site map</a>
    </p>
	</div><!--footer end-->

</div><!--border end-->
</div><!--container end-->
</body>
</html>