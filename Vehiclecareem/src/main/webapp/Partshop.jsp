<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="styles.css">
<title>Insert title here</title>
<style>

body, h1, h3, p, ul, li {
    margin: 0;
    padding: 0;
  
}


body {
    font-family: Arial, sans-serif;
    background-color: rgb(69, 69, 69);
    
 
}

header {
    background-color: #333;
    color: #fff;
    padding: 20px 0;
}

nav {
    display: flex;
    justify-content: space-between;
    align-items: center;
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
}

nav ul {
    list-style: none;
    display: flex;
    gap: 20px;
}

nav ul li a {
    text-decoration: none;
    color: #fff;
    font-weight: bold;
    transition: color 0.3s ease;
}

nav ul li a:hover {
    color: #ffc107;
}

.hero {
    background-image: url('image/bg.jpg');
    background-size: cover;
    background-position: center;
    color: rgb(192, 192, 192);
    text-align: center;
    padding: 100px 0;
}

.hero h1 {
    font-size: 48px; 
    margin-bottom: 20px;
    font-family: "Arial", sans-serif;
    color: rgb(0, 6, 60); 
    text-shadow: 4px 4px 6px rgb(192, 192, 192); 
}


.cta-button {
    display: inline-block;
    padding: 10px 20px;
    background-color: #ffc107;
    color: #333;
    text-decoration: none;
    border-radius: 5px;
    margin-top: 20px;
    font-weight: bold;
    transition: background-color 0.3s ease;
    justify-content: center;
  	align-items: center;
}

.cta-button:hover {
    background-color: #333;
    color: #fff;
}




.services {
    text-align: center;
    padding: 50px 0;
}

.services h2 {
    font-size: 40px;
    margin-bottom: 20px;
    font-family: "Arial", sans-serif;
    color: rgb(12, 12, 12); 
    text-shadow: 2px 2px 4px rgb(192, 192, 192); 
}

.services h3 {
	
	font-size: 30px;
	
}



.services p{
	text-align:justify;
}

.service {
    margin: 0 20px;
    display: inline-block;
    text-align: left;
    max-width: 300px;
    background-color: rgb(232, 232, 232);
    border-radius: 10px;
    padding: 20px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease;
}

.service:hover {
    transform: translateY(-5px);
}

.service img {
       max-width: 100%; 
   	   height: auto; 
       max-height: 200px; 
       display: block; 
}

.ser {
    display: inline-block;
    padding: 10px 20px;
    background-color: rgb(0, 0, 255);
    color: #333;
    text-decoration: none;
    border-radius: 5px;
    margin-top: 20px;
    font-weight: bold;
    transition: background-color 0.3s ease;
    align-items: center;
}

.ser:hover {
    background-color: #333;
    color: #fff;
}




footer {
    background-color: #333;
    color: #fff;
    text-align: center;
    padding: 10px 0;
}

/*Slide Show*/


*{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}



.container{
    width: 500px;
    position: absolute;
    transform: translate(-50%,-50%);
    top: 50%;
    left: 50%;
    overflow: hidden;
    border: 10px solid #ffffff;
    border-radius: 8px;
    box-shadow: -1px 5px 15px black;
}


.wrapper{
    width: 100%;
    display: flex;
    animation: slide 16s infinite;
}

img{
    width: 100%;
}


@keyframes slide{
    0%{
        transform: translateX(0);
    }
    25%{
        transform: translateX(0);
    }
    30%{
        transform: translateX(-100%);
    }
    50%{
        transform: translateX(-100%);
    }
    55%{
        transform: translateX(-200%);
    }
    75%{
        transform: translateX(-200%);
    }
    80%{
        transform: translateX(-300%);
    }
    100%{
        transform: translateX(-300%);
    }
}

