﻿﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="announce.aspx.vb" Inherits="GMTC2022.announce" %>

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
</head>
<body  >
    <form id="form1" runat="server" dir="rtl">
        <div class="container">


            <div class="row mt-3 align-items-center" style="box-shadow: 0px 0px 10px 10px  #17A2B8">
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
                            <h5><a class="nav-link" href="adminlogin.aspx"><i class="fas fa-info-circle" style="color: grey; padding-left: 10px; padding-right: 10px"></i>ادارة البوابة</a></h5>
                        </li>
                    </ul>
                </div>
            </nav>


        </div>

        <div class="container mt-3">
            <div class="alert alert-warning" role="alert">
                <div class="row mt-3">
                    <div class="col-xs-2" style="text-align: right">
                        <img src="Images/item.jpeg" class="img-thumbnail">
                    </div>
                    <div class="col " style="text-align: right;">

                      
                        <h5  style="line-height: 2" >
                             تعلن هيئة التدريب العسكري عن فتح باب التسجيل للدورات المذكورة بالاسفل. على من تنطبق عليه الشروط المذكورة في كل دورة أن يتقدم بتعبئة طلب الالتحاق ليتم مراسلته في اقرب وقت ممكن في حال كان من المرشحين للدورة

                            </h5>

                    </div>
                </div>
            </div>



            <div class="row">

                <div class="col" style="text-align: right;">

                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlAnnouncements">

                        <ItemTemplate>

                            <div class="card">

                                <div class="card-header alert-primary">
                                    <%# Eval("type") %>
                                </div>



                                <div class="card-body">

                                    <div class="row">


                                        <div class="col">
                                            <div class="row">
                                                <div class="col-SM">
                                                    <h5 style="color: #DC3545; font-weight: bolder"><%# Eval("Name") %></h5>
                                                </div>

                                            </div>
                                            <hr />
                                            <div class="row mt-1">

                                                <div class="col-6  align-self-center">

                                                    <h5><span style="padding: 0px 0px 0px 5px;">من </span><%# Eval("DateFrom") %></h5>
                                                </div>

                                                <div class="col-6  align-self-center">
                                                    <h5><span style="padding: 0px 0px 0px 5px;">الى </span><%# Eval("DateTo") %></h5>
                                                </div>
                                            </div>
                                            <hr />
                                            <div class="row mt-1">

                                                <div class="col">
                                                    <h5 style="line-height: 2;"><%# Eval("Desc") %></h5>
                                                </div>
                                            </div>
                                            <div class="row mt-3">

                                                <div class="col">
                                                    <asp:Button ID="Button32" CommandArgument='<%# Eval("Id") & "!" & Eval("type") & "!" & Eval("grade") %>' CssClass="btn btn-lg btn-secondary btn-block" runat="server" Text="تسجيل" />
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-SM-2 text-center align-self-center">
                                            <img src="Images/item.jpeg" width="100px" />
                                        </div>

                                    </div>


                                    </p>

                                </div>
                            </div>


                        </ItemTemplate>

                    </asp:Repeater>

                </div>




            </div>

        </div>













        <asp:SqlDataSource ID="SqlAnnouncements" runat="server"
            ConnectionString="<%$ ConnectionStrings:ConnectionString_ %>"
            ProviderName="System.Data.SqlClient" SelectCommand="SELECT Id, Name, Type, [Desc], DateFrom, DateTo, grade FROM Announcements"></asp:SqlDataSource>


    </form>
</body>
</html>
