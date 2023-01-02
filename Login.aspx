<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Weddin_Planner.Login" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"> </script>

        <script runat="server">
            protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|wedding.mdf;Integrated Security=True";

            String strSelect = String.Format("SELECT * FROM Member WHERE Email = '" + txtEmail.Text + "' AND Password= '" + txtPassword.Text + "'");
            SqlCommand cmd = new SqlCommand(strSelect, conn);

            SqlDataReader reader;

            conn.Open();

            reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                if (txtEmail.Text == "Admin2022")
                {
                    Response.Redirect("~/AdminPage.aspx");
                }
                else
                {
                    Response.Redirect("~/UserPage.aspx");
                }
            }
            else
            {
                LblMSG.Text = "Wrong username or password";
            }

        }
</script>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: right;
            height: 70px;
        }
        .auto-style53 {
            height: 43px;
        }
        .auto-style74 {
            width: 158px;
            height: 43px;
        }
        .auto-style81 {
            width: 47px;
            height: 43px;
        }

        .btn-show-hide {
            color:#222c6a;
            cursor:pointer;
          
            opacity:0.5;
        
        }
        .btn-show-hide:hover {
             opacity:1;    
        }
            .btn-show-hide:active {
                transform:scale(0.9);
            
            }

            
.button {
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

        .auto-style83 {
            text-align: right;
        }
        .auto-style85 {
            text-align: right;
            height: 70px;
            width: 57px;
        }
        .auto-style92 {
            width: 57px;
            height: 43px;
        }

        .auto-style93 {
            width: 317px;
            height: 43px;
            text-align: center;
        }

        .auto-style94 {
            font-size: xx-large;
        }
        .auto-style95 {
            text-align: left;
            width: 57px;
            height: 140px;
        }
        .auto-style96 {
            text-align: left;
            height: 140px;
        }
        .auto-style97 {
            height: 140px;
        }
        .auto-style98 {
            text-align: left;
            height: 21px;
        }
        .auto-style99 {
            width: 57px;
            height: 25px;
        }
        .auto-style100 {
            width: 317px;
            height: 25px;
            text-align: center;
        }
        .auto-style101 {
            width: 158px;
            height: 25px;
        }
        .auto-style102 {
            width: 47px;
            height: 25px;
        }
        .auto-style103 {
            height: 25px;
        }
        .auto-style104 {
            margin-bottom: 0px;
        }

        .auto-style105 {
            text-align: left;
            height: 81px;
        }
        .auto-style106 {
            text-align: right;
            height: 21px;
            width: 57px;
        }
        .auto-style107 {
            text-align: right;
            height: 21px;
        }
        .auto-style108 {
            width: 57px;
            height: 26px;
        }
        .auto-style109 {
            width: 317px;
            height: 26px;
            text-align: center;
        }
        .auto-style110 {
            width: 158px;
            height: 26px;
        }
        .auto-style111 {
            width: 47px;
            height: 26px;
        }
        .auto-style112 {
            height: 26px;
        }
        .auto-style113 {
            text-align: left;
            height: 46px;
        }

        .auto-style114 {
            height: 26px;
            text-align: center;
        }

    </style>
</head>
  
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style83" rowspan="9">
                    <asp:Image ID="Image1" runat="server" Height="900px" Width="749px" src="images/LOGIN.jpg" />
                </td>
                <td class="auto-style85">
                    </td>
                <td class="auto-style2" colspan="2">
                    </td>
                <td class="auto-style2">
                    </td>
                <td class="auto-style2">
                    </td>
            </tr>
            <tr>
                <td class="auto-style106">
                    </td>
                <td class="auto-style98" colspan="2">
                    <asp:Image ID="Image2" runat="server" Height="136px" Width="600px" src="images/B.png" ImageUrl="~/home.aspx" />
                </td>
                <td class="auto-style107">
                    </td>
                <td class="auto-style107">
                    </td>
            </tr>
            <tr>
                <td class="auto-style99" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    </td>
                <td class="auto-style100" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                </td>
                <td class="auto-style101" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                </td>
                <td class="auto-style102"></td>
                <td class="auto-style103"></td>
            </tr>
            <tr>
                <td class="auto-style92" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    </td>
                <td class="auto-style93" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    <asp:Label ID="Label6" runat="server" Font-Names="Consolas" ForeColor="#3A475B" Text="Email:" Font-Size="X-Large" CssClass="auto-style94"></asp:Label>
                </td>
                <td class="auto-style74" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    <asp:TextBox ID="txtEmail" runat="server" Width="203px"></asp:TextBox>
                </td>
                <td class="auto-style81"></td>
                <td class="auto-style53"></td>
            </tr>
            <tr>
                <td class="auto-style108" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    </td>
                <td class="auto-style109" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    <asp:Label ID="Label7" runat="server" Text="Password:" Font-Names="Consolas" ForeColor="#3A475B" Font-Size="X-Large" CssClass="auto-style94"></asp:Label>
                </td>
                <td class="auto-style110" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    <asp:TextBox ID="txtPassword" runat="server" Width="203px" CausesValidation="True" TextMode="Password">enter password</asp:TextBox>
                </td>
                <td class="auto-style111">
                    &nbsp;</td>
                <td class="auto-style112"></td>
            </tr>
            <tr>
                <td class="auto-style108" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    &nbsp;</td>
                <td class="auto-style114" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;" colspan="2">
                    <asp:Label ID="LblMSG" runat="server" Font-Names="Georgia" ForeColor="#3A475B"></asp:Label>
                </td>
                <td class="auto-style111">
                    &nbsp;</td>
                <td class="auto-style112">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style95" rowspan="3">
                    </td>
                <td class="auto-style105" colspan="2">
                   
                 
                      <asp:Button ID="Button1" runat="server" BackColor="#3A475B" BorderColor="White" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCCCCC" Text="LOGIN" Width="626px" Font-Names="Consolas" OnClick="Button1_Click1"   />
                 
                       </td>
                <td class="auto-style97" rowspan="3"></td>
            </tr>
            <tr>
                <td class="auto-style113" colspan="2">
                   
                 
                      <asp:Image ID="Image3" runat="server" CssClass="auto-style104" Height="198px" Width="606px" src="images/logo.png" />
                 
                       </td>
            </tr>
                    
            <tr>
                <td class="auto-style96" colspan="2">
                   
                 
                      &nbsp;</td>
            </tr>
                    
            </table>
    </form>
        
</body>



</html>