.button {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

.superhero {
    background-image: url('image/bg.jpg');
    background-size: cover;
    background-position: center;
    color: rgb(192, 192, 192);
    text-align: center;
    padding: 100px 0;
}







</style>
</head>
<body>

   <header>
        <nav>
            <div class="logo">Vehicle Care Hub</div>
            <ul>
            <li><a href="homepage.jsp">Home</a></li>
                <li><a href="servicePage.jsp">Services</a></li>
                <li><a href="Partshop.jsp">Parts Shop</a></li>
                <li><a href="fuelStation.jsp">Fuel Station</a></li>
                <li><a href="login.jsp">Admin</a></li>
            </ul>
        </nav>
    </header>
    
    <section class="hero">
        <div class="hero-content">
            <h1>Your Trusted Vehicle Service Partner</h1>
            <p>We provide top-notch maintenance and repair services for your vehicles.</p>
            <a href="#" class="cta-button">Get Started</a>
        </div>
    </section>
    
    <section class="services">
        <h2>Engine Components</h2>
        <div class="service">
            <img src="image/engine1.jpeg" alt="Service 1">
            <h3><br>Cylinder Heads</h3>
            <br>
            <h4>Price: $42</h4>
            <h4>Rating: 4.0 &#9733;&#9733;&#9733;&#9733;</h4>
                <a href="#" class="cta-button">Get Appointment</a>
        </div>
        <div class="service">
            <img src="image/engine2.jpeg" alt="Service 2">
            <h3><br>Engine Blocks</h3>
            <br>
            <h4>Price: $42</h4>
            <h4>Rating: 4.0 &#9733;&#9733;&#9733;&#9733;</h4>
                <a href="#" class="cta-button">BUY NOW</a>
        </div>
        <div class="service">
            <img src="image/engine3.jpeg" alt="Service 3">
            <h3><br>Gaskets & Seals</h3>
            <br>
            <h4>Price: $42</h4>
            <h4>Rating: 4.0 &#9733;&#9733;&#9733;&#9733;</h4>
                <a href="#" class="cta-button">BUY NOW</a>
        </div>
        
        <div class="service">
            <img src="image/engine3.jpeg" alt="Service 3">
            <h3><br>Gaskets & Seals</h3>
            <br>
            <h4>Price: $42</h4>
            <h4>Rating: 4.0 &#9733;&#9733;&#9733;&#9733;</h4>
                <a href="#" class="cta-button">BUY NOW</a>
        </div>
      
    </section>
    
     <section class="services">
        <h2>Interior & Dashbord Components</h2>
        <div class="service">
            <img src="image/inte1.jpeg" alt="Service 1">
            <h3 align="center"><br>Dashboard Panels</h3>
            <br>
            <h4>Price: $42</h4>
            <h4>Rating: 4.0 &#9733;&#9733;&#9733;&#9733;</h4>
            <a href="#" class="cta-button">BUY NOW</a>
        </div>
        <div class="service">
            <img src="image/inte2.jpeg" alt="Service 2">
            <h3 align="center"><br>Controls & Switches</h3>
            <br>
            <h4>Price: $42</h4>
            <h4>Rating: 4.0 &#9733;&#9733;&#9733;&#9733;</h4>
            <a href="#" class="cta-button">BUY NOW</a>
        </div>
        <div class="service">
            <img src="image/inte3.jpeg" alt="Service 3">
            <h3 align="center"><br>Infotainment Systems</h3>
            <br>
           <h4>Price: $42</h4>
            <h4>Rating: 4.0 &#9733;&#9733;&#9733;&#9733;</h4>
            <a href="#" class="cta-button">BUY NOW</a>
        </div>
        
         <div class="service">
            <img src="image/inte3.jpeg" alt="Service 3">
            <h3 align="center"><br>Infotainment Systems</h3>
            <br>
           <h4>Price: $42</h4>
            <h4>Rating: 4.0 &#9733;&#9733;&#9733;&#9733;</h4>
            <a href="#" class="cta-button">BUY NOW</a>
       
    </section>
    
     <section class="services">
        <h2>Cooling System Parts</h2>
        <div class="service">
            <img src="image/cooling1.jpeg" alt="Service 1">
            <h3><br>Radiators</h3>
            <br>
          <h4>Price: $42</h4>
            <h4>Rating: 4.0 &#9733;&#9733;&#9733;&#9733;</h4>
            <a href="#" class="cta-button">BUY NOW</a>
        </div>
        <div class="service">
            <img src="image/cooling2.jpeg" alt="Service 2">
            <h3><br>Water Pumps</h3>
            <br>
            <h4>Price: $42</h4>
            <h4>Rating: 4.0 &#9733;&#9733;&#9733;&#9733;</h4>
            <a href="#" class="cta-button">BUY NOW</a>
        </div>
        <div class="service">
            <img src="image/cooling3.jpg" alt="Service 3">
            <h3><br>Thermostats</h3>
            <br>
            <h4>Price: $42</h4>
            <h4>Rating: 4.0 &#9733;&#9733;&#9733;&#9733;</h4>
            <a href="#" class="cta-button">BUY NOW</a>
        </div>
        
        <div class="service">
            <img src="image/engine3.jpeg" alt="Service 3">
            <h3><br>Gaskets & Seals</h3>
            <br>
            <h4>Price: $42</h4>
            <h4>Rating: 4.0 &#9733;&#9733;&#9733;&#9733;</h4>
                <a href="#" class="cta-button" style="text-align: center;">BUY NOW</a>
        </div>
      
    </section>
    
    <footer>
        <p>&copy; 2023 Vehicle Service. All rights reserved.</p>
    </footer>

</body>
</html>