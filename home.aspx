<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Weddin_Planner.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>

  
body {
  font-family: Arial;
  margin: 0;
}

* {
  box-sizing: border-box;
}

img {
  vertical-align: middle;
}

/* Position the image container (needed to position the left and right arrows) */
.container {
  position: relative;
}

/* Hide the images by default */
.mySlides {
  display: none;
}

/* Add a pointer when hovering over the thumbnail images */
.cursor {
  cursor: pointer;
}

/* Next & previous buttons */
.prev,
.next {
  cursor: pointer;
  position: absolute;
  top: 40%;
  width: auto;
  padding: 16px;
  margin-top: -50px;
  color: white;
  font-weight: bold;
  font-size: 20px;
  border-radius: 0 3px 3px 0;
  user-select: none;
  -webkit-user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover,
.next:hover {
  background-color: rgba(0, 0, 0, 0.8);
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* Container for image text */
.caption-container {
  text-align: center;
  background-color: #222;
  padding: 2px 16px;
  color: white;
}

.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Six columns side by side */
.column {
  float: left;
  width: 16.66%;
}

/* Add a transparency effect for thumnbail images */
.demo {
  opacity: 0.6;
}

.active,
.demo:hover {
  opacity: 1;
}

* {box-sizing: border-box;}


#navbar {
  overflow: hidden;
  background-color:floralwhite;
  padding:70px 100px 20px;
  transition: 0.4s;
  position: fixed;
  width: 100%;
  top: 0;
  z-index: 99;
}

#navbar a {
  float: left;
  
  text-align: center;
  padding: 70px 100px 20px 30px;
  text-decoration: none;
  font-size: 28px; 
  font-family:'Californian FB';
  color:#3a475b;
  line-height: 15px;
  border-radius: 4px;
}

#navbar #logo {
  font-size: 55px;
  font-weight: bold;
  transition: 0.4s;
    padding: 70px 100px 20px 30px;

}

#navbar a.active {
  background-color:burlywood;
  color: white;
}

#navbar-right {
  float: right;
}

@media screen and (max-width: 580px) {
  #navbar {
    padding: 20px 10px !important;
  }
  #navbar a {
    float: none;
    display: block;
    text-align: left;
  }
  #navbar-right {
    float: none;
  }
        #auto-style6 {
        padding:20px 20px 20px 150px;
        font-size:x-large;
        }
}

/*the blue part after photos*/
#home-featured-in {
    background-color: #3a475b;
}

.third_part{
    background-color:floralwhite;
}

.Index-page {
    position: relative;
    overflow: hidden;
    background-color: #fff;
    -webkit-font-smoothing: subpixel-antialiased;
}
.image-subtitle-wrapper {
    padding:100px 100px 100px 100px;
    font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans';
}

.button1 {
  background-color: #ddd;
  border: none;
  color: black;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 16px;
}
    </style>


</head>

<body>
    <form id="form1" runat="server">
<div id="navbar">
    <img src="images/B.png" style="width:20%; height:20%;"/>
  <div id="navbar-right" class="auto-style42">
    <a href="#contact">Contact</a>
    <a href="Services.aspx">Services</a>
    <a href="Login.aspx">Login</a>
    <a href="About.aspx">About</a>
  </div>
</div>


<%--    script of the images--%>
    <script>
        // When the user scrolls down 80px from the top of the document, resize the navbar's padding and the logo's font size
        window.onscroll = function () { scrollFunction() };

        function scrollFunction() {
            if (document.body.scrollTop > 80 || document.documentElement.scrollTop > 80) {
                document.getElementById("navbar").style.padding = "30px 10px";
                document.getElementById("logo").style.fontSize = "25px";
            } else {
                document.getElementById("navbar").style.padding = "80px 10px";
                document.getElementById("logo").style.fontSize = "35px";
            }
        }
    </script>



