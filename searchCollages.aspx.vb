
Imports System.Data.SqlClient
Imports System.Drawing
Imports System.Globalization
Imports System.IO
Imports ClosedXML.Excel
Public Class searchCollages
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Admin") <> "1" Then Response.Redirect("AdminLogin.aspx")
        Select Case UCase(Session("owner"))
            Case UCase("Admin-nsf")
                Response.Redirect("searchRecruitments.aspx")
            Case UCase("Admin")

        End Select

        If Not Page.IsPostBack Then
            Governorate.DataBind()
            Governorate.Items.Insert(0, New ListItem("جميع المحافظات", -1))
            announcementId.DataBind()

            Session("qry_collages") = SqlCollages.SelectCommand
            DoSearch()
        End If

    End Sub





    Private Sub Requestes_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles Requestes.RowCommand
        Dim id As Int64 = e.CommandArgument

        Select Case e.CommandName
            Case "Del_"
            Case "App_"
                ScriptManager.RegisterStartupScript(Me, Me.GetType(), "Pop", "openModal2();", True)
            Case "Att_"
                Dim qry As String = "Select FileCert ,FileCertE ,FileID ,FilePic ,FileBirth ,FileBirthE ,FilePassport ,FileMedicalReps " &
                    "from Collages where id=" & id

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
                    ' FleCertificateE.NavigateUrl = dr("FileCertE")
                    FleId.NavigateUrl = dr("FileID")
                    FlePIC.NavigateUrl = dr("FilePic")
                    FleDOB.NavigateUrl = dr("FileBirth")
                    'FleDOBE.NavigateUrl = dr("FileBirthE")
                    FlePassport.NavigateUrl = dr("FilePassport")
                    FleMedical.NavigateUrl = dr("FileMedicalReps")
                    dr.Close()
                    ScriptManager.RegisterStartupScript(Me, Me.GetType(), "Pop", "openModal();", True)
                Catch ex As Exception

                End Try

                con.Close()


        End Select
    End Sub

    Protected Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnSearch.Click
        DoSearch()

    End Sub

    Private Sub DoSearch()
        Dim qry = "SELECT Id,age, FName +' ' + sName +' ' + tName +' ' + lName as FullName,Gov,Locality,Mobile1,Gender,email,MS,Average,[weight],[Hight],[DocCompleted],[GeneralCompleted],[MedicalCompleted],[fitnessComleted],[ECompleted],[PersonalCompleted]  FROM Collages where 1=1 "



        Dim Gov_ As String = "''"
        For i = 0 To Governorate.Items.Count - 1
            If Governorate.Items(i).Selected = True Then
                If Governorate.Items(i).Value <> -1 Then
                    Gov_ &= ",'" & Governorate.Items(i).Text & "'"
                End If

            End If
        Next


        If Len(Gov_) > 2 Then
            qry &= " and gov in(" & Replace(Gov_, "'',", "") & ")"
        End If

        If MS.SelectedValue <> "-1" Then
            qry &= " and MS='" & MS.SelectedItem.Text & "'"
        End If


        If Gender.SelectedValue <> "-1" Then
            qry &= " and Gender='" & Gender.SelectedItem.Text & "'"
        End If

        If announcementId.SelectedValue <> "-1" Then
            qry &= " and announcenetid='" & announcementId.SelectedValue & "'"
        End If


        If Len(Name.Text) > 0 Then
            qry &= " and  FName +' ' + sName +' ' + tName +' ' + lName like '%" & Name.Text & "%'"
        End If


        If Len(IDNumber.Text) > 0 Then
            qry &= " and IDNumber ='" & IDNumber.Text & "'"
        End If

        If Branch.SelectedValue <> "-1" Then
            qry &= " and Spiciality='" & Branch.SelectedItem.Text & "'"
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

        If Len(GFrom.Text) > 0 Then
            qry &= " and  Average >= " & GFrom.Text & ""
        End If

        If Len(GTo.Text) > 0 Then
            qry &= " and  Average <= " & GTo.Text & ""
        End If


        'If Spiciality.SelectedValue <> "-1" Then
        '    qry &= " and Spiciality='" & Spiciality.SelectedValue & "'"
        'End If

        'If Len(Grade.Text) > 0 Then
        '    qry &= " and  Average>='" & Grade.Text & "'"
        'End If

        Session("qry_collages") = qry

        SqlCollages.SelectCommand = qry
        Requestes.DataBind()
    End Sub



    Private Sub SqlCollages_Selected(sender As Object, e As SqlDataSourceStatusEventArgs) Handles SqlCollages.Selected
        result.Text = "تم العثور على " & "(" & e.AffectedRows & ")" & " طلب التحاق."
    End Sub



    Private Sub Requestes_PageIndexChanged(sender As Object, e As EventArgs) Handles Requestes.PageIndexChanged
        SqlCollages.SelectCommand = Session("qry_collages")
        Requestes.DataBind()
    End Sub

    Protected Sub btnExport_Click(sender As Object, e As EventArgs) Handles btnExport.Click
        Dim Q_ As String

        Q_ = "SELECT [Id] as 'متسلسل'" &
      ",[Fname] as 'الاسم ' " &
      ",[SName]  as 'الاب'" &
      ",[TName]  as 'الجد'" &
      ",[LName]  as 'العائبة'" &
      ",[IDNumber]  as 'الهوية'" &
      ",[Average]  as 'المعدل'" &
      ",[Spiciality]  as 'التخصص'" &
      ",[PlaceOfBirth] as 'مكان اولادة' " &
      ",[LivingPlace]  as 'مكان الاقامة'" &
      ",[DOB]  as 'تاربخ الولادة'" &
      ",[Age]  as 'العمر'" &
      ",[Nat]  as 'الجنسبة'" &
      ",[Passport] as 'جواز السفر' " &
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
      " from Collages where 1=1"
        Dim W As String = Replace(Session("qry_collages"), "SELECT Id,age, FName +' ' + sName +' ' + tName +' ' + lName as FullName,Gov,Locality,Mobile1,Gender,email,MS,Average,[weight],[Hight],[DocCompleted],[GeneralCompleted],[MedicalCompleted],[fitnessComleted],[ECompleted],[PersonalCompleted]  FROM Collages where 1=1 ", " ")
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

    Protected Sub btnExportMobile_Click(sender As Object, e As EventArgs) Handles AddNewForm.Click
        If announcementId.SelectedValue = -1 Then Exit Sub
        Session("announcenetid") = announcementId.SelectedValue

        Response.Redirect("CheckGradeNew.aspx")
    End Sub
End Class


