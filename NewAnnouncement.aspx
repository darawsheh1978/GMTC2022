<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="NewAnnouncement.aspx.vb" Inherits="GMTC2022.NewAnnouncement" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
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
.SPS
{
text-indent: 10PX;
}
.style1
{
width: 100%;
}

  
</style>
    <script >

        $(document).ready(function () {
            $("#DatFrom").datepicker({ format: 'yyyy-mm-dd', changeMonth: true, changeYear: true, showRightIcon: true });
            $("#DateTo").datepicker({ format: 'yyyy-mm-dd', changeMonth: true, changeYear: true, showRightIcon: true });
            $("#DateTo_").datepicker({ format: 'yyyy-mm-dd', changeMonth: true, changeYear: true, showRightIcon: true });
            var parameter = Sys.WebForms.PageRequestManager.getInstance();


            parameter.add_endRequest(function () {
                $("#DatFrom").datepicker({ format: 'yyyy-mm-dd', changeMonth: true, changeYear: true, showRightIcon: true });
                $("#DatTo").datepicker({ format: 'yyyy-mm-dd', changeMonth: true, changeYear: true, showRightIcon: true });
                $("#DateTo_").datepicker({ format: 'yyyy-mm-dd', changeMonth: true, changeYear: true, showRightIcon: true });


            });
        });


    </script>