<%--    the images show--%>
<div class="container">
  <div class="mySlides">
    <div class="numbertext">1 / 6</div>
    <img src="images/back1.jpg" style="width:100%"/>
  </div>

  <div class="mySlides">
    <div class="numbertext">2 / 6</div>
    <img src="images/back2.jpg" style="width:100%"/>
  </div>

  <div class="mySlides">
    <div class="numbertext">3 / 6</div>
    <img src="images/back3.jpg" style="width:100%"/>
  </div>
    
  <div class="mySlides">
    <div class="numbertext">4 / 6</div>
    <img src="images/back4.jpg" style="width:100%"/>
  </div>

  <div class="mySlides">
    <div class="numbertext">5 / 6</div>
    <img src="images/back5.jpg" style="width:100%"/>
  </div>
    
  <div class="mySlides">
    <div class="numbertext">6 / 6</div>
    <img src="images/back6.jpg" style="width:100%"/>
  </div>
    
  <a class="prev" onclick="plusSlides(-1)">❮</a>
  <a class="next" onclick="plusSlides(1)">❯</a>

  <div class="caption-container">
    <p id="caption"></p>
  </div>

  <div class="row">
    <div class="column">
      <img class="demo cursor" src="images/back1.jpg" style="width:100%" onclick="currentSlide(1)" />
    </div>
    <div class="column">
      <img class="demo cursor" src="images/back2.jpg" style="width:100%" onclick="currentSlide(2)" />
    </div>
    <div class="column">
      <img class="demo cursor" src="images/back3.jpg" style="width:100%" onclick="currentSlide(3)" />
    </div>
    <div class="column">
      <img class="demo cursor" src="images/back4.jpg" style="width:100%" onclick="currentSlide(4)" />
    </div>
    <div class="column">
      <img class="demo cursor" src="images/back5.jpg" style="width:100%" onclick="currentSlide(5)" />
    </div>    
    <div class="column">
      <img class="demo cursor" src="images/back6.jpg" style="width:100%" onclick="currentSlide(6)" />
    </div>
  </div>
</div>



<script>
    let slideIndex = 1;
    showSlides(slideIndex);

    function plusSlides(n) {
        showSlides(slideIndex += n);
    }

    function currentSlide(n) {
        showSlides(slideIndex = n);
    }

    function showSlides(n) {
        let i;
        let slides = document.getElementsByClassName("mySlides");
        let dots = document.getElementsByClassName("demo");
        let captionText = document.getElementById("caption");
        if (n > slides.length) { slideIndex = 1 }
        if (n < 1) { slideIndex = slides.length }
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
        captionText.innerHTML = dots[slideIndex - 1].alt;
    }
</script>


<%--    blue part the features--%>
   <section id="home-featured-in" class="Index-page" data-collection-id="5e14e8a63ef8773f5739eb76" data-parallax-id="5e14e8a63ef8773f5739eb76" data-edit-main-image="Background">
        
        <div class="Index-page-content ">
          <div class="sqs-layout sqs-grid-12 columns-12" data-type="page" data-updated-on="1578428992471" ><div class="row sqs-row"><div class="col sqs-col-12 span-12"><div class="sqs-block html-block sqs-block-html" data-block-type="2" id="block-yui_3_17_2_1_1578428604648_3986"><div class="sqs-block-content">


<h2 style="text-align:center;white-space:pre-wrap; color:antiquewhite; font-family:'HP Simplified';font-size:50px;">Featured In</h2>


</div></div><div class="sqs-block gallery-block sqs-block-gallery" data-block-json="{&quot;hSize&quot;:null,&quot;floatDir&quot;:null,&quot;methodOption&quot;:&quot;existing&quot;,&quot;existingGallery&quot;:&quot;5e14c8b8690a7364048d69bd&quot;,&quot;newWindow&quot;:false,&quot;aspect-ratio&quot;:&quot;anamorphic-widescreen&quot;,&quot;aspectRatio&quot;:null,&quot;auto-crop&quot;:true,&quot;blockAnimation&quot;:&quot;none&quot;,&quot;collectionId&quot;:&quot;5e14c8b8690a7364048d69bd&quot;,&quot;design&quot;:&quot;grid&quot;,&quot;existingGalleryId&quot;:&quot;5e14c8b8690a7364048d69bd&quot;,&quot;lightbox&quot;:false,&quot;padding&quot;:20,&quot;show-meta&quot;:true,&quot;show-meta-basic&quot;:true,&quot;show-meta-only-title&quot;:false,&quot;show-meta-only-description&quot;:false,&quot;square-thumbs&quot;:true,&quot;thumbnails-per-row&quot;:6,&quot;vSize&quot;:null}" data-block-type="8" id="block-yui_3_17_2_1_1578428604648_4536"><div class="sqs-block-content">

