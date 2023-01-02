<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Weddin_Planner.Services" %>


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
 
  

        .auto-style1 {
            height: 136px;
            width: 408px;
            float: left;
        }
        .auto-style2 {
            height: 261px;
        }
        .auto-style3 {
            left: 4px;
            top: 0;
            height: 268px;
            width: 101%;
        }
        .auto-style4 {
            width: 70px;
            height: 94px;
        }
        .auto-style5 {
            height: 94px;
            width: 45px;
        }
        .auto-style6 {
            width: 485px;
            height: 94px;
        }
        .auto-style7 {
            margin-left: 201px;
        }
        .auto-style11 {
            height: 276px;
            color:aqua;
            width: 1499px;
        }
        .auto-style12 {
            height: 276px;
        }
 
  

        .auto-style15 {
            height: 56px;
        }
        .auto-style16 {
            text-align: center;
        }
 
  

        .auto-style20 {
        width: 390px;
        text-align: center;
    }
    .auto-style27 {
        width: 390px;
        text-align: center;
        background-color:#3a475b;
        height: 38px;
    }
    .auto-style29 {
        background-color:#3a475b;
        text-align: center;
        height: 38px;
    }
    .auto-style30 {
        width: 382px;
        text-align: center;
        height: 38px;
        background-color:#3a475b;
    }
    .auto-style31 {
        width: 477px;
        text-align: center;
        height: 38px;
        background-color:#3a475b;

    }
    .auto-style42 {
        height: 93px;
    }
    
        .auto-style44 {
            margin-left: 0px;
        }

        .auto-style46 {
            text-align: center;
            height: 84px;
            background-color:#3a475b;

        }
        .auto-style47 {
            height: 249px;
        }

        .auto-style48 {
            width: 487px;
            text-align: center;
            height: 38px;
            background-color: #3a475b;
        }
        .auto-style49 {
            height: 261px;
            width: 45px;
        }

    </style>


</head>

<body>
    

    

    
    <form id="form1" runat="server">
    

    

    
    <table class="auto-style20">
        <tr>
            <td class="auto-style2" colspan="2">
                
<div id="navbar" class="auto-style3">
    <img src="images/B.png" class="auto-style1"/>
  <div id="navbar-right" class="auto-style42">
    <a href="#contact">Contact</a>
    <a href="Services.aspx">Services</a>
    <a href="Login.aspx">Login</a>
    <a href="#about">About</a>
  </div>
</div>
            </td>
            <td class="auto-style49">
                
                </td>
        </tr>
        <tr>
            <td class="auto-style12" colspan="3">
                 
                <asp:Image ID="Image1" runat="server" Height="928px" src="images/team.jpg" Width="1492px" CssClass="auto-style44" />
                 
            </td>
        </tr>
        <tr>
            <td class="auto-style15" colspan="3"></td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="3"><strong>
                <asp:Label ID="Label4" runat="server"  Font-Names="Kunstler Script" Font-Size="XX-Large" Text="Extraordinary Events, Flawless Execution"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style4">
            </td>
            <td class="auto-style6">
                <asp:Label ID="Label5" runat="server" Text="“Words cannot explain how grateful we are to have Bridal Bliss coordinate our wedding. Everything fell perfectly into place and we know it was all because of our planner!”" Font-Names="Arial Nova Cond Light" Font-Size="Large" ForeColor="#666666" CssClass="auto-style7" Width="800px"></asp:Label>
            </td>
            <td class="auto-style5">
            </td>
        </tr>
        <tr>
            <td class="auto-style71" colspan="3">
            </td>
        </tr>
        <tr>
            <td class="auto-style68" colspan="3">
                <asp:Label ID="Label6" runat="server" Font-Names="Arial Nova Cond Light" Font-Size="Large" ForeColor="#666666" Text="Bridal Bliss has gained a strong reputation in the Northwest wedding industry as innovative coordinators, willing to go the extra mile to ensure that your event is as unique and exceptional as you are. Our team has received countless accolades and awards from brides to industry leaders alike."></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3" class="auto-style47"></td>
        </tr>
        <tr>
            <td colspan="3" class="auto-style30">&nbsp;</td>
        </tr>
    </table>
     
<table class="auto-style11">
            <td class="auto-style48">  
                <asp:Image ID="Image4" runat="server" src="images/footer1.jpeg" Height="367px" Width="370px" />
</td>
            <td class="auto-style31" >  
                <asp:Image ID="Image5" runat="server" src="images/footer2.jpeg" Height="362px" Width="406px" />
            </td>
            <td class="auto-style27">  
                <asp:Image ID="Image6" runat="server" src="images/footer3.jpeg" Height="366px" Width="369px" />
            </td>
            <td class="auto-style29">  
                <asp:Image ID="Image7" runat="server" src="images/footer4.jpeg" Height="363px" Width="335px" />
            </td>
   
        <tr>
            <td class="auto-style46" colspan="4"> 
                <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="White" NavigateUrl="~/Services.aspx" Width="200px">Services</asp:HyperLink>

                <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="White" NavigateUrl="~/Contact.aspx" Width="200px">Email</asp:HyperLink> 

                        <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="White" NavigateUrl="~/Contact.aspx" Width="200px">Contact Us</asp:HyperLink>
                        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="~/Resgestraion.aspx" Width="200px">Sign Up</asp:HyperLink>
                </td>
           
        </tr>
        </table>
    
    </form>
     

    
</body>
</html>
