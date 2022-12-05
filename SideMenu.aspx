<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SideMenu.aspx.vb" Inherits="GMTC2022.SideMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        body {
  background-color: #fbfbfb;
}
@media (min-width: 991.98px) {
  main {
    padding-left: 0;
    margin-top:160px;
  }
}

/* Sidebar */
.sidebar {
  position: fixed;
  top: 0;
  bottom: 0;
  right: 0;
  padding:130px 0 0; /* Height of navbar */
  box-shadow: 0 2px 5px 0 rgb(0 0 0 / 5%), 0 2px 10px 0 rgb(0 0 0 / 5%);
  width: 240px;
  z-index: 600;
}

.SPS
{
text-indent: 10PX;
padding:5px
}
.style1
{
width: 100%;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <!--Main Navigation-->
            <header dir="rtl" align="right">

                <!-- Sidebar -->
                <nav id="sidebarMenu" class="collapse d-lg-block sidebar collapse bg-white">
                    <div class="position-sticky">
                        <div class="list-group list-group-flush mx-3 mt-4">

                            <span>القائمة الرئيسية</span>
                            <a href="#" class="list-group-item list-group-item-action py-2 ripple">
                                <i style="padding-left: 5px;" class="fas fa-angle-double-left"></i><span>التجنيد</span>
                            </a>
                            <a href="#" class="list-group-item list-group-item-action py-2 ripple">
                                <i style="padding-left: 5px;" class="fas fa-angle-double-left"></i><span>التجنيد - كفاءات</span>
                            </a>

                            <a href="#" class="list-group-item list-group-item-action py-2 ripple"><i style="padding-left: 5px;" class="fas fa-university"></i><span>الكليات الخارجية</span></a>
                            <a href="#" class="list-group-item list-group-item-action py-2 ripple"><i style="padding-left: 5px;" class="fas fa-book-open"></i><span>الامتحانات الالكترونية</span></a>
                            <a href="#" class="list-group-item list-group-item-action py-2 ripple">
                                <i style="padding-left: 5px;" class="fas fa-sign-in-alt"></i><span>تسجيل الخروج</span>
                            </a>
                            <a href="#" class="list-group-item list-group-item-action py-2 ripple"><i style="padding-left: 5px;" class="fas fa-info-circle"></i><span>المزيد...</span></a>
                            <a href="#" class="list-group-item list-group-item-action py-2 ripple"><i style="padding-left: 5px;" class="fas fa-scroll"></i><span>الاعلانات</span></a>

                            <a class="list-group-item list-group-item-action py-2 ripple" href="#">
                                <i class="fab fa-youtube" style="font-size: 1.5em; padding-left: 5px;"></i>يوتيوب</a>
                            <a class="list-group-item list-group-item-action py-2 ripple" href="#">
                                <i class="fab fa-facebook" style="font-size: 1.5em; padding-left: 5px;"></i>فيسبوك</a>
                        </div>
                    </div>
                </nav>
                <nav id="main-navbar" class="navbar navbar-expand-lg navbar-light bg-white fixed-top" style="box-shadow:  0 5px 5px 0 rgb(0 0 0 / 20%), 0 5px 5px 0 rgb(0 0 0 / 5%);">
                    <!-- Container wrapper -->
                    <div class="container justify-content-center"   >

                        <a class="navbar-brand" href="#">
                            <img
                                src="Images/logo.png" width="250px"
                                alt="MDB Logo"
                                loading="lazy" />
                        </a>


                    </div>
                    <!-- Container wrapper -->
                </nav>

            </header>

            <main dir="rtl">
                


                <div class="container p-3  mt-5  btn-info">
                    <div align="right" style="color: whitesmoke">
                        <h3>التجنيد
                        </h3>
                    </div>
                </div>
                <div class="container p-1 mt-5  " style="background-color: #FFFFFF">

                    <table class="style1" cellpadding="2" cellspacing="2">
                        <tr>
                            <td align="right">

                                <h4 style="color: #1D3557">البيانات الشخصية :</h4>
                                <div class="alert alert-info" role="alert">
                                    <div class="row mt-3" style="color: #457B9D">
                                        <div class="col-sm-3">
                                            <asp:Label Font-Bold="True" for="txtFName" ID="Label10" runat="server" Text="الإسم الاول  "></asp:Label>
                                            <asp:TextBox ID="txtFName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:Label Font-Bold="True" for="txtSName" ID="Label15" runat="server" Text="الاب"></asp:Label>
                                            <asp:TextBox ID="txtSName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:Label Font-Bold="True" for="txtTName" ID="Label16" runat="server" Text="الجد"></asp:Label>
                                            <asp:TextBox ID="txtTName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:Label Font-Bold="True" for="txtLName" ID="Label20" runat="server" Text="العائلة"></asp:Label>
                                            <asp:TextBox ID="txtLName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row mt-3" style="color: #457B9D">
                                        <div class="col-sm-3">
                                            <asp:Label Font-Bold="True" for="IDNumber" ID="Label3" runat="server" Text="رقم الهوية"></asp:Label>
                                            <asp:TextBox ID="IDNumber" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:Label Font-Bold="True" for="PlaceOfBirth" ID="Label4" runat="server" Text="مكان الميلاد "></asp:Label>
                                            <asp:TextBox ID="PlaceOfBirth" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-6">
                                            <asp:Label Font-Bold="True" for="PlaceOfLiving" ID="Label13" runat="server" Text="مكان السكن "></asp:Label>
                                            <asp:TextBox ID="PlaceOfLiving" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row mt-3" style="color: #457B9D">
                                        <div class="col-sm-3">
                                            <asp:Label Font-Bold="True" for="DOB" ID="Label1" runat="server" Text="تاريخ الميلاد  "></asp:Label>
                                            <asp:TextBox ID="DOB" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:Label Font-Bold="True" for="Age" ID="Label5" runat="server" Text="العمر "></asp:Label>
                                            <asp:TextBox ID="Age" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:Label Font-Bold="True" for="Nat" ID="Label6" runat="server" Text="الجنسية الأصلية"></asp:Label>
                                            <asp:TextBox ID="Nat" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:Label Font-Bold="True" for="Passport" ID="Label32" runat="server" Text="جواز السفر "></asp:Label>
                                            <asp:TextBox ID="Passport" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>

                                    </div>
                                    <div class="row mt-3" style="color: #457B9D">
                                        <div class="col-sm-3">
                                            <asp:Label Font-Bold="True" ID="Label7" runat="server" Text="الديانة   "></asp:Label>
                                            <asp:TextBox ID="Rel" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:Label Font-Bold="True" ID="Label8" runat="server" Text="المؤهل العلمي   "></asp:Label>
                                            <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                                <asp:ListItem>ابتدائي</asp:ListItem>
                                                <asp:ListItem>اعدادي</asp:ListItem>
                                                <asp:ListItem>ثانوي</asp:ListItem>
                                                <asp:ListItem>غير ذلك</asp:ListItem>

                                            </asp:DropDownList>
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:Label Font-Bold="True" ID="Label9" runat="server" Text=" الجنس "></asp:Label>
                                            <asp:DropDownList ID="Gender_" CssClass="form-control" runat="server">
                                                <asp:ListItem>ذكر</asp:ListItem>
                                                <asp:ListItem>انثى</asp:ListItem>


                                            </asp:DropDownList>
                                        </div>

                                        <div class="col-sm-3">
                                            <asp:Label Font-Bold="True" ID="Label30" runat="server" Text="الحالة الإجتماعية  "></asp:Label>
                                            <asp:TextBox ID="MS" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row mt-3" style="color: #457B9D">
                                        <div class="col-sm-3">
                                            <asp:Label Font-Bold="True" ID="Label2669" runat="server" Text="الوزن"></asp:Label>
                                            <asp:TextBox ID="weight" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:Label Font-Bold="True" ID="Label3663" runat="server" Text="الطول"></asp:Label>
                                            <asp:TextBox ID="Hight" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>

                                    </div>

                                    <div class="row mt-3" style="color: #457B9D">
                                        <div class="col-sm-3">
                                            <asp:Label Font-Bold="True" ID="Label29" runat="server" Text="  مهنة الأب  "></asp:Label>
                                            <asp:TextBox ID="FatherWork" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-9">
                                            <asp:Label Font-Bold="True" ID="Label33" runat="server" Text="مكان عمل الأب"></asp:Label>
                                            <asp:TextBox ID="FatherplaceOfWork" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>

                                    </div>
                                    <div class="row mt-3" style="color: #457B9D">
                                        <div class="col-sm-3">
                                            <asp:Label Font-Bold="True" ID="Label2" runat="server" Text="  مهنة الام  "></asp:Label>
                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-9">
                                            <asp:Label Font-Bold="True" ID="Label11" runat="server" Text="مكان عمل الام"></asp:Label>
                                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>

                                    </div>
                                    <div class="row mt-3" style="color: #457B9D">
                                        <div class="col-sm-12">
                                            <asp:Label Font-Bold="True" ID="Label34" runat="server" Text="أذكر المهارات والمؤهلات"></asp:Label>
                                            <asp:TextBox ID="Skills" runat="server" CssClass="form-control"></asp:TextBox>

                                        </div>
                                    </div>
                                    <div class="row mt-3" style="color: #457B9D">

                                        <div class="col-sm-3">
                                            <asp:Label Font-Bold="True" ID="Label35" runat="server" Text="هل التحقت مسبقاً في قوى الأمن؟ "></asp:Label>
                                            <br />
                                            <asp:CheckBox CssClass="SPS" ID="CheckBox1" runat="server" Text="نعم " />
                                            <asp:CheckBox CssClass="SPS" ID="CheckBox2" runat="server" Text="لا " />
                                        </div>
                                        <div class="col-sm">
                                            <asp:Label Font-Bold="True" ID="Label36" runat="server" Text="إذا نعم لماذا وأين ومتى؟"></asp:Label>
                                            <asp:TextBox ID="W3" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                                        </div>

                                    </div>

                                </div>


                                <tr>
                                    <td align="right">

                                        <h2 style="color: #1D3557">العنوان :</h2>
                                        <div class="alert alert-info" role="alert">

                                            <div class="row mt-3" style="color: #457B9D">
                                                <div class="col-sm-3">
                                                    <asp:Label Font-Bold="True" for="Address" ID="Label23" runat="server" Text="المحافظة"></asp:Label>
                                                    <asp:DropDownList ID="Gov" CssClass="form-control" runat="server">
                                                        <asp:ListItem>جنين</asp:ListItem>
                                                        <asp:ListItem>طوباس</asp:ListItem>
                                                        <asp:ListItem>نابلس</asp:ListItem>
                                                        <asp:ListItem>طولكرم</asp:ListItem>
                                                        <asp:ListItem>قلقيلية</asp:ListItem>
                                                        <asp:ListItem>رام الله</asp:ListItem>
                                                        <asp:ListItem>اريحا</asp:ListItem>
                                                        <asp:ListItem>بيت لحم</asp:ListItem>
                                                        <asp:ListItem>الخليل</asp:ListItem>
                                                        <asp:ListItem>القدس</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-sm-3">
                                                    <asp:Label Font-Bold="True" for="Mobile" ID="Label24" runat="server" Text="المدينة"></asp:Label>
                                                    <asp:DropDownList ID="Locality" CssClass="form-control" runat="server">
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-sm-3">
                                                    <asp:Label Font-Bold="True" for="Mobile2" ID="Label25" runat="server" Text="الشارع"></asp:Label>
                                                    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
                                                </div>
                                                <div class="col-sm-3">
                                                    <asp:Label Font-Bold="True" for="Tel" ID="Label26" runat="server" Text="بالقرب من"></asp:Label>
                                                    <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row mt-3" style="color: #457B9D">
                                                <div class="col-sm-12">
                                                    <asp:Label Font-Bold="True" for="Address" ID="Label27" runat="server" Text="العنوان بالتفصيل"></asp:Label>
                                                    <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox>
                                                </div>

                                            </div>
                                            <div class="row mt-3" style="color: #457B9D">
                                                <div class="col-sm-3">
                                                    <asp:Label Font-Bold="True" for="Email" ID="Label42" runat="server" Text=" البريد الالكتروني   "></asp:Label>
                                                    <asp:TextBox ID="Email" runat="server" CssClass="form-control btn-warning" Font-Bold="True" ForeColor="#003366"></asp:TextBox>
                                                </div>
                                                <div class="col-sm-3">
                                                    <asp:Label Font-Bold="True" for="Mobile" ID="Label18" runat="server" Text="رقم الجوال  "></asp:Label>
                                                    <asp:TextBox ID="Mobile" runat="server" CssClass="form-control btn-warning" Font-Bold="True" ForeColor="#003366"></asp:TextBox>
                                                </div>
                                                <div class="col-sm-3">
                                                    <asp:Label Font-Bold="True" for="Mobile2" ID="Label19" runat="server" Text="رقم الجوال 2"></asp:Label>
                                                    <asp:TextBox ID="Mobile2" runat="server" CssClass="form-control"></asp:TextBox>
                                                </div>
                                                <div class="col-sm-3">
                                                    <asp:Label Font-Bold="True" for="Tel" ID="Label41" runat="server" Text=" الهاتف   "></asp:Label>
                                                    <asp:TextBox ID="Tel" runat="server" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row mt-3" style="color: #457B9D">

                                                <div class="col-sm">
                                                    <asp:Label Font-Bold="True" for="Relatives" ID="Label43" runat="server" Text="هل لديك أقارب في المؤسسة الأمنية؟"></asp:Label>
                                                    <br />
                                                    <div class="row">
                                                        <div class="col-1">
                                                            <asp:RadioButton CssClass="SPS" GroupName="AaA" ID="RadioButton7" runat="server" Text="نعم" />
                                                        </div>
                                                        <div class="col-2">
                                                            <asp:RadioButton CssClass="SPS" GroupName="AaA" ID="RadioButton8" runat="server" Text="لا" />
                                                        </div>
                                                        <div class="col">
                                                            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="صلة القرابة"></asp:TextBox>
                                                        </div>
                                                        <div class="col">
                                                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="طبيعة العمل"></asp:TextBox>
                                                        </div>
                                                    </div>

                                                </div>



                                            </div>
                                        </div>

                                    </td>
                                </tr>

                                <tr>
                                    <td align="right">
                                        <h4 style="color: #1D3557">المرفقات</h4>
                                        <div class="alert alert-info" role="alert">
                                            <div class="row mt-3" style="color: #457B9D">
                                                <div class="col-2">اخر شهادة علمية </div>
                                                <div class="col">
                                                    <input type="file" class="form-control" id="customFile" />
                                                </div>
                                            </div>
                                            <div class="row mt-3" style="color: #457B9D">
                                                <div class="col-2">صورة الهوية</div>
                                                <div class="col">
                                                    <input type="file" class="form-control" id="customFile2" />
                                                </div>
                                            </div>
                                            <div class="row mt-3" style="color: #457B9D">
                                                <div class="col-2">صوره شخصية</div>
                                                <div class="col">
                                                    <input type="file" class="form-control" id="customFile3" />
                                                </div>
                                            </div>
                                            <div class="row mt-3" style="color: #457B9D">
                                                <div class="col-2">شهادة الميلاد</div>
                                                <div class="col">
                                                    <input type="file" class="form-control" id="customFile4" />
                                                </div>
                                            </div>

                                            <div class="row mt-3" style="color: #457B9D">
                                                <div class="col-2">صوره جواز السفر</div>
                                                <div class="col">
                                                    <input type="file" class="form-control" id="customFile5" />
                                                </div>
                                            </div>
                                            <div class="row mt-3" style="color: #457B9D">
                                                <div class="col-2">تقارير طبية</div>
                                                <div class="col">
                                                    <input type="file" class="form-control" id="customFile6" />
                                                </div>
                                            </div>
                                        </div>


                                    </td>
                                </tr>
                    </table>

                    <div>



                        <button type="button" class="btn btn-info btn-lg">أرسل الطلب</button>

                    </div>


                </div>
            </main>


        </div>
    </form>
</body>
</html>
