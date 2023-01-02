<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="Weddin_Planner.Services" %>


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
        .auto-style20 {
            width: 95%;
            margin-right: 124px;
        }
        .auto-style24 {
            height: 114px;
        }
        .auto-style25 {
            height: 238px;
        }
        .auto-style26 {
            height: 212px;
        }
        .auto-style27 {
            height: 180px;
           background-color:#3a475b;

        }

   .auto-style11 {
        width: 100%;
        background-color:#3a475b;
    }

        .auto-style28 {
            width: 97px;
        }
        .auto-style29 {
            height: 238px;
            width: 97px;
            background-color:#3a475b;

        }
        .auto-style30 {
            height: 212px;
            width: 97px;
        }
        .auto-style32 {
            width: 38px;
        }
        .auto-style35 {
            height: 212px;
            width: 38px;
        }
        .auto-style36 {
            height: 180px;
            }
        .auto-style38 {
            height: 238px;
            width: 106px;
        }
        .auto-style40 {
            width: 125px;
        }
        .auto-style41 {
            height: 238px;
            width: 408px;
        }
        .auto-style43 {
            height: 212px;
            width: 125px;
        }
        .auto-style44 {
            width: 78px;
        }
        .auto-style45 {
            height: 238px;
            width: 125px;
        }
        .auto-style46 {
            height: 212px;
            width: 78px;
            background-color:#3a475b;

        }

  

        .auto-style47 {
            width: 125px;
            text-align: center;
            height: 28px;
        }
        .auto-style48 {
            width: 38px;
            height: 28px;
            text-align: center;
        }
        .auto-style49 {
            width: 97px;
            height: 28px;
        }
        .auto-style51 {
            width: 78px;
            height: 28px;
            text-align: center;
        }
        
  

        .auto-style57 {
            height: 85px;
            text-align: justify;
        }
        
  

        .auto-style63 {
            width: 226px;
        }
        .auto-style67 {
            text-align: center;
            height: 107px;
        }

  

        .auto-style68 {
            text-align: justify;
            height: 73px;
        }
        .auto-style71 {
            height: 21px;
            text-align: justify;
        }

  

        .auto-style76 {
            height: 92px;
        }

     
  

        .auto-style78 {
            width: 408px;
        }
        .auto-style79 {
            width: 408px;
            text-align: center;
            height: 28px;
        }
        .auto-style80 {
            height: 212px;
            width: 408px;
        }

     
  

        .auto-style81 {
            width: 125px;
            height: 73px;
        }
        .auto-style82 {
            height: 73px;
            width: 97px;
        }
        .auto-style84 {
            height: 73px;
            background-color: #3a475b;
        }
        .auto-style85 {
            width: 38px;
            height: 73px;
        }
        .auto-style86 {
            height: 73px;
        }
        .auto-style87 {
            height: 25px;
            width: 106px;
        }
        .auto-style88 {
            width: 424px;
            height: 25px;
        }
        .auto-style90 {
            width: 95%;
            margin-right: 124px;
            height: 25px;
        }
        .auto-style91 {
            height: 25px;
        }
        .auto-style97 {
            height: 52px;
            width: 97px;
            background-color: #3a475b;
        }
        .auto-style98 {
            width: 125px;
            height: 52px;
        }
        .auto-style99 {
            height: 52px;
            width: 424px;
        }
        .auto-style100 {
            height: 52px;
        }
        .auto-style101 {
            height: 52px;
            background-color: #3a475b;
        }
        .auto-style102 {
            width: 38px;
            height: 52px;
        }

     
  

        .auto-style104 {
            height: 212px;
            width: 424px;
        }
        .auto-style105 {
            height: 73px;
            width: 424px;
        }
        .auto-style106 {
            height: 73px;
            width: 22px;
            text-align: center;
        }
        .auto-style107 {
            width: 138px;
            height: 73px;
            text-align: center;
        }

     
  

        .auto-style108 {
            height: 193px;
            background-color:#fffaf0
        }
        .auto-style112 {
            text-decoration: none;
        }

     
  

        .auto-style113 {
            height: 193px;
            background-color: #fffaf0;
            text-align: center;
        }
        .auto-style114 {
            height: 193px;
            background-color: #fffaf0;
            width: 262px;
        }
        .auto-style115 {
            height: 193px;
            background-color: #fffaf0;
            width: 161px;
        }
        .auto-style116 {
            height: 73px;
            text-align: center;
        }
        .auto-style117 {
            width: 125px;
            height: 73px;
            text-align: center;
        }

     
  

        .auto-style119 {
            width: 125px;
            height: 28px;
        }
        .auto-style120 {
            height: 28px;
        }

     
  

    </style>


</head>

