<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="searchCollages.aspx.vb" Inherits="GMTC2022.searchCollages" %>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
   <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.js"></script>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>

    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />

    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css" />
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@400;600;700&display=swap"  rel="stylesheet" />
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/fontawesome.min.css" rel="stylesheet" />
    <link href="assets/css/animate.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css" />
    <script src="assets/Css/jquery.sumoselect.min.js" type="text/javascript"></script>
     <link href="assets/Css/sumoselect.css" rel="stylesheet" type="text/css" />
    
    <style>
        .SPS {
            text-indent: 10PX;
        }

        .style1 {
            width: 100%;
        }
        .auto-style1 {
            right: 0px;
            top: 0px;
        }
    </style>

 
 

    <script type="text/javascript"> 

        $(document).ready(function () {
            $(<%=Governorate.ClientID%>).SumoSelect({ placeholder: 'الجميع' });
     
            $("#G1AcceptanceDate").datepicker({ format: 'yyyy-mm-dd', changeMonth: true, changeYear: true, showRightIcon: true });
            $("#G1AcceptanceDateSearch").datepicker({ format: 'yyyy-mm-dd', changeMonth: true, changeYear: true, showRightIcon: true });
            var parameter = Sys.WebForms.PageRequestManager.getInstance();


            parameter.add_endRequest(function () {
                $(<%=Governorate.ClientID%>).SumoSelect();
              
                $("#G1AcceptanceDate").datepicker({ format: 'yyyy-mm-dd', changeMonth: true, changeYear: true, showRightIcon: true });
                $("#G1AcceptanceDateSearch").datepicker({ format: 'yyyy-mm-dd', changeMonth: true, changeYear: true, showRightIcon: true });
            });
        });

    </script>
    <script>

        $(document).ready(function () {
            $('.Gov').SumoSelect({
                placeholder: 'This is a placeholder',
                csvDispCount: 3
            });
        });

        function validateNumber(e) {
            const pattern = /^[0-9]*\.?[0-9]*$/;

            return pattern.test(e.key)
        }

        function openModal() {
            $('#Att').modal({ show: true });
        }

        function openModal2() {
            $('#App').modal({ show: true });
        }

    </script>


