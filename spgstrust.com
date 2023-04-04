# TrustWebPage/* Reset styles */
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

/* Global styles */
body {
	font-family: Arial, sans-serif;
	font-size: 16px;
	line-height: 1.5;
	color: #333;
}

a {
	text-decoration: none;
	color: #333;
}

ul {
	list-style: none;
}

/* Header styles */
header {
  background-color: #f8f8f8;
  padding: 20px;
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  align-items: center;
}

.logo {
  margin-right: 20px;
}

.logo img {
  display: block;
  max-width: 100%;
  height: auto;
}

.trust-name {
  text-align: center;
  flex-basis: 100%;
  margin-top: 10px;
}

.trust-name h1 {
  margin: 0;
  font-size: 24px;
  background: linear-gradient(45deg, #FFA500, #FFA500 50%, #00FF00 50%, #00FF00);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}

nav {
  flex-basis: 100%;
  margin-top: 10px;
}

nav ul {
  list-style: none;
  margin: 0;
  padding: 0;
  display: flex;
  justify-content: center;
}

nav li {
  margin-right: 20px;
}

nav li:last-child {
  margin-right: 0;
}

nav a {
  text-decoration: none;
  color: #ADD8E6;
  font-size: 18px;
  font-weight: bold;
  transition: color 0.3s ease-in-out;
   border-bottom: 2px solid #ADD8E6;
	padding-bottom: 3px;
}


nav a:hover {
  color: #666;
  border-bottom: 2px solid #666;
}


/* Main styles */
main {
	padding: 40px;
}

section {
	margin-bottom: 40px;
}

section h2 {
	font-size: 28px;
	margin-bottom: 20px;
}

section ul li:before {
	/*content: "✓"; */
	margin-right: 10px;
}
#slideshow {
  position: relative;
  width: 100%;
  height: 500px;
}

#slideshow img {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  opacity: 0;
  transition: opacity 1s ease;
}

#slideshow img.active {
  opacity: 1;
}

#trust-members {
  width: 100%;
  overflow: hidden;
  padding: 20px;
}

#trust-members h2 {
  text-align: center;
  margin-bottom: 20px;
}

#trust-members ul {
  list-style: none;
  margin: 0;
  padding: 0;
}

#trust-members li {
  float: left;
  margin-right: 20px;
  margin-bottom: 20px;
  width: 30%;
  box-sizing: border-box;
  text-align: center;
}

#trust-members li img {
  max-width: 100%;
  height: 100%;
}

#trust-members li .member-details {
  float: center;
  text-align: center;
  margin-left: 20px;
}

#trust-members li h3 {
  margin-top: 0;
  margin-bottom: 5px;
}

#trust-members li p {
  margin: 0;
}


/* Footer styles */
footer {
	background-color: #333;
	color: #fff;
	padding: 20px;
	text-align: center;
}

footer p {
	margin: 0;
}

footer a {
	color: #fff;
}

<!DOCTYPE html>
<html>
<head>
	<title>Sri Pasupathinath Gosamrakshana Saala Trust</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="style.css">
</head>
<body>
	<header>
		<div class="logo">
			<img src="TrustLogo.ico" alt="Sri Pasupathinath Gosamarakshana Saala Trust Logo" width="80" height="80">
		</div>
		<div class="trust-name">
			<h1>Sri Pasupathinath Gosamarakshana Saala Trust</h1>
		</div>
		<nav>
			<ul>
				<li><a href="#about">About</a></li>
				<li><a href="#trust-members">Trust Members</a></li>
				<li><a href="#projects">Projects</a></li>
				<li><a href="#contact">Contact</a></li>
			</ul>
		</nav>
	</header>
	
	<main>
		<section>
			<div id="slideshow">
			<img src="one.jpg" alt="Image 1">
			<img src="two.jpg" alt="Image 2">
			<img src="three.jpg" alt="Image 3">
		</div>
		</section>

		<section id="about">
			<h2>About Us</h2>
			<p>Welcome to Sri Pasupathinath Gosamrakshana Saala Trust, a non-profit organization dedicated to the protection and preservation of cows. Our mission is to provide a safe and healthy environment for cows and promote their well-being through various initiatives.</p>
			<p>Founded in 2022, our trust has been actively involved in various projects related to cow protection such as cow shelters, veterinary camps, and awareness programs. We believe that cows are sacred and deserve to be treated with respect and care.</p>
		</section>

		<section id="trust-members">
  <h2>Our Trust Members</h2>
  <ul>
    <li>
      <img src="member1.jpg" alt="Member 1" width="200" height="200">
       <div class="member-details">
        <h3>Simhala Mohana</h3>
        <p>Founder & Chairman</p>
		<p>Mobile: +91 9490002297 </p>
        <p>Email: simhala.mohana@gmail.com</p>
      </div>
    </li>
    <li>
      <img src="member2.jpg" alt="Member 2" width="200" height="200">
      <div class="member-details">
        <h3>Badikala Vimala</h3>
        <p>Trustee</p>
		<p>Mobile: +91 9573058616 </p>
        <p>Email: badikalavimala@gmail.com</p>
      </div>
    </li>
    <li>
      <img src="member3.jpg" alt="Member 3" width="200" height="200"v>
       <div class="member-details">
        <h3>Simhala Sai Sreenivas</h3>
        <p>Trustee</p>
		<p>Mobile: +91 7660071170 </p>
        <p>Email: simhalasaisreenivas@gmail.com</p>
      </div>
    </li>
  </ul>
</section>

		<section id="projects">
			<h2>Our Projects</h2>
			<ul>
				<li>Cow Shelters</li>
				<li>Veterinary Camps</li>
				<li>Cow Adoption Programs</li>
				<li>Cow Milk Distribution</li>
			</ul>
		</section>
		
		<section id="contact">
			<h2>Contact Us</h2>
			<p>If you have any questions or would like to get involved with our trust, please feel free to contact us:</p>
			<ul>
				<li>Address: 2-39, Kuravapalli, Jangavandlapalli Post, Chinnagottigallu Mandal, Tirupati Dist, Andhra Pradesh, 517193</li>
				<li>Email: spgstrust@gmail.com</li>
				<li>Phone: +91 9490002297</li>
			</ul>
		</section>
	</main>
	
	<footer>
		<p>&copy; 2023 Sri Pasupathinath Gosamrakshana Saala Trust. All rights reserved.</p>
	</footer>
	
	
	 <script>
      var slideIndex = 0;
      showSlides();

      function showSlides() {
        var slides = document.getElementById("slideshow").getElementsByTagName("img");
        for (var i = 0; i < slides.length; i++) {
          slides[i].classList.remove("active");
        }
        slideIndex++;
        if (slideIndex > slides.length) {
          slideIndex = 1;
        }
        slides[slideIndex-1].classList.add("active");
        setTimeout(showSlides, 5000);
      }
    </script>
</body>
</html>
