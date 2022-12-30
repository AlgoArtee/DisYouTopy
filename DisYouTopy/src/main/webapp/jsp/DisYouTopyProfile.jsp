<%@page import="disyoutopy.DisYouserDatabase"%>
<%@page import="disyoutopy.IDisYouserDatabase"%>
<%@page import="java.util.Date"%>  
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%
IDisYouserDatabase dyDatabase = DisYouserDatabase.getDisYouserDatabase();

// Read Username
String username = (String) session.getAttribute("username");

// Paths
String picRelPath = "../img/madScientist.png";

// Variables
Date d=new Date();  
SimpleDateFormat simpleDateFormat = new SimpleDateFormat();
simpleDateFormat.applyPattern("yyyy");
String year = simpleDateFormat.format(d); 

 %>



<!-- Font section -->
<link
	href="https://fonts.googleapis.com/css2?family=Annie+Use+Your+Telescope&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Fredericka+the+Great&display=swap"
	rel="stylesheet">


<!-- CSS section -->

<link rel="stylesheet" type="text/css" rel="noopener" href="../css/index.css">
<link rel="stylesheet" type="text/css" rel="noopener" href="../css/profile.css">
<link rel="stylesheet" type="text/css" rel="noopener" href="../css/labbook.css">
<link rel="stylesheet" type="text/css" rel="noopener" href="../css/testtubebubbles.css">

<!-- JS -->
	<script src="https://kit.fontawesome.com/a99b4ad582.js" crossorigin="anonymous"></script>
	

<title>Laboratory Area of <%=username%>
</title>
</head>

