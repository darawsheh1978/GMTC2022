<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="newaccount.aspx.vb" Inherits="GMTC2022.newaccount" %>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
<title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>

<link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css" />
<link href="Css/StyleSheet.css" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css2?family=Cairo:wght@400;600;700&display=swap"
rel="stylesheet">
<link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="assets/css/fontawesome.min.css" rel="stylesheet" />
<link href="assets/css/animate.css" rel="stylesheet" />
<link href="assets/css/style.css" rel="stylesheet" />
<style>
.SPS
{
text-indent: 10PX;
}
.style1
{
width: 100%;
}

 
</style>

    <script>

        function openModal() {
            $('#confirm').modal({ show: true });
        }

    </script>
</head>
<body  >
    <form id="form1" runat="server" dir="rtl">
         <asp:ScriptManager ID="ScriptManager1" EnableCdn="true"  runat="server">
                </asp:ScriptManager>
        <div class="container">


            
            <div class="row mt-3 align-items-center" style="box-shadow: 0px 0px 10px 10px  #17A2B8 ">
                <div class="col-sm-12 text-center">
                    <asp:Image ID="Image11" runat="server" ImageUrl="Images/logo.png" />
                </div>

            </div>



        </div>

        <div class="container mt-4 alert-primary">
            <div class="alert" role="alert">
                 
                <div align="right" style="color: #666666">
                    <h3><a href="announce.aspx"><strong><i class="fas fa-home" style="font-size: 24px; padding-left:10px"></i></strong></a>
                    انشاء حساب جديد   
                    </h3>
                </div>
            </div>
        </div>
        <div class="container mt-4">
            <div class="alert alert-warning  ">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <div class="row mt-2">
                            <div class="col-12">
                                <asp:TextBox ID="txtUser" runat="server" BorderColor="#CCCCCC" BorderStyle="Solid" CssClass="form-control" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')" placeholder="رقم الهوية" required=""></asp:TextBox>
                            </div>

                        </div>
                        <div class="row mt-2">
                            <div class="col-12">
                                <asp:TextBox ID="txtPass" runat="server" BorderColor="#CCCCCC" CssClass="form-control" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')" placeholder="كلمة المرور" required="" TextMode="Password"></asp:TextBox>
                            </div>

                        </div>
                        <div class="row mt-2">
                            <div class="col-12">
                                <asp:TextBox ID="txtPasscompare" runat="server" BorderColor="#CCCCCC" CssClass="form-control" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')" placeholder="تأكيد كلمة المرور " required="" TextMode="Password"></asp:TextBox>
                            </div>

                        </div>
                        <div class="row mt-2">
                            <div class="col-12" align="center">
                                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtPass" ControlToValidate="txtPasscompare" ErrorMessage="كلمتا المرور غير متطابقتان"   ValidationGroup="q" BackColor="#FF2A35" ForeColor="White" BorderColor="#007BFF" BorderStyle="Solid" BorderWidth="1px" SetFocusOnError="True"></asp:CompareValidator>
                            </div>
                        </div>

                        <div class="row mt-2">
                            <div class="col-12">
                                <asp:Button ID="BtnLogin" runat="server" CssClass="btn btn-primary btn-block" data-target="#exampleModalLong" data-toggle="modal" Text="انشاء الحساب" ValidationGroup="q" />
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-12">
                                <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-secondary btn-block" NavigateUrl="~/announce.aspx">اغلاق</asp:HyperLink>
                            </div>
                        </div>



                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>



            <div class="row mt-2 align-content-center">
                <div class="col" align="center">
                    <asp:Label ID="lblmessage0" runat="server" CssClass="form-control" BorderWidth="0px" Font-Size="8pt" BackColor="#F1FAEE">GMTC Sec 2022</asp:Label></div>
            </div>


        </div>

        <asp:SqlDataSource ID="SqlGovs" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_ %>" ProviderName="System.Data.SqlClient" SelectCommand="SELECT GovId, Gov FROM Govs"></asp:SqlDataSource>
                   
                        
                    


         <div id="confirm" class="modal fade">
            <div class="modal-dialog modal-md modal-dialog-centered" role="document"  >
                <div class="modal-content">
                    <div class="modal-header float-right" style="background-color: #F2F2F2">
                         
                        <button type="button" class="btn btn-info" data-dismiss="modal" aria-label="Close">
                            اغلاق</button>
                    </div>
                    <div class="modal-body">
                        <br />
                     
                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                            <ContentTemplate>
                                <table>
                                    <tr>
                                        <td align="center">
                                            <asp:Label ID="msg" runat="server" Text="" Font-Size="12" ForeColor="Gray"></asp:Label>
                                        </td>
                                    </tr>

                                     <tr>
                                        <td align="center">
                                            <br />
                                           <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-primary btn-block" NavigateUrl="login.aspx" Target="_self"  >تسجيل الدخول</asp:HyperLink>
                                        </td>
                                    </tr>
                                </table>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <br />
                        <br />

                    </div>
                </div>
            </div>
        </div>



    </form>
</body>
</html>