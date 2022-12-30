<%@ page import="disyoutopy.DisYouserDatabase"%>
<%@ page import="disyoutopy.IDisYouserDatabase"%>
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

//Paths
String picRelPath = "../img/madScientist.png";
 %>




<title>DisYouTopy - the ultimate resource to DIY Science</title>


<!-- Font section -->
<link
	href="https://fonts.googleapis.com/css2?family=Annie+Use+Your+Telescope&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Fredericka+the+Great&display=swap"
	rel="stylesheet">

<!-- CSS section -->

<link rel="stylesheet" type="text/css" rel="noopener"
	href="../css/index.css">
<% if (username != null){%>
<link rel="stylesheet" type="text/css" rel="noopener"
	href="../css/profile.css">
<% } %>



</head>
<body>


	<div class="wrapper">
		<header class="main-header">
			<div class="logoTitle">DisYouTopy</div>

			<% if (username != null){%>
			<div id="userArea">
				<img alt="User Picture" src="<%=picRelPath%>">
				<div id=userStatus>
					Lab Notes of <br>
					<%=username%></div>

			</div>
			<% } %>

		</header>


		<nav class="main-nav">
			<ul>

				<% if (username == null){%>
				<li><a href="../index.jsp">Home</a></li>
				<% }else{ %>
				<li><a href="DisYouTopyProfile.jsp">Home</a></li>
				<% } %>

				<li><a href="openprojects.jsp">Open Projects</a></li>
				<li><a href="diy.jsp">DIY Science</a></li>
				<li><a href="shop.jsp">Shop</a></li>

			</ul>
		</nav>


		<article class="content">

			<div class="articlet">
				The World is Your Laboratory! <br> <br> The DIY community
				is yet very dispersed, specialized and geekingly enigmatic. This
				Site aims to bring all Cyberpunk dreams together and commonly count
				the Electric Sheep! <br> <br> Visit our Guest Forum! <a
					href="DYTforumMIG.jsp">Madly in Glove</a>

			</div>

			<div class="articlet middle">
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
				Want to dive deeper? <br> <br> Sign In to get the most
				comprehensive Profile of your inner workings! Our bioinformatics
				Machine Learning algorithms crawl daily through hundreds of
				biological databases and provide deep insights to the data you
				choose to upload. Quantum entangle with the next level!
			</div>

			<div class="articlet">
				The World is Your Laboratory! <br> <br> The DIY community
				is yet very dispersed, specialized and geekingly enigmatic. This
				Site aims to bring all Cyberpunk dreams together and commonly count
				the Electric Sheep! <br> <br> Visit our Guest Forum! <a
					href="DYTforumMIG.jsp">Madly in Glove</a>

			</div>

			<div class="articlet middle">
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
				Want to dive deeper? <br> <br> Sign In to get the most
				comprehensive Profile of your inner workings! Our bioinformatics
				Machine Learning algorithms crawl daily through hundreds of
				biological databases and provide deep insights to the data you
				choose to upload. Quantum entangle with the next level!
			</div>

		</article>


		<% if (username != null){%>

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

		<% } %>




		<aside class="side">


			<% if (username == null){%>

			<div class="signIn">

				<!-- 
				<p>Laboratory Area
				<p>
					<br>
				<p>Sign In at Own Risk!
				<p>-->
				<br> <br>

				<div id="testTubeLabel">
					<form action="../DisYouTopyProfile" method="post">

						<label for="username">User Name:</label><br> <input
							type="text" class="inputSignIn" name="username"
							value="mad_scientist_h4x0r_88"><br> <label
							for="password">Password:</label><br> <input type="text"
							class="inputSignIn" id="password" name="password"
							value="beware_my_pippette123"><br> <input
							class="button" name="Sign In" type="submit" value="Sign In">
					</form>

				</div>
			</div>

			<% }else{ %>
			<div class="signOut">
				<p>
				<p>
				<div id="signOutButton">

					<a href="../index.jsp">Sign Out</a>
				</div>

			</div>
			<% } %>

		</aside>

		<% if (username == null){%>
		<div class="signUp">
			<!-- Join the Madness:
			<p> <p>-->
			<div id="signUpButton">
				<a href="html/signUp.html">Sign Up</a>
			</div>

		</div>
		<% } %>

		<div class="placeholder"></div>

		<div class="catshop"></div>


		<div class="placeholder1"></div>
		<div class="placeholder2"></div>
		<div class="placeholder3"></div>



		<footer class="main-footer"></footer>
	</div>


</body>
</html>