<body>


	<div class="wrapper">
		<header class="main-header">
			<a href=""><div class="logoTitle">DisYouTopy</div></a>
		</header>


		<nav class="main-nav">
			<ul>
				<li><a href="DisYouTopyProfile.jsp">Home</a></li>
				<li><a href="openprojects.jsp">Open Projects</a></li>
				<li><a href="DYTforumMIG.jsp">Forum</a></li>
				<li><a href="inConstruction.jsp">Shop</a></li>

			</ul>
		</nav>
		<article class="content">
		
				<div id="mainDisplay">
					
						<h1></h1>
						<br> <br>
						<p></p>
						<p> </p>
						
				</div>
				
				<!-- Start Lab Book -->
				
				<div id="labbook_container">
				  <div class="labbook">
				    <div class="first paper">
				      <div class="page front contents">
				        <div class="intro">
				          <h2>Lab Book</h2>
				          <h1><%=year %></h1>
				        </div>
				      </div>
				      <div class="page back"></div>
				    </div>
				    <div class="second paper">
				      <div class="page front contents">
				        <div id="vara-container"></div>
				      </div>
				      <div class="page back"></div>
				    </div>
				    <div class="third paper">
				      <div class="page front contents">
				        <div id="vara-container2"></div>
				      </div>
				      <div class="page back"></div>
				    </div>
				    <div class="fourth paper">
				      <div class="page last front contents">
				        <div id="vara-container3"></div>
				      </div>
				      <div class="page back"></div>
				    </div>
				    <div class="labboook_side"></div>
				    <div class="bottom"></div>
				    <div class="shadow"></div>
				  </div>
				</div>
				
				<a id="link" href="scientistTypeTest.jsp" target="_blank"></a>
				
				<!-- End Lab Book -->
				
				<br> <br> <br> <br> <br>
			
		
				<div class="articlet">
						<div id="forum" class="articletsImg"><a
							href="jsp/DYTforumMIG.jsp"></a></div>
							
						<br> <br>  <br>
						<p class="articletTitle"> Madly in Glove Forum</p>
						<br> <br>  <br>
						The World is Your Laboratory! <br> <br> <br>The DIY community
						is yet very dispersed, specialized and geekingly enigmatic. This
						Site aims to bring all Cyberpunk dreams together and commonly count
						the Electric Sheep! <br> <br> Visit our Guest Forum! <a
							href="DYTforumMIG.jsp">Madly in Glove</a>
		
					</div>
		
					<div class="articlet middle">
						<div id="openProjects" class="articletsImg"><a
							href="openprojects.jsp"></a></div>
							
						<br> <br>
						<p class="articletTitle"> Dive in the Ocean of Open Science Projects</p>
						<br> <br> <br>
						Welcome to the future of your existence! <br> <br> Join
						this Virtual Journey down the spirals of DNA, under diode lights and
						through binary forests. Activate your sciency genes - and navigate
						through our vast informational databases on genomes, biohacking
						experiments, RasPi projects and other various stuff to a DIY hearts
						delight. In "Open Projects" you'll find Step by Step tutorials, made
						with our innovative "Easy or Comment" formula. <a
							href="openprojects.jsp">Read more ...</a>
		
					</div>
		
					<div class="articlet">
						<div id="signInUp" class="articletsImg"><a
							href="../html/signUp.html"></a></div>
							
						<br> <br>
						<p class="articletTitle"> Sign Up for Your own Virtual Lab Space!</p>
						<br> <br> <br>
						
						Want to dive deeper? <br> <br> Sign In to get the most
						comprehensive Profile of your inner workings! Our bioinformatics
						Machine Learning algorithms crawl daily through hundreds of
						biological databases and provide deep insights to the data you
						choose to upload. Quantum entangle with the next self knowledge level!
					</div>	
			
		</article>



		<aside class="laboratory">


			<nav>
				<ul class="analysis-menu nav-vertical">

					<!-- Moleculome -->
					<li><a href="inConstruction.jsp"
						class="nav-active">Moleculome</a>

						<ul>
							<li><a href="inConstruction.jsp">Glycome</a></li>
							<li><a href="inConstruction.jsp">Ionome</a></li>
							<li><a href="inConstruction.jsp">Lipidome</a></li>

							<li><a href="inConstruction.jsp">Metabolome</a>
								<ul>
									<li><a href="inConstruction.jsp">Volatilome</a></li>
								</ul></li>

							<li><a href="inConstruction.jsp">Metallome</a></li>
							<li><a href="inConstruction.jsp">Proteome</a></li>


						</ul></li>


					<!-- Genome -->
					<li><a href="../html/laboratory/genome.html">Genome</a>

						<ul>
							<li><a href="inConstruction.jsp">Variome</a></li>
							<li><a href="inConstruction.jsp">Exome</a>
								<ul>
									<li><a href="inConstruction.jsp">ORFeome</a>
										<ul>

											<li><a href="inConstruction.jsp">Transcriptome</a>

												<ul>
													<li><a href="inConstruction.jsp">Proteome</a>
														<ul>
															<li><a href="inConstruction.jsp">Kinome</a></li>
															<li><a href="inConstruction.jsp">Secretome</a></li>
															<li><a href="inConstruction.jsp">Chaperome</a></li>
															<li><a href="inConstruction.jsp">Allergenome</a></li>

														</ul></li>
												</ul></li>

										</ul></li>
								</ul></li>

							<li><a href="inConstruction.jsp">Pharmacogenome</a></li>
							<li><a href="inConstruction.jsp">Regulome</a></li>

						</ul></li>


					<!-- Epigenome -->
					<li><a href="inConstruction.jsp">Epigenome</a>
						<ul>

							<li><a href="inConstruction.jsp">Methylome</a>
						</ul></li>



					<!-- Physiome -->
					<li><a href="inConstruction.jsp">Physiome</a>
						<ul>
							<li><a href="inConstruction.jsp">Connectome</a></li>
							<li><a href="inConstruction.jsp">Interactome</a></li>
							<li><a href="inConstruction.jsp">Dynome</a></li>
							<li><a href="inConstruction.jsp">Mechanome</a></li>
							<li><a href="inConstruction.jsp">Regulome</a></li>
						</ul>
					</li>


					<li><a href="inConstruction.jsp">Cytome</a></li>

					<li><a href="inConstruction.jsp">Microbiome</a></li>
				</ul>
			</nav>

		</aside>

		<aside class="side">

			<div id="userArea">
			<img alt="User Picture" src="<%=picRelPath%>">
				<div id=userStatus>
					Lab Notes of <br>
					<%=username%></div>
			</div>
			
			
			<div class="bubblewrap">
				<canvas id="bubble"></canvas>
			</div>
		</aside>
		
		<div class="signOut">
			EXIT
			<a href="../index.jsp">	<div id="signOutButton"></div></a>
		</div>

		
		
		<div class="forum"> <div class=sideText>  <a href="DYTforumMIG.jsp"> <i class="fa-solid fa-comments"> <br> <br> Forum</i> </a> </div></div>

		<div class="catshop"> <div class=sideText> <a href="inConstruction.jsp"> <i class="fa-solid fa-cat"> <br> <br> Catshop</i> </a> </div></div>
		
		<div class="shop"> <div class=sideText> <a href="inConstruction.jsp"> <i class="fa-solid fa-cart-shopping"> <br> <br> Shop</i> </a> </div></div>
		
		<div class="experiment_of_the_day">
			<br> <br>
			<div class=sideText> <a href="openprojects.jsp"> <i class="fa-solid fa-flask"> <br> <br> Experiment of the Day</i> </a> </div>
		</div>
		
		<div class="history"> <div class=sideText> <a href="openprojects.jsp"> <i class="fa-solid fa-book-open"> <br> <br> History </i> </a> </div></div>



		<footer class="main-footer">
			<i class="fa-solid fa-copyright"> DisYouTopy</i>
			
			<div id="socialMedia">
				<i class="fa-brands fa-twitter"></i>
				<i class="fa-brands fa-facebook"></i>
				<i class="fa-brands fa-facebook-messenger"></i>
				<i class="fa-brands fa-instagram"></i>
				<i class="fa-brands fa-spotify"></i>
				<i class="fa-brands fa-deviantart"></i>
				<i class="fa-solid fa-at"></i>
			
			</div>
		
		
		
		</footer>
		
	</div>


<!-- JavaScript section -->
<script src='https://rawcdn.githack.com/akzhy/Vara/c55a1b40c15b808cdd4a047de95c905094be87db/src/vara.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
<script  src="../js/labbook.js"></script>
<script src="../js/testtubebubbles.js"></script>

</body>

</html>