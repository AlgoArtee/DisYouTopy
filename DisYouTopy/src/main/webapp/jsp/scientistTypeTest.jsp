<%@page import="disyoutopy.DisYouserDatabase"%>
<%@page import="disyoutopy.IDisYouserDatabase"%>
<%@page import="java.util.Date"%>  
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

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
<link rel="stylesheet" type="text/css" rel="noopener" href="../css/scientistType.css">
	

<title>Laboratory Area of <%=username%>
</title>
</head>

<body>


	<div class="wrapper">
		<header class="main-header">
			<div class="logoTitle">DisYouTopy</div>


		</header>


		<nav class="main-nav">
			<ul>
				<li><a href="DisYouTopyProfile.jsp">Home</a></li>
				<li><a href="openprojects.jsp">Open Projects</a></li>
				<li><a href="diy.jsp">DIY Science</a></li>
				<li><a href="shop.jsp">Shop</a></li>

			</ul>
		</nav>
		<article class="content">
		
				<div id="mainDisplay">
					
					<!-- Start Quiz -->
					
					<div class="titleBar">

						<div class="titleText">
							<ul><h2>Discover your scientific Self!</h2><ul>
							<ul><p>Take the quiz below!</p><ul>
						</div>
				
					</div>
				
					<form>
						<div class="grid">
					
							<div class="questionBanner">
								<h3>PICK AN ACTIVITY:</h3>			
							</div>
					
							<div class="sectionWrapper">
					
								<div class="sections">
									<input type="radio" name="activity" value="eating" id="eating" class="input-hidden" onchange="getAnswers()"/>
									<label for="eating">
					  					<img src="../img/sciquiz/eating.jpg" alt="yummy food">
									</label>
								</div>
					
								<div class="sections">
									<input type="radio" name="activity" value="drinking" id="drinking" class="input-hidden" onchange="getAnswers()"/>
									<label for="drinking">
										<img src="../img/sciquiz/drinking.jpg" alt="drinking cocktails">
									</label>
								</div>
					
								<div class="sections">
									<input type="radio" name="activity" value="painting" id="painting" class="input-hidden" onchange="getAnswers()"/>
									<label for="painting">
										<img src="../img/sciquiz/painting.jpg" alt="painting a picture">
									</label>
								</div>
					
								<div class="sections">
									<input type="radio" name="activity" value="picknicking" class="input-hidden" id="picknicking" onchange="getAnswers()"/>
									<label for="picknicking">
										<img src="../img/sciquiz/picknicking.jpg" alt="picknick">
									</label>
								</div>
					
								
							</div>
					
						</div>
					
					
						<div class="grid">
							<div class="questionBanner">
								<h3>PICK A COLOR:</h3>			
							</div>
					
							<div class="sectionWrapper">
					
								<div class="sections">
									<input type="radio" name="color" value="brown" id="brown" class="input-hidden" onchange="getAnswers()"/>
									<label for="brown">
										<img src="../img/sciquiz/brown.jpg" alt="cityscape">
									</label>
								</div>
					
								<div class="sections">
									<input type="radio" name="color" value="red" id="red" class="input-hidden" onchange="getAnswers()"/>
									<label for="red">				
										<img src="../img/sciquiz/red.jpg" alt="mountain">
									</label>
								</div>
					
								<div class="sections">
									<input type="radio" name="color" value="white" id="white" class="input-hidden" onchange="getAnswers()"/>
									<label for="white">
										<img src="../img/sciquiz/white.jpg" alt="beach">
									</label>
								</div>
					
								<div class="sections">
									<input type="radio" name="color" value="green" id="green" class="input-hidden" onchange="getAnswers()"/>
									<label for="green">
										<img src="../img/sciquiz/green.jpg" alt="desert">
									</label>
								</div>
							</div>
						</div>
					
					
						<div class="grid">
					
							<div class="questionBanner">
								<h3>PICK A LOCATION:</h3>			
							</div>
					
							<div class="sectionWrapper">
					
								<div class="sections">
									<input type="radio" name="location" value="restaurant" id="restaurant" class="input-hidden" onchange="getAnswers()"/>
									<label for="restaurant">
										<img src="../img/sciquiz/restaurant.jpg" alt="restaurant">
									</label>
								</div>
					
								<div class="sections">
									<input type="radio" name="location" value="bar" id="bar" class="input-hidden" onchange="getAnswers()"/>
									<label for="bar">
										<img src="../img/sciquiz/bar.jpg" alt="bar">
									</label>
								</div>
					
								<div class="sections">
									<input type="radio" name="location" value="laboratory" id="laboratory" class="input-hidden" onchange="getAnswers()"/>
									<label for="laboratory">
										<img src="../img/sciquiz/laboratory.jpg" alt="laboratory">
									</label>
								</div>
					
								<div class="sections">
									<input type="radio" name="location" value="park" id="park" class="input-hidden" onchange="getAnswers()"/>
									<label for="park">
										<img src="../img/sciquiz/park.jpg" alt="park">
									</label>
								</div>
							</div>
					
						</div>
					
					
						<div class="grid">
					
							<div class="questionBanner">
								<h3>PICK A FEELING:</h3>			
							</div>
					
							<div class="sectionWrapper">
					
								<div class="sections">
									<input type="radio" name="feeling" value="pleased" id="pleased" class="input-hidden" onchange="getAnswers()"/>
									<label for="pleased">
										<img src="../img/sciquiz/pleased.png" alt="pleased">
									</label>
								</div>
					
								<div class="sections">
									<input type="radio" name="feeling" value="happy" id="happy" class="input-hidden" onchange="getAnswers()"/>
									<label for="happy">
										<img src="../img/sciquiz/happy.png" alt="happy">
									</label>
								</div>
					
								<div class="sections">
									<input type="radio" name="feeling" value="strange" id="strange" class="input-hidden" onchange="getAnswers()"/>
									<label for="strange">
										<img src="../img/sciquiz/strange.png" alt="strange">
									</label>	
								</div>
					
								<div class="sections">
									<input type="radio" name="feeling" value="complicated" id="complicated" class="input-hidden" onchange="getAnswers()"/>
									<label for="complicated">
										<img src="../img/sciquiz/complicated.png" alt="complicated">
									</label>
								</div>
							</div>
						</div>
					
						<div class="grid">
					
							<div class="questionBanner">
								<h3>PICK AN ANIMAL:</h3>			
							</div>
					
							<div class="sectionWrapper">
					
								<div class="sections">
									<input type="radio" name="animal" value="dog" id="dog" class="input-hidden" onchange="getAnswers()"/>
									<label for="dog">
										<img src="../img/sciquiz/dog.jpg" alt="dog">
									</label>
								</div>
					
								<div class="sections">
									<input type="radio" name="animal" value="sloth" id="sloth" class="input-hidden" onchange="getAnswers()"/>
									<label for="sloth">
										<img src="../img/sciquiz/sloth.jpg" alt="sloth">
									</label>
								</div>
					
								<div class="sections">
									<input type="radio" name="animal" value="cat" id="cat" class="input-hidden" onchange="getAnswers()"/>
									<label for="cat">
										<img src="../img/sciquiz/cat.jpg" alt="cat">
									</label>
								</div>
					
								<div class="sections">
									<input type="radio" name="animal" value="octopus" id="octopus" class="input-hidden" onchange="getAnswers()"/>
									<label for="octopus">
										<img src="../img/sciquiz/octopus.jpg" alt="octopus">
									</label>
								</div>
							</div>
						</div>
					
					</form>
				
					<div>
						<div class="questionBanner">
							<a href="openprojects.jsp"><h3 id="resultHeader"></h3></a>			
						</div>
				
							<div class="result">
								<div class="resultImgBlock">
									<img src="" id="resultImg">
								</div>
							</div>
				
					</div>
					
					
					<!-- End Quiz -->
						
				</div>
					
					<br> <br>

					<br> <br>
					
					
			
			
			
		</article>



		<aside class="laboratory">


			<nav>
				<ul class="analysis-menu nav-vertical">

					<!-- Moleculome -->
					<li><a href="../html/laboratory/moleculome.html"
						class="nav-active">Moleculome</a>

						<ul>
							<li><a href="../html/laboratory/glycome.html">Glycome</a></li>
							<li><a href="../html/laboratory/ionome.html">Ionome</a></li>
							<li><a href="../html/laboratory/lipidome.html">Lipidome</a></li>

							<li><a href="../html/laboratory/metabolome.html">Metabolome</a>
								<ul>
									<li><a href="../html/laboratory/volatilome.html">Volatilome</a></li>
								</ul></li>

							<li><a href="../html/laboratory/metallome.html">Metallome</a></li>
							<li><a href="../html/laboratory/proteome.html">Proteome</a></li>


						</ul></li>


					<!-- Genome -->
					<li><a href="../html/laboratory/genome.html">Genome</a>

						<ul>
							<li><a href="../html/laboratory/variome.html">Variome</a></li>

							<li><a href="../html/laboratory/exome.html">Exome</a>
								<ul>
									<li><a href="../html/laboratory/orfeome.html">ORFeome</a>
										<ul>

											<li><a href="../html/laboratory/transcriptome.html">Transcriptome</a>

												<ul>
													<li><a href="../html/laboratory/proteome.html">Proteome</a>
														<ul>
															<li><a href="../html/laboratory/kinome.html">Kinome</a></li>
															<li><a href="../html/laboratory/secretome.html">Secretome</a></li>
															<li><a href="../html/laboratory/chaperome.html">Chaperome</a></li>
															<li><a href="../html/laboratory/allergenome.html">Allergenome</a></li>

														</ul></li>
												</ul></li>

										</ul></li>
								</ul></li>

							<li><a href="../html/laboratory/pharmacogenome.html">Pharmacogenome</a></li>
							<li><a href="../html/laboratory/regulome.html">Regulome</a></li>

						</ul></li>


					<!-- Epigenome -->
					<li><a href="../html/laboratory/epigenome.html">Epigenome</a>
						<ul>

							<li><a href="../html/laboratory/methylome.html">Methylome</a>
						</ul></li>



					<!-- Physiome -->
					<li><a href="../html/laboratory/physiome.html">Physiome</a>

						<ul>

							<li><a href="../html/laboratory/connectome.html">Connectome</a></li>

							<li><a href="../html/laboratory/interactome.html">Interactome</a></li>

							<li><a href="../html/laboratory/dynome.html">Dynome</a></li>

							<li><a href="../html/laboratory/mechanome.html">Mechanome</a></li>

							<li><a href="../html/laboratory/regulome.html">Regulome</a></li>


						</ul></li>



					<li><a href="../html/laboratory/cytome.html">Cytome</a></li>

					<li><a href="../html/laboratory/microbiome.html">Microbiome</a></li>



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



		</aside>
		
		<div class="signOut">
			<a href="../index.jsp">
				<div id="signOutButton">
					
				</div>
			</a>


		</div>


		<div class="forum"> <div class=sideText>  <a href="DYTforumMIG.jsp"> <i class="fa-solid fa-comments"> <br> <br> Forum</i> </a> </div></div>

		<div class="catshop"> <div class=sideText> <a href="inConstruction.jsp"> <i class="fa-solid fa-cat"> <br> <br> Catshop</i> </a> </div></div>
		
		<div class="shop"> <div class=sideText> <a href="inConstruction.jsp"> <i class="fa-solid fa-cart-shopping"> <br> <br> Shop</i> </a> </div></div>
		
		<div class="experiment_of_the_day">
			<br> <br>
			<div class=sideText> <a href="openprojects.jsp"> <i class="fa-solid fa-flask"> <br> <br> Experiment of the Day</i> </a> </div>
		</div>
		
		<div class="history"> <div class=sideText> <a href="inConstruction.jsp"> <i class="fa-solid fa-book-open"> <br> <br> History </i> </a> </div></div>



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
	</div>


<!-- JavaScript section -->
<script  src="../js/scientistType.js"></script>

</body>

</html>