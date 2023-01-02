<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>
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
                txtFname.Text + "','" +
                txtLname.Text + "','" +
                rblGender.SelectedValue + "','" +
                txtEmail.Text + "','" +
                txtPhone.Text + "','" +
                ddlCountry.SelectedValue + "','" +
                txtUsername.Text + "','" +
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
                if (fupPic.HasFile)
                    fupPic.SaveAs(Server.MapPath("userPic") + "\\" + txtUsername.Text + "jpg");

                lblMSG.Text = "Welcome " + txtFname.Text + " Your account has been successfully created!";
            }
            catch (SqlException err)
            {
                if (err.Number == 2627)
                {
                    lblMSG.Text = "The username " + txtUsername.Text + " Already used, please choose another! ";
                }
                else
                {
                    lblMSG.Text = "Sorry, Database Problem, please try again later!";
                }

            }

            catch {
                lblMSG.Text = "Sorry the System is not available at the moment ";
            }
        }
        </script>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 540px;
        }
        .auto-style2 {
            width: 934px;
        }
        .auto-style3 {
            height: 35px;
            text-align: center;
        }
        .auto-style5 {
            width: 313px;
        }
        .auto-style7 {
            width: 160px;
        }
        .auto-style11 {
            height: 42px;
        }
        .auto-style12 {
            width: 99px;
        }
        .auto-style13 {
            width: 313px;
            height: 2px;
        }
        .auto-style14 {
            width: 99px;
            height: 2px;
        }
        .auto-style15 {
            width: 160px;
            height: 2px;
        }
        .auto-style16 {
            height: 2px;
        }
        .auto-style17 {
            width: 313px;
            height: 8px;
        }
        .auto-style18 {
            width: 99px;
            height: 8px;
        }
        .auto-style19 {
            width: 160px;
            height: 8px;
        }
        .auto-style20 {
            height: 8px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" rowspan="13"><asp:Image ID="Image1" runat="server" Height="1030px" Width="737px" src="images/reg.jpg" /></td>
                    <td colspan="4" class="auto-style11">                    <asp:Image ID="Image2" runat="server" src="images/B.png" Height="88px" Width="582px" />
</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label1" runat="server" Font-Names="Georgia" ForeColor="#485A1C" Text="First Name:" Width="141px" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtFname" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Is required*" ControlToValidate="txtFname" Font-Names="Georgia" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Unvalid Format" ControlToValidate="txtFname" Font-Names="Georgia" Font-Size="Small" ForeColor="Red" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)" ></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label2" runat="server"  Font-Names="Georgia" ForeColor="#485A1C" Text="Last Name:" Width="135px" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtLname" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Is required*" ControlToValidate="txtLname" Font-Names="Georgia" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="Unvalid Format" ControlToValidate="txtLname" Font-Names="Georgia" Font-Size="Small" ForeColor="Red" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)"  Width="120px"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:Label ID="Label3" runat="server" Font-Names="Georgia" ForeColor="#485A1C" Text="Gender:" Width="116px" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style18">
                        <asp:RadioButtonList ID="rblGender" runat="server" Font-Names="Georgia" ForeColor="#3A475B" RepeatDirection="Horizontal" Height="29px">
                            <asp:ListItem Value="F">Female</asp:ListItem>
                            <asp:ListItem Value="M">Male</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style19"></td>
                    <td class="auto-style20"></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label4" runat="server" Font-Names="Georgia" ForeColor="#485A1C" Text="Phone:" Width="116px" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="txtPhone" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style15">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Is required*" ControlToValidate="txtPhone" Font-Names="Georgia" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style16">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ErrorMessage="Unvalid Format" ControlToValidate="txtPhone" Font-Names="Georgia" Font-Size="Small"   ValidationExpression="[0][1][0-2][0-24-9]\s\d{7}"  ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label5" runat="server"  Font-Names="Georgia" ForeColor="#485A1C" Text="Email:" Width="116px" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtEmail" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Is required*" ControlToValidate="txtEmail" Font-Names="Georgia" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ErrorMessage="Unvalid Format" ControlToValidate="txtEmail" Font-Names="Georgia" Font-Size="Small" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label6" runat="server"  Font-Names="Georgia" ForeColor="#485A1C" Text="Country:" Width="116px" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:DropDownList ID="ddlCountry" runat="server" Height="21px" Width="204px">
                            <asp:ListItem>Egypt</asp:ListItem>
                            <asp:ListItem>France</asp:ListItem>
                            <asp:ListItem>Korea</asp:ListItem>
                            <asp:ListItem>China</asp:ListItem>
                            <asp:ListItem>USA</asp:ListItem>
                            <asp:ListItem>UK</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label7" runat="server"  Font-Names="Georgia" ForeColor="#485A1C" Text="UserName:" Width="116px" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtUsername" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Is required*" ControlToValidate="txtUsername" Font-Names="Georgia" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ErrorMessage="Unvalid Format" ControlToValidate="txtUsername" Font-Names="Georgia" Font-Size="Small" ValidationExpression="\w{8,}"  ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label8" runat="server"  Font-Names="Georgia" ForeColor="#485A1C" Text="Password:" Width="116px" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Is required*" ControlToValidate="txtPassword" Font-Names="Georgia" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ErrorMessage="Unvalid Format" ControlToValidate="txtPassword" Font-Names="Georgia" Font-Size="Small" ValidationExpression="([0-9]*)([a-z]*)([A-Z]*)([!@#&()–[{}:;',?/*~$^+=<>]*).{8,20}" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label9" runat="server"  Font-Names="Georgia" ForeColor="#485A1C" Text="Retype Pass:" Width="134px" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtRepeat" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Is required*" ControlToValidate="txtRepeat" Font-Names="Georgia" Font-Size="Small" ForeColor="Red" Width="100px"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtRepeat" ErrorMessage="Not Matchs" Font-Names="georgia" Font-Size="Small" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label10" runat="server" Font-Names="Georgia" ForeColor="#485A1C" Text="Picture:" Width="116px" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:FileUpload ID="fupPic" runat="server" Width="178px" />
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Font-Names="Georgia" Font-Size="Large" ForeColor="#1A2213" Height="42px" Text="Submit" Width="341px" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="4">
                        <asp:Label ID="lblMSG" runat="server" Font-Names="Georgia" Font-Size="Large" ForeColor="#000066"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
