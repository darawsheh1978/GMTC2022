<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="selfreport.aspx.vb" Inherits="GMTC2022.selfreport" %>


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

   
</head>
<body  >
    <form id="form1" runat="server" dir="rtl">
     
       
    
        <div class="container mt-3">
           
             <div class="row">

                 <div class="col" style="text-align: right;">

                     <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlAnnouncements">
                         <HeaderTemplate>
                         </HeaderTemplate>
                         <ItemTemplate>

                             <div class="card">


                                 <div class="card-header alert-dark" align="center"><h2>بيانات الذاتية</h2></div>


                                 <div class="card-body">
                                     <div class="row">
                                        
                                         <div class="col ">
                                             <label for="Unit">  رقم الهوية </label>
                                             <asp:TextBox Font-Bold="true"  Text='<%# Eval("IDNumber") %>' autocomplete="off" ID="TextBox4" runat="server" CssClass="form-control"  BackColor="#FFF3CD"></asp:TextBox>
                                         </div>
                                        
                                         <div class="col ">
                                               <label for="Unit">  رقم الذاتية </label>
                                             <asp:TextBox  Font-Bold="true"  Text='<%# Eval("Id") %>' autocomplete="off" ID="TextBox5" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>

                                     </div>

                                   
                                     <div class="row mt-4">
                                         <div class="col alert-info">
                                             <h4 >بيانات شخصية</h4>
                                         </div>
                                     </div>
                                    
                                     <div class="row mt-4">
                                         <div class="col ">

                                             <label for="Unit">الاسم الاول </label>
                                             <asp:TextBox Font-Bold="true" Text='<%# Eval("Fname") %>' autocomplete="off" ID="TextBox8" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>


                                         </div>

                                         <div class="col">

                                             <label for="TextBox1">الاب </label>
                                             <asp:TextBox Font-Bold="true" Text='<%# Eval("Sname") %>' autocomplete="off" ID="TextBox9" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>

                                         <div class="col ">

                                             <label for="TextBox2">الجد </label>
                                             <asp:TextBox Font-Bold="true"  Text='<%# Eval("TName") %>' autocomplete="off" ID="TextBox10" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>
                                         <div class="col ">

                                             <label for="TextBox3">العائلة </label>
                                             <asp:TextBox Font-Bold="true" Text='<%# Eval("Lname") %>' autocomplete="off" ID="TextBox11" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>

                                           <div class="col ">

                                             <label for="TextBox3">العمر </label>
                                             <asp:TextBox Font-Bold="true" Text='<%# Eval("Age") %>' autocomplete="off" ID="TextBox41" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')" BackColor="#FFF3CD"></asp:TextBox>
                                         </div>

                                     </div>

                                     <div class="row mt-4">
                                         <div class="col ">

                                             <label for="Unit">مكان الولادة </label>
                                             <asp:TextBox Font-Bold="true" Text='<%# Eval("PlaceOfBirth") %>' autocomplete="off" ID="TextBox12" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>


                                         </div>

                                         <div class="col">

                                             <label for="TextBox1">تاريخ الولادة </label>
                                             <asp:TextBox Font-Bold="true" Text='<%# Eval("DOB") %>' autocomplete="off" ID="TextBox13" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>

                                         <div class="col ">

                                             <label for="TextBox2">الجنس </label>
                                             <asp:TextBox Font-Bold="true" Text='<%# Eval("Gender") %>' autocomplete="off" ID="TextBox14" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>
                                         

                                     </div>

                                     <div class="row mt-4">


                                         <div class="col">

                                             <label for="TextBox1">الجنسية الاصلية  </label>
                                             <asp:TextBox Font-Bold="true" Text='<%# Eval("Nat") %>' autocomplete="off" ID="TextBox17" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>
                                          <div class="col ">

                                             <label for="TextBox3"> جواز السفر   </label>
                                             <asp:TextBox Font-Bold="true" Text='<%# Eval("Passport") %>'  autocomplete="off" ID="TextBox1" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>
                                         
                                         <div class="col ">

                                             <label for="TextBox3"> الحالة الاجتماعية  </label>
                                             <asp:TextBox Font-Bold="true" Text='<%# Eval("MS") %>'  autocomplete="off" ID="TextBox19" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>

                                     </div>

                                     <div class="row mt-4">
                                         <div class="col alert-info ">
                                             <h4 >بيانات الاوصاف</h4>
                                         </div>
                                     </div>
                                  
                                     <div class="row mt-4">

                                         <div class="col ">

                                             <label for="TextBox2">الطول </label>
                                             <asp:TextBox Font-Bold="true" Text='<%# Eval("Hight") %>' autocomplete="off" ID="TextBox20" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>
                                         <div class="col ">

                                             <label for="TextBox2">الوزن </label>
                                             <asp:TextBox Font-Bold="true" Text='<%# Eval("weight") %>' autocomplete="off" ID="TextBox26" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>
                                         <div class="col">

                                             <label for="TextBox1">لون الشعر</label>
                                             <asp:TextBox Font-Bold="true" Text='<%# Eval("Hair") %>' autocomplete="off" ID="TextBox16" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>


                                         <div class="col ">

                                             <label for="TextBox3">لون البشرة  </label>
                                             <asp:TextBox Font-Bold="true" Text='<%# Eval("Skin") %>' autocomplete="off" ID="TextBox21" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>
                                         <div class="col ">

                                             <label for="TextBox3">لون العينان  </label>
                                             <asp:TextBox Font-Bold="true" Text='<%# Eval("Eye") %>' autocomplete="off" ID="TextBox22" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>

                                         <div class="col ">

                                             <label for="TextBox3">علامات فارقة  </label>
                                             <asp:TextBox Font-Bold="true" Text='<%# Eval("Marks") %>' autocomplete="off" ID="TextBox24" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>

                                     </div>

                                     <div class="row mt-4">


                                         <div class="col-2 ">

                                             <label for="TextBox3"> مهنة الاب </label>
                                             <asp:TextBox Font-Bold="true" Text='<%# Eval("FatherOccupation") %>' autocomplete="off" ID="TextBox2" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>

                                          <div class="col ">

                                             <label for="TextBox3"> مكان عمل الاب </label>
                                             <asp:TextBox Font-Bold="true" Text='<%# Eval("FatherPlaceOfWork") %>' autocomplete="off" ID="TextBox3" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>

                                     </div>

                                        <div class="row mt-4">


                                         <div class="col-2">

                                             <label for="TextBox3">  اجريت عملية جراحية </label>
                                             <asp:TextBox Font-Bold="true" Text='<%# Eval("SurgeryInd") %>' autocomplete="off" ID="TextBox6" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>

                                          <div class="col ">

                                             <label for="TextBox3"> طبيعة العملية </label>
                                             <asp:TextBox Font-Bold="true" Text='<%# Eval("SurgeryDetails") %>' autocomplete="off" ID="TextBox7" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>

                                     </div>
                                         <div class="row mt-4">


                                         <div class="col-2">

                                             <label for="TextBox3">  عملت في قوى الامن   </label>
                                             <asp:TextBox Font-Bold="true" Text='<%# Eval("SecurityForcesInd") %>' autocomplete="off" ID="TextBox18" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>

                                          <div class="col ">

                                             <label for="TextBox3"> طبيعة ومكان العمل </label>
                                             <asp:TextBox  Font-Bold="true" Text='<%# Eval("SecurityForcesWWW") %>' autocomplete="off" ID="TextBox23" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>

                                     </div>

                                       <div class="row mt-4">
                                         <div class="col alert-info">
                                             <h4 > المؤهلات</h4>
                                         </div>

                                     </div>
                                  

                                        <div class="row mt-4">


                                         <div class="col-3">

                                             <label for="TextBox1"> المؤهل العلمي </label>
                                             <asp:TextBox Font-Bold="true" Text='<%# Eval("Qualification") %>' autocomplete="off" ID="TextBox25" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>

                                        
                                         <div class="col-3">

                                             <label for="TextBox3"> رخصة القيادة  </label>
                                             <asp:TextBox  Font-Bold="true" Text='<%# Eval("DriveLicType") %>' autocomplete="off" ID="TextBox27" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')" BackColor="#FFF3CD"></asp:TextBox>
                                         </div>
                                         <div class="col ">

                                             <label for="TextBox3">المهارات   </label>
                                             <asp:TextBox Font-Bold="true" Text='<%# Eval("Skills") %>'   autocomplete="off" ID="TextBox28" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>
                                         
                                     

                                     </div>
                                       

                                       <div class="row mt-4">
                                         <div class="col alert-info">
                                             <h4 > العنوان</h4>
                                         </div>
                                     </div>
                                   

                                     <div class="row mt-4">


                                         <div class="col">

                                             <label for="TextBox1">المحافظة </label>
                                             <asp:TextBox Font-Bold="true" Text='<%# Eval("Gov") %>' autocomplete="off" ID="TextBox30" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')" BackColor="#FFF3CD"></asp:TextBox>
                                         </div>

                                         <div class="col ">

                                             <label for="TextBox2">المدينة/القرية/المخيم </label>
                                             <asp:TextBox Font-Bold="true" Text='<%# Eval("Locality") %>' autocomplete="off" ID="TextBox31" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>
                                         <div class="col-4">

                                             <label for="TextBox3">  البريد الالكتروني  </label>
                                             <asp:TextBox Font-Bold="true" Text='<%# Eval("Email") %>' autocomplete="off" ID="TextBox32" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')" BackColor="#FFF3CD"></asp:TextBox>
                                         </div>
                                         <div class="col ">

                                             <label for="TextBox3">Tel   </label>
                                             <asp:TextBox Font-Bold="true" Text='<%# Eval("Mobile1") %>' autocomplete="off" ID="TextBox33" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>
                                     
                                     

                                     </div>
 
                                     <div class="row mt-4">

                                         <div class="col">

                                             <label for="TextBox1">العنوان بالتفصيل   </label>
                                             <asp:TextBox  Font-Bold="true" Text='<%# Eval("ExactAddress") %>' autocomplete="off" ID="TextBox36" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>
                                     </div>
                                          <div class="row mt-4">


                                       

                                         <div class="col ">

                                             <label for="TextBox2">الشارع </label>
                                             <asp:TextBox Font-Bold="true" Text='<%# Eval("Street") %>' autocomplete="off" ID="TextBox37" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>
                                         <div class="col-4">

                                             <label for="TextBox3">  بالقرب من  </label>
                                             <asp:TextBox  Font-Bold="true" Text='<%# Eval("Near") %>' autocomplete="off" ID="TextBox38" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>

                                               <div class="col ">

                                             <label for="TextBox3">رقم المحمول 1   </label>
                                             <asp:TextBox Font-Bold="true" Text='<%# Eval("Mobile1") %>' autocomplete="off" ID="TextBox40" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')" BackColor="#FFF3CD"></asp:TextBox>
                                         </div>
                                         <div class="col ">

                                             <label for="TextBox3">رقم المحمول 2   </label>
                                             <asp:TextBox Font-Bold="true"  Text='<%# Eval("Mobile2") %>' autocomplete="off" ID="TextBox39" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>
                                     
                                     

                                     </div>
                                       <div class="row mt-4">
                                         <div class="col alert-info">
                                             <h4 > المعرفون</h4>
                                         </div>
                                     </div>
                                     
                                       <div class="row mt-4">


                                         <div class="col">

                                             <label for="TextBox1">  هل لديك أقارب في المؤسسة الأمنية </label>
                                             <asp:TextBox  Font-Bold="true" Text='<%# Eval("RelativesInd") %>' autocomplete="off" ID="TextBox15" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>

                                        
                                         <div class="col ">

                                             <label for="TextBox3">الاسم   </label>
                                             <asp:TextBox  Font-Bold="true"  Text='<%# Eval("RelationshipName") %>' autocomplete="off" ID="TextBox29" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>
                                         <div class="col ">

                                             <label for="TextBox3">صلة القرابة   </label>
                                             <asp:TextBox Font-Bold="true"  Text='<%# Eval("Relationship") %>'   autocomplete="off" ID="TextBox34" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>
                                                <div class="col ">

                                             <label for="TextBox3">مكان العمل   </label>
                                             <asp:TextBox  Font-Bold="true" Text='<%# Eval("NatureOfWork") %>'   autocomplete="off" ID="TextBox35" runat="server" CssClass="form-control" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox>
                                         </div>
                                         
                                     

                                     </div>
                                     <div class="row mt-3" style="color: #457B9D">
                                        <div class="col-sm">الاسم*</div>
                                        <div class="col-sm">مكان العمل*</div>
                                       <div class="col-sm">رقم المحمول</div>
                                    </div>
                                     <div class="row mt-3" style="color: #457B9D">
                                        <div class="col-sm"><asp:TextBox  Font-Bold="true" Text='<%# Eval("Ref1Name") %>'  placeholder="الاسم" CssClass="form-control" ID="Ref1Name" runat="server" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')" ></asp:TextBox></div>
                                        <div class="col-sm"><asp:TextBox Font-Bold="true"  Text='<%# Eval("Ref1WorkPlace") %>' placeholder="مكان العمل" autocomplete="off" CssClass="form-control"  ID="Ref1WorkPlace" runat="server" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox></div>
                                       <div class="col-sm"><asp:TextBox  Font-Bold="true"  Text='<%# Eval("Ref1mobile") %>' placeholder="الهاتف" autocomplete="off" CssClass="form-control"  ID="Ref1mobile" runat="server"></asp:TextBox></div>
                                    </div>
                                     <div class="row mt-3" style="color: #457B9D">
                                        <div class="col-sm"><asp:TextBox  Font-Bold="true" Text='<%# Eval("Ref2Name") %>' autocomplete="off"  placeholder="الاسم" CssClass="form-control"  ID="Ref2Name" runat="server" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox></div>
                                        <div class="col-sm"><asp:TextBox  Font-Bold="true" Text='<%# Eval("Ref2WorkPlace") %>' autocomplete="off" placeholder="مكان العمل" CssClass="form-control"  ID="Ref2WorkPlace" runat="server" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox></div>
                                       <div class="col-sm"><asp:TextBox  Font-Bold="true" Text='<%# Eval("Ref3WorkPlace") %>' autocomplete="off" placeholder="الهاتف" CssClass="form-control"  ID="Ref2mobile" runat="server"></asp:TextBox></div>
                                    </div>
                                      <div class="row mt-3" style="color: #457B9D">
                                        <div class="col-sm"><asp:TextBox Font-Bold="true" Text='<%# Eval("Ref3Name") %>' autocomplete="off"   placeholder="الاسم" CssClass="form-control"  ID="Ref3Name" runat="server" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox></div>
                                        <div class="col-sm"><asp:TextBox Font-Bold="true"  Text='<%# Eval("Ref2mobile") %>' autocomplete="off" placeholder="مكان العمل" CssClass="form-control"  ID="Ref3WorkPlace" runat="server" required="" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('هذا الحقل ضروري')"></asp:TextBox></div>
                                       <div class="col-sm"><asp:TextBox   Font-Bold="true" Text='<%# Eval("Ref3mobile") %>' autocomplete="off" placeholder="الهاتف"  CssClass="form-control" ID="Ref3mobile" runat="server"></asp:TextBox></div>
                                    </div>



                                      <div class="row mt-4">
                                         <div class="col alert-info">
                                             <h4 >المرفقات</h4>
                                         </div>
                                     </div>
                                     <div class="row mt-4">
                                         <div class="col-sm">
                                             <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("fileCert") %>' CssClass="img-fluid d-block" />

                                         

                                              

                                         </div>
                                         <div class="col-sm">
                                             <asp:Image ID="Image2" runat="server" ImageUrl='<%#Eval("FileId") %>' CssClass="img-fluid d-block"   />
                                         </div>
                                     </div>


                                     <div class="row mt-4">
                                         <div class="col-sm">
                                             <asp:Image ID="Image3" runat="server" ImageUrl='<%#Eval("FilePic") %>' CssClass="img-fluid d-block" />
                                             
                                         </div>
                                         <div class="col-sm">
                                             <asp:Image ID="Image7" runat="server" ImageUrl='<%#Eval("FileDrivingLic") %>' CssClass="img-fluid d-block" />
                                         </div>

                                     </div>
                                      <div class="row mt-4">
                                             <div class="col-sm">
                                             <asp:Image ID="Image4" runat="server" ImageUrl='<%#Eval("FileBirth") %>'  CssClass="img-fluid d-block"/>
                                         </div>
                                             <div class="col-sm">
                                             <asp:Image ID="Image5" runat="server" ImageUrl='<%#Eval("FilePassport") %>'  CssClass="img-fluid d-block"/>
                                         </div>
                                          </div>
                                      <div class="row mt-4">
                                             <div class="col-sm">
                                             <asp:Image ID="Image6" runat="server" ImageUrl='<%#Eval("FileMedicalReps") %>'  CssClass="img-fluid d-block"/>
                                         </div>
                                     </div>

                                 </div>
                             </div>


                         </ItemTemplate>

                     </asp:Repeater>

                 </div>
             </div>
                
        </div>

      
           
            

            
       

      

      


        <asp:SqlDataSource ID="SqlAnnouncements" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString_ %>"
            ProviderName="System.Data.SqlClient" SelectCommand="SELECT top 1 * from collages"></asp:SqlDataSource>


    </form>
</body>
</html>