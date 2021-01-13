
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <!-- meta tags -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="keywords" content="Art Sign Up Form Responsive Widget, Audio and Video players, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, 
		Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design"
    />
    <!-- /meta tags -->
    <!-- custom style sheet -->
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <!-- /custom style sheet -->
    <!-- fontawesome css -->
    <link href="css/fontawesome-all.css" rel="stylesheet" />
    <!-- /fontawesome css -->
    <!-- google fonts-->
    <link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <!-- /google fonts-->

</head>
<style>
body {
    margin: 0;
    padding: 0;
    background: url(cc.jpg) no-repeat 0px 0px;
    min-height: 100vh;
    background-size: cover;
    font-family: 'Raleway', sans-serif;
}
h1 {
    margin: 0;
    color: #ffffff;
    text-align: center;
    font-size: 50px;
    font-weight: 500;
    letter-spacing: 2px;
    padding: 50px 0;
}

h2 {
    margin: 0;
    color: #fc3955;
    font-size: 25px;
    font-weight: 400;
    text-align: center;
    letter-spacing: 1px;
    padding-bottom: 30px;
}

p.w3l-register-p {
    color: #eee;
    font-size: 13px;
    text-align: center;
    margin-top: 2em;
}

.w3l-login-form {
    background: rgba(0, 0, 0, 0.4117647058823529);
    max-width: 500px;
    margin: 0 auto;
    padding: 3em;
    border-radius: 10px;
    box-sizing: border-box;
}

.group {
    display: flex;
    padding: 15px 5px;
    background-color: #ffffff;
}

.group i {
    color: #fc3955;
    font-size: 20px;
    padding: 0 10px;
}

.w3l-form-group {
    margin: 20px 0;
}

.w3l-form-group label {
    display: block;
    text-transform: uppercase;
    font-size: 13px;
    color: #d2d2d2;
    letter-spacing: 2px;
    margin-bottom: 10px;
    font-style: italic;
}

input[type="text"],
input[type="password"] {
    width: 100%;
    border: none;
    box-sizing: border-box;
    background: transparent;
    color: #000;
}

input[type="text"]:focus,
input[type="password"]:focus {
    outline: none;
}

button {
    background: #fc3955;
    color: #ffffff;
    font-size: 13px;
    text-transform: uppercase;
    letter-spacing: 1px;
    border: none;
    padding: 12px 60px;
    cursor: pointer;
    width: 100%;
    border-radius: 6px;
}

button:hover {
    background-color: #00BCD4;
    transition-duration: 5s;
}

.forgot {
    display: flex;
    justify-content: space-between;
    margin: 20px 0;
}

a {
    color: #eee;
    font-size: 14px;
    text-decoration: none;
}

.forgot p {
    color: #ffffff;
    text-align: center;
    margin: 0px;
	font-size: 13px;
}

.register {
    color: #00BCD4;
    text-decoration: none;
}

/*--footer--*/

p.copyright-agileinfo {
    font-size: 15px;
    letter-spacing: 2px;
    color: #fff;
    font-weight: 300;
}

footer p a {
    display: inline-block;
    color: #fff;
    text-decoration: underline;
}

footer p a:hover {
    color: #fff;
    text-decoration: none;
    -webkit-transition: 0.5s all;
    -o-transition: 0.5s all;
    -moz-transition: 0.5s all;
    -ms-transition: 0.5s all;
    transition: 0.5s all;
}

footer {
    padding: 4em 0;
    text-align: center;
}
/*--//footer--*/

/*-- /responsive design --*/

@media(max-width:768px) {
    h1 {
        font-size: 47px;
    }
}

@media(max-width:667px) {
    h1 {
        font-size: 45px;
    }
}

@media(max-width:640px) {
    p.copyright-agileinfo {
        letter-spacing: 1px;
    }
    h1 {
        font-size: 43px;
    }
}

@media(max-width:568px) {
    h1 {
        font-size: 40px;
    }
    p.copyright-agileinfo {
        font-size: 14px;
    }
}

@media(max-width:480px) {
    .w3l-login-form {
    margin: 0 3vw;
}
    h1 {
        font-size: 38px;
    }
    p.copyright-agileinfo {
        line-height: 1.8em;
    }
}

@media(max-width:414px) {
    h1 {
        font-size: 34px;
    }
}

@media(max-width:384px) {
    h1 {
        font-size: 30px;
    }
}

@media(max-width:320px) {
    h1 {
        font-size: 25px;
    }
    .forgot p {
        text-align: left;
    }
    .forgot {
        display: block;
    }
}
        body {font-family: Arial, Helvetica, sans-serif;}
div.scrollmenu {
    background-color: #333;
    overflow: auto;
    white-space: nowrap;
   
}

div.scrollmenu a {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px;
    text-decoration: none;
}