<div class="
  sqs-gallery-container
  sqs-gallery-block-grid
  sqs-gallery-aspect-ratio-anamorphic-widescreen
  sqs-gallery-thumbnails-per-row-6
  sqs-gallery-block-show-meta
  block-animation-none
  clear" >
  <div class="sqs-gallery sqs-gallery-design-grid" >
            <div class="slide sqs-gallery-design-grid-slide sqs-active-slide" data-type="image" data-animation-role="image" id="yui_3_17_2_1_1649856516479_462">
              <div class="margin-wrapper">
                
              </div>
            </div>
            <div class="slide sqs-gallery-design-grid-slide" data-type="image" data-animation-role="image" id="yui_3_17_2_1_1649856516479_463">
              <div class="margin-wrapper">
                
                <a role="presentation" class="
                    image-slide-anchor
                    
                    content-fill
                  " style="overflow: hidden;">
                  
                </a>
                
              </div>
            </div>
     <div class="row">
    <div class="column">
      <img  src="images/glamour.png" style="width:190%; padding-left:100px; padding-right:120px;"/>
    </div>
    <div class="column">
      <img  src="images/kont.png" style="width:190%;padding-left:100px;padding-right:120px;" />
    </div>
    <div class="column">
      <img  src="images/cosmo.png" style="width:190%;padding-left:100px;padding-right:120px;" />
    </div>
    <div class="column">
      <img  src="images/Ms.png" style="width:190%;padding-left:100px;padding-right:120px;" />
    </div>
    <div class="column">
      <img src="images/style.png" style="width:190%;padding-left:100px;padding-right:120px;"  />
    </div>    
    </div>
      
   
      
          

  </div>

</div>

<style type="text/css" >
#block-yui_3_17_2_1_1578428604648_4536 .sqs-gallery-block-grid .sqs-gallery-design-grid { margin-right: -20px; }
#block-yui_3_17_2_1_1578428604648_4536 .sqs-gallery-block-grid .sqs-gallery-design-grid-slide .margin-wrapper { margin-right: 20px; margin-bottom: 20px; }
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 420px;
    }
    .auto-style4 {
        width: 111px;
    }
    .auto-style5 {
        height: 60px;
    }
    .auto-style7 {
        font-size: x-large;
        width: 593px;
        padding-left: 150px;
        padding-right: 20px;
        padding-top: 20px;
        padding-bottom: 20px;
    }
    .auto-style8 {
        font-size: x-large;
        width: 593px;
        padding-left: 150px;
        padding-right: 20px;
        padding-top: 20px;
        padding-bottom: 20px;
        text-align: justify;
    }
    .auto-style9 {
        font-size: x-large;
        width: 593px;
        padding-left: 150px;
        padding-right: 20px;
        padding-top: 20px;
        padding-bottom: 20px;
        text-align: justify;
        height: 176px;
    }
    .auto-style10 {
        height: 176px;
    }
    </style>



</div></div></div></div></div>
        </div>
        
          
        
      </section>


    <div class="third_part">

        <div class="image-subtitle-wrapper"><div class="image-subtitle sqs-dynamic-text" data-width-percentage="21.6" style="font-size: max(0.75rem, 21.6%);">
            <p class="min-font-set" style="white-space:pre-wrap;">
                <table class="auto-style1">
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="Label1"  class="words" runat="server" ForeColor="#3C495D"  Text="Bridal Bliss is a full-service planning company, executing innovative events since 2002. Our passion for weddings, creative spirit, undivided attention, and affirming attitude set us apart. We bring a fresh perspective to event design and collaborate with you to create an extraordinarily stylish and authentic event. Our team values diversity, we value honesty, and we value innovation." Font-Names="Gadugi" Width="338px" Font-Size="X-Large" ></asp:Label>
                    </td>
                    <td class="auto-style2" rowspan="3">
                        <asp:Image ID="Image2" runat="server" Height="665px" Width="489px" src="images/img3.jpg"/>
                    </td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style5" colspan="2">
                        <asp:Image ID="Image1" runat="server" Height="463px" Width="369px" src="images/img2.jpg"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Button ID="Button1" class="button1" runat="server" Height="62px" Text="OUR SERVICES" Width="312px" OnClientClick="nn"  />
                    </td>
                    <td class="auto-style10" rowspan="2">
                        &nbsp;</td>
                    <td class="auto-style10" rowspan="2" colspan="2">
                        <asp:Image ID="Image3" runat="server" Height="421px" Width="377px" src="images/img4.jpg"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4" colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style35" colspan="2" rowspan="5"> <asp:Image ID="Image8" runat="server"  src="images/logo.png" Height="258px" Width="790px" />

                    </td>
                    <td class="auto-style4" rowspan="5">&nbsp;</td>
                    <td class="auto-style4" rowspan="2">
  <div class="search-container">
    <form action="/action_page.php">
    </form>
  </div>
                    </td>
                    <td class="auto-style4">
                     
                        &nbsp;</td>
                    
                </tr>
                <tr>
                    <td class="auto-style4">
                     
                        &nbsp;</td>
                    
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server" class="auto-style41" Font-Size="Large" ForeColor="#666666" Height="36px" Width="289px">Search...</asp:TextBox>

                    </td>
                    <td class="auto-style4">
                     
                        <asp:Image ID="Image9" runat="server" src="images/search.png" Height="30px"/>
                     
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style4"/>
                        &nbsp;<td class="auto-style4">
                     
                        &nbsp;</td>
                    
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style4">
                     
                        &nbsp;</td>
                    
                </tr>
                </table>
            </p>

                                            </div></div>

    </div>
 

   <section  class="Index-page" data-collection-id="5e14e8a63ef8773f5739eb76" data-parallax-id="5e14e8a63ef8773f5739eb76" data-edit-main-image="Background">
        
        <div class="Index-page-content ">
          <div class="sqs-layout sqs-grid-12 columns-12" data-type="page" data-updated-on="1578428992471" id="page-5e14e8a63ef8773f5739eb76"><div class="row sqs-row"><div class="col sqs-col-12 span-12"><div class="sqs-block html-block sqs-block-html" data-block-type="2" ><div class="sqs-block-content">




