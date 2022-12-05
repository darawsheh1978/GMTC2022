Imports System.Data.SqlClient
Imports System.Drawing
Imports System.Globalization
Imports System.IO
Imports ClosedXML.Excel

Public Class searchRecruitments
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Admin") <> "1" Then Response.Redirect("AdminLogin.aspx")
        If Not Page.IsPostBack Then
            Gov.DataBind()
            announcementId.DataBind()
            Gov.Items.Insert(0, New ListItem("جميع التجمعات", -1))
            Session("q") = Sqlrecruitment.SelectCommand


            Select Case UCase(Session("owner"))
                Case UCase("Admin-nsf")
                    SqLAnnouncements.SelectCommand = "select [DateFrom] + ' -- ' +Name  as Name,[Id]  FROM  Announcements where type='تجنيد' and owner='NSF' order by DateFrom Desc "
                    announcementId.DataBind()
                Case UCase("Admin")

            End Select

            dosearch()
        End If






    End Sub

    'Protected Sub Gov_SelectedIndexChanged(sender As Object, e As EventArgs) Handles Gov.SelectedIndexChanged
    '    Try
    '        SqlLocalities.SelectCommand = "Select LocalityId,locality from Localities where GovId=" & Gov.SelectedValue
    '        Locality.DataBind()

    '        Locality.Items.Insert(0, New ListItem("جميع التجمعات", -1))
    '    Catch ex As Exception

    '    End Try

    'End Sub
    Private Sub Requestes_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles Requestes.RowCommand
        Dim id As Int64 = e.CommandArgument
        G1AcceptanceDate.Text = ""
        Select Case e.CommandName
            Case "Del_"
            Case "App_"
                Dim qry As String = "Select DocCompleted,GeneralCompleted,MedicalCompleted,fitnessComleted,ECompleted,PersonalCompleted,G1Comments,AcceptanceDate  " &
                    "from recruitments where id=" & id

                Dim com As New SqlClient.SqlCommand
                Dim dr As SqlClient.SqlDataReader
                com.CommandText = qry
                Dim con As New SqlConnection(Me.SqlGovs.ConnectionString)

                If con.State = ConnectionState.Closed Then con.Open()
                com.Connection = con

                Try
                    dr = com.ExecuteReader
                    dr.Read()
                    txtID.Value = id
                    If dr("DocCompleted") = "Yes" Then DocCompleted.Checked = True Else DocCompleted.Checked = False
                    If dr("GeneralCompleted") = "Yes" Then GeneralCompleted.Checked = True Else GeneralCompleted.Checked = False
                    If dr("MedicalCompleted") = "Yes" Then MedicalCompleted.Checked = True Else MedicalCompleted.Checked = False
                    If dr("fitnessComleted") = "Yes" Then fitnessComleted.Checked = True Else fitnessComleted.Checked = False
                    If dr("ECompleted") = "Yes" Then ECompleted.Checked = True Else ECompleted.Checked = False
                    If dr("PersonalCompleted") = "Yes" Then PersonalCompleted.Checked = True Else PersonalCompleted.Checked = False
                    G1Comments.Text = dr("G1Comments")
                    G1AcceptanceDate.Text = dr("AcceptanceDate")


                    dr.Close()
                    lblmessage.Text = ""
                Catch ex As Exception

                End Try

                ScriptManager.RegisterStartupScript(Me, Me.GetType(), "Pop", "openModal2();", True)
            Case "Att_"
                Dim qry As String = "Select FileCert ,FileID ,FilePic ,FileBirth ,FilePassport ,FileMedicalReps,FileDrivingLic " &
                    "from recruitments where id=" & id

                Dim com As New SqlClient.SqlCommand
                Dim dr As SqlClient.SqlDataReader
                com.CommandText = qry
                Dim con As New SqlConnection(Me.SqlGovs.ConnectionString)

                If con.State = ConnectionState.Closed Then con.Open()
                com.Connection = con

                Try
                    dr = com.ExecuteReader
                    dr.Read()
                    FleCertificate.NavigateUrl = dr("FileCert")
                    FleId.NavigateUrl = dr("FileID")
                    FlePIC.NavigateUrl = dr("FilePic")
                    FleDOB.NavigateUrl = dr("FileBirth")
                    FlePassport.NavigateUrl = If(Len(dr("FilePassport")) = 0, "", dr("FilePassport"))
                    FletDrivingLic.NavigateUrl = If(Len(dr("FileDrivingLic")) = 0, "", dr("FileDrivingLic"))
                    FleMedical.NavigateUrl = If(Len(dr("FileMedicalReps")) = 0, "", dr("FileMedicalReps"))
                    dr.Close()
                    ScriptManager.RegisterStartupScript(Me, Me.GetType(), "Pop", "openModal();", True)
                Catch ex As Exception

                End Try




        End Select
    End Sub


    Protected Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnSearch.Click
        dosearch()


    End Sub

    Private Sub dosearch()

        Dim qry = "SELECT Id,age, FName +' ' + sName +' ' + tName +' ' + lName as FullName,Gov,Locality,Mobile1,Gender,email,MS,[weight],[Hight],[DocCompleted],[GeneralCompleted],[MedicalCompleted],[fitnessComleted],[ECompleted],[PersonalCompleted]  FROM recruitments where 1=1 "


        Dim Gov_ As String = "''"
        For i = 0 To Gov.Items.Count - 1
            If Gov.Items(i).Selected = True Then
                If Gov.Items(i).Value <> -1 Then
                    Gov_ &= ",'" & Gov.Items(i).Text & "'"
                End If

            End If
        Next

        If Len(Gov_) > 2 Then
            qry &= " and gov in(" & Replace(Gov_, "'',", "") & ")"
        End If



        'If Locality.SelectedValue <> -1 Then
        '    qry &= " and locality='" & Locality.SelectedItem.Text & "'"
        'End If

        If MS.SelectedValue <> "-1" Then
            qry &= " and MS='" & MS.SelectedItem.Text & "'"
        End If


        If Gender.SelectedValue <> "-1" Then
            qry &= " and Gender='" & Gender.SelectedItem.Text & "'"
        End If

        If announcementId.SelectedValue <> "-1" Then
            qry &= " and announcementId='" & announcementId.SelectedValue & "'"
        End If



        If Len(Age.Text) > 0 Then
            qry &= " and  age>='" & Age.Text & "'"
        End If

        If Len(AgeTo.Text) > 0 Then
            qry &= " and  age<='" & AgeTo.Text & "'"
        End If

        If Len(Name.Text) > 0 Then
            qry &= " and  FName +' ' + sName +' ' + tName +' ' + lName like '%" & Name.Text & "%'"
        End If

        If Len(IDNumber.Text) > 0 Then
            qry &= " and  IDNumber like '%" & IDNumber.Text & "%'"
        End If


        If Len(HFrom.Text) > 0 Then
            qry &= " and  Hight >= " & HFrom.Text & ""
        End If

        If Len(HTo.Text) > 0 Then
            qry &= " and  Hight <= " & HTo.Text & ""
        End If


        If Len(WFrom.Text) > 0 Then
            qry &= " and  weight >= " & WFrom.Text & ""
        End If

        If Len(WTo.Text) > 0 Then
            qry &= " and  weight <= " & WTo.Text & ""
        End If





        Dim DL_ As String = "''"
        For i = 0 To DriveLicType.Items.Count - 1
            If DriveLicType.Items(i).Selected = True Then
                DL_ &= ",'" & DriveLicType.Items(i).Text & "'"
            End If
        Next

        If Len(DL_) > 2 Then
            qry &= " and DriveLicType in(" & Replace(DL_, "'',", "") & ")"
        End If


        If Acceptance.SelectedValue = 1 Then
            qry &= " and [DocCompleted]='Yes' and [GeneralCompleted]='Yes' and [MedicalCompleted]='Yes' and [fitnessComleted]='Yes' and [ECompleted]='Yes' and [PersonalCompleted]='Yes' "
        End If


        If IsDate(G1AcceptanceDateSearch.Text) = True Then
            qry &= " and AcceptanceDate='" & G1AcceptanceDateSearch.Text & "'"
        End If

        Session("q") = qry

        Sqlrecruitment.SelectCommand = qry
        Requestes.DataBind()


        'qry = Replace(qry, "Id,age, FName +' ' + sName +' ' + tName +' ' + lName as FullName,Gov,Locality,Mobile1,Gender,email,MS,[weight],[Hight]", " Count(id) ")
        'Dim com As New SqlClient.SqlCommand
        'Dim dr As SqlClient.SqlDataReader
        'com.CommandText = qry
        'Dim con As New SqlConnection(Me.Sqlrecruitment.ConnectionString)

        'If con.State = ConnectionState.Closed Then con.Open()
        'com.Connection = con
        'dr = com.ExecuteReader
        'While dr.Read()
        '    result_.Text = dr(0)
        'End While
        'dr.Close()
    End Sub
    Private Sub SqlCollages_Selected(sender As Object, e As SqlDataSourceStatusEventArgs) Handles Sqlrecruitment.Selected
        result_.Text = "تم العثور على " & "(" & e.AffectedRows & ")" & " طلب التحاق."
    End Sub



    Protected Sub btnExport_Click(sender As Object, e As EventArgs) Handles btnExport.Click
        Dim Q_ As String

        Q_ = "SELECT [Id] as 'متسلسل'" &
      ",[Fname] as 'الاسم ' " &
      ",[SName]  as 'الاب'" &
      ",[TName]  as 'الجد'" &
      ",[LName]  as 'العائبة'" &
      ",[IDNumber]  as 'الهوية'" &
      ",[PlaceOfBirth] as 'مكان اولادة' " &
      ",[LivingPlace]  as 'مكان الاقامة'" &
      ",[DOB]  as 'تاربخ الولادة'" &
      ",[Age]  as 'العمر'" &
      ",[Nat]  as 'الجنسبة'" &
      ",[Passport] as 'جواز السفر' " &
      ",[Qualification] as 'المؤهلات' " &
      ",[DriveLicType] as 'رحصة قيادة'" &
      ",[Gender]  as 'الجنس'" &
      ",[MS] as 'الحالة الاجتماعية' " &
      ",[weight]  as 'الوزن'" &
      ",[Hight]  as 'الطول'" &
      ",[Skin]  as 'لون البشرة'" &
      ",[Marks]  as 'علامات فارقة'" &
      ",[Eye]  as 'لون العينين'" &
      ",[Hair] as 'لون الشعر' " &
      ",[FatherOccupation] as 'مهنة الاب' " &
      ",[FatherPlaceOfWork] as 'مكان عمل الاب' " &
      ",[MotherOccupation] as 'مهنة الام' " &
      ",[MotherPlaceOfWork] as 'مكان عمل الام' " &
      ",[Skills] as 'المهارات' " &
      ",[SurgeryInd] as 'عملة جراحية' " &
      ",[SurgeryDetails]  as 'تفاصيل'" &
      ",[SecurityForcesInd] as 'عملت في قوى الامن' " &
      ",[SecurityForcesWWW] as 'طبيعة العمل' " &
      ",[Gov] as 'المحافظة' " &
      ",[Locality]  as 'القرية'" &
      ",[Street] as 'الشارع' " &
      ",[Near]  as 'بالقرب من'" &
      ",[ExactAddress] as 'العنوان' " &
      ",[Email]  as 'البريد الاكتروني'" &
      ",[Mobile1] as 'محمول 1' " &
      ",[Mobile2] as 'محمول 2' " &
      ",[Tel]  as 'هاتف' " &
      ",[RelativesInd] as 'هل لديك أقارب في المؤسسة الأمنية  ' " &
      ",[RelationshipName] as 'اسماؤهم' " &
      ",[Relationship] as 'صلة القرابة' " &
      ",[NatureOfWork] as 'مكان عملهم' " &
      ",[Ref1Name] as 'معرف 1' " &
      ",[Ref1WorkPlace] as 'مكان عمل 1' " &
      ",[Ref1mobile] as 'محمول1' " &
      ",[Ref2Name] as 'معرف 2' " &
      ",[Ref2WorkPlace] as 'مكان عمل 2 ' " &
      ",[Ref2mobile] as 'محمول2' " &
      ",[Ref3Name] as 'معرف 3' " &
      ",[Ref3WorkPlace] as 'مكان عمل 3' " &
      ",[Ref3mobile] as 'محمول3' " &
       ",[AcceptanceDate] as 'تاريخ الموافقة' " &
      " from recruitments where 1=1"
        Dim W As String = Replace(Session("q"), "SELECT Id,age, FName +' ' + sName +' ' + tName +' ' + lName as FullName,Gov,Locality,Mobile1,Gender,email,MS,[weight],[Hight],[DocCompleted],[GeneralCompleted],[MedicalCompleted],[fitnessComleted],[ECompleted],[PersonalCompleted]  FROM recruitments where 1=1", " ")
        Q_ &= W

        Dim wb As New XLWorkbook
        Dim ds As New DataSet
        Dim qry As String = Q_


        Dim da As New SqlDataAdapter(qry, Me.SqlGovs.ConnectionString)
        da.Fill(ds, "Incidents")
        wb.Worksheets.Add(ds)
        wb.Style.Alignment.Horizontal = XLAlignmentHorizontalValues.Center
        wb.Style.Font.Bold = True
        Response.Clear()
        Response.Buffer = True
        Response.Charset = ""
        Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
        Response.AddHeader("content-disposition", "attachment;filename=Records.xlsx")
        Dim MyMemoryStream As New MemoryStream
        Using MyMemoryStream
            wb.SaveAs(MyMemoryStream)
            MyMemoryStream.WriteTo(Response.OutputStream)
            Response.Flush()
            Response.End()
        End Using
    End Sub



    Private Sub Requestes_PageIndexChanged(sender As Object, e As EventArgs) Handles Requestes.PageIndexChanged

        Sqlrecruitment.SelectCommand = Session("q")
        Requestes.DataBind()
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click

    End Sub

    Protected Sub btnExportMobile_Click(sender As Object, e As EventArgs)
        Dim Q_ As String

        Q_ = "SELECT " &
      "[Gov] as 'Governorate' " &
      ",[Mobile1] as 'mobile' " &
      ",[Mobile2] as 'mobile' " &
       ",'' as  'sms'" &
      " from recruitments where 1=1"
        Dim W As String = Replace(Session("q"), "SELECT Id,age, FName +' ' + sName +' ' + tName +' ' + lName as FullName,Gov,Locality,Mobile1,Gender,email,MS,[weight],[Hight]  FROM recruitments where 1=1", " ")
        Q_ &= W

        Dim wb As New XLWorkbook
        Dim ds As New DataSet
        Dim qry As String = Q_


        Dim da As New SqlDataAdapter(qry, Me.SqlGovs.ConnectionString)
        da.Fill(ds, "Incidents")
        wb.Worksheets.Add(ds)
        wb.Style.Alignment.Horizontal = XLAlignmentHorizontalValues.Center
        wb.Style.Font.Bold = True
        Response.Clear()
        Response.Buffer = True
        Response.Charset = ""
        Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
        Response.AddHeader("content-disposition", "attachment;filename=MobileNumbers.xlsx")
        Dim MyMemoryStream As New MemoryStream
        Using MyMemoryStream
            wb.SaveAs(MyMemoryStream)
            MyMemoryStream.WriteTo(Response.OutputStream)
            Response.Flush()
            Response.End()
        End Using
    End Sub

    Private Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        Dim qry As String = "update recruitments set " &
        "DocCompleted='" & If(DocCompleted.Checked = True, "Yes", "No") & "'" &
        ",GeneralCompleted='" & If(GeneralCompleted.Checked = True, "Yes", "No") & "'" &
        ",MedicalCompleted='" & If(MedicalCompleted.Checked = True, "Yes", "No") & "'" &
        ",fitnessComleted='" & If(fitnessComleted.Checked = True, "Yes", "No") & "'" &
        ",ECompleted='" & If(ECompleted.Checked = True, "Yes", "No") & "'" &
        ",PersonalCompleted='" & If(PersonalCompleted.Checked = True, "Yes", "No") & "'" &
        ",G1Comments='" & G1Comments.Text & "'" &
        ",AcceptanceDate='" & G1AcceptanceDate.Text & "'" &
        "  where id=" & txtID.Value

        Dim com As New SqlClient.SqlCommand

        com.CommandText = qry
        Dim con As New SqlConnection(Me.SqlGovs.ConnectionString)
        If con.State = ConnectionState.Closed Then con.Open()
        com.Connection = con
        com.ExecuteNonQuery()
        lblmessage.Text = "تم حفظ البيانات"
        Requestes.DataBind()
    End Sub




End Class