<body>
    

    

    
    <form id="form2" runat="server">
    

    

    
    <table class="auto-style20">
        <tr>
            <td class="auto-style63" rowspan="15">
                
                &nbsp;</td>
            <td class="auto-style108" colspan="3">
                
                <asp:Image ID="Image8" runat="server" src="images/B.png" Height="147px" Width="643px"/>
                
            </td>
            <td class="auto-style115">
                
                &nbsp;</td>
            <td class="auto-style113">
                
                <asp:HyperLink ID="ContactURL" runat="server" CssClass="auto-style112" Font-Names="Andalus" Font-Size="X-Large" ForeColor="#333333" NavigateUrl="~/Contact.aspx">Contact</asp:HyperLink>
                
            </td>
            <td class="auto-style108">
                
                <asp:HyperLink ID="ServicesURL" runat="server" CssClass="auto-style112" Font-Names="Andalus" Font-Size="X-Large" ForeColor="#333333" NavigateUrl="~/Services.aspx">Services </asp:HyperLink>
                
            </td>
            <td class="auto-style114">
                
                &nbsp;</td>
            <td class="auto-style113">
                
                <asp:HyperLink ID="LoginURL" runat="server" CssClass="auto-style112" Font-Names="Andalus" Font-Size="X-Large" ForeColor="#333333" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
                
            </td>
            <td class="auto-style108">
                
                <asp:HyperLink ID="AboutURL" runat="server" CssClass="auto-style112" Font-Names="Andalus" Font-Size="X-Large" ForeColor="#333333" NavigateUrl="~/About.aspx">About</asp:HyperLink>
                
            </td>
        </tr>
        <tr>
            <td class="auto-style67" colspan="9"><strong>
                <asp:Label ID="txtWedding" runat="server"  Font-Names="Kunstler Script" Font-Size="XX-Large" Text="Weddings and Special Events are our  Passion..."></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style57" colspan="9">
                <asp:Label ID="lblparaOne" runat="server" Text="Bridal Bliss specializes in creating beautiful and unique weddings with personalized details.  We provide a multitude of services ranging from Elopements to Day of Facilitation to Full Service Event Coordination and everything in between.  Your coordinator will collaborate with you to produce an unforgettable event that will be tailored to you and your fiancé.  From finding the perfect location to your last dance, we will be with you every step of the way. " Font-Names="Arial Nova Cond Light" Font-Size="Large" ForeColor="#666666"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style71" colspan="9">
            </td>
        </tr>
        <tr>
            <td class="auto-style68" colspan="9">
                <asp:Label ID="lblparaTwo" runat="server" Font-Names="Arial Nova Cond Light" Font-Size="Large" ForeColor="#666666" Text="During a complimentary initial consultation, you will have the opportunity to look through portfolios, learn more about our services and ask questions in the comfort of our Lake Oswego office. Once we determine what services are needed through this consultation, a proposal will be created customized especially to your needs.  Please contact us to schedule your initial consultation!"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style24" colspan="7"></td>
            <td class="auto-style24" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="7">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29">
                <asp:Image ID="imgDeco" runat="server" Height="550px" Width="426px" src="images/deco.jpg"/>
            </td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style41" colspan="3">
                <asp:Image ID="imgTime" runat="server" Height="550px" Width="426px" src="images/time.jpg" DescriptionUrl="~/Decoration.aspx"/>
            </td>
            <td class="auto-style45" colspan="2"></td>
            <td class="auto-style25" colspan="2">
                <asp:Image ID="imgCake" runat="server" Height="550px" Width="426px" src="images/cake.jpg"/>
            </td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style78" colspan="3">&nbsp;</td>
            <td class="auto-style40" colspan="2">&nbsp;</td>
            <td class="auto-style44" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style48">