</div></div><div class="sqs-block gallery-block sqs-block-gallery" data-block-json="{&quot;hSize&quot;:null,&quot;floatDir&quot;:null,&quot;methodOption&quot;:&quot;existing&quot;,&quot;existingGallery&quot;:&quot;5e14c8b8690a7364048d69bd&quot;,&quot;newWindow&quot;:false,&quot;aspect-ratio&quot;:&quot;anamorphic-widescreen&quot;,&quot;aspectRatio&quot;:null,&quot;auto-crop&quot;:true,&quot;blockAnimation&quot;:&quot;none&quot;,&quot;collectionId&quot;:&quot;5e14c8b8690a7364048d69bd&quot;,&quot;design&quot;:&quot;grid&quot;,&quot;existingGalleryId&quot;:&quot;5e14c8b8690a7364048d69bd&quot;,&quot;lightbox&quot;:false,&quot;padding&quot;:20,&quot;show-meta&quot;:true,&quot;show-meta-basic&quot;:true,&quot;show-meta-only-title&quot;:false,&quot;show-meta-only-description&quot;:false,&quot;square-thumbs&quot;:true,&quot;thumbnails-per-row&quot;:6,&quot;vSize&quot;:null}" data-block-type="8" ><div class="sqs-block-content">

<div class="
  sqs-gallery-container
  sqs-gallery-block-grid
  sqs-gallery-aspect-ratio-anamorphic-widescreen
  sqs-gallery-thumbnails-per-row-6
  sqs-gallery-block-show-meta
  block-animation-none
  clear" id="yui_3_17_2_1_1649856516479_410">
  <div class="sqs-gallery sqs-gallery-design-grid" id="yui_3_17_2_1_1649856516479_427">
     <div class="row">
    <div class="column">
      &nbsp;</div>
    <div class="column">
      &nbsp;</div>
    <div class="column">
      &nbsp;</div>
    <div class="column">
      &nbsp;</div> 
           <div class="column">
      &nbsp;</div> 
     
    </div>

  </div>

</div>
    <table class="auto-style11">
            <tr>
            <td class="auto-style40">&nbsp;</td>
            <td class="auto-style30">  
                &nbsp;</td>
            <td class="auto-style31" colspan="2" >  
                &nbsp;</td>
            <td class="auto-style27" colspan="2">  
                &nbsp;</td>
            <td class="auto-style29">  
                &nbsp;</td>
            
            <td class="auto-style32">  
                        &nbsp;</td>
            </tr>
            <td class="auto-style40">&nbsp;</td>
            <td class="auto-style30">  
                <asp:Image ID="Image4" runat="server" src="images/footer1.jpeg" Height="350px" />
</td>
            <td class="auto-style31" colspan="2" >  
                <asp:Image ID="Image5" runat="server" src="images/footer2.jpeg" Height="350px" />
            </td>
            <td class="auto-style27" colspan="2">  
                <asp:Image ID="Image6" runat="server" src="images/footer3.jpeg" Height="350px" />
            </td>
            <td class="auto-style29">  
                <asp:Image ID="Image7" runat="server" src="images/footer4.jpeg" Height="350px" />
            </td>
            
            <td class="auto-style32">  
                        &nbsp;</td>
        <tr>
            <td class="auto-style40"> 
                &nbsp;</td>
            <td class="auto-style30"> 
                &nbsp;</td>
            <td class="auto-style31">  
                <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="White" NavigateUrl="~/Services.aspx">Services</asp:HyperLink>

            </td>
            <td class="auto-style31">  
                <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="White" NavigateUrl="~/Contact.aspx">Email</asp:HyperLink> 

            </td>
            <td class="auto-style43">  
                        <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="White" NavigateUrl="~/Contact.aspx">Contact Us</asp:HyperLink>
