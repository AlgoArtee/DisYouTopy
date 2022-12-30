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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Indie+Flower&display=swap" rel="stylesheet">

<link rel="stylesheet" type="text/css" rel="noopener" href="../css/index.css">

<link rel="stylesheet" type="text/css" rel="noopener" href="../css/testtubebubbles.css">

<% if (username != null){%>
<link rel="stylesheet" type="text/css" rel="noopener" href="../css/profile.css">
<link rel="stylesheet" type="text/css" rel="noopener" href="../css/openprojects_profile.css">
<% } else { %>
<link rel="stylesheet" type="text/css" rel="noopener" href="../css/openprojects.css">
<% } %>

<!-- JS -->
	<script src="https://kit.fontawesome.com/a99b4ad582.js" crossorigin="anonymous"></script>

</head>
<body>


	<div class="wrapper">
		<header class="main-header">
			<div class="logoTitle">DisYouTopy</div>
			
	
			
		</header>


		<nav class="main-nav">
			<ul>

				<% if (username == null){%>
				<li><a href="../index.jsp">Home</a></li>
				<% }else{ %>
				<li><a href="DisYouTopyProfile.jsp">Home</a></li>
				<% } %>

				<li><a href="openprojects.jsp">Open Projects</a></li>
				<li><a href="DYTforumMIG.jsp">Forum</a></li>
				<li><a href="shop.jsp">Shop</a></li>

			</ul>
		</nav>


		<article class="content">
		
			<br>
			Choose one of these fabulous projects: <br>

			<div class="articlet">
			
				<a href="#ravioli">
				<div id="openProjects" class="articletsImg"></div></a>
					
				<br> <br>
				<p class="articletTitle"> Dissapearing Raviolis</p>
				<br> <br>

			</div>

			<div class="articlet middle">
				<a href="#russian">
				<div id="openProjects" class="articletsImg"></div></a>
					
				<br> <br>
				<p class="articletTitle"> White Russian Krispies</p>
				<br> <br>

			</div>
			
			<div class="articlet">
				<a href="#volcano">
				<div id="openProjects" class="articletsImg"></div></a>
					
				<br> <br>
				<p class="articletTitle"> Build Your Own Volcano!</p>
				<br> <br>
				
			</div>
			
			


			<div class="articlet">
				<a href="#dna">
				<div id="openProjects" class="articletsImg"></div></a>
					
				<br> <br>
				<p class="articletTitle"> Know Thyself Deeper: Extract Your DNA!</p>
				<br> <br>

			</div>

			<div class="articlet middle">
				<a href="#sonic_pi">
				<div id="openProjects" class="articletsImg"></div></a>
					
				<br> <br>
				<p class="articletTitle"> Programm Your Own Music with Sonic Pi!</p>
				<br> <br>

			</div>

			<div class="articlet">
				<a href="#meeting_indicator">
				<div id="openProjects" class="articletsImg"></div></a>
					
				<br> <br>
				<p class="articletTitle"> Need More Privacy at Home? Build your Own Meeting Indicator!</p>
				<br> <br>
			</div>
			
			<div class="articlet">
				<a href="#retro_case">
				<div id="openProjects" class="articletsImg"></div></a>
					
				<br> <br>
				<p class="articletTitle"> Miss the Old Computing Days? You can now Build a Retro Tower Case for Your RasPi!</p>
				<br> <br>
			</div>
			
			
			
			
			
			
			

		</article>
		
		<% if (username != null){%>
		
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

		<% } %>



		<aside class="side">

			<% if (username == null){%>
			<div class="signIn">
				<br>	<br>
					
				<div id="testTubeLabel">
					<form action="../DisYouTopyProfile" method="post">
	
						<div class="icon">
						<i class="fa-solid fa-user-astronaut"></i>
						</div>
						
						<input type="text" class="inputSignIn" name="username"
							value="KittyQ"><br>
						
						<div class="icon">
						<i class="fa-solid fa-key"></i>
						</div>
						
						<input type="password" class="inputSignIn"
							id="password" name="password" value="Puddin"><br>
	
						<input class="signInButton" name="Sign In" type="submit" value="Sign In">
					</form>
					

					
					<!-- Bubble Mixture -->
					<div class="bubblewrap">
						<canvas id="bubble"></canvas>
					</div>
					

				
				</div>
			</div>
			<% }else{ %>
			
			
			<div id="userArea">
				<img alt="User Picture" src="<%=picRelPath%>">
				<div id=userStatus>
					Lab Notes of <br>
					<%=username%></div>

			</div>
			
			<!-- Bubble Mixture -->
			<div class="bubblewrap">
				<canvas id="bubble"></canvas>
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
		<% }else{ %>
			<div class="signOut">
				EXIT
				<a href="../index.jsp">	<div id="signOutButton"></div></a>
			</div>
		<% } %>


		
		
		<!-- Projects How To's -->
		<div class="projects">
		
			<!-- Project 1 -->
			<div id="ravioli" class="project"><h2>Disappearing Transparent Raviolis</h2>
					<br> <br>
					Ever wonder what exactly is in your raviolis before you even take a bite? Wouldn't you like to see the filling before stuffing them 
					in your face? If you would, then you're a foodie and this recipe is perfect for you. 
					
					<br>With these raviolis, you can see what's inside and then once you pop them in your mouth, they pop, release their intense 
					flavors and disappear. It's like a magic trick in your mouth and you have Chef Ferran Adria of el Bulli to thank for it.
					
					<br> <br>
					<b>The Science Behind It:</b> <br> <br>Soy lecithin found in the edible film disc ravioli wrappers. You've probably seen this name on a 
					million ingredient labels. It's an emulsifier, a substance that takes a liquid and turns it into a foam, which in turn 
					enables the mixture of other substances that otherwise would not mix, like oil and water. 
					
					<br>Soy lecithin is derived from soybean oil which contains phospholipids. Phospholipids are chemical compounds that can dissolve in 
					both fat and water, a characteristic that's particularly helpful when you're trying to mix oil and water found in sauces like 
					mayonnaise and hollandaise.
					
					<br>Also, lecithin is a substance that is found in the membranes (thin, flexible outer layer) of every cell of every living thing, which is probably why it was ideal to use it in the manufacturing of the transparent ravioli wrappers (oblates) featured in the recipe below.
					<br> <br>
					<b>Ingredients:</b> <br> <br>
					
					<ul>
					<li>Oblates (edible film discs to wrap the raviolis)</li>
					<li>Your choice of filling (so long as it has low-water content. Examples: foie gras, nutella, prosciutto, 
					dried fruit, or vegetable coated in oil)</li>
					<li>Sealer device</li>
					</ul>
					<br> <br>
					<b>How to Make It:</b> <br> <br> Fold the oblates in half and set the timer on the sealer between 1 and 1.5. 
					<br>Use the sealer to seal one side of the ravioli, creating an open-ended pouch. 
					<br>Fill the pouch with desired filling using a squeeze bottle. 
					<br>Seal the open-ended side of the pouch to close it using the sealer.
			</div>
			
			<!-- Project 2 -->
			
			<div id="russian" class="project"><h2>White Russian Krispies</h2>
					<br> <br>
					Yes, The Dude would approve. You can now have your cult classic cocktail and eat it too. <br>What's great about mixologist 
					Eben Freeman's recipe is that it's not just some cereal drowned in two kinds of liquor and milk. Instead, the flavor of 
					Kahlua is infused into the Rice Krispies cereal via dehydration. 
					<br>The moisture disappears and you're left with a coffee-flavored cereal. So now you can snap, crackle, pop and buzz your way to happy this morning in more ways than one.
					<br> <br>
					<b>The Science Behind It:</b> <br> <br>Dehydration. Dehydration is the process of drawing moisture (water) out of food in an effort 
					to preserve or dry up its surface, according to Molecular Gastronomy: Exploring the Science of Flavor by Herve This. 
					<br>Traditionally, this technique been used primarily for preserving a surplus of foods like herbs or for more convenient snacking 
					(like dried fruit). In molecular gastronomy, however, dehydration is also used to create crunchy textures, 
					flavor powders or preserve the crispiness (and flavors) of foods like Kahlua-infused Rice Krispies. 
					<br>Dehydration can be performed using a dehydrator or a common household oven, provided that the oven can be set to 
					temperatures below 200 degrees Fahrenheit. <br> <br>
					
					<b>Ingredients:</b><br> <br>
					
					<ul>
						<li>1/2 cup of half and half</li>
						<li>1/2 cup of Kahlua liquor</li>
						<li>1/8 cup of Rice Krispies cereal</li>
						<li>1/2 tsp. of sugar</li>
						<li>1/4 cup of vodka</li>
					</ul>
					<br> <br>
					
					<b>How to Make It:</b> <br> <br>You'll want to make the Kahlua-infused Krispies ahead of time for this crunchy cocktail. 
					<br>Toss the cereal with 1/4 cup of the Kahlua liquor in order to coat, then in a dehydrator (or an oven on its lowest setting), 
					dehydrate the Kahlua-coated cereal for one hour. Repeat the aforementioned step for another coat of Kahlua. 
					<br>Depending on your dehydrator or oven you may need to leave the cereal in it overnight to complete the drying/crisping process.
					<br>
					Once you have the cereal infused with the Kahlua, you can move on to the "milk" part. Combine ice, vodka and sugar in a cocktail shaker and shake until the sugar has dissolved. Strain the vodka/sugar and pour and stir it into the half and half. When ready to serve, pour Kahlua Krispies into a bowl and add half and half/vodka/sugar mixture. Stir to combine.
			</div>	
			
			
			<!-- Project 3 -->
			
			<div id="volcano" class="project"><h2>Making a Volcano</h2>
					<br> <br>		
					<b>Materials and tools:</b> <br> <br>
					
					<ul>
					<li>flask;</li>
					
					<li>water;</li>
					
					<li>baking soda;</li>
					
					<li>citric acid;</li>
					
					<li>dishwashing liquid;</li>
					
					<li>container to mix ingredients and spoon.</li>
					</ul>
					<br> <br>
					
					<b>Experimental procedure:</b> <br> <br>
					
					Fill the flask 2/3 full of water. Add a few drops of dishwashing liquid and five tablespoons of baking soda.
					Dilute citric acid (recommended 5 tablespoons per 1.5 glass of water) in a separate container.
					<br>Stir the mixture in the flask thoroughly. Slowly pour the glass of citric acid into the flask.
					
					Experiment results: <br> <br>
					
					Foam starts to pour out of the flask. <br> <br>
					
					<b>The Science Behind It:</b> <br> <br>We get the effect of the foam erupting in the process of a neutralization reaction. 
					When interacting with an alkali (soda), the acid neutralizes it, releasing carbon dioxide, which makes the mixture 
					foam and forces the mass to flow out of the container. The dishwashing liquid makes the "lava" bubble more strongly: <br> <br> 
					
					H3C6h2O7 + 3NaH­CO3 -> Na3C6h2O7 + 3CO2 + 3H2O
	
			</div>		
			
			
			<!-- Project 4 -->
			
			<div id="dna" class="project"><h2>Extract Your DNA</h2>
			<br> <br>
					Every one of your cells contains DNA, the molecular blueprint that makes you you. Accessing that blueprint may seem like a job for 
					scientists. But extracting DNA from your cells is actually surprisingly simple.<br>
					
					<a target="_blank" href="https://twitter.com/100ideas/">Mac Cowell</a>, an advocate for open-source biotechnology, created a set of 
					simple instructions that lets anyone <a target="_blank" href="http://www.instructables.com/id/5-minute-DNA-Extraction-in-a-Shot-Glass/?ALLSTEPS">isolate her own DNA</a> 
					in mere minutes. The rough-and-ready procedure uses basic kitchen supplies, including the best possible container: a shot glass. <br> 
					This DIY process won't create the cleanest sample, but avid biohackers can <a target="_blank" href="http://www.sciencebuddies.org/science-fair-projects/project_ideas/BioChem_p015.shtml#procedure/">purify the DNA</a> 
					after it's extracted. Once you have a pure sample, you can try <a target="_blank" href="http://www.scq.ubc.ca/the-macgyver-project-genomic-dna-extraction-and-gel-electrophoresis-experiments-using-everyday-materials/">sorting the DNA fragments by size</a> 
					or building a <a target="_self" href="https://www.popsci.com/diy/article/2013-04/gene-machine/">DIY DNA-copying machine</a>. <br> <br>
					
					<b>Materials + Tools</b> <br> <br>
					
					<ul><li>A clean shot glass</li><li>Saliva</li><li>Dish soap</li><li>Table salt</li>
					<li>Pineapple juice (or meat tenderizer, or cleaning solution for contact lenses)</li>
					<li>Chilled alcohol (120 proof or higher)—we used high-proof rum</li><li>Drinking straw</li>
					<li>Toothpick</li></ul>
					
					<br>		
					
					<b>Instructions</b> <br> <br>
					
					<ol><li>Spit into the shot glass until it's a quarter full of your saliva. (If you're having trouble salivating, 
					imagine you're sucking a lemon-flavored candy.) The saliva is laden with cells, shed from your cheeks and mouth lining, 
					which are full of DNA.</li><li>Add a few drops of dish soap. This will break open the cells, a process called "lysing".</li>
					<li>Add a tiny splash of pineapple juice. This will clean up some of the proteins that have spilled out of your cells alongside your DNA.</li>
					<li>Add a pinch of salt. This causes the DNA to start clumping together.</li><li>Swirl the shot glass to mix the ingredients.</li>
					<li>Gently fill the rest of the shot glass with the high-proof alcohol, which should sit in a layer on top of the mixture. 
					To prevent it from mixing too much, you can add the alcohol gradually with a drinking straw: Put the straw into the alcohol, cap it 
					with your finger, hold the straw right over the liquid in the shot glass, and release.</li>
					<li>Use a toothpick to spool up the cloudy, snot-like material that has formed in the glass. This is your DNA—a gross result of 
					some cool science.</li></ol>
					      
			</div>	
			
			<br>
			
			<!-- Project 5 -->
			
			<div id="sonic_pi" class="project"><h2>Make Music with Sonic Pi</h2>
					<br> <br>
					Sonic Pi turns your Raspberry Pi into a music-coding machine, letting you use basic programming skills to make music. 
					This can be anything from sound effects and short samples to full-length songs.
					<br>
					Although Sonic Pi uses its own programming language, the principles you'll learn while making songs translate into more 
					traditional languages. Leave yourself plenty of time to play around with this one---it can be quite addicting!
					<br>
					Sonic Pi comes preinstalled with Raspberry Pi OS, making it a perfect Raspberry Pi beginner project for anyone with some 
					musical ability.
					<br> <br>
					
					Start with the official tutorial <a target="_blank" href="https://sonic-pi.net/tutorial.html#section-1">HERE</a>.
					      
			</div>	
			
			
			<!-- Project 6 -->
			
			<div id="meeting_indicator" class="project"><h2>Make a Meeting Indicator Screen with a Raspberry Pi</h2>
					<br> <br>
					Let others in your home know when you're in a meeting!
					<br>
	
					With so many of us working from home, there's a new need to let others in our homes know when we're in meetings during the workday. 
			 		Rebecca Deprey devised a super cool "meeting indicator" that can:
					<br> <br>
					<ul>
						<li>Check Outlook calendar every 15 minutes to see if a meeting is happening</li>
						<li>Turn the LCD red if you're in a meeting or green if you're not</li>
						<li>Turn off the LCD screen outside of work hours</li>
						
					</ul>  
					<br>	
					
					Follow her awesome tutorial <a target="_blank" href="https://www.hackster.io/rdeprey/make-a-meeting-indicator-screen-with-a-raspberry-pi-16e211">HERE</a>.    
			</div>
			
			<br>	
			
			
			<!-- Project 7 -->
			
			<div id="retro_case" class="project"><h2>Make a Retro Case for Your Raspberry</h2>
					<br> <br>
					Do you feel especially crafty today? Get your 3D Printer and dive into the aesthtics of long gone computing days!	
					The retro style beige Raspberry Pi 4 tower case will have: <br> <br>
					
					<ul>
						<li>a working power button </li>
						<li>LED</li>
						<li>IO activity LED </li>
						<li>2 HDMI ports </li>
						<li>audio jack </li>
						<li>USB-C power on the rear of the case </li>
						<li>space for a 40mm exhaust fan and a 40mm or 50mm front intake fan </li>
					</ul>
					
					<br>
					The SD/microSD card can be inserted like a floppy disk to swap between different operating systems. 
					<br>
					
					There is also enough space for a large cooler like the ICE tower.
					<br>
					Download all the needed files and follow this tutorial on <a target="_blank" href="https://www.thingiverse.com/thing:5215750">thingiverse</a>.    
			</div>
			
			<br>
			
		</div>	
		
				
		
		<!-- Projects End -->	

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
		
		
		
		</footer>
	</div>
	
<!-- JS -->
	<script src="../js/testtubebubbles.js"></script>

</body>
</html>