div.scrollmenu a:hover {
    background-color: #777;
    
    
}

 
		
	
		.errmsg{font-family: arial;
    font-size: 20pt;
    color: #ffffff;
    text-align: center;}

     #slidy-container { 
  width: 100%; overflow: hidden; margin: 0 auto;
}


                </style>
<body>
      
        
  <div class="scrollmenu"  >
        <%
 String loginmsg="";
 if(request.getParameter("login")!=null)
    loginmsg="Invalid UserID/Pwd";
 
        
        
        %>
        
        <table cellspacing="5px" width="100%" >
             <th><td><a  href="index.jsp"  >HOME</a></td></th>
            
            <th><td><a  href="Student.jsp"  >Student</a></td></th>
            
         <th><td><a  href="admin.jsp"  >ADMIN</a></td></th>
       
            
        </table>
           
    </div>
             
  <img src="qq.jpeg" alt="logo" style="width:10%" align="left">
  <img src="H.jpg" alt="logo" style="width:10%" align="right">
  
      <hr>
         <h2 style="color: black"> Welcome To Department Of Publication</h2>
    <hr>
   
        <br>
        
        <center>
       <div id="slidy-container">
  <figure id="slidy">
    <img src="66.jpg" alt="eyes" >
   
      <img src="21.jpg" alt="lou" >
    <img src="33.gif" alt="lucie-2" >
    <img src="32.gif" alt="lucie-2" >
    <img src="55.gif" alt="lucie" >
    <img src="11.jpg" alt="lucie" >
    <img src="88.gif" alt="lucie" >
  </figure>
</div>
       </center>    
    <script>
         /* user defined variables */
var timeOnSlide = 3, 		
    // the time each image will remain static on the screen, measured in seconds
timeBetweenSlides = 1, 	
    // the time taken to transition between images, measured in seconds

// test if the browser supports animation, and if it needs a vendor prefix to do so
    animationstring = 'animation',
    animation = false,
    keyframeprefix = '',
    domPrefixes = 'Webkit Moz O Khtml'.split(' '), 
    // array of possible vendor prefixes
    pfx  = '',
    slidy = document.getElementById("slidy"); 
if (slidy.style.animationName !== undefined) { animation = true; } 
// browser supports keyframe animation w/o prefixes

if( animation === false ) {
  for( var i = 0; i < domPrefixes.length; i++ ) {
    if( slidy.style[ domPrefixes[i] + 'AnimationName' ] !== undefined ) {
      pfx = domPrefixes[ i ];
      animationstring = pfx + 'Animation';
      keyframeprefix = '-' + pfx.toLowerCase() + '-';
      animation = true;
      break;
    }
  }
}

if( animation === false ) {
  // animate in JavaScript fallback
} else {
  var images = slidy.getElementsByTagName("img"),
      firstImg = images[0], 
      // get the first image inside the "slidy" element.
      imgWrap = firstImg.cloneNode(false);  // copy it.
  slidy.appendChild(imgWrap); // add the clone to the end of the images
  var imgCount = images.length, // count the number of images in the slide, including the new cloned element
      totalTime = (timeOnSlide + timeBetweenSlides) * (imgCount - 1), // calculate the total length of the animation by multiplying the number of _actual_ images by the amount of time for both static display of each image and motion between them
      slideRatio = (timeOnSlide / totalTime)*100, // determine the percentage of time an induvidual image is held static during the animation
      moveRatio = (timeBetweenSlides / totalTime)*100, // determine the percentage of time for an individual movement
      basePercentage = 100/imgCount, // work out how wide each image should be in the slidy, as a percentage.
      position = 0, // set the initial position of the slidy element
      css = document.createElement("style"); // start marking a new style sheet
  css.type = "text/css";
  css.innerHTML += "#slidy { text-align: left; margin: 0; font-size: 0; position: relative; width: " + (imgCount * 100) + "%;  }\n"; // set the width for the slidy container
  css.innerHTML += "#slidy img { float: left; width: " + basePercentage + "%; }\n";
  css.innerHTML += "@"+keyframeprefix+"keyframes slidy {\n"; 
  for (i=0;i<(imgCount-1); i++) { // 
    position+= slideRatio; // make the keyframe the position of the image
    css.innerHTML += position+"% { left: -"+(i * 100)+"%; }\n";
    position += moveRatio; // make the postion for the _next_ slide
    css.innerHTML += position+"% { left: -"+((i+1) * 100)+"%; }\n";
}
  css.innerHTML += "}\n";
  css.innerHTML += "#slidy { left: 0%; "+keyframeprefix+"transform: translate3d(0,0,0); "+keyframeprefix+"animation: "+totalTime+"s slidy infinite; }\n"; // call on the completed keyframe animation sequence
document.body.appendChild(css); // add the new stylesheet to the end of the document
}

         
         </script>
  
    
    
    

</body>

</html>