</head>
<body  >
    <form id="form1" runat="server" dir="rtl">
        <asp:ScriptManager ID="ScriptManager1" EnableCdn="true"  runat="server"></asp:ScriptManager>

        <div class="container">



            <div class="row mt-3 align-items-center" style="box-shadow:0px 0px 10px 10px  #17A2B8 ">
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
                                <a class="dropdown-item" href="searchRecruitments.aspx"> <span class="float-right" >تجنيد </span></a>
                                <a class="dropdown-item" href="searchRecruitments.aspx"> <span class="float-right" >وكفاءات  </span></a>
                                <a class="dropdown-item" href="searchCollages.aspx"> <span class="float-right" >الكليات الخارجية  </span></a>
                                 

                            </div>
                        </li>


                         <li class="nav-item dropdown" >
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i style="padding-right: 10px;padding-left: 5px;" class="fas fa-bullhorn"></i>ادارة الاعلانات 
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink1" >
                                <a class="dropdown-item"  href="NewAnnouncement.aspx"> <span class="float-right" >تحرير الاعلانات</span></a>
                                
                                 

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
                <h3> <i style="padding-right: 10px;padding-left: 5px;" class="fas fa-bullhorn"></i>  اضافة اعلان جديد
                </h3>
            </div>
        </div>


        <div class="container p-3 mt-4" style="background-color: #FFFFFF">

            <asp:UpdatePanel ID="UpdatePanel331" runat="server">
                <ContentTemplate>

                    <div class="alert alert-warning " role="alert">
                        <div class="row  text-right">
                            <div class="col-2">نوع الاعلان</div>
                            <div class="col-3">
                                <asp:DropDownList ID="Type" CssClass="form-control" runat="server" AutoPostBack="True">
                                    <asp:ListItem  >تجنيد</asp:ListItem>
                                    <asp:ListItem  >تجنيد كفاءات</asp:ListItem>
                                    <asp:ListItem  >كليات خارجية</asp:ListItem>
                                </asp:DropDownList>
                                <asp:HiddenField ID="AnnID" runat="server" />
                            </div>
                            <div class="col-2">علامة قبول الطلب</div>
                            <div class="col">
                                <asp:TextBox runat="server" CssClass="form-control" ID="Grade" Enabled="false"></asp:TextBox></div>

                        </div>
                        <div class="row  text-right mt-3">
                            <div class="col-2">نص الاعلان</div>
                            <div class="col">
                                <asp:TextBox runat="server" CssClass="form-control" ID="Name" ></asp:TextBox>
                            </div>

                        </div>
                        <div class="row  text-right mt-3">
                            <div class="col-2">الوصف</div>
                            <div class="col">
                                <asp:TextBox runat="server" CssClass="form-control" ID="Desc"  TextMode="MultiLine" ></asp:TextBox>
                            </div>

                        </div>

                        <div class="row  text-right mt-3">
                            <div class="col-2">من</div>
                            <div class="col-2">
                                <asp:TextBox runat="server" CssClass="form-control" ID="DatFrom" autocomplete="off"   Text="يوم-شهر-سنة" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')" Font-Bold="True" Font-Names="Gadugi"></asp:TextBox>
                            </div>
                            <div class="col-2">الى</div>
                            <div class="col-2">
                                <asp:TextBox runat="server" CssClass="form-control" ID="DatTo" autocomplete="off"   Text="يوم-شهر-سنة" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')" Font-Bold="True" Font-Names="Gadugi"></asp:TextBox>
                            </div>
                          
                             <div class="col-2">الى</div>
                            <div class="col-2">
                                <asp:TextBox runat="server" CssClass="form-control" ID="DateTo_" autocomplete="off"   Text="يوم-شهر-سنة" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')" Font-Bold="True" Font-Names="Gadugi"></asp:TextBox>
                            </div>

                        </div>


                        <div class="row  text-right mt-3">
                            <div class="col">
                                <asp:Button ValidationGroup="one1" ID="AddNew" runat="server" CssClass="btn btn-lg btn-secondary" Text="اضافة الاعلان" Width="100%" />
                                <asp:Button ValidationGroup="one1" ID="SaveChanges" runat="server" CssClass="btn btn-lg btn-secondary" Text="تعديل الاعلان" Width="100%" Visible="False" />
                            </div>

                        </div>

                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>

        </div>

        

        <div class="container" style="padding-left: 0px; padding-right: 0px;">
            <div class="row mt-1 no-gutters" style="padding-left: 0px; padding-right: 0px; margin: 0px">
                <div class="col-sm text-center no-gutters" style="padding-left: 0px; padding-right: 0px; margin: 0px">

                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <asp:GridView ID="GD" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4"
                                CssClass="table table-striped table-bordered table-hover table-condensed " DataKeyNames="Id"
                                DataSourceID="SqlAnnouncements" EmptyDataText="No result found...." PageSize="20">
                                <HeaderStyle BackColor="#418FDE" ForeColor="White" Font-Bold="True" Font-Size="12pt" />
                                <EmptyDataRowStyle BackColor="White" BorderColor="White" />
                                <Columns>




                                    <asp:BoundField DataField="ID" HeaderText="ID" Visible="true">
                                        <ItemStyle Width="0px"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="type" HeaderText="النوع" SortExpression="type"
                                        ItemStyle-Width="110">
                                        <ItemStyle Width="110px"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Name" HeaderText="النص" SortExpression="Name" ItemStyle-Width="110">
                                        <ItemStyle Width="150px"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Desc" HeaderText="وصف" SortExpression="Desc" ItemStyle-Width="150">
                                        <ItemStyle Width="300px"></ItemStyle>
                                    </asp:BoundField>
                                      <asp:BoundField DataField="grade" HeaderText="العلامة" SortExpression="grade" ItemStyle-Width="150">
                                        <ItemStyle></ItemStyle>
                                    </asp:BoundField>

                                    <asp:BoundField DataField="DateFrom" HeaderText="من تاريخ" SortExpression="DateFrom" ItemStyle-Width="150">
                                        <ItemStyle></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="DateTo" HeaderText="الى تاريخ" SortExpression="DateTo" ItemStyle-Width="50"
                                        ItemStyle-HorizontalAlign="Center">
                                        <ItemStyle HorizontalAlign="Center" Width="150px"></ItemStyle>
                                    </asp:BoundField>


                                    <asp:TemplateField  HeaderText="الاجراءات">
                                        <ItemStyle Width="100px"></ItemStyle>
                                       
                                    
                                            

                                       
                                        <ItemTemplate>
                                            <div class="row">
                                                <div class="col-sm">
                                                    <asp:ImageButton   runat="server" ImageUrl="images/delete.png" ID="Del" CommandName="del_" Width="36px"
                                                        CommandArgument='<%#Eval("Id") %>' OnClientClick="return confirm('Are you sure you want to delete this item?');" />
                                                </div>
                                                <div class="col-sm">
                                                    <asp:ImageButton   runat="server" ImageUrl="images/edit.png" ID="ImageButton1" CommandName="edit_"
                                                        CommandArgument='<%#Eval("Id") %>' />
                                                </div>

                                            </div>


                                        </ItemTemplate>
                                    </asp:TemplateField>



                                </Columns>

                            </asp:GridView>
                        </ContentTemplate>
                    </asp:UpdatePanel>

                </div>
            </div>
        </div>

        <asp:UpdateProgress ID="updateProgress1" AssociatedUpdatePanelID="UpdatePanel2" runat="server" DisplayAfter="100">
            <ProgressTemplate>
                <div
                    style="position: fixed; text-align: center; height: 100%; width: 100%; top: 50%; right: 0; left: 0; z-index: 9999999; ">
                    <asp:Image ID="Image243" runat="server" ImageUrl="Images/loading.gif"
                        Width="64px" />
                </div>
            </ProgressTemplate>
        </asp:UpdateProgress>

        <asp:UpdateProgress ID="updateProgress2" AssociatedUpdatePanelID="UpdatePanel331" runat="server" DisplayAfter="100">
            <ProgressTemplate>
                <div
                    style="position: fixed; text-align: center; height: 100%; width: 100%; top: 50%; right: 0; left: 0; z-index: 9999999; ">
                    <asp:Image ID="Image24" runat="server" ImageUrl="Images/loading.gif"
                        Width="64px" />
                </div>
            </ProgressTemplate>
        </asp:UpdateProgress>

        <asp:SqlDataSource ID="SqlAnnouncements" runat="server"
            SelectCommand="SELECT * FROM Announcements order by id desc  "
            ConnectionString="<%$ ConnectionStrings:ConnectionString_ %>" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>



    </form>
</body>
</html>