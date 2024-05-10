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
        <h2>Our Services</h2>
        <div class="service">
            <img src="image/oil.jpg" alt="Service 1">
            <h3><br>Oil Change</h3>
            <br>
            <p>Keep your engine running smoothly with our comprehensive Oil Change Service. 
               Our experienced technicians use top-quality oils and filters to ensure your 
               vehicle's engine remains well-protected and performs at its best. Beyond the oil change, 
               we provide a quick check of critical components, offering you peace of mind on the road. 
               Convenient scheduling and competitive pricing make it easy to give your vehicle the care it deserves.
               Choose our Oil Change Service for efficient, and budget-friendly maintenance..</p>
                <a href="#" class="cta-button">Get Appointment</a>
        </div>
        <div class="service">
            <img src="image/tire.jpeg" alt="Service 2">
            <h3><br>Tire Rotation</h3>
            <br>
            <p>Ensure even tire wear and extend the life of your tires with our Tire Rotation Service. At Vehicle Care Hub, 
               our expert technicians will professionally rotate your vehicle's tires, promoting a smoother ride and improving traction.
               This service not only enhances safety but also maximizes the value of your tire investment.
               Schedule your tire rotation today to keep your vehicle performing at its best.
               Schedule your tire rotation today to keep your vehicle performing at its best
               Schedule your tire rotation today to keep your..</p>
                <a href="#" class="cta-button">Get Appointment</a>
        </div>
        <div class="service">
            <img src="image/brake.jpg" alt="Service 3">
            <h3><br>Brake Inspection</h3>
            <br>
            <p>Ensure your safety on the road with our thorough Brake Inspection service. 
               Our certified technicians meticulously assess the condition of your braking system,
               checking brake pads, rotors, fluid levels, and more. With regular brake inspections, 
               you can catch potential issues early, preventing costly repairs and maintaining optimal stopping power.
               Don't compromise on safety schedule your Brake Inspection at Vehicle Care Hub today
               Don't compromise on safety schedule your Brake Inspection at Vehicle Care Hub today..</p>
                <a href="#" class="cta-button">Get Appointment</a>
        </div>
      
    </section>
    
     <section class="services">
        <h2>Vehicle Inventory Shop</h2>
        <div class="service">
            <img src="image/oil.jpg" alt="Service 1">
            <h3><br>Engine Components</h3>
            <br>
            <p>Engine components are integral parts of a vehicle's powerplant. The cylinder, a chamber within the engine block, 
            houses the piston, which moves up and down, compressing air-fuel mixtures for combustion. The crankshaft converts 
            this motion into rotational energy, powering the vehicle. The camshaft controls intake and exhaust valves, 
            impacting engine performance. Spark plugs ignite the mixture, and valves regulate airflow. The cylinder
             head seals the combustion chamber, and the engine block forms the engine's core structure. Connecting 
             rods link pistons to the crankshaft, and timing belts/chains synchronize camshaft and crankshaft movements.
             These components work harmoniously to generate power and drive your vehicle...</p>
              <a href="Partshop.jsp" class="cta-button">Go to Shop</a>
        </div>
        <div class="service">
            <img src="image/oil.jpg" alt="Service 2">
            <h3><br>Braking System Components</h3>
            <br>
            <p>Engine components are integral parts of a vehicle's powerplant. The cylinder, a chamber within the engine block, 
            houses the piston, which moves up and down, compressing air-fuel mixtures for combustion. The crankshaft converts 
            this motion into rotational energy, powering the vehicle. The camshaft controls intake and exhaust valves, 
            impacting engine performance. Spark plugs ignite the mixture, and valves regulate airflow. The cylinder
             head seals the combustion chamber, and the engine block forms the engine's core structure. Connecting 
             rods link pistons to the crankshaft, and timing belts/chains synchronize camshaft and crankshaft movements.
             These components work harmoniously to generate power and drive your vehicle..</p>
             <a href="Partshop.jsp" class="cta-button">Go to Shop</a>
        </div>
        <div class="service">
            <img src="image/oil.jpg" alt="Service 3">
            <h3><br>Suspension System Components</h3>
            <br>
            <p>Engine components are integral parts of a vehicle's powerplant. The cylinder, a chamber within the engine block, 
            houses the piston, which moves up and down, compressing air-fuel mixtures for combustion. The crankshaft converts 
            this motion into rotational energy, powering the vehicle. The camshaft controls intake and exhaust valves, 
            impacting engine performance. Spark plugs ignite the mixture, and valves regulate airflow. The cylinder
             head seals the combustion chamber,s core structure. Connecting 
             rods link pistons to the crankshaft, and timing belts/chains synchronize camshaft and crankshaft movements.
              to generate power and drive your vehicle..</p>
              <a href="Partshop.jsp" class="cta-button">Go to Shop</a>
        </div>
      
    </section>
    
     <section class="services">
        <h2>Our Fuel Station</h2>
        <div class="service">
            <img src="image/oil.jpg" alt="Service 1">
            <h3><br>Variety of Fuels</h3>
            <br>
            <p>We offer a wide range of high-quality fuels to cater to your specific vehicle's needs..
             Whether you drive a gasoline or diesel-powered vehicle, we've got you covered...</p>
             <a href="fuelStation.jsp" class="cta-button">Go to Fuel Station</a>
        </div>
        <div class="service">
            <img src="image/oil.jpg" alt="Service 2">
            <h3><br>Convenient Payment Options</h3>
            <br>
            <p>We believe in making the fueling ,
             including credit and debit cards, mobile payments, and cash...</p>
              <a href="fuelStation.jsp" class="cta-button">Go to Fuel Station</a>
        </div>
        <div class="service">
            <img src="image/oil.jpg" alt="Service 3">
            <h3><br>24/7 Accessibility</h3>
            <br>
            <p>Our fuel station is open round the clock, so you can refuel at your convenience,
			   day or night.Our team of experienced professionals is always ready to assist you..</p>
			 <a href="fuelStation.jsp" class="cta-button">Go to Fuel Station</a>
        </div>
      
    </section>
    
    <footer>
        <p>&copy; 2023 Vehicle Service. All rights reserved.</p>
    </footer>

</body>
</html>