<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Index.aspx.vb" Inherits="GMTC2022.Index" %>

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

                        

                         <li class="nav-item">
                               <h5> <a class="nav-link" href="guid.pdf" target="_blank"><i class="fas fa-info-circle" style=" color:grey;padding-left: 10px; padding-right: 10px"></i>خطوات التسجيل</a></h5>
                        </li>
                    </ul>
                </div>
            </nav>


        </div>
        <div class="container p-3  mt-4 border btn-info">
            <div align="right" style="color: whitesmoke">
                <h3> الشروط والاحكام 
                </h3>
            </div>
        </div>
        <div class="container p-3 mt-4 border" style="background-color: #FFFFFF">

            <table class="style1" cellpadding="2" cellspacing="2">
                <tr>
                    <td align="right" colspan="2">

                        <div class="row" style="color: #457B9D">
                            <div class="col-sm-12">
                                <strong>
									تعلن قيادة قوات الامن الوطني الفلسطيني عن بدء اجراءات التسجيل لتجنيد سائقين ( شحن خفيف 15 طن , شحن ثقيل, شحن ثقيل مع رافعة, شحن ثقيل مع جر وتخليص, جرافة – باجر, باص , اسعاف)
									وذلك وفق الشروط
									التالية:-
                                </strong>
                            </div>
                        </div>

                        <div class="row" style="color: #457B9D">
                            <div class="col-sm-12">
                                <ol>
                                    <li>أن يكون فلسطيني ويحمل الهوية الفلسطينية.</li>
                                    <li>ان يكون عمر المتقدم بين 18-28 سنة</li>
                                    <li>ان يكون حامال لرخصة قيادة سارية المفعول</li>
                                    <li>ان لا تقل مدة اصدار الرخصة عن ثلث سنوات</li>
                                    <li>ان يتقن القراءة والكتابة</li>
                                    <li>ان يكون ذا لياقة بدنية مناسبة</li>
                                    <li>ان يكون حسن الهيئة وال يحمل اي عالمات فارقة وان يخلوا جسده من اي وشم</li>
                                    <li>سالمة النطق ومخارج الحروف</li>
                                    <li>ان يكون خاليا من االمراض السارية والمعدية والمزمنة. </li>
                                    <li>ان يجتاز الفحص الطبي السريري والمخبري</li>
                                    <li>ان ال يكون قد سبق الحكم عليه بعقوبة في جناية او جنحة مخلة بالشرف والامانة</li>
                                    <li>ان ال يكون قد فصل من الخدمة سابقا  بقرار تأديبي</li>
                                    
                                  
                                </ol>

                          
                            </div>

                        </div>

                        <h4 style="color: #1D3557">ملاحظات هامة:</h4>
                        <ul>
                            <li>
على الراغبين في الالتحاق بقوات الامن الوطني الفلسطيني ممن تتوفر فيهم شروط التجنيد لفئة السائقين التسجيل من خلال الموقع الالكتروني لهيئة التدريب العسكري www.gmtc.sec.ps   والتسجيل الكترونيا في رابط التسجيل اون لاين، والذي سيتم تفعيله صبيحة يوم  الاحد الموافق 14-8-2022 وينتهى مساء يوم الاحد الموافق 21-8-2022
                            </li>
                            <li>سيتم التواصل والاشعار بقبول الطلبات من خلال الرسائل النصية.</li>
                            <li>التسجيل بطلب الالتحاق لا يعني القبول، حيث سيخضع المتقدمين لاختبارات تنافسية وفق المعايير المتعتمدة للتجنيد.</li>
                             
                        </ul>

                    </td>
                </tr>
                <tr>
                    <td align="right">

                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <div class="alert alert-warning" role="alert">
                                    <div class="row mt-2">
                                        <div class="col-12">

                                            <asp:CheckBox Style="text-indent:5px" ID="chkAccept1" AutoPostBack="true" runat="server" Font-Bold="True" Text="اوافق على جميع الشروط والاحكام المذكورة اعلاه. " />
                                           <br />
                                            <strong>اوافق على ان البريد الالكتروني الذي سيتم ادخاله في النموذج هو البريد الالكتروني الخاص بي والذي ستقوم الهيئة بالتواصل معي من خلاله</strong>
                                        </div>

                                    </div>

                                    <div class="row mt-2">
                                      
                                        <div class="col">
                                            <asp:Button   ID="btnAccept" CssClass="btn btn-info btn-block" runat="server" Text="الاستمرار" Enabled="False" />
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