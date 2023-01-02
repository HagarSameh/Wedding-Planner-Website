<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resgestraion.aspx.cs" Inherits="Weddin_Planner.Resgestraion" %>
<%@ Import Namespace ="System.Data.SqlClient" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <script runat="server">

        protected void Button1_Click(object sender, EventArgs e)
        {
            //1-Create Connection object
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|wedding.mdf;Integrated Security=True";

            // 
            //2-Create Insert Statment
            string strInsert = "INSERT INTO Member VALUES('" +
                txtFirstName.Text + "','" +
                txtLastName.Text + "','" +
                RadioButtonList1.SelectedValue + "','" +
                txtEmail.Text + "','" +
                txtPhoneNum.Text + "','" +
                DropDownList1.SelectedValue + "','" +
                txtuser.Text + "','" +
                txtPassword.Text + "')";

            //3-Creat SQL Command
            SqlCommand cmdInsert = new SqlCommand(strInsert, conn);

            try
            {
                //4-Open database
                conn.Open();

                //5-Execute the SQL command
                cmdInsert.ExecuteNonQuery();

                //6-close database
                conn.Close();

                //to Save a user picture "Don't work I do not why "
                if (fupUserPic.HasFile)
                    fupUserPic.SaveAs(Server.MapPath("userPic") + "\\" + txtuser.Text + "jpg");

                lblMsg.Text = "Welcome " + txtFirstName.Text + " Your account has been successfully created!";
            }
            catch (SqlException err)
            {
                if (err.Number == 2627)
                {
                    lblMsg.Text = "The username " + txtuser.Text + " Already used, please choose another! ";
                }
                else
                {
                    lblMsg.Text = "Sorry, Database Problem, please try again later!";
                }

            }

            catch {
                lblMsg.Text = "Sorry the System is not available at the moment ";
            }
        }



    </script>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style5 {
            width: 736px;
            text-align: right;
            height: 26px;
        }
        .auto-style59 {
            text-align: left;
            height:26px;
        }
        .auto-style75 {
            width: 26px;
            height: 26px;
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
        .auto-style84 {
            text-align: left;
            width: 260px;
            height: 26px;
        }
                        
        .auto-style93 {
            text-align: center;
            height: 16px;
        }

        .auto-style169 {
            width: 736px;
            text-align: right;
            height: 16px;
        }
        .auto-style170 {
            text-align: left;
            width: 260px;
            height: 16px;
        }
        .auto-style171 {
            width: 26px;
            height: 16px;
        }
        .auto-style172 {
            height: 16px;
        }
        .auto-style176 {
            text-align: right;
            width: 260px;
        }
        .auto-style209 {
            text-align: left;
            width: 68px;
            height: 26px;
        }
        .auto-style210 {
            text-align: center;
            height: 16px;
            width: 68px;
        }
        .auto-style212 {
            text-align: right;
            width: 26px;
        }
        .auto-style219 {
            color: #003399;
            font-size: x-large;
        }
        .auto-style234 {
            font-size: xx-large;
        }

        .auto-style257 {
            font-size: x-large;
        }

        .auto-style274 {
            width: 125px;
            text-align: justify;
            height: 6px;
        }
        .auto-style283 {
            font-size: large;
        }
        .auto-style314 {
            height: 9px;
            width: 100px;
        }
        .auto-style341 {
            text-align: left;
            width: 125px;
            height: 8px;
        }
        .auto-style382 {
            width: 125px;
            height: 46px;
        }
        .auto-style383 {
            height: 46px;
        }
        .auto-style384 {
            height: 46px;
            width: 68px;
        }
        .auto-style385 {
            width: 26px;
            height: 46px;
        }
        .auto-style405 {
            width: 125px;
            height: 9px;
        }
        .auto-style406 {
            height: 9px;
            width: 68px;
        }
        .auto-style409 {
            height: 9px;
            width: 26px;
        }
        .auto-style411 {
            text-align: left;
            height: 8px;
            width: 10px;
        }
        .auto-style412 {
            text-align: left;
            height: 8px;
            width: 68px;
        }
        .auto-style413 {
            height: 8px;
            width: 26px;
        }
        .auto-style418 {
            width: 260px;
            height: 46px;
        }
        .auto-style419 {
            width: 260px;
            height: 9px;
        }
        .auto-style420 {
            text-align: left;
            width: 260px;
            height: 8px;
        }
        .auto-style440 {
            text-align: right;
            width: 235px;
        }
        .auto-style446 {
            width: 235px;
            height: 46px;
        }
        .auto-style447 {
            width: 235px;
            height: 9px;
        }
        .auto-style448 {
            text-align: left;
            width: 235px;
            height: 8px;
        }
        .auto-style450 {
            text-align: left;
            width: 235px;
            height: 26px;
        }
        .auto-style451 {
            text-align: left;
            width: 235px;
            height: 16px;
        }
        .auto-style452 {
            text-align: left;
            height: 26px;
        }
        .auto-style453 {
            height: 26px;
        }
        .auto-style454 {
            width: 158px;
        }
        .auto-style455 {
            text-align: center;
        }
        .auto-style459 {
            text-align: left;
            width: 68px;
            height: 4px;
        }
        .auto-style460 {
            text-align: left;
            width: 260px;
            height: 4px;
        }
        .auto-style461 {
            text-align: left;
            width: 235px;
            height: 4px;
        }
        .auto-style462 {
            width: 26px;
            height: 4px;
        }
        .auto-style463 {
            text-align: left;
            height: 4px;
        }
        .auto-style471 {
            height: 9px;
            width: 10px;
        }
        .auto-style472 {
            text-align: right;
            width: 260px;
            height: 124px;
        }
        .auto-style473 {
            text-align: right;
            width: 235px;
            height: 124px;
        }
        .auto-style474 {
            text-align: left;
            height: 65px;
            
        }
        .auto-style475 {
            text-align: right;
            width: 26px;
            height: 124px;
        }
        .auto-style476 {
            text-align: right;
            height: 124px;
        }

        .auto-style477 {
            width: 10px;
        }
        .auto-style482 {
            height: 46px;
            width: 10px;
        }
        .auto-style483 {
            width: 260px;
        }
        .auto-style484 {
            width: 235px;
        }
        .auto-style485 {
            width: 125px;
        }
        .auto-style487 {
            width: 68px;
        }
        .auto-style490 {
            width: 26px;
        }
        .auto-style501 {
            text-align: left;
            width: 68px;
            height: 6px;
        }
        .auto-style502 {
            width: 260px;
            height: 6px;
        }
        .auto-style503 {
            width: 235px;
            height: 6px;
        }
        .auto-style504 {
            height: 6px;
            width: 10px;
        }
        .auto-style505 {
            width: 26px;
            height: 6px;
        }
        .auto-style506 {
            height: 6px;
        }
        .auto-style485{
            height: 6px;
        }

        .auto-style510 {
            width: 125px;
            height: 6px;
        }
        .auto-style511 {
            width: 68px;
            height: 6px;
        }

        .auto-style514 {
            width: 125px;
            height:60px;
            }
    

        .auto-style517 {
            width: 125px;
        }
    

    </style>
</head>
  
<body>
   

    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style83" rowspan="12">
                    <asp:Image ID="Image1" runat="server" Height="1171px" Width="725px" src="images/reg.jpg" />
                </td>
                <td class="auto-style472">
                    </td>
                <td class="auto-style473">
                    </td>
                <td class="auto-style474" colspan="3">
                    <asp:Image ID="Image2" runat="server" src="images/B.png" Height="110px" Width="684px" />
                </td>
                <td class="auto-style475">
                    </td>
                <td class="auto-style476">
                    </td>
            </tr>
            <tr>
                <td class="auto-style176">
                    </td>
                <td class="auto-style440">
                    </td>
                <td class="auto-style59" colspan="3">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Consolas" Font-Size="XX-Large" Text="Sign UP Page" ForeColor="#3A475B" CssClass="auto-style234" Width="273px"></asp:Label>
                </td>
                <td class="auto-style212">
                    </td>
                <td class="auto-style83">
                    </td>
            </tr>
            <tr>
                <td class="auto-style502" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    </td>
                <td class="auto-style503" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    </td>
                <td class="auto-style274" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    <asp:Label ID="lblFirstName" runat="server" Font-Names="Consolas" ForeColor="#85A09D" Text="First Name:" Font-Size="X-Large" CssClass="auto-style219" Height="27px" Width="187px"></asp:Label>
                </td>
                <td style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;" class="auto-style504">
                    <asp:TextBox ID="txtFirstName" runat="server" Width="248px" CausesValidation="True" Height="28px"></asp:TextBox>
                
                     <%--<font face="arial" color="#000022" size="-1">
                    Example:Ahmed OR Abd Elrahman</font>--%>
                </td>
                <td class="auto-style501" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="RequiredFieldValidator" Font-Names="Bahnschrift Light" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Invalid First Name Format" Font-Names="Arial Nova Light" Font-Size="Small" ForeColor="Red" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)" Width="200px"></asp:RegularExpressionValidator>
                  
                </td>
                <td class="auto-style505" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;"></td>
                <td class="auto-style506" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;"></td>
            </tr>
            <tr>
                <td class="auto-style483" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    </td>
                <td class="auto-style484" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    </td>
                <td class="auto-style485" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    <asp:Label ID="lblLastName" runat="server" Font-Names="Consolas"  ForeColor="#85A09D" Text="Last Name:" Font-Size="X-Large" CssClass="auto-style283" Width="183px"></asp:Label>
                </td>
                <td class="auto-style477" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    <asp:TextBox ID="txtLastName" runat="server" Width="248px" Height="27px"></asp:TextBox>
                    <font face="arial" color="#000022" size="-1">
                    <br />
                    Example:Ahmed</font></td>
                <td class="auto-style487" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="RequiredFieldValidator" Font-Names="Bahnschrift Light" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="Invalid Last Name Format" Font-Names="Arial Nova Light" Font-Size="Small" ForeColor="Red" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)" Width="200px"></asp:RegularExpressionValidator>
                   
                    </td>
                <td class="auto-style490" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;"></td>
                <td style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;"></td>
            </tr>
            <tr>
                <td class="auto-style502" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    </td>
                <td class="auto-style503" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    </td>
                <td class="auto-style510" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    <asp:Label ID="Label4" runat="server" Font-Names="Consolas"  ForeColor="#85A09D" Text="Gender:" Font-Size="X-Large"></asp:Label>

                </td>
                <td class="auto-style504" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Names="Consolas" RepeatDirection="Horizontal" Width="270px" CssClass="auto-style257" Height="44px" Font-Size="Large">
                        <asp:ListItem Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                    </asp:RadioButtonList>

                </td>
                <td class="auto-style511" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    </td>
                <td class="auto-style505" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;"></td>
                <td style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;" class="auto-style506"></td>
            </tr>
            <tr>
                <td class="auto-style483" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    </td>
                <td class="auto-style484" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    </td>
                <td class="auto-style514" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    <asp:Label ID="lblPhone" runat="server" Font-Names="Consolas"  ForeColor="#85A09D" Text="Mobile:" Font-Size="X-Large" Width="200px"></asp:Label>
                </td>
                <td class="auto-style477" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    <asp:TextBox ID="txtPhoneNum" runat="server" Width="248px" Height="24px"></asp:TextBox>
                    
                   
                    <font face="arial" color="#000022" size="-1">
                    <br />
                    Example:01221234567 </font></td>
                <td class="auto-style487" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPhoneNum" ErrorMessage="Invalid Phone Num. Format" Font-Names="Arial Nova Light" Font-Size="Small" ForeColor="Red" ValidationExpression="[0][1][0-2][0-24-9]\s\d{7}" Width="250px"></asp:RegularExpressionValidator>
                   
                    </td>
                <td class="auto-style490" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;"></td>
                <td style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;"></td>
            </tr>
            <tr>
                <td class="auto-style483" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    </td>
                <td class="auto-style484" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    </td>
                <td class="auto-style485" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    <asp:Label ID="Label9" runat="server" Font-Names="Consolas"  ForeColor="#85A09D" Text="Country:" Font-Size="X-Large"></asp:Label>
                </td>
                <td class="auto-style477" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Names="Bahnschrift Light" Font-Size="Medium" Height="44px" Width="248px">
                        <asp:ListItem>Egypt</asp:ListItem>
                        <asp:ListItem>Morraco</asp:ListItem>
                        <asp:ListItem>Libya</asp:ListItem>
                        <asp:ListItem>Paris</asp:ListItem>
                        <asp:ListItem>London</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style487" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    </td>
                <td class="auto-style490" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;" ></td>
                <td style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;"></td>
            </tr>
            <tr>
                <td class="auto-style483" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    </td>
                <td class="auto-style484" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    </td>
                <td class="auto-style517" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    <asp:Label ID="Label6" runat="server" Font-Names="Consolas"  ForeColor="#85A09D" Text="Email:" Font-Size="X-Large"></asp:Label>
                </td>
                <td class="auto-style477" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    <asp:TextBox ID="txtEmail" runat="server" Width="248px" Height="24px"></asp:TextBox>
                    <font face="arial" color="#000022" size="-1">
                    <br />
                    Example:hager58@gmail.com</font><br />
                   
                </td>
                <td class="auto-style487" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="RequiredFieldValidator" Font-Names="Bahnschrift Light" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email Address Format" Font-Names="Arial Nova Light" Font-Size="Small" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Width="250px"></asp:RegularExpressionValidator>
                   
                    </td>
                <td class="auto-style490"></td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style418" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    </td>
                <td class="auto-style446" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    &nbsp;</td>
                <td class="auto-style382" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    <asp:Label ID="lbluser" runat="server" Font-Names="Consolas"  ForeColor="#85A09D" Text="UserName:" Font-Size="X-Large"></asp:Label>
                </td>
                <td class="auto-style482" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    <asp:TextBox ID="txtuser" runat="server" Width="248px" Height="24px"></asp:TextBox>
                    <br />
                   
                </td>
                <td class="auto-style384" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtuser" ErrorMessage="RequiredFieldValidator" Font-Names="Bahnschrift Light" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtuser" ErrorMessage="At least 8 character" Font-Names="Arial Nova Light" Font-Size="Small" ForeColor="Red" ValidationExpression="\w{8,}" Width="200px"></asp:RegularExpressionValidator>
                   
                    </td>
                <td class="auto-style385"></td>
                <td class="auto-style383"></td>
            </tr>
            <tr>
                <td class="auto-style419" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    </td>
                <td class="auto-style447" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    &nbsp;</td>
                <td class="auto-style405" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    <asp:Label ID="Label7" runat="server" Text="Password:" Font-Names="Consolas"  ForeColor="#85A09D" Font-Size="X-Large"></asp:Label>
                </td>
                <td class="auto-style471" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    <asp:TextBox ID="txtPassword" runat="server" Width="248px" CausesValidation="True" TextMode="Password" Height="24px">enter password</asp:TextBox>
                    <br />

                </td>
                <td class="auto-style406" style="background-position: center center; background-attachment: fixed; border-top-width: 0px; background-color: #FFFFFF;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPassword" ErrorMessage="RequiredFieldValidator" Font-Names="Bahnschrift Light" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtPassword" ErrorMessage="Between 8-20 &amp; Special Character" Font-Names="Arial Nova Light" Font-Size="Small" ForeColor="Red" 
                        ValidationExpression="([0-9]*)([a-z]*)([A-Z]*)([!@#&()–[{}:;',?/*~$^+=<>]*).{8,20}" Width="250px"></asp:RegularExpressionValidator>
                   
                    </td>
                <td class="auto-style409">
                    &nbsp;<script>
                    function myFunction() {
                        var x = document.getElementById("txtPassword");
                        if (x.type === "password") {
                            x.type = "text";
                        } else {
                            x.type = "password";
                        }
                    }
                </script></td>
                <td class="auto-style314"></td>
            </tr>
            <tr>
                <td class="auto-style420">
                    </td>
                <td class="auto-style448">
                    &nbsp;</td>
                <td class="auto-style341">
                   
                 
                    <asp:Label ID="lblprofilePic" runat="server" Text="Profile Pic:" Font-Names="Consolas"  ForeColor="#85A09D" Font-Size="X-Large" Width="200px"></asp:Label>
                 
                       </td>
                <td class="auto-style411">
                   
                 
                      <asp:FileUpload ID="fupUserPic" runat="server" />
                 
                       </td>
                <td class="auto-style412">
                   
                 
                       </td>
                <td class="auto-style413"></td>
            </tr>
            <tr>
                <td class="auto-style460">
                    </td>
                <td class="auto-style461">
                    </td>
                <td class="auto-style463" colspan="2">
                   
                 
                      <asp:Button ID="Button1" runat="server" BackColor="#3A475B" BorderColor="White" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCCCCC" Text="Sign Up" Width="626px" Font-Names="Consolas" class="button" OnClick="Button1_Click" />
                 
                       </td>
                <td class="auto-style459">
                   
                 
                <p class="auto-style454">Already have an account? <a href="Login.aspx">Sign in</a>.</p>
                   
                 
                       </td>
                <td class="auto-style462"></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    </td>
                <td class="auto-style84">
                   
                 
                      </td>
                <td class="auto-style450">
                   
                 
                      </td>
                <td class="auto-style452" colspan="2">
                   
                 
                       <div class="auto-style455">
                   
                 
                       <asp:Label ID="lblMsg" runat="server" Font-Names="Consolas" Width="500px" Font-Size="X-Large"></asp:Label>
                </div>
                </td>
                <td class="auto-style209">
                   
                 
                       </td>
                <td class="auto-style75"></td>
                <td class="auto-style453"></td>
            </tr>
        
            <tr>
                <td class="auto-style169">
                    </td>
                <td class="auto-style170">
                   
                 
                      </td>
                <td class="auto-style451">
                   
                 
                      &nbsp;</td>
                <td class="auto-style93" colspan="2">
                   
                 
                       &nbsp;</td>
                <td class="auto-style210">
                   
                 
                </td>
                <td class="auto-style171"></td>
                <td class="auto-style172"></td>
            </tr>
        
            </table>
    </form>
        
</body>



</html>
