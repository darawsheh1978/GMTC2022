<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CheckGrade.aspx.vb" Inherits="GMTC2022.CheckGrade" %>

 

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

 

<!DOCTYPE html>
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
<style>
.SPS
{
text-indent: 10PX;
padding:5px;
}
.style1
{
width: 100%;
}
  
 
  
    </style>

    <script>

        function validateNumber(e) {
            const pattern = /^[0-9]*\.?[0-9]*$/;

            return pattern.test(e.key)
        }

        function openModal() {
            $('#confirm').modal({ show: true });
        }



        $(document).ready(function () {
            $("#DOB").datepicker({ format: 'dd/mm/yyyy', changeMonth: true, changeYear: true, showRightIcon: true });
            var parameter = Sys.WebForms.PageRequestManager.getInstance();


            parameter.add_endRequest(function () {
                $("#DOB").datepicker({ format: 'dd/mm/yyyy', changeMonth: true, changeYear: true, showRightIcon: true });


            });
        });

    </script>
</head>
<body  >
    <form id="form1" runat="server" dir="rtl" >

         

        <asp:ScriptManager ID="ScriptManager1" EnableCdn="true"    runat="server" ></asp:ScriptManager>


        <div class="container">


            <div class="row mt-4 align-items-center" style="box-shadow: 0px 0px 10px 10px  #17A2B8 ">
                <div class="col-sm-12 text-center">
                    <asp:Image ID="Image11" runat="server" ImageUrl="Images/logo.png" />
                </div>

            </div>


        </div>

        <div class="container" style="background-color: #D1ECF1; border-top-left-radius: 5px; border-top-right-radius: 5px; border-bottom-left-radius: 5px; border-bottom-right-radius: 5px;">

            <nav class="navbar mt-4 navbar-expand-lg navbar-light" style="background-color: #D1ECF1; border-top-left-radius: 5px; border-top-right-radius: 5px; border-bottom-left-radius: 5px; border-bottom-right-radius: 5px;">
                <a href="announce.aspx"><strong><i class="fas fa-home" style="font-size: 32px"></i></strong></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="navbar-collapse collapse w-100 order-3 dual-collapse2" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">

                            <li class="nav-item ">
                                <a class="nav-link" href="announce.aspx"><i style="padding-left: 5px;" class="fas fa-sign-out-alt"></i>تسجيل الخروج</a>
                            </li>


                        </ul>

            
                </div>
            </nav>


        </div>

        <div class="container p-3  mt-4  btn-info">
            <div align="right" style="color: whitesmoke">
                <h3>طلب التحاق: الكليات الخارجية</h3>
            </div>
        </div>



        <div class="container p-1 mt-2  " style="background-color: #FFFFFF">

            <table width="100%">
                <tr>
                    <td align="right">

                        <h4 style="color: #1D3557"><i class="fas fa-caret-left" style="padding-left: 10px; color: royalblue"></i>التخصص والمعدل:</h4>
                        <div class="alert alert-primary" role="alert">

                            <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                <ContentTemplate>

                                    <div class="row mt-2" style="color: #457B9D">

                                        <div class="col-sm">
                                            <asp:Label ID="lblheader" CssClass="btn btn-warning btn-block"  runat="server" Text="ملاحظة: يجب ان لا تقل علامة الثانوية العامة عن 80%  للفرعي العلمي والادبي"  Font-Size="14pt"></asp:Label>
                                        </div>
                                    </div>



                                    <div class="row mt-5" style="color: #457B9D">

                                          <div class="col-sm mt-3">
                                            <asp:Label ID="Label5" for="TawjihiId" runat="server" Text="السنة الدراسية" ></asp:Label>
                                            <asp:DropDownList ID="yr" runat="server" CssClass="form-control mt-2">
                                                <asp:ListItem Selected="True">2022</asp:ListItem>
                                                <asp:ListItem>2021</asp:ListItem>

                                              </asp:DropDownList>
                                        </div>


                                        <div class="col-sm mt-3">
                                            <asp:Label ID="Label1" for="TawjihiId" runat="server" Text="رقم الجلوس"></asp:Label>
                                            <asp:TextBox autocomplete="off" ID="TawjihiId" runat="server" CssClass="form-control mt-2" required="" onkeypress="return validateNumber(event)" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>

                                        </div>

                                        <div class="col-sm ">
                                            <asp:Label ID="Label4" for="btnGetGrade" runat="server" Text="." ForeColor="#CCE5FF"></asp:Label>
                                            <asp:Button ID="btnGetGrade" CssClass="btn btn-primary btn-block mt-4" runat="server" Text="بحث" />

                                        </div>

                                        <div class="col-sm mt-3">
                                            <asp:Label ID="Label2" for="Speciality" runat="server" Text="التخصص"></asp:Label>
                                            <asp:TextBox autocomplete="off" ReadOnly="true" ID="Speciality" runat="server" CssClass="form-control mt-2"></asp:TextBox>

                                        </div>

                                        <div class="col-sm mt-3">
                                            <asp:Label ID="Label3" for="Average" runat="server" Text="العلامة"></asp:Label>
                                            <asp:TextBox autocomplete="off" CausesValidation="false" ValidationGroup="dd" ID="Average"  ReadOnly="true" runat="server" CssClass="form-control mt-2"></asp:TextBox>

                                        </div>

                                    </div>
                                    <div class="row mt-4" style="color: #457B9D">
                                        <div class="col-sm" align="center">
                                            <asp:Label ID="Msg" runat="server" Text=""></asp:Label>

                                        </div>
                                    </div>

                                    <div class="row mt-4" style="color: #457B9D">
                                        <div class="col-sm">
                                            <asp:Button ID="btncont" Visible="false" CssClass="btn  btn-success btn-block" runat="server" Text="الاستمرار" />

                                        </div>
                                    </div>

                                </ContentTemplate>
                            </asp:UpdatePanel>


                        </div>
                    </td>
                </tr>
 
            </table>

            

        </div>

    






        <asp:SqlDataSource ID="SqlGovs" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_ %>" ProviderName="System.Data.SqlClient" SelectCommand="SELECT GovId, Gov FROM Govs"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlLocalities" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_ %>" ProviderName="System.Data.SqlClient" SelectCommand="SELECT LocalityId, Locality FROM Localities"></asp:SqlDataSource>









    </form>
</body>
</html>