</td>
            <td class="auto-style43">  
                        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="~/signup.aspx">Sign Up</asp:HyperLink>
</td>
            <td class="auto-style27">
                        &nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
           
        </tr>
        <tr>
            <td class="auto-style38">  
                        </td>
            <td class="auto-style23">  
                        </td>
            <td class="auto-style18" colspan="4">  
                        </td>
            <td class="auto-style20">
                        </td>
            <td class="auto-style19">
                        </td>
            <td class="auto-style33">
                        </td>
        </tr>
        <tr>
            <td class="auto-style39">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style15" colspan="4">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
        </tr>
    </table>
<style type="text/css" >
#block-yui_3_17_2_1_1578428604648_4536 .sqs-gallery-block-grid .sqs-gallery-design-grid { margin-right: -20px; }
#block-yui_3_17_2_1_1578428604648_4536 .sqs-gallery-block-grid .sqs-gallery-design-grid-slide .margin-wrapper { margin-right: 20px; margin-bottom: 20px; }
    .fa {
  padding: 20px;
  font-size: 30px;
  width: 50px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
}

  

.auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 420px;
    }
    .auto-style4 {
        width: 111px;
    }
    .auto-style5 {
        height: 60px;
    }
    .auto-style7 {
        font-size: x-large;
        width: 593px;
        padding-left: 150px;
        padding-right: 20px;
        padding-top: 20px;
        padding-bottom: 20px;
    }
    .auto-style8 {
        font-size: x-large;
        width: 593px;
        padding-left: 150px;
        padding-right: 20px;
        padding-top: 20px;
        padding-bottom: 20px;
        text-align: justify;
    }
    .auto-style9 {
        font-size: x-large;
        width: 593px;
        padding-left: 150px;
        padding-right: 20px;
        padding-top: 20px;
        padding-bottom: 20px;
        text-align: justify;
        height: 176px;
    }
    .auto-style10 {
        height: 176px;
    }
    .auto-style11 {
        width: 100%;
        background-color:#3a475b;
    }
    .auto-style14 {
        width: 390px;
    }
    .auto-style15 {
        width: 477px;
    }
    .auto-style16 {
        width: 320px;
    }
    .auto-style18 {
        width: 477px;
        text-align: center;
        height: 27px;
    }
    .auto-style19 {
        width: 320px;
        text-align: center;
        height: 27px;
    }
    .auto-style20 {
        width: 390px;
        text-align: center;
        height: 27px;
    }
    .auto-style23 {
        width: 382px;
        text-align: center;
        height: 27px;
    }
    .auto-style24 {
        width: 382px;
    }
    .auto-style27 {
        width: 390px;
        text-align: center;
        height: 38px;
    }
    .auto-style28 {
        width: 320px;
        text-align: center;
        height: 38px;
    }
    .auto-style29 {
        text-align: center;
        height: 38px;
    }
    .auto-style30 {
        width: 382px;
        text-align: center;
        height: 38px;
    }
    .auto-style31 {
        width: 477px;
        text-align: center;
        height: 38px;
    }
    .auto-style32 {
        width: 228px;
        text-align: center;
        height: 38px;
    }
    .auto-style33 {
        width: 228px;
        text-align: center;
        height: 27px;
    }
    .auto-style34 {
        width: 228px;
    }
    .auto-style35 {
        font-size: x-large;
        padding-left: 150px;
        padding-right: 20px;
        padding-top: 20px;
        padding-bottom: 20px;
    }
    .auto-style38 {
        width: 263px;
        text-align: center;
        height: 27px;
    }
    .auto-style39 {
        width: 263px;
    }
    .auto-style40 {
        width: 263px;
        text-align: center;
        height: 38px;
    }
    .auto-style41 {
        width: 254px;
        height: 31px;
    }
    .auto-style42 {
        height: 93px;
    }
    .auto-style43 {
        width: 339px;
        text-align: center;
        height: 38px;
    }
    </style>

</div></div></div></div></div>
        </div>
        
          
        
      </section>
 
    </form>


    
</body>
</html>
