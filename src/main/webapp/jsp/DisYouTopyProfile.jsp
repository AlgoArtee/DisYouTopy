<%@page import="disyoutopy.DisYouserDatabase"%>
<%@page import="disyoutopy.IDisYouserDatabase"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%
IDisYouserDatabase dyDatabase = DisYouserDatabase.getDisYouserDatabase();

// Read Username
String username = request.getParameter("username");
 %> 
 
 
 
<!-- Font section -->
<link href="https://fonts.googleapis.com/css2?family=Annie+Use+Your+Telescope&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Fredericka+the+Great&display=swap" rel="stylesheet">


<!-- CSS section 
<link rel="stylesheet" type="text/css" rel="noopener" href="../css/index.css">-->

<!-- Test 
<link rel="stylesheet" type="text/css" rel="noopener" href="../css/profile.css">-->

<link rel="stylesheet" type="text/css" rel="noopener" href="css/profile.css">



<title>Laboratory Area of <%=username%> </title>
</head>

<body>


<div class="wrapper">
	<header class="main-header">
	<div class="logoTitle">
		DisYouTopy
	</div>
	
	<div id="userArea">
	<!-- Test 
	<img alt="User Picture" src="../img/madScientist.png">-->
	
	<img alt="User Picture" src="img/madScientist.png">
		
	<div id=userStatus>Lab Notes of <br> <%=username%></div>	
	
	</div>

	
	</header>
	
	
  <nav class="main-nav">
    <ul>
      <li><a href="">Home</a></li>
      <li><a href="html/openprojects.html">Open Projects</a></li>
      <li><a href="html/diy.html">DIY Science</a></li>
      <li><a href="html/shop.html">Shop</a></li>
      
    </ul>
  </nav>
  <article class="content">
    <h1>The World is Your Laboratory!</h1>
    <p class="quote">Madly in Glove</p>
    <p> This is the ultimate interface to the future of your existence!</p>
    <p> The DIY community is yet very dispersed, specialized and geekingly enigmatic. 
    	This Site aims to bring all Cyberpunk dreams together and commonly count the Electric Sheep! <br> <br>
    	
    	Join this Virtual Space and be part of the Nexus of Intelligence for everything You can do - 
    	to understand, analyze and experiment with in Human Existence. Quantum entangle with the next level! <br></p>
  </article>
  
  
  
  <aside class="laboratory">
  
  
	  <nav>
		<ul class="analysis-menu nav-vertical">
		
			<!-- Moleculome -->
			<li> <a href="../html/laboratory/moleculome.html" class="nav-active">Moleculome</a>
			
				<ul>
					<li><a href="../html/laboratory/glycome.html">Glycome</a></li>
					<li><a href="../html/laboratory/ionome.html">Ionome</a></li>
					<li><a href="../html/laboratory/lipidome.html">Lipidome</a></li>
					
					<li><a href="../html/laboratory/metabolome.html">Metabolome</a>
						<ul>
							<li><a href="../html/laboratory/volatilome.html">Volatilome</a></li>
						</ul>
					
					</li>
					
					<li><a href="../html/laboratory/metallome.html">Metallome</a></li>
					<li><a href="../html/laboratory/proteome.html">Proteome</a></li>
				
				
				</ul>
			</li>
			
			
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
															
											</ul>
										</li>
									</ul>
								</li>
								
								</ul>
							</li>
						</ul>
					</li>
					
					<li><a href="../html/laboratory/pharmacogenome.html">Pharmacogenome</a></li>
					<li><a href="../html/laboratory/regulome.html">Regulome</a></li>
			
				</ul>

			</li>
			
			
			<!-- Epigenome -->
			<li><a href="../html/laboratory/epigenome.html">Epigenome</a>
				<ul>
				
					<li><a href="../html/laboratory/methylome.html">Methylome</a>
				
				</ul>
	
			</li>
			
			
			
			<!-- Physiome -->
			<li><a href="../html/laboratory/physiome.html">Physiome</a>
			
				<ul>
				
					<li><a href="../html/laboratory/connectome.html">Connectome</a></li>
					
					<li><a href="../html/laboratory/interactome.html">Interactome</a></li>
					
					<li><a href="../html/laboratory/dynome.html">Dynome</a></li>
					
					<li><a href="../html/laboratory/mechanome.html">Mechanome</a></li>
					
					<li><a href="../html/laboratory/regulome.html">Regulome</a></li>
				
				
				</ul>
			
			</li>
			
			
			
			<li><a href="../html/laboratory/cytome.html">Cytome</a></li>
			
			<li><a href="../html/laboratory/microbiome.html">Microbiome</a></li>
			

      
		</ul>
  	  </nav>
  
  
  </aside>
  
  
  
  
  
  <aside class="side">
  
  
	  <div class="signOut">
		  <p> Profile <p>  
		  
		  <div id="signOutButton"><a href="index.html">Sign Out</a></div>
		  
	  </div>
  
  
  </aside>
  
  
  
  <div class="catshop">Futuristic Catshop</div>
  
  
  
  <footer class="main-footer">The footer</footer>
</div>





</body>

</html>