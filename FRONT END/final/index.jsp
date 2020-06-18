<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/index.css">
	
	 <script type="text/javascript">const slides=document.querySelector(".slider").children;
	 const prev=document.querySelector(".prev");
	 const next=document.querySelector(".next");
	 const indicator=document.querySelector(".indicator");
	 let index=0;


	   prev.addEventListener("click",function(){
	       prevSlide();
	       updateCircleIndicator(); 
	       resetTimer();
	   })

	   next.addEventListener("click",function(){
	      nextSlide(); 
	      updateCircleIndicator();
	      resetTimer();
	      
	   })

	   // create circle indicators
	    function circleIndicator(){
	        for(let i=0; i< slides.length; i++){
	        	const div=document.createElement("div");
	        	      div.innerHTML=i+1;
	                div.setAttribute("onclick","indicateSlide(this)")
	                div.id=i;
	                if(i==0){
	                	div.className="active";
	                }
	               indicator.appendChild(div);
	        }
	    }
	    circleIndicator();

	    function indicateSlide(element){
	         index=element.id;
	         changeSlide();
	         updateCircleIndicator();
	         resetTimer();
	    }
	     
	    function updateCircleIndicator(){
	    	for(let i=0; i<indicator.children.length; i++){
	    		indicator.children[i].classList.remove("active");
	    	}
	    	indicator.children[index].classList.add("active");
	    }

	   function prevSlide(){
	   	 if(index==0){
	   	 	index=slides.length-1;
	   	 }
	   	 else{
	   	 	index--;
	   	 }
	   	 changeSlide();
	   }

	   function nextSlide(){
	      if(index==slides.length-1){
	      	index=0;
	      }
	      else{
	      	index++;
	      }
	      changeSlide();
	   }

	   function changeSlide(){
	   	       for(let i=0; i<slides.length; i++){
	   	       	 slides[i].classList.remove("active");
	   	       }

	       slides[index].classList.add("active");
	   }

	   function resetTimer(){
	   	  // when click to indicator or controls button 
	   	  // stop timer 
	   	  clearInterval(timer);
	   	  // then started again timer
	   	  timer=setInterval(autoPlay,4000);
	   }
	 
	  
	  function autoPlay(){
	      nextSlide();
	      updateCircleIndicator();
	  }

	  let timer=setInterval(autoPlay,4000);</script>
</head>
<body>
<% 
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Expires","0");

if(session.getAttribute("username")==null){
	response.sendRedirect("login.jsp");
}
%>

<section class="home">
     <div class="slider">
        <div class="slide active" style="background-image: url('assets/images/slider1.jpg')">
            <div class="container">
                <div class="caption">
                    <h1>Let's make your life happier</h1>
                    <p>Healthy Living</p>
                    <a href="staff.jsp">Meet Our Doctors</a>
                </div>
            </div>
        </div>
        <div class="slide" style="background-image: url('assets/images/slider2.jpg')">
            <div class="container">
                <div class="caption">
                    <h1>2. Winter Collection 2020</h1>
                    <p>Lorem ipsum dummy text goes here.</p>
                    <a href="about.jsp">More about us </a>
                </div>
            </div>
        </div>
        <div class="slide" style="background-image: url('assets/images/slider3.jpg')">
            <div class="container">
                <div class="caption">
                    <h1>3. Winter Collection 2020</h1>
                    <p>Lorem ipsum dummy text goes here.</p>
                    <a href="contactus.jsp">Meet us</a>
                </div>
            </div>
        </div>
     </div>
   
    <!-- controls  -->
    <div class="controls">
        <div class="prev"> &lt; </div>
        <div class="next">&#62;</div>
    </div>

    <!-- indicators -->
    <div class="indicator">
    </div>

  </section>

 


</body>
</html>