<asp:HyperLink ID="HyperLink7" runat="server" CssClass="auto-style112" Font-Names="Corbel Light" ForeColor="#333333" NavigateUrl="~/Decoration.aspx" Width="411px">Decoration</asp:HyperLink>            </td>
            <td class="auto-style49">
                </td>
            <td class="auto-style79" colspan="3">
                <asp:Label ID="txtTimeLine" runat="server" Font-Names="Corbel Light" Text="Time Line" Width="422px"></asp:Label>
            </td>
            <td class="auto-style47" colspan="2">
                </td>
            <td class="auto-style51" colspan="2">
                <asp:Label ID="txtCake" runat="server" Font-Names="Corbel Light" Text="Cake" Width="422px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style48">
                &nbsp;</td>
            <td class="auto-style49">
                &nbsp;</td>
            <td class="auto-style79" colspan="3">
                &nbsp;</td>
            <td class="auto-style47" colspan="2">
                &nbsp;</td>
            <td class="auto-style51" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style35">
                <asp:Image ID="imgMusic" runat="server" Height="550px" Width="426px" src="images/music.jpg"/>
            </td>
            <td class="auto-style30"></td>
            <td class="auto-style80" colspan="3">
                <asp:Image ID="imgInvitation" runat="server" Height="550px" Width="426px" src="images/invi.jpg"/>
            </td>
            <td class="auto-style43" colspan="2"></td>
            <td class="auto-style46" colspan="2">
                <asp:Image ID="imgGuest" runat="server" Height="550px" Width="426px" src="images/guest.jpg"/>
            </td>
            <td class="auto-style26">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style78" colspan="3">&nbsp;</td>
            <td class="auto-style40" colspan="2">&nbsp;</td>
            <td class="auto-style44" colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style48">
             <asp:HyperLink ID="HyperLink6" runat="server" CssClass="auto-style112" Font-Names="Corbel Light" ForeColor="#333333" NavigateUrl="~/invitation.aspx" Width="411px">Music</asp:HyperLink>

            </td>
            <td class="auto-style49"></td>
            <td class="auto-style79" colspan="3">
                <asp:HyperLink ID="HyperLink5" runat="server" CssClass="auto-style112" Font-Names="Corbel Light" ForeColor="#333333" NavigateUrl="~/invitation.aspx">Invitation Card</asp:HyperLink>
            </td>
            <td class="auto-style119" colspan="2"></td>
            <td class="auto-style51" colspan="2">
                <asp:Label ID="txtGuest" runat="server" Font-Names="Corbel Light" Text="Guest" Width="422px"></asp:Label>
            </td>
            <td class="auto-style120"></td>
        </tr>
        <tr>
            <td class="auto-style36" colspan="10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style76" colspan="11"></td>
        </tr>
    </table>
     
   <table class="auto-style11">
            <tr>
            <td class="auto-style98"></td>
            <td class="auto-style99">  
                </td>
            <td class="auto-style99">  
                &nbsp;</td>
            <td class="auto-style100" colspan="3" >  
                </td>
            <td class="auto-style101">  
                &nbsp;</td>
            <td class="auto-style101" colspan="2">  
                </td>
            <td class="auto-style97">  
                </td>
            
            <td class="auto-style102">  
                        </td>
            </tr>
            <td class="auto-style40">&nbsp;</td>
            <td class="auto-style104">  
                <asp:Image ID="Image4" runat="server" src="images/footer1.jpeg" Height="350px" />
</td>
            <td class="auto-style104">  
                &nbsp;</td>
            <td class="auto-style31" colspan="3" >  
                <asp:Image ID="Image5" runat="server" src="images/footer2.jpeg" Height="350px" />
            </td>
            <td class="auto-style27">  
                &nbsp;</td>
            <td class="auto-style27" colspan="2">  
                <asp:Image ID="Image6" runat="server" src="images/footer3.jpeg" Height="350px" />
            </td>
            <td class="auto-style29">  
                <asp:Image ID="Image7" runat="server" src="images/footer4.jpeg" Height="350px" />
            </td>
            
            <td class="auto-style32">  
                        &nbsp;</td>
        <tr>
            <td class="auto-style81"> 
                </td>
            <td class="auto-style105"> 
                </td>
            <td class="auto-style105"> 
                &nbsp;</td>
            <td class="auto-style116">  
                <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="White" NavigateUrl="~/Services.aspx" CssClass="auto-style112">Services</asp:HyperLink>

            </td>
            <td class="auto-style86">  
                &nbsp;</td>
            <td class="auto-style106">  
                <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="White" NavigateUrl="~/Contact.aspx" CssClass="auto-style112">Email</asp:HyperLink> 

            </td>
            <td class="auto-style81">  
                        &nbsp;</td>
            <td class="auto-style117">  
                        <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="White" NavigateUrl="~/Contact.aspx" CssClass="auto-style112">Contact Us</asp:HyperLink>
</td>
            <td class="auto-style107">  
                        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="~/Resgestraion.aspx" CssClass="auto-style112">Sign Up</asp:HyperLink>
</td>
            <td class="auto-style84">
                        </td>
            <td class="auto-style82"></td>
            <td class="auto-style85"></td>
           
        </tr>
        <tr>
            <td class="auto-style87">  
                        </td>
            <td class="auto-style88">  
                        </td>
            <td class="auto-style88">  
                        &nbsp;</td>
            <td class="auto-style91" colspan="6">  
                        </td>
            <td class="auto-style90">
                        </td>
            <td class="auto-style91">
                        </td>
            <td class="auto-style91">
                        </td>
        </tr>
        </table>
    </form>
     

    
</body>
</html>
