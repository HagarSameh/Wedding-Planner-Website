<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="invitation.aspx.cs" Inherits="Weddin_Planner.invitation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 173px;
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

#navbar a:hover {
  background-color: #ddd;
  color: black;
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

        .auto-style3 {
            width: 529px;
            height: 187px;
        }
.sidebar {
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
}

.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  text-decoration: none;
}
 
.sidebar a.active {
  background-color: #3a475b;
  color: white;
}

.sidebar a:hover:not(.active) {
  background-color:#3a475b;
  color: white;
}
@media screen and (max-width: 400px) {
  .sidebar a {
    text-align: center;
    float: none;
  }
}
        .auto-style4 {
            left: 4px;
            top: -1px;
        }
        .auto-style8 {
            height: 49px;
        }
        .auto-style9 {
            width: 106px;
        }
    </style>
</head>
<body>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="4">
                     
<div id="navbar" class="auto-style4">
    <img src="images/B.png" class="auto-style3"/>
  <div id="navbar-right" class="auto-style42">
    <a href="#contact">Contact</a>
    <a href="Services.aspx">Services</a>
    <a href="Login.aspx">Login</a>
    <a href="#about">About</a>
  </div>
</div>
            </td>
        </tr>
        <tr>
            <td rowspan="7" class="auto-style9">
                <div class="sidebar">
  <a class="active" href="#Invitation">Invitation</a>
  <a href="#Food">Food</a>
  <a href="#Music">Music</a>
  <a href="#Decoration">Decoration</a>
  <a href="#TimeLine">Time Line</a>
  <a href="#Cake">Cake</a>

</div>

            </td>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style8"></td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;</td>
        </tr>
    </table>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
