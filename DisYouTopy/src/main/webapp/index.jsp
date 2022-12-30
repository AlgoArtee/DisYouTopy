<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<% 

try
{
	session.invalidate();
}
finally
{}

%>

<title>DisYouTopy - the ultimate resource to DIY Science</title>

<!-- Font section -->
<link
	href="https://fonts.googleapis.com/css2?family=Fredericka+the+Great&display=swap"
	rel="stylesheet">

<!-- CSS section -->
<link rel="stylesheet" type="text/css" rel="noopener"
	href="css/disyougallery.css">
<link rel="stylesheet" type="text/css" rel="noopener"
	href="css/index.css">
<link rel="stylesheet" type="text/css" rel="noopener"
	href="css/testtubebubbles.css">

<!-- JS -->
<script src="https://kit.fontawesome.com/a99b4ad582.js"
	crossorigin="anonymous"></script>



</head>
<body>


	<div class="wrapper">
		<header class="main-header">
			<a href=""><div class="logoTitle">DisYouTopy</div></a>
		</header>


		<nav class="main-nav">
			<ul>
				<li><a href="">Home</a></li>
				<li><a href="jsp/openprojects.jsp">Open Projects</a></li>
				<li><a href="jsp/DYTforumMIG.jsp">Forum</a></li>
				<li><a href="jsp/inConstruction.jsp">Shop</a></li>

			</ul>
		</nav>



		<article class="content">


			<div id="mainDisplay">

				<!-- Gallery Animation inspired from: https://codepen.io/alvarotrigo/pen/xxpKaXP-->
				<div class="acc-wraper">
					<div class="accordion">
						<div>
							<div class="overlay">
								<a href="jsp/inConstruction.jsp">Our Biological Databases
									Reviews</a>
							</div>
							<img src="img/disyougallery/bioinformatics_databases.png" alt="">
						</div>

						<div>
							<div class="overlay">
								<a href="jsp/inConstruction.jsp">News And Discoveries</a>
							</div>
							<img src="img/disyougallery/chem_lab.png" alt="">
						</div>

						<div>
							<div class="overlay">
								<a href="jsp/openprojects.jsp">Experiments</a>
							</div>
							<img src="img/disyougallery/cold_experiments.png" alt="">
						</div>

						<div>
							<div class="overlay">
								<a href="jsp/inConstruction.jsp">Data Safty In The DIY Age</a>
							</div>
							<img src="img/disyougallery/data_safety.png" alt="">
						</div>
						<div>
							<div class="overlay">
								<a href="jsp/openprojects.jsp">Begin A How To Journey!</a>
							</div>
							<img src="img/disyougallery/howto.png" alt="">
						</div>
						<div>
							<div class="overlay">
								<a href="jsp/inConstruction.jsp">How To Build Your Own LAB!</a>
							</div>
							<img src="img/disyougallery/lab_01.png" alt="">
						</div>
						<div>
							<div class="overlay">
								<a href="jsp/inConstruction.jsp">Through The Cooking Glass</a>
							</div>
							<img src="img/disyougallery/lab_glassware.png" alt="">
						</div>
						<div>
							<div class="overlay">
								<a href="jsp/inConstruction.jsp">Essential Literature for
									DIY Science</a>
							</div>
							<img src="img/disyougallery/literature_resources.png" alt="">
						</div>
						<div>
							<div class="overlay">
								<a href="html/signUp.html">Sign Up! :)</a>
							</div>
							<img src="img/disyougallery/locks.png" alt="">
						</div>
						<div>
							<div class="overlay">
								<a href="jsp/inConstruction.jsp">Medical Biotech News</a>
							</div>
							<img src="img/disyougallery/medical_biotech.png" alt="">
						</div>
						<div>
							<div class="overlay">
								<a href="jsp/inConstruction.jsp">The Microscopic World</a>
							</div>
							<img src="img/disyougallery/microbiology.png" alt="">
						</div>
					</div>
				</div>



			</div>

			<div class="articlet">
				<a href="jsp/DYTforumMIG.jsp">
					<div id="forum" class="articletsImg"></div>
				</a> <br> <br> <br>
				<p class="articletTitle">Madly in Glove Forum</p>
				<br> <br> The World is Your Laboratory! <br> <br>
				Visit our Guest Forum and ask others about their DIY journey! <a
					href="jsp/DYTforumMIG.jsp">Madly in Glove</a>

			</div>

			<div class="articlet middle">
				<a href="jsp/openprojects.jsp">
					<div id="openProjects" class="articletsImg"></div>
				</a> <br> <br>
				<p class="articletTitle">Dive in the Ocean of Open Science
					Projects</p>
				<br> <br> Welcome to the future of your existence! <br>
				<br> Join this Virtual Journey down the spirals of DNA, under
				diode lights and through binary forests. In "Open Projects" you'll
				find Step by Step tutorials, made with our innovative "Easy or
				Comment" formula. <a href="html/openprojects.html">Read more ...</a>

			</div>

			<div class="articlet">
				<a href="jsp/signUp.html"><div id="signInUp"
						class="articletsImg"></div></a> <br> <br>
				<p class="articletTitle">Sign Up for Your own Virtual Lab Space!</p>
				<br> <br> Want to dive deeper? <br> <br> Sign In
				to get the most comprehensive Profile of your inner workings! Our
				bioinformatics Machine Learning algorithms crawl daily through
				hundreds of biological databases and provide deep insights to the
				data you choose to upload. Quantum entangle with the next self
				knowledge level!
			</div>

		</article>







		<aside class="side">
			<div class="signIn">
				<br> <br>

				<div id="testTubeLabel">
					<form action="DisYouTopyProfile" method="post">

						<div class="icon">
							<i class="fa-solid fa-user-astronaut"></i>
						</div>

						<input type="text" class="inputSignIn" name="username"
							value="KittyQ"><br>

						<div class="icon">
							<i class="fa-solid fa-key"></i>
						</div>

						<input type="password" class="inputSignIn" id="password"
							name="password" value="Puddin"><br> <input
							class="signInButton" name="Sign In" type="submit" value="Sign In">
					</form>



					<!-- Bubble Mixture -->
					<div class="bubblewrap">
						<canvas id="bubble"></canvas>
					</div>



				</div>
			</div>
		</aside>


		<div class="signUp">
			<!-- Join the Madness:
			<p> <p>-->
			<div id="signUpButton">
				<a href="html/signUp.html">Sign Up</a>
			</div>

		</div>

		<div class="forum">
			<div class=sideText>
				<a href="jsp/DYTforumMIG.jsp"> <i class="fa-solid fa-comments">
						<br> <br> Forum
				</i>
				</a>
			</div>
		</div>

		<div class="catshop">
			<div class=sideText>
				<a href="jsp/inConstruction.jsp"> <i class="fa-solid fa-cat">
						<br> <br> Catshop
				</i>
				</a>
			</div>
		</div>

		<div class="shop">
			<div class=sideText>
				<a href="jsp/inConstruction.jsp"> <i
					class="fa-solid fa-cart-shopping"> <br> <br> Shop
				</i>
				</a>
			</div>
		</div>

		<div class="experiment_of_the_day">
			<br> <br>
			<div class=sideText>
				<a href="jsp/openprojects.jsp"> <i class="fa-solid fa-flask">
						<br> <br> Experiment of the Day
				</i>
				</a>
			</div>
		</div>

		<div class="history">
			<div class=sideText>
				<a href="jsp/inConstruction.jsp"> <i
					class="fa-solid fa-book-open"> <br> <br> History
				</i>
				</a>
			</div>
		</div>



		<footer class="main-footer">
			<i class="fa-solid fa-copyright"> DisYouTopy</i>

			<div id="socialMedia">
				<i class="fa-brands fa-twitter"></i> <i
					class="fa-brands fa-facebook"></i> <i
					class="fa-brands fa-facebook-messenger"></i> <i
					class="fa-brands fa-instagram"></i> <i class="fa-brands fa-spotify"></i>
				<i class="fa-brands fa-deviantart"></i> <i class="fa-solid fa-at"></i>

			</div>



		</footer>
	</div>

	<!-- JS -->
	<script src="js/testtubebubbles.js"></script>

</body>
</html>