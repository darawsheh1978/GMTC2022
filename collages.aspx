<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="collages.aspx.vb" Inherits="GMTC2022.collages" %>

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
<link href="https://fonts.googleapis.com/css2?family=Cairo:wght@400;600;700&display=swap" rel="stylesheet">
<link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="assets/css/fontawesome.min.css" rel="stylesheet" />
<link href="assets/css/animate.css" rel="stylesheet" />
<link href="assets/css/style.css" rel="stylesheet" />
    <style>
        .SPS {
            text-indent: 10PX;
            padding: 5px
        }

        .style1 {
            width: 100%;
        }

        #mydiv {
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            display: none;
        }
    </style>

    <script>

        function validateNumber(e) {
            const pattern = /^[0-9]$/;

            return pattern.test(e.key)
        }

        function openModal() {

            $('#confirm').modal({ show: true });
        }


        function openModal1() {


            var x = document.getElementById("mydiv");
            if ($('form')[0].checkValidity()) {

                x.style.display = "block";
                alert("سيتم رفع الملفات. الرجاء التأكيد؟");

                return true;
            }


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

        <div class="form-group">

            <asp:ScriptManager ID="ScriptManager1" EnableCdn="true" runat="server"></asp:ScriptManager>


            <div class="container">


                <div class="row mt-4 align-items-center" style="box-shadow: 0px 0px 10px 10px  #17A2B8">
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
                        <ul class="navbar-nav">
                        </ul>

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
                            <h4 style="color: #1D3557"><i class="fas fa-caret-left" style="padding-left: 10px; color: royalblue"></i>البيانات الشخصية:</h4>

                            <div class="alert alert-primary" role="alert">




                                <div class="row mt-4" style="color: #457B9D">
                                    <div class="col-sm-3">


                                        <label for="Fname">الإسم الاول * </label>
                                        <asp:TextBox autocomplete="off" ID="Fname" runat="server" CssClass="form-control" required="true"   oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>


                                    </div>
                                    <div class="col-sm-3">

                                        <label for="SName">الاب * </label>
                                        <asp:TextBox autocomplete="off" ID="SName" runat="server" CssClass="form-control" required="true" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-3">

                                        <label for="TName">الجد * </label>
                                        <asp:TextBox autocomplete="off" ID="TName" runat="server" CssClass="form-control" required="true" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-3">

                                        <label for="LName">العائلة * </label>
                                        <asp:TextBox autocomplete="off" ID="LName" runat="server" CssClass="form-control" required="true" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                    </div>
                                </div>



                       

                                <asp:UpdatePanel ID="aGE_" runat="server">
                                    <ContentTemplate>




                                           <div class="row mt-3" style="color: #457B9D">
                                <div class="col-sm-3">
                                   
                                   رقم الهوية * 
                                    <asp:TextBox autocomplete="off"  maxlength="9" ID="IDNumber" runat="server" CssClass="form-control" onkeypress="return validateNumber(event)" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    
                                    مكان الميلاد * 
                                    <asp:TextBox autocomplete="off" ID="PlaceOfBirth" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                </div>

                             


                                        <div class="col-sm-3">
                                             تاريخ الولادة يوم-شهر-سنة* 

                                            <div class="row no-gutters" style="color: #457B9D">

                                                <div class="col">
                                                    <asp:DropDownList ID="DOBD" CssClass="form-control" runat="server" AutoPostBack="True" ValidationGroup="cc" required=""   oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')">
                                                        <asp:ListItem Value=""> </asp:ListItem>
                                                        <asp:ListItem>1</asp:ListItem>
                                                        <asp:ListItem>2</asp:ListItem>
                                                        <asp:ListItem>3</asp:ListItem>
                                                        <asp:ListItem>4</asp:ListItem>
                                                        <asp:ListItem>5</asp:ListItem>
                                                        <asp:ListItem>6</asp:ListItem>
                                                        <asp:ListItem>7</asp:ListItem>
                                                        <asp:ListItem>8</asp:ListItem>
                                                        <asp:ListItem>9</asp:ListItem>
                                                        <asp:ListItem>10</asp:ListItem>
                                                        <asp:ListItem>11</asp:ListItem>
                                                        <asp:ListItem>12</asp:ListItem>
                                                        <asp:ListItem>13</asp:ListItem>
                                                        <asp:ListItem>14</asp:ListItem>
                                                        <asp:ListItem>15</asp:ListItem>
                                                        <asp:ListItem>16</asp:ListItem>
                                                        <asp:ListItem>17</asp:ListItem>
                                                        <asp:ListItem>18</asp:ListItem>
                                                        <asp:ListItem>19</asp:ListItem>
                                                        <asp:ListItem>20</asp:ListItem>
                                                        <asp:ListItem>21</asp:ListItem>
                                                        <asp:ListItem>22</asp:ListItem>
                                                        <asp:ListItem>23</asp:ListItem>
                                                        <asp:ListItem>24</asp:ListItem>
                                                        <asp:ListItem>25</asp:ListItem>
                                                        <asp:ListItem>26</asp:ListItem>
                                                        <asp:ListItem>27</asp:ListItem>
                                                        <asp:ListItem>28</asp:ListItem>
                                                        <asp:ListItem>29</asp:ListItem>
                                                        <asp:ListItem>30</asp:ListItem>
                                                        <asp:ListItem>31</asp:ListItem>


                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col">
                                                    <asp:DropDownList ID="DOBM" CssClass="form-control" runat="server" AutoPostBack="True" ValidationGroup="cc" required=""   oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')">
<asp:ListItem Value=""></asp:ListItem>
                                                        <asp:ListItem>1</asp:ListItem>
                                                        <asp:ListItem>2</asp:ListItem>
                                                        <asp:ListItem>3</asp:ListItem>
                                                        <asp:ListItem>4</asp:ListItem>
                                                        <asp:ListItem>5</asp:ListItem>
                                                        <asp:ListItem>6</asp:ListItem>
                                                        <asp:ListItem>7</asp:ListItem>
                                                        <asp:ListItem>8</asp:ListItem>
                                                        <asp:ListItem>9</asp:ListItem>
                                                        <asp:ListItem>10</asp:ListItem>
                                                        <asp:ListItem>11</asp:ListItem>
                                                        <asp:ListItem>12</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col">
                                                    <asp:DropDownList ID="DOBY" CssClass="form-control" runat="server" AutoPostBack="True" ValidationGroup="cc" required=""   oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')">
                                                        <asp:ListItem Value=""> </asp:ListItem>
                                                          <asp:ListItem>1997</asp:ListItem>
                                                          <asp:ListItem>1998</asp:ListItem>
                                                          <asp:ListItem>1999</asp:ListItem>
                                                        <asp:ListItem>2000</asp:ListItem>
                                                        <asp:ListItem>2001</asp:ListItem>
                                                        <asp:ListItem>2002</asp:ListItem>
                                                        <asp:ListItem>2003</asp:ListItem>
                                                        <asp:ListItem>2004</asp:ListItem>
                                                        <asp:ListItem>2005</asp:ListItem>
                                                        <asp:ListItem>2006</asp:ListItem>
                                                        <asp:ListItem>2007</asp:ListItem>
                                                        <asp:ListItem>2008</asp:ListItem>
                                                        <asp:ListItem>2009</asp:ListItem>
                                                        <asp:ListItem>2010</asp:ListItem>
                                                        <asp:ListItem>2011</asp:ListItem>
                                                        <asp:ListItem>2012</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>

                                            </div>


                                        </div>
                                        <div class="col-sm">
                                             العمر * 
                                            <asp:TextBox autocomplete="off" ID="Age" required="" runat="server" CssClass="form-control" onkeypress="return validateNumber(event)" ReadOnly="True"></asp:TextBox>

                                        </div>
                                    

                            </div>

                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <div class="row mt-4" style="color: #457B9D">

                                    <div class="col-sm">

                                        <label for="Nat">الجنسية الأصلية * </label>
                                        <asp:TextBox autocomplete="off" ID="Nat" runat="server" CssClass="form-control" required="true" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                    </div>
                                    <div class="col-sm">

                                        <label for="Passport">جواز السفر  </label>
                                        <asp:TextBox autocomplete="off" ID="Passport" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-3">

                                        <label for="Gender">الجنس * </label>
                                        <asp:DropDownList ID="Gender" CssClass="form-control" runat="server">
                                            <asp:ListItem>ذكر</asp:ListItem>
                                            <asp:ListItem>انثى</asp:ListItem>


                                        </asp:DropDownList>

                                    </div>
                                    <div class="col-sm-3">

                                        <label for="MS">الحالة الإجتماعية * </label>
                                        <asp:DropDownList ID="MS" CssClass="form-control" runat="server">
                                            <asp:ListItem>أعزب</asp:ListItem>
                                            <asp:ListItem>متزوج</asp:ListItem>
                                            <asp:ListItem>مطلق</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>




                                </div>


                                <div class="row mt-4" style="color: #457B9D">

                                    <div class="col-sm">
                                        <label for="Hight">الطول </label>
                                        <asp:TextBox autocomplete="off" ID="Hight" runat="server" CssClass="form-control" required="" onkeypress="return validateNumber(event)" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>

                                    </div>
                                    <div class="col-sm">
                                        <label for="weight">الوزن </label>
                                        <asp:TextBox autocomplete="off" ID="weight" runat="server" CssClass="form-control" required="" onkeypress="return validateNumber(event)" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>

                                    </div>
                                    <div class="col-sm">
                                        <label for="Skin">لون البشرة  </label>
                                        <asp:TextBox autocomplete="off" ID="Skin" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>

                                    </div>
                                    <div class="col-sm">
                                        <label for="Skin">لون العينين  </label>
                                        <asp:TextBox autocomplete="off" ID="Eye" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>

                                    </div>
                                    <div class="col-sm">
                                        <label for="Skin">لون الشعر  </label>
                                        <asp:TextBox autocomplete="off" ID="Hair" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>

                                    </div>

                                </div>

                                <div class="row mt-4" style="color: #457B9D">
                                    <div class="col-sm">
                                        <label for="Marks">علامات فارقة ( مثال: وشم, شامة, صدفية ...)</label>
                                        <asp:TextBox autocomplete="off" ID="Marks" runat="server" CssClass="form-control" Placeholder=""></asp:TextBox>

                                    </div>
                                </div>

                                <div class="row mt-4" style="color: #457B9D">

                                    <div class="col-sm-3">

                                        <label for="FatherOccupation">مهنة الأب  </label>
                                        <asp:TextBox autocomplete="off" ID="FatherOccupation" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-sm">

                                        <label for="FatherPlaceOfWork">مكان عمل الأب  </label>
                                        <asp:TextBox autocomplete="off" ID="FatherPlaceOfWork" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>


                                </div>


                                <div class="row mt-4" style="color: #457B9D">

                                    <div class="col-sm-3">

                                        <label for="MotherOccupation">مهنة الام  </label>
                                        <asp:TextBox autocomplete="off" ID="MotherOccupation" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-sm">

                                        <label for="MotherPlaceOfWork">مكان عمل الام  </label>
                                        <asp:TextBox autocomplete="off" ID="MotherPlaceOfWork" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>


                                </div>
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>

                                        <div class="row mt-4" style="color: #457B9D">
                                            <div class="col-sm-3">

                                                <label for="chronic">هل تعاني من اي امراض مزمنة  * </label>
                                                <asp:DropDownList ID="chronic" CssClass="form-control" runat="server" AutoPostBack="true">
                                                    <asp:ListItem>نعم</asp:ListItem>
                                                    <asp:ListItem Selected="True">لا</asp:ListItem>
                                                </asp:DropDownList>

                                            </div>

                                            <div class="col-sm">
                                                <label for="chronicDetails">طبيعة المرض   </label>
                                                <asp:TextBox autocomplete="off" Enabled="false" ID="chronicDetails" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>


                                        </div>


                                        <div class="row mt-4" style="color: #457B9D">

                                            <div class="col-sm-3">

                                                <label for="pwd">هل تعاني من اي اعاقة  * </label>
                                                <asp:DropDownList ID="pwd" CssClass="form-control" runat="server" AutoPostBack="true">
                                                    <asp:ListItem>نعم</asp:ListItem>
                                                    <asp:ListItem Selected="True">لا</asp:ListItem>
                                                </asp:DropDownList>


                                            </div>

                                            <div class="col-sm">

                                                <label for="DisablityDetails">طبيعة الاعاقة  </label>
                                                <asp:TextBox autocomplete="off" Enabled="false" ID="DisablityDetails" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>

                                        </div>


                                        <div class="row mt-4" style="color: #457B9D">

                                            <div class="col-sm-3">

                                                <label for="SurgeryInd">هل اجريت اي عملية جراحية؟  * </label>
                                                <asp:DropDownList ID="SurgeryInd" CssClass="form-control" runat="server" AutoPostBack="true">
                                                    <asp:ListItem>نعم</asp:ListItem>
                                                    <asp:ListItem Selected="True">لا</asp:ListItem>
                                                </asp:DropDownList>

                                            </div>


                                            <div class="col-sm">

                                                <label for="">طبيعة العملية الجراحية   </label>
                                                <asp:TextBox autocomplete="off" Enabled="false" ID="SurgeryDetails" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                                            </div>

                                        </div>

                                        <div class="row mt-4" style="color: #457B9D">

                                            <div class="col-sm-3">

                                                <label for="SecurityForces">هل التحقت مسبقاً في قوى الأمن؟  * </label>
                                                <asp:DropDownList ID="SecurityForces" CssClass="form-control" runat="server" AutoPostBack="true">
                                                    <asp:ListItem>نعم</asp:ListItem>
                                                    <asp:ListItem Selected="True">لا</asp:ListItem>
                                                </asp:DropDownList>

                                            </div>


                                            <div class="col-sm">

                                                <label for="">إذا نعم لماذا وأين ومتى   </label>
                                                <asp:TextBox autocomplete="off" Enabled="false" ID="SecurityForcesWWW" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                                            </div>

                                        </div>




                                    </ContentTemplate>
                                </asp:UpdatePanel>


                            </div>
                        </td>
                    </tr>



                    <tr>
                        <td align="right">


                            <h4 style="color: #1D3557"><i class="fas fa-caret-left" style="padding-left: 10px; color: royalblue"></i>العنوان:</h4>

                            <div class="alert alert-primary" role="alert">
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                    <ContentTemplate>
                                        <div class="row mt-4" style="color: #457B9D">
                                            <div class="col-sm-3">

                                                <label for="Gov">المحافظة  * </label>
                                                <asp:DropDownList ID="Gov" AutoPostBack="true" CssClass="form-control" runat="server" DataSourceID="SqlGovs" DataTextField="Gov" DataValueField="GovId" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')">
                                                </asp:DropDownList>
                                            </div>


                                            <div class="col-sm-3">

                                                <label for="Locality">المدينة  * </label>
                                                <asp:DropDownList ID="Locality" CssClass="form-control" runat="server" DataSourceID="SqlLocalities" DataTextField="Locality" DataValueField="LocalityId" required="true" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')">
                                                </asp:DropDownList>
                                            </div>



                                            <div class="col">

                                                <label for="Street">الشارع  </label>
                                                <asp:TextBox autocomplete="off" ID="Street" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="col">

                                                <label for="Near">بالقرب من   </label>
                                                <asp:TextBox autocomplete="off" ID="Near" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="row mt-4" style="color: #457B9D">
                                            <div class="col-sm-12">

                                                <label for="ExactAddress">العنوان بالتفصيل * </label>
                                                <asp:TextBox autocomplete="off" ID="ExactAddress" runat="server" CssClass="form-control" required="true" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                            </div>

                                        </div>
                                        <div class="row mt-4" style="color: #457B9D">
                                            <div class="col-sm-3">

                                                <label for="Email">البريد الالكتروني * </label>
                                                <asp:TextBox autocomplete="off" ID="Email" runat="server" CssClass="form-control " Font-Bold="True" ForeColor="#007BFF" BackColor="#FFF3CD" required="true" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                            </div>
                                            <div class="col-xs-1 my-4">


                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email"
                                                    ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                                                    Display="Dynamic" ValidationGroup="one1" SetFocusOnError="true">
                                                <img src='Images/Err_.png'/>
                                                </asp:RegularExpressionValidator>




                                            </div>

                                            <div class="col-sm-3">

                                                <label for="Mobile1">رقم المحمول  * </label>
                                               
                                                <div class="row  no-gutters">
                                                     <div class="col-7"> <asp:TextBox autocomplete="off" MaxLength="7" ID="Mobile1" runat="server"   CssClass="form-control " Font-Bold="True" ForeColor="#007BFF" BackColor="#FFF3CD" required="true" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')" onkeypress="return validateNumber(event)"></asp:TextBox></div>
                                                    <div class="col-5">
                                                        <asp:DropDownList ID="Intro1" ForeColor="#007BFF" Font-Bold="true"  BackColor="#FFF3CD" CssClass="form-control" runat="server">
                                                            <asp:ListItem>059</asp:ListItem>
                                                            <asp:ListItem>056</asp:ListItem>
                                                            <asp:ListItem>052</asp:ListItem>
                                                            <asp:ListItem>053</asp:ListItem>
                                                        </asp:DropDownList></div>
                                                </div>
                                            </div>
                                            <div class="col-sm">

                                                <label for="Mobile2">رقم المحمول 2   </label>
                                               

                                                 <div class="row  no-gutters">
                                                     <div class="col-7"> <asp:TextBox autocomplete="off" ID="Mobile2" MaxLength="7" runat="server" CssClass="form-control" onkeypress="return validateNumber(event)"></asp:TextBox></div>
                                                    <div class="col-5">
                                                        <asp:DropDownList ID="Intro2" Font-Bold="true"   CssClass="form-control" runat="server">
                                                            <asp:ListItem>059</asp:ListItem>
                                                            <asp:ListItem>056</asp:ListItem>
                                                            <asp:ListItem>052</asp:ListItem>
                                                            <asp:ListItem>053</asp:ListItem>
                                                        </asp:DropDownList></div>
                                                </div>
                                            </div>
                                            <div class="col-sm">

                                                <label for="Tel">الهاتف   </label>
                                                <asp:TextBox autocomplete="off" ID="Tel" runat="server" CssClass="form-control" onkeypress="return validateNumber(event)"></asp:TextBox>
                                            </div>
                                        </div>


                                        <div class="row mt-4" style="color: #457B9D">


                                            <div class="col-sm">

                                                <label for="Relatives">هل لديك أقارب في المؤسسة الأمنية؟ * </label>
                                                <br />
                                                <div class="row">
                                                    <div class="col-sm-3">
                                                       
                                                 <asp:DropDownList ID="Relatives" CssClass="form-control" runat="server" AutoPostBack="true">
                                                    <asp:ListItem>نعم</asp:ListItem>
                                                    <asp:ListItem Selected="True">لا</asp:ListItem>
                                                </asp:DropDownList>

                                                        




                                                    </div>

                                                    <div class="col-sm">

                                                        <asp:TextBox Enabled="false" autocomplete="off" ID="RelationshipName" runat="server" CssClass="form-control" placeholder="الاسم"></asp:TextBox>
                                                    </div>
                                                    <div class="col-sm">
                                                        <asp:DropDownList Enabled="false" ID="Relationship" CssClass="form-control" runat="server">
                                                            <asp:ListItem>اختر صلة القرابة</asp:ListItem>
                                                            <asp:ListItem>ام</asp:ListItem>
                                                            <asp:ListItem>اب</asp:ListItem>
                                                            <asp:ListItem>اخ</asp:ListItem>
                                                            <asp:ListItem>اخت</asp:ListItem>
                                                            <asp:ListItem>عم</asp:ListItem>
                                                            <asp:ListItem>عمة</asp:ListItem>
                                                            <asp:ListItem>خال</asp:ListItem>
                                                            <asp:ListItem>خالة</asp:ListItem>
                                                            <asp:ListItem>جد</asp:ListItem>
                                                            <asp:ListItem>جدة</asp:ListItem>



                                                        </asp:DropDownList>
                                                    </div>
                                                    <div class="col-sm">
                                                        <asp:TextBox autocomplete="off" Enabled="false" ID="NatureOfWork" runat="server" CssClass="form-control" placeholder="مكان العمل"></asp:TextBox>
                                                    </div>
                                                </div>

                                            </div>

                                        </div>



                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>

                        </td>
                    </tr>

                    <tr>
                        <td align="right">
                            <h4 style="color: #1D3557"><i class="fas fa-caret-left" style="padding-left: 10px; color: royalblue"></i>المعرفون:</h4>
                            <div class="alert alert-primary" role="alert">



                                <div class="row mt-4" style="color: #457B9D">
                                    <div class="col-sm">الاسم*</div>
                                    <div class="col-sm">مكان العمل*</div>
                                    <div class="col-sm">رقم المحمول</div>
                                </div>
                                <div class="row mt-4" style="color: #457B9D">
                                    <div class="col-sm">
                                        <asp:TextBox autocomplete="off"  placeholder="الاسم" CssClass="form-control" ID="Ref1Name" runat="server" required="true" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox></div>
                                    <div class="col-sm">
                                        <asp:TextBox autocomplete="off" placeholder="مكان العمل" CssClass="form-control" ID="Ref1WorkPlace" runat="server" required="true" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox></div>
                                    <div class="col-sm">
                                        <asp:TextBox autocomplete="off"  placeholder="الهاتف" CssClass="form-control" ID="Ref1mobile" runat="server"></asp:TextBox></div>
                                </div>
                                <div class="row mt-4" style="color: #457B9D">
                                    <div class="col-sm">
                                        <asp:TextBox autocomplete="off" placeholder="الاسم" CssClass="form-control" ID="Ref2Name" runat="server" required="true" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox></div>
                                    <div class="col-sm">
                                        <asp:TextBox autocomplete="off" placeholder="مكان العمل" CssClass="form-control" ID="Ref2WorkPlace" runat="server" required="true" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox></div>
                                    <div class="col-sm">
                                        <asp:TextBox autocomplete="off"  placeholder="الهاتف" CssClass="form-control" ID="Ref2mobile" runat="server"></asp:TextBox></div>
                                </div>
                                <div class="row mt-4" style="color: #457B9D">
                                    <div class="col-sm">
                                        <asp:TextBox autocomplete="off" placeholder="الاسم"  CssClass="form-control" ID="Ref3Name" runat="server" required="true" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox></div>
                                    <div class="col-sm">
                                        <asp:TextBox autocomplete="off" placeholder="مكان العمل" CssClass="form-control" ID="Ref3WorkPlace" runat="server" required="true" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox></div>
                                    <div class="col-sm">
                                        <asp:TextBox autocomplete="off"  placeholder="الهاتف" CssClass="form-control" ID="Ref3mobile" runat="server"></asp:TextBox></div>
                                </div>

                            </div>


                        </td>
                    </tr>


                    <tr>
                        <td align="right">

                            <h4 style="color: #1D3557"><i class="fas fa-caret-left" style="padding-left: 10px; color: royalblue"></i>المرفقات:</h4>

                            <div class="alert alert-warning" role="alert">
                                <div class="row mt-4" style="color: #457B9D">
                                    <div class="col-3">شهادة التوجيهي الاصلية- عربي</div>
                                    <div class="col">
                                        <asp:FileUpload ID="FleCertificate" runat="server" CssClass="form-control" required="true" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')" />
                                    </div>
                                    <div class="col-3">
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7"
                                            runat="server" ControlToValidate="FleCertificate"
                                            ForeColor="Red"
                                            ValidationExpression="(.*\.([Jj][Pp][Ee][Gg])|.*\.([Pp][Dd][Ff])|.*\.([Gg][Ii][Ff])|.*\.([Jj][Pp][Gg])|.*\.([Bb][Mm][Pp])|.*\.([pP][nN][gG])|.*\.([tT][iI][iI][fF])$)"
                                            ValidationGroup="one1" SetFocusOnError="true">
                                           <img src='Images/Err_.png'/> الرجاء اختيار صورة او PDF
                                        </asp:RegularExpressionValidator>
                                    </div>
                                </div>

                           

                                <div class="row mt-4" style="color: #457B9D">
                                    <div class="col-3">صورةالهوية ملونة</div>
                                    <div class="col">


                                        <asp:FileUpload ID="FleiD" runat="server" CssClass="form-control" required="true" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')" />


                                    </div>
                                </div>
                               
                                

                             

                              
                               
                            </div>


                        </td>
                    </tr>




                </table>



            </div>



            <div class="container p-1 mt-2  " style="background-color: #FFFFFF; text-align: right">
                <div class="alert alert-danger  " role="alert">


                    <div class="row mt-3" style="color: #457B9D">
                        <div class="col-xs-1">
                            <img src="Images/err_.png" />
                        </div>
                        <div class="col-8">
                            <asp:Label ID="lblmESSAGE" runat="server" Text="الرجاء التأكد من جميع الحقول والضغط على زر ارسال الطلب" Font-Bold="True" ForeColor="#007BFF"></asp:Label>
                        </div>



                    </div>
                    <div class="row mt-3" style="color: #457B9D">
                        <div class="col">

                            <asp:Button OnClientClick="openModal1()"   ValidationGroup="one1" ID="Button1" runat="server" CssClass="btn btn-lg btn-secondary btn-block" Text="أرسل الطلب" />


                        </div>
                    </div>

                    <div id="mydiv">

                        <div class="row">
                            <div class="col-2">
                                <div class="spinner-border" role="status" align="center">
                                    <span class="sr-only">جاري رفع الملفات</span>
                                </div>
                            </div>

                            <div class="col-10">
                                <asp:Label ID="Label3" ValidationGroup="one1" CssClass="btn btn-success btn-block " runat="server" Text="جاري رفع الملفات الرجاء الانتظار"></asp:Label>

                            </div>
                        </div>




                    </div>










                </div>
            </div>




         <div id="confirm" class="modal fade" style=" z-index: 10000000 !important;">
            <div class="modal-dialog modal-md modal-dialog-centered" role="document" >
                <div class="modal-content">
                    <div class="modal-header float-right" style="background-color: #F2F2F2">
                         
                       <asp:HyperLink ID="HyperLink3" runat="server" CssClass="btn btn-light" NavigateUrl="announce.aspx" Target="_self" >انهاء التسجيل</asp:HyperLink>
                    </div>
                    <div class="modal-body">
                        <br />
                        <br />
                        <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                            <ContentTemplate>
                                <table>
                                    <tr>
                                        <td align="center">
                                            <asp:Label ID="msg" runat="server" Text="" Font-Size="12" ForeColor="Gray"> </asp:Label>
                                        </td>
                                    </tr>

                                     <tr>
                                        <td align="center">
                                            <br />
                                           <asp:HyperLink ID="HyperLink4" runat="server" CssClass="btn btn-primary" NavigateUrl="announce.aspx" Target="_self" width=100%>انهاء التسجيل</asp:HyperLink>
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

            
            <div id="confirm1" class="modal fade">
                <div class="modal-dialog modal-md modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header float-right" style="background-color: #F2F2F2">
                        </div>
                        <div class="modal-body">
                            <br />
                            <br />
                            <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                <ContentTemplate>
                                    <table>

                                        <tr>
                                            <td align="center">
                                                <asp:Label ID="Label2" runat="server" Text="" Font-Size="12" ForeColor="Gray">
                                                </asp:Label>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td align="center">
                                                <asp:Label ID="Label1" runat="server" Text="" Font-Size="12" ForeColor="Gray">
                                                . الرجاء الانتظار جاري تحميل الملفات. قد يستغرق ذلك بضع لحظات</asp:Label>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td align="center">
                                                <div class="text-center">
                                                    <div class="spinner-border" role="status">
                                                        <span class="sr-only">Loading...</span>
                                                    </div>
                                                </div>

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





            <asp:SqlDataSource ID="SqlGovs" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_ %>" ProviderName="System.Data.SqlClient" SelectCommand="SELECT GovId, Gov FROM Govs"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlLocalities" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_ %>" ProviderName="System.Data.SqlClient" SelectCommand="SELECT LocalityId, Locality FROM Localities"></asp:SqlDataSource>



        </div>





    </form>
</body>
</html>