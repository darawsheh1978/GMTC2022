<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="GeneralGuidance.aspx.vb" Inherits="GMTC2022.GeneralGuidance" %>
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
}
.style1
{
width: 100%;
}

  
</style>
</head>
<body  >
    <form id="form1" runat="server" dir="rtl">
 <asp:ScriptManager ID="ScriptManager1" EnableCdn="true"  runat="server"></asp:ScriptManager>

        <div class="container">

           
          
            <div class="row mt-3 align-items-center" style="box-shadow: 0px 0px 10px 10px  #17A2B8 ">
                <div class="col-sm-12 text-center">
                    <asp:Image ID="Image11" runat="server" ImageUrl="Images/logo.png" />
                </div>

            </div>



        </div>

      <div class="container" style="background-color: #D1ECF1; border-top-left-radius: 5px; border-top-right-radius: 5px; border-bottom-left-radius: 5px; border-bottom-right-radius: 5px;">

            <nav class="navbar mt-4 navbar-expand-lg navbar-light" style="background-color: #D1ECF1; border-top-left-radius: 5px; border-top-right-radius: 5px; border-bottom-left-radius: 5px; border-bottom-right-radius: 5px;">
                <a href="announce.aspx"><strong><i class="fas fa-home" style="font-size: 24px"></i></strong></a>
                 <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="navbar-collapse collapse w-100 order-3 dual-collapse2" id="navbarSupportedContent">
                  

                    <ul class="navbar-nav mr-auto">

                        
 
                    </ul>
                </div>
            </nav>


        </div>
        <div class="container p-3  mt-4 border btn-info">
            <div align="right" style="color: whitesmoke">
                <h3> ارشادات عامة  </h3>
            </div>
        </div>
        <div class="container p-3 mt-4 border" style="background-color: #FFFFFF">

            <table class="style1" cellpadding="2" cellspacing="2">
                <tr>
                    <td align="right" colspan="2">

                         

                        <div class="row" style="color: #457B9D">
                            <div class="col-sm-12">
                                <ol>
                                    <li>النظام يعمل على جميع انواع الاجهزة الذكية واجهزة الكمبيوتر</li>
                                    <li>قد يستغرق تحميل الملفات  بعض الوقت وهذا يعتمد على سرعة الانترنت</li>
                                    <li>يفضل ان تكون المرفقات بجودة مقبولة (السلم الرمادي) لتسريع عملية رفعها على النظام</li>
                                    <li>الرجاء عدم اغلاق النظام الا بعد اكتمال عملية التحميل</li>
									<li>يفضل استخدام شبكة انترنت Wi-Fi وعدم استخدام 3G</li>
									<li>اذا واجهتك اي مشكلة بعد التحميل الرجاء استخدام شبكة انترنت اسرع  و اعاده المحاولة </li>
                                     <li>سيتم اشعارك باكتمال عملية التحميل  والتخزين</li>
                                    <li>  اذا واجهتك أي مشكلة الرجاء التواصل معنا عبر <a href="https://www.facebook.com/gmtc.cti">Facebook  <i style="padding:5px; font-size:20px; " class="fab fa-facebook-messenger"></i> </a> </li>
                                 
                                </ol>
 
                            </div>

                        </div>

                       
                      

                    </td>
                </tr>
                <tr>
                    <td align="right">

                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <div class="alert alert-warning" role="alert">
                                    

                                    <div class="row mt-2">
                                       
                                        <div class="col">
                                            <asp:Button   ID="btnAccept" CssClass="btn btn-info btn-block" runat="server" Text="الاستمرار"   />

                                        </div>
                                    </div>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                       

                    </td>

                </tr>

            </table>

            <div>
            </div>


        </div>

        <br />
        <br />




    </form>
</body>
</html>