</head>
<body>
    <form id="form1" runat="server" dir="rtl">
 
 


        <asp:ScriptManager ID="ScriptManager1" EnableCdn="true" runat="server"></asp:ScriptManager>
        <div class="container">


            <div class="row mt-3 align-items-center" style="box-shadow: 0px 0px 10px 10px  #17A2B8">
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
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i style="padding-left: 5px;" class="fas fa-angle-double-left"></i>ادارة طلبات الالتحاق
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <a class="dropdown-item" href="searchRecruitments.aspx"><span class="float-right">تجنيد </span></a>
                                <a class="dropdown-item" href="searchRecruitments.aspx"><span class="float-right">وكفاءات  </span></a>
                                <a class="dropdown-item" href="searchCollages.aspx"><span class="float-right">الكليات الخارجية  </span></a>


                            </div>
                        </li>


                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i style="padding-right: 10px; padding-left: 5px;" class="fas fa-bullhorn"></i>ادارة الاعلانات 
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink1">
                                <a class="dropdown-item" href="NewAnnouncement.aspx"><span class="float-right">تحرير الاعلانات</span></a>



                            </div>
                        </li>

                         <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i style="padding-right: 10px; padding-left: 5px;" class="fas fa-plus"></i>اضافة طلب التحاق  
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink1">
                                 
                                <asp:LinkButton cssclass="dropdown-item" ID="AddNewForm" runat="server">اضافة</asp:LinkButton>


                            </div>
                        </li>






                    </ul>

                    <ul class="navbar-nav mr-auto">

                        <li class="nav-item ">
                            <a class="nav-link" href="announce.aspx"><i style="padding-left: 5px;" class="fas fa-sign-out-alt"></i>تسجيل الخروج</a>
                        </li>


                    </ul>

                    
                </div>
            </nav>


        </div>


        <div class="container p-3  mt-4 border btn-info">
            <div align="right" style="color: whitesmoke">
                <h4>ادارة طلبات بالكليات الخارجية</h4>
            </div>
        </div>


        <div class="container mt-3" style="background-color: #FFF3CD; border-top-left-radius: 5px; border-top-right-radius: 5px; border-bottom-left-radius: 5px; border-bottom-right-radius: 5px;">

            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="row " align="right">


                      <div class="col-sm-3 mt-3">
                            <label for="Governorate">المحافظة </label>
                            <asp:ListBox ID="Governorate" SelectionMode="Multiple" CssClass="form-control mt-3" runat="server">

                                <asp:ListItem Value="1">جنين</asp:ListItem>
                                <asp:ListItem Value="2">طوباس</asp:ListItem>
                                <asp:ListItem Value="3">طولكرم</asp:ListItem>
                                <asp:ListItem Value="4">نابلس</asp:ListItem>
                                <asp:ListItem Value="5">قلقيلية</asp:ListItem>
                                <asp:ListItem Value="6">سلفيت</asp:ListItem>
                                <asp:ListItem Value="7">رام الله والبيرة</asp:ListItem>
                                <asp:ListItem Value="8">أريحا والأغوار</asp:ListItem>
                                <asp:ListItem Value="9">القدس</asp:ListItem>
                                <asp:ListItem Value="10">بيت لحم</asp:ListItem>
                                <asp:ListItem Value="11">الخليل</asp:ListItem>
                                <asp:ListItem Value="12">شمال غزة</asp:ListItem>
                                <asp:ListItem Value="13">غزة</asp:ListItem>
                                <asp:ListItem Value="14">دير االبلح</asp:ListItem>
                                <asp:ListItem Value="15">خانيونس</asp:ListItem>
                                <asp:ListItem Value="16">رفح</asp:ListItem>


                            </asp:ListBox>
                        </div>


                        <div class="col-sm-3  mt-3">

                            <label for="MS">الحالة الإجتماعية&nbsp; </label>
                            <asp:DropDownList ID="MS" CssClass="form-control mt-3" runat="server">
                                <asp:ListItem Value="-1">الجميع</asp:ListItem>
                                <asp:ListItem>أعزب</asp:ListItem>
                                <asp:ListItem>متزوج</asp:ListItem>
                                <asp:ListItem>مطلق</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="col-sm  mt-3 mb-3">

                            <label for="Gender">الجنس&nbsp; </label>
                            <asp:DropDownList ID="Gender" CssClass="form-control mt-3" runat="server">
                                <asp:ListItem Value="-1">الجميع</asp:ListItem>
                                <asp:ListItem>ذكر</asp:ListItem>
                                <asp:ListItem>انثى</asp:ListItem>


                            </asp:DropDownList>

                        </div>
               


                    </div>
                         <div class="row mt-3 mb-3" align="right">
                           <div class="col-sm-3">
                            <label for="Name">الطول من  </label>
                            <asp:TextBox ID="HFrom" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                          <div class="col-sm-3">
                            <label for="Name">الطول الى  </label>
                            <asp:TextBox ID="HTo" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                            <div class="col-sm-3">
                            <label for="Name">الوزن من  </label>
                            <asp:TextBox ID="WFrom" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                          <div class="col-sm-3">
                            <label for="Name">الوزن الى  </label>
                            <asp:TextBox ID="WTo" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>


                     </div>


                    <div class="row" align="right">

                        <div class="col-sm-3">
                            <label for="Name">الاسم  </label>
                            <asp:TextBox ID="Name" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-3">
                            <label for="IDNumber">رقم الهوية  </label>
                            <asp:TextBox ID="IDNumber" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-6">
                            <label for="Branch"> التخصص</label>
                            <asp:DropDownList ID="Branch" CssClass="form-control " runat="server">
                                <asp:ListItem Value="-1">الجميع</asp:ListItem>
                                <asp:ListItem>العلمي</asp:ListItem>
                                <asp:ListItem>الأدبي</asp:ListItem>
                           
                            </asp:DropDownList>

                        </div>
                    </div>
                    <div class="row mt-3" align="right">
                           <div class="col-sm-3">
                            <label for="Name">العلامة من</label>
                            <asp:TextBox ID="GFrom" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-3">
                            <label for="IDNumber">العالمة الى</label>
                            <asp:TextBox ID="GTo" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                       <div class="col-sm">
                            <label for="Gov">الاعلان </label>
                            <asp:DropDownList ID="announcementId" CssClass="form-control " runat="server"   DataSourceID="SqLAnnouncements" DataTextField="Name" DataValueField="Id">
                                <asp:ListItem Value="-1" Selected="True">الجميع</asp:ListItem>
                               
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="row p-2 mt-4" align="right">

                        <div class="col">
                            <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-lg btn-primary btn-block" Text="بحث" />
                        </div>
                        <div class="col">
                            <asp:Button ID="btnExport" runat="server" CssClass="btn btn-lg btn-success btn-block" Text="تصدير" />
                        </div>
                       

                        <div class="col">
                            <asp:Button ID="Button3" runat="server" CssClass="btn btn-lg btn-danger btn-block" Text="اغلاق" />
                        </div>


                    </div>

                    <div class="row p-2" align="right">
                        <div class="col">
                            <asp:Label ID="result" runat="server" Text=""></asp:Label>
                        </div>

                        <div class="col">
                            <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
                                <ProgressTemplate>
                                  
                                    <img src="Images/loading.gif" />
                                </ProgressTemplate>
                            </asp:UpdateProgress>
                        </div>

                    </div>
                </ContentTemplate>
                <Triggers>
                    <asp:PostBackTrigger ControlID="btnExport" />
                 
                </Triggers>
            </asp:UpdatePanel>

        </div>


        <div class="container" style="padding-left: 0px; padding-right: 0px;">

            <div class="row mt-3 no-gutters" style="padding-left: 0px; padding-right: 0px; margin: 0px">
                <div class="col-sm text-center no-gutters" style="padding-left: 0px; padding-right: 0px; margin: 0px">

                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <asp:GridView ID="Requestes" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4"
                                CssClass="table table-striped table-bordered table-hover table-condensed " DataKeyNames="Id"
                                DataSourceID="SqlCollages" EmptyDataText="No result found...." AllowPaging="True" PageSize="20">
                                <HeaderStyle BackColor="#418FDE" ForeColor="White" Font-Bold="True" Font-Size="12pt" />
                                <EmptyDataRowStyle BackColor="White" BorderColor="White" />
                                <Columns>




                                    <asp:BoundField DataField="ID" HeaderText="ID" Visible="true">
                                        <ItemStyle Width="0px"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Fullname" HeaderText="الاسم" SortExpression="Fullname"
                                        ItemStyle-Width="200">
                                        <ItemStyle Width="200px"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Gov" HeaderText="المحافظة" SortExpression="Gov" ItemStyle-Width="150">
                                        <ItemStyle Width="110px"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Locality" HeaderText="البلدة" SortExpression="Locality" ItemStyle-Width="150">
                                        <ItemStyle Width="110px"></ItemStyle>
                                    </asp:BoundField>

                                    <asp:BoundField DataField="Gender" HeaderText="الجنس" SortExpression="Gender" ItemStyle-Width="80">
                                        <ItemStyle Width="80px"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Age" HeaderText="العمر" SortExpression="Age" ItemStyle-Width="110">
                                        <ItemStyle Width="150px"></ItemStyle>
                                    </asp:BoundField>

                                    <asp:BoundField DataField="Ms" HeaderText="الحالة الاجتماعية" SortExpression="Ms" ItemStyle-Width="50"
                                        ItemStyle-HorizontalAlign="Center">
                                        <ItemStyle HorizontalAlign="Center" Width="100px"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="weight" HeaderText="الوزن" SortExpression="weight" ItemStyle-Width="60"
                                        ItemStyle-HorizontalAlign="Center">
                                        <ItemStyle HorizontalAlign="Center" Width="150px"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Hight" HeaderText="الطول" SortExpression="Hight" ItemStyle-Width="60"
                                        ItemStyle-HorizontalAlign="Center">
                                        <ItemStyle HorizontalAlign="Center" Width="150px"></ItemStyle>
                                    </asp:BoundField>
                                      <asp:BoundField DataField="Average" HeaderText="المعدل" SortExpression="Average" ItemStyle-Width="60"
                                        ItemStyle-HorizontalAlign="Center">
                                        <ItemStyle HorizontalAlign="Center" Width="150px"></ItemStyle>
                                    </asp:BoundField>




                                    <asp:TemplateField HeaderText="الاجراءات">
                                        <ItemStyle Width="100px"></ItemStyle>
                                        <ItemTemplate>
                                            <div class="dropdown">
                                                <button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <i class="bi bi-gear" style="padding: 5PX"></i>الاجراءات
                                                </button>
                                                <div class="dropdown-menu text-right" aria-labelledby="dropdownMenuButton">
                                                    <asp:LinkButton runat="server" ID="lbFoo" CssClass="dropdown-item" CommandName="Att_" CommandArgument='<%#Eval("Id") %>'>
                                                              <i class="fas fa-paperclip" style="padding:10px"></i>المرفقات
                                                    </asp:LinkButton>
                                                    <div class="dropdown-divider"></div>

                                                    <asp:LinkButton runat="server" ID="LinkButton1" CssClass="dropdown-item" CommandName="App_" CommandArgument='<%#Eval("Id") %>'>
                                                                 
                                                                  <i class="fas fa-tasks" style="padding:10px"></i>الموافقات
                                                    </asp:LinkButton>
                                                    <div class="dropdown-divider"></div>

                                                    <asp:HyperLink ID="HyperLink1" Target="_blank" CssClass="dropdown-item" runat="server"
                                                        NavigateUrl='<%#  "selfreport.aspx?ID=" & Eval("id") %>'><i class="fas fa-user-tie" style="padding:10px"></i>الذاتية</asp:HyperLink>

                                                    <div class="dropdown-divider"></div>

                                                    <asp:HyperLink ID="HyperLink2" Enabled="false" Target="_blank" CssClass="dropdown-item" runat="server"
                                                        NavigateUrl='<%#  "http://smsservice.hadara.ps:4545/SMS.ashx/bulkservice/sessionvalue/sendmessage/?apikey=E0D7C999BA44266B1A29F796120A9F6C&to=0599203141&msg=السلام عليكم."  %>'><i class="far fa-comment" style="padding:10px"></i>ارسل رسالة نصية</asp:HyperLink>
                                                </div>
                                            </div>


                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="حالة الطلب">
                                        <ItemStyle Width="100px" HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                                        <ItemTemplate>
                                           

                                        </ItemTemplate>

                                    </asp:TemplateField>

                                </Columns>


                            </asp:GridView>

                            <asp:UpdateProgress ID="updateProgress" runat="server" DisplayAfter="100" AssociatedUpdatePanelID="UpdatePanel2">
                                <ProgressTemplate>
                                    <div
                                        style="position: fixed; text-align: center; height: 100%; width: 100%; top: 0; right: 0; left: 0; z-index: 9999999; background-color: #000000; opacity: 0.3;">
                                        <asp:Image ID="Image2" runat="server" ImageUrl="Images/loading_.gif"
                                            Width="64px" />
                                    </div>
                                </ProgressTemplate>
                            </asp:UpdateProgress>






                        </ContentTemplate>
                    </asp:UpdatePanel>

                </div>
            </div>
        </div>






        <div id="Att" class="modal fade">
            <div class="modal-dialog modal-md modal-dialog-centered" role="document" style="width: 1000px">
                <div class="modal-content">
                    <div class="modal-header float-right" style="background-color: #F2F2F2">

                        <h3 class="modal-title">المرفقات</h3>

                    </div>
                    <div class="modal-body">

                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                            <ContentTemplate>
                                <div class="alert alert-warning" role="alert">
                                    <div class="row mt-4" style="color: #457B9D" align="right">
                                        <div class="col-10">اخر شهادة علمية</div>
                                        <div class="col-2">
                                            <asp:HyperLink ID="FleCertificate" Target="_blank" runat="server"><i class="fas fa-cloud-download-alt"></i></asp:HyperLink>
                                        </div>

                                    </div>



                                    <div class="row mt-4" style="color: #457B9D" align="right">
                                        <div class="col-10">صورةالهوية ملونة</div>
                                        <div class="col">
                                            <asp:HyperLink ID="FleId" runat="server" Target="_blank"><i class="fas fa-cloud-download-alt"></i></asp:HyperLink>
                                        </div>

                                    </div>
                                    <div class="row mt-4" style="color: #457B9D" align="right">
                                        <div class="col-10">صوره شخصية ملونة خلفية بيضاء</div>
                                        <div class="col">
                                            <asp:HyperLink ID="FlePIC" runat="server" Target="_blank"><i class="fas fa-cloud-download-alt"></i></asp:HyperLink>
                                        </div>

                                    </div>
                                    <div class="row mt-4" style="color: #457B9D" align="right">
                                        <div class="col-10">شهادة الميلاد الاصلية</div>
                                        <div class="col">
                                            <asp:HyperLink ID="FleDOB" runat="server" Target="_blank"><i class="fas fa-cloud-download-alt"></i></asp:HyperLink>
                                        </div>

                                    </div>

                                    <div class="row mt-4" style="color: #457B9D" align="right">
                                        <div class="col-10">رخصة قيادة </div>
                                        <div class="col">
                                            <asp:HyperLink ID="FletDrivingLic" runat="server" Target="_blank"><i class="fas fa-cloud-download-alt"></i></asp:HyperLink>
                                        </div>

                                    </div>

                                    <div class="row mt-4" style="color: #457B9D" align="right">
                                        <div class="col-10">صوره جواز السفر ان وجد</div>
                                        <div class="col">
                                            <asp:HyperLink ID="FlePassport" runat="server" Target="_blank"><i class="fas fa-cloud-download-alt"></i></asp:HyperLink>
                                        </div>

                                    </div>
                                    <div class="row mt-4" style="color: #457B9D" align="right">
                                        <div class="col-10">تقارير طبية ان وجد</div>
                                        <div class="col">
                                            <asp:HyperLink ID="FleMedical" runat="server" Target="_blank"><i class="fas fa-cloud-download-alt"></i></asp:HyperLink>
                                        </div>

                                    </div>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>



                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">اغلاق النافذة</button>

                    </div>
                </div>
            </div>
        </div>
        <div id="App" class="modal fade">
            <div class="modal-dialog modal-md modal-dialog-centered" role="document" style="width: 1000px">
                <div class="modal-content">
                    <div class="modal-header float-right" style="background-color: #F2F2F2">

                        <h3 class="modal-title">الموافقات</h3>


                        <h5 align="right">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </h5>
                    </div>
                    <div class="modal-body">

                        <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                            <ContentTemplate>
                                <div class="alert alert-warning" role="alert">
                                    <h5 class="card-title" align="right">المجموعة الاولى</h5>
                                    <div class="alert alert-primary" role="alert">


                                        <div class="row mt-4" style="color: #457B9D" align="right">
                                            <div class="col-10">التاكد من الاوراق الثبوتية</div>
                                            <div class="col-2">
                                                <asp:CheckBox ID="DocCompleted" runat="server" />
                                            </div>

                                        </div>
                                        <div class="row mt-4" style="color: #457B9D" align="right">
                                            <div class="col-10">فحص الهيئة المبدئي</div>
                                            <div class="col-2">
                                                <asp:CheckBox ID="GeneralCompleted" runat="server" />
                                            </div>


                                        </div>
                                        <div class="row mt-4" style="color: #457B9D" align="right">
                                            <div class="col-10">الفحص الطبي الاول</div>
                                            <div class="col-2">
                                                <asp:CheckBox ID="MedicalCompleted" runat="server" />
                                            </div>

                                        </div>
                                        <div class="row mt-4" style="color: #457B9D" align="right">
                                            <div class="col-10">فحص اللياقة.</div>
                                            <div class="col-2">
                                                <asp:CheckBox ID="fitnessComleted" runat="server" />
                                            </div>

                                        </div>
                                        <div class="row mt-4" style="color: #457B9D" align="right">
                                            <div class="col-10">الاختبار الالكتروني.</div>
                                            <div class="col-2">
                                                <asp:CheckBox ID="ECompleted" runat="server" />
                                            </div>

                                        </div>
                                        <div class="row mt-4" style="color: #457B9D" align="right">
                                            <div class="col-10">لجنة الفحص الشخصي.</div>
                                            <div class="col-2">
                                                <asp:CheckBox ID="PersonalCompleted" runat="server" />
                                            </div>

                                        </div>
                                    </div>
                                    <div class="row" style="color: #457B9D" align="right">
                                        <div class="col-7">
                                            ملاحظات
                                        </div>
                                        <div class="col-5">
                                            تاريخ القبول
                                        </div>

                                    </div>

                                    <div class="row mt-3" style="color: #457B9D" align="right">
                                        <div class="col-7">
                                            <asp:TextBox CssClass="form-control" ID="G1Comments" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="col-5">
                                            <asp:TextBox CssClass="form-control" ID="G1AcceptanceDate" runat="server"></asp:TextBox>
                                        </div>

                                    </div>

                                    <h5 class="card-title mt-3" align="right">المجموعة الثانية</h5>
                                    <div class="alert alert-primary" role="alert">

                                        <div class="row mt-4" style="color: #457B9D" align="right">
                                            <div class="col-10">شرطة</div>
                                            <div class="col-2">
                                                <asp:CheckBox ID="CheckBox7" runat="server" />
                                            </div>

                                        </div>
                                        <div class="row mt-4" style="color: #457B9D" align="right">
                                            <div class="col-10">امن وقائي</div>
                                            <div class="col-2">
                                                <asp:CheckBox ID="CheckBox8" runat="server" />
                                            </div>

                                        </div>
                                        <div class="row mt-4" style="color: #457B9D" align="right">
                                            <div class="col-10">مخابرات</div>
                                            <div class="col-2">
                                                <asp:CheckBox ID="CheckBox9" runat="server" />
                                            </div>

                                        </div>
                                        <div class="row mt-4" style="color: #457B9D" align="right">
                                            <div class="col-10">استخبارات</div>
                                            <div class="col-2">
                                                <asp:CheckBox ID="CheckBox10" runat="server" />
                                            </div>

                                        </div>
                                    </div>
                                    <h5 class="card-title" align="right">المجموعة الثالثة</h5>
                                    <div class="alert alert-primary" role="alert">
                                        <div class="row mt-4" style="color: #457B9D" align="right">
                                            <div class="col-10">الفحص الصحي الشامل</div>
                                            <div class="col-2">
                                                <asp:CheckBox ID="CheckBox11" runat="server" />
                                            </div>
                                        </div>
                                    </div>





                                    <div class="row">
                                        <div class="col">
                                            <asp:Button ID="btnSave" runat="server" CssClass="btn btn-primary" Text="حفظ" Width="100%" />
                                            <asp:HiddenField ID="txtID" runat="server" />
                                        </div>
                                        <div class="col">
                                            <asp:Button Enabled="false" ID="Button5" runat="server" CssClass="btn btn-SECONDARY" Text="قبول" Width="100%" />
                                        </div>
                                        <div class="col">
                                            <asp:Button Enabled="false" ID="Button6" runat="server" CssClass="btn btn-DANGER" Text="رفض" Width="100%" />
                                        </div>

                                    </div>
                                    <div class="row mt-2" align="right">

                                        <div class="col">
                                            <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>
                                        </div>
                                        <div class="col-8">
                                            <asp:UpdateProgress ID="UpdateProgress2" runat="server">
                                                <ProgressTemplate>
                                                    <img src="Images/loading.gif" width="24" />
                                                </ProgressTemplate>
                                            </asp:UpdateProgress>
                                        </div>
                                    </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>



                    </div>
                    <div class="modal-footer">
                    </div>



                </div>
            </div>
        </div>







        <asp:UpdatePanel ID="UpdatePanel5" runat="server">
            <ContentTemplate>
                <asp:SqlDataSource ID="SqlCollages" runat="server"
                    ConnectionString="<%$ ConnectionStrings:ConnectionString_ %>"
                    ProviderName="System.Data.SqlClient" SelectCommand="SELECT Id,age, FName +' ' + sName +' ' + tName +' ' + lName as FullName,Gov,Locality,Gender,email,MS,Average,[weight],[Hight],[DocCompleted],[GeneralCompleted],[MedicalCompleted],[fitnessComleted],[ECompleted],[PersonalCompleted]   FROM  collages"></asp:SqlDataSource>


                <asp:SqlDataSource ID="SqlGovs" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_ %>" ProviderName="System.Data.SqlClient" SelectCommand="SELECT GovId, Gov FROM Govs"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqLAnnouncements" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_ %>" ProviderName="System.Data.SqlClient" SelectCommand="select [DateFrom] + ' -- ' +Name  as Name,[Id]  FROM  Announcements where type='كليات خارجية' order by convert(date,DateFrom) Desc "></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlLocalities" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_ %>" ProviderName="System.Data.SqlClient" SelectCommand="SELECT LocalityId, Locality FROM Localities"></asp:SqlDataSource>



            </ContentTemplate>
        </asp:UpdatePanel>




    </form>
</body>
</html>