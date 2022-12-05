Imports System.Data.SqlClient
Imports System.Globalization
Imports System.IO
Public Class collages
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("User") <> "1" Then Response.Redirect("announce.aspx")
        If Not Page.IsPostBack Then
            Gov.DataBind()
            Gov.Items.Insert(0, New ListItem("اختر المحافظة", ""))
            Locality.DataBind()
            Locality.Items.Insert(0, New ListItem("اختر القرية/المدينة", ""))

            IDNumber.Text = Session("UserId")



            Fname.Text = Session("Fname")
            SName.Text = Session("Sname")
            TName.Text = Session("Tname")
            LName.Text = Session("Family")
        End If



    End Sub

    'Private Sub SecurityForcesYes_CheckedChanged(sender As Object, e As EventArgs) Handles SecurityForces.
    '    If SecurityForcesYes.Checked = True Then SecurityForcesWWW.Enabled = True Else SecurityForcesWWW.Enabled = False
    'End Sub

    'Private Sub SecurityForcesNo_CheckedChanged(sender As Object, e As EventArgs) Handles SecurityForcesNo.CheckedChanged
    '    If SecurityForcesNo.Checked = True Then SecurityForcesWWW.Enabled = False Else SecurityForcesWWW.Enabled = True
    'End Sub
    'Private Sub ChrinicYes_CheckedChanged(sender As Object, e As EventArgs) Handles chronic_Yes.CheckedChanged
    '    If chronic_Yes.Checked = True Then chronicDetails.Enabled = True Else chronicDetails.Enabled = False
    'End Sub

    'Private Sub ChrinicNo_CheckedChanged(sender As Object, e As EventArgs) Handles chronic_No.CheckedChanged
    '    If chronic_No.Checked = True Then chronicDetails.Enabled = False Else chronicDetails.Enabled = True
    'End Sub
    'Private Sub pwd_yes_CheckedChanged(sender As Object, e As EventArgs) Handles PWD_Yes.CheckedChanged
    '    If PWD_Yes.Checked = True Then DisablityDetails.Enabled = True Else DisablityDetails.Enabled = False
    'End Sub

    'Private Sub pwdNo_CheckedChanged(sender As Object, e As EventArgs) Handles PWD_No.CheckedChanged
    '    If PWD_No.Checked = True Then DisablityDetails.Enabled = False Else DisablityDetails.Enabled = True
    'End Sub


    'Private Sub Relatives_Yes_CheckedChanged(sender As Object, e As EventArgs) Handles Relatives_Yes.CheckedChanged
    '    If Relatives_Yes.Checked = True Then
    '        Relationship.Enabled = True
    '        NatureOfWork.Enabled = True
    '    Else
    '        Relationship.Enabled = False
    '        NatureOfWork.Enabled = False
    '    End If
    'End Sub

    'Private Sub Relatives_no_CheckedChanged(sender As Object, e As EventArgs) Handles Relatives_No.CheckedChanged
    '    If Relatives_No.Checked = True Then
    '        Relationship.Enabled = False
    '        NatureOfWork.Enabled = False
    '    Else
    '        Relationship.Enabled = True
    '        NatureOfWork.Enabled = True
    '    End If
    'End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click






        Dim FleCert_ As String = ""
        Dim FleCertE_ As String = ""
        Dim FlePIC_ As String = ""
        Dim FleId_ As String = ""
        Dim Fledob_ As String = ""
        Dim FledobE_ As String = ""
        Dim FleMed_ As String = ""
        Dim FlePassport_ As String = ""

        Try


            If FleCertificate.HasFile = True Then
                FleCert_ = ("CollageAttachments/" & Guid.NewGuid.ToString & System.IO.Path.GetExtension(FleCertificate.FileName))
                Dim path = Server.MapPath(FleCert_)
                FleCertificate.SaveAs(path)
            End If

            'If FleCertificateE.HasFile = True Then
            '    FleCertE_ = ("CollageAttachments/" & Guid.NewGuid.ToString & System.IO.Path.GetExtension(FleCertificateE.FileName))
            '    Dim path = Server.MapPath(FleCertE_)
            '    FleCertificateE.SaveAs(path)
            'End If

            If FleiD.HasFile = True Then
                FleId_ = ("CollageAttachments/" & Guid.NewGuid.ToString & System.IO.Path.GetExtension(FleiD.FileName))
                Dim path = Server.MapPath(FleId_)
                FleiD.SaveAs(path)
            End If




            'If FleDOB.HasFile = True Then
            '    Fledob_ = ("CollageAttachments/" & Guid.NewGuid.ToString & System.IO.Path.GetExtension(FleDOB.FileName))
            '    Dim path = Server.MapPath(Fledob_)
            '    FleDOB.SaveAs(path)
            'End If



            'If FleDOBE.HasFile = True Then
            '    FledobE_ = ("CollageAttachments/" & Guid.NewGuid.ToString & System.IO.Path.GetExtension(FleDOBE.FileName))
            '    Dim path = Server.MapPath(FledobE_)
            '    FleDOBE.SaveAs(path)
            'End If




            'If FlePassport.HasFile = True Then
            '    FlePassport_ = ("CollageAttachments/" & Guid.NewGuid.ToString & System.IO.Path.GetExtension(FlePassport.FileName))
            '    Dim path = Server.MapPath(FlePassport_)
            '    FlePassport.SaveAs(path)
            'End If
        Catch ex As Exception
            msg.Text = "حصل خطأ في المرفقات"
            Exit Sub
        End Try

        Dim Qry As String
        Qry = "INSERT INTO [Collages] " &
           "([Spiciality] " &
           ",[TawjihiID] " &
           ",[Average] " &
           ",[Fname] " &
           ",[SName] " &
           ",[TName] " &
           ",[LName] " &
           ",[IDNumber] " &
           ",[PlaceOfBirth] " &
           ",[LivingPlace] " &
           ",[DOB] " &
           ",[Age] " &
           ",[Nat] " &
           ",[Passport] " &
           ",[Gender] " &
           ",[MS],Hight,weight,Skin,Marks,Eye,Hair " &
           ",[FatherOccupation] " &
           ",[FatherPlaceOfWork] " &
           ",[MotherOccupation] " &
           ",[MotherPlaceOfWork] " &
           ",[chronic_Ind] " &
           ",[chronicDetails] " &
           ",[PWDInd] " &
           ",[DisablityDetails] ,SurgeryInd,SurgeryDetails" &
           ",[SecurityForcesInd] " &
           ",[SecurityForcesWWW] " &
           ",[Gov] " &
           ",[Locality] " &
           ",[Street] " &
           ",[Near] " &
           ",[ExactAddress] " &
           ",[Email] " &
           ",[Mobile1] " &
           ",[Mobile2] " &
           ",[Tel] " &
           ",[RelativesInd] ,RelationshipName" &
           ",[Relationship] " &
           ",[NatureOfWork]" &
            ",Ref1Name" &
            ",Ref2Name" &
            ",Ref3Name" &
            ",Ref1WorkPlace" &
            ",Ref2WorkPlace" &
            ",Ref3WorkPlace" &
            ",Ref1mobile" &
            ",Ref2mobile" &
            ",Ref3mobile" &
            ", announcenetid" &
           ",FileCert,FileCertE,FileID,FilePic,FileBirth,FileBirthE,FilePassport,FileMedicalReps) " &
           "VALUES('" &
           Session("Speciality") & "','" &
          Session("TawjihiID") & "','" &
          Session("Average") & "','" &
            Replace(Fname.Text, "'", "''") & "','" &
            Replace(SName.Text, "'", "''") & "','" &
            Replace(TName.Text, "'", "''") & "','" &
            Replace(LName.Text, "'", "''") & "','" &
           IDNumber.Text & "','" &
           PlaceOfBirth.Text & "','" &
          "" & "','" &
           DOBY.Text & "-" & DOBM.Text & "-" & DOBD.Text & "','" &
           Age.Text & "','" &
           Replace(Nat.Text, "'", "''") & "','" &
           Passport.Text & "','" &
           Gender.Text & "','" &
           MS.Text & "','" &
           Hight.Text & "','" &
           weight.Text & "','" &
           Replace(Skin.Text, "'", "''") & "','" &
           Replace(Marks.Text, "'", "''") & "','" &
           Replace(Eye.Text, "'", "''") & "','" &
           Replace(Hair.Text, "'", "''") & "','" &
           Replace(FatherOccupation.Text, "'", "''") & "','" &
           Replace(FatherPlaceOfWork.Text, "'", "''") & "','" &
           Replace(MotherOccupation.Text, "'", "''") & "','" &
           Replace(MotherPlaceOfWork.Text, "'", "''") & "','" &
           chronic.SelectedValue & "','" &
           Replace(chronicDetails.Text, "'", "''") & "','" &
           pwd.SelectedValue & "','" &
           Replace(DisablityDetails.Text, "'", "''") & "','" &
           SurgeryInd.SelectedValue & "','" &
           Replace(SurgeryDetails.Text, "'", "''") & "','" &
           SecurityForces.SelectedValue & "','" &
           Replace(SecurityForcesWWW.Text, "'", "''") & "','" &
           Replace(Gov.SelectedItem.Text, "'", "''") & "','" &
           Replace(Locality.SelectedItem.Text, "'", "''") & "','" &
           Replace(Street.Text, "'", "''") & "','" &
           Replace(Near.Text, "'", "''") & "','" &
           Replace(ExactAddress.Text, "'", "''") & "','" &
           Replace(Email.Text, "'", "''") & "','" &
           Replace(Intro1.SelectedItem.Text & Mobile1.Text, "'", "''") & "','" &
           Replace(Intro2.SelectedItem.Text & Mobile2.Text, "'", "''") & "','" &
           Replace(Tel.Text, "'", "''") & "','" &
           Relatives.SelectedValue & "','" &
           Replace(RelationshipName.Text, "'", "''") & "','" &
          Replace(Relationship.Text, "'", "''") & "','" &
          Replace(NatureOfWork.Text, "'", "''") & "','" &
          Replace(Ref1Name.Text, "'", "''") & "','" &
          Replace(Ref2Name.Text, "'", "''") & "','" &
          Replace(Ref3Name.Text, "'", "''") & "','" &
          Replace(Ref1WorkPlace.Text, "'", "''") & "','" &
          Replace(Ref2WorkPlace.Text, "'", "''") & "','" &
          Replace(Ref3WorkPlace.Text, "'", "''") & "','" &
          Replace(Ref1mobile.Text, "'", "''") & "','" &
          Replace(Ref2mobile.Text, "'", "''") & "','" &
          Replace(Ref3mobile.Text, "'", "''") & "','" &
          Replace(Session("announcenetid"), "'", "''") & "','" &
           FleCert_ & "','" &
           FleCertE_ & "','" &
           FleId_ & "','" &
           FlePIC_ & "','" &
           Fledob_ & "','" &
           FledobE_ & "','" &
           FlePassport_ & "','" &
           FleMed_ & "' )"


        Dim com As New SqlClient.SqlCommand
        com.CommandText = Qry
        Dim con As New SqlConnection(Me.SqlGovs.ConnectionString)

        If con.State = ConnectionState.Closed Then con.Open()
        com.Connection = con
        Try
            com.ExecuteNonQuery()
            lblmESSAGE.Text = "تم ارسال طلبكم الى الجهات المختصة, سيتم التواصل معكم قريبا."
            Button1.Enabled = False
            ScriptManager.RegisterStartupScript(Me, Me.GetType(), "Pop2", "openModal();", True)
            msg.Text = "تم ارسال طلبكم الى الجهات المختصة, سيتم التواصل معكم قريبا."
        Catch ex As Exception
            msg.Text = "حصل خطأ في الادخال. الرجاء التواصل مع الجهات المختصة"
        End Try



    End Sub

    Protected Sub Gov_SelectedIndexChanged(sender As Object, e As EventArgs) Handles Gov.SelectedIndexChanged
        SqlLocalities.SelectCommand = "Select LocalityId,locality from Localities where GovId=" & Gov.SelectedValue
        Locality.DataBind()

        Locality.Items.Insert(0, New ListItem("اختر القرية/المدينة", ""))
    End Sub

    Protected Sub chronic_SelectedIndexChanged(sender As Object, e As EventArgs) Handles chronic.SelectedIndexChanged
        If chronic.SelectedValue = "نعم" Then chronicDetails.Enabled = True Else chronicDetails.Enabled = False
    End Sub

    Protected Sub pwd_SelectedIndexChanged(sender As Object, e As EventArgs) Handles pwd.SelectedIndexChanged
        If pwd.SelectedValue = "نعم" Then DisablityDetails.Enabled = True Else DisablityDetails.Enabled = False
    End Sub

    Protected Sub SecurityForces_SelectedIndexChanged(sender As Object, e As EventArgs) Handles SecurityForces.SelectedIndexChanged
        If SecurityForces.SelectedValue = "نعم" Then SecurityForcesWWW.Enabled = True Else SecurityForcesWWW.Enabled = False
    End Sub

    Protected Sub Relatives_SelectedIndexChanged(sender As Object, e As EventArgs) Handles Relatives.SelectedIndexChanged
        If Relatives.SelectedValue = "نعم" Then
            Relationship.Enabled = True
            NatureOfWork.Enabled = True
            RelationshipName.Enabled = True
        Else
            Relationship.Enabled = False
            NatureOfWork.Enabled = False
            RelationshipName.Enabled = False
        End If
    End Sub

    Protected Sub SurgeryInd_SelectedIndexChanged(sender As Object, e As EventArgs) Handles SurgeryInd.SelectedIndexChanged
        If SurgeryInd.SelectedValue = "نعم" Then SurgeryDetails.Enabled = True Else SurgeryDetails.Enabled = False
    End Sub


    Protected Sub DOBY_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DOBY.SelectedIndexChanged
        Try
            Age.Text = Math.Round((Now.Date - CDate((DOBY.Text & "-" & DOBM.Text & "-" & DOBD.Text))).TotalDays / 365.24, 1)
        Catch ex As Exception

        End Try
    End Sub

    Protected Sub DOBD_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DOBD.SelectedIndexChanged
        Try
            Age.Text = Math.Round((Now.Date - CDate((DOBY.Text & "-" & DOBM.Text & "-" & DOBD.Text))).TotalDays / 365.24, 1)
        Catch ex As Exception

        End Try

    End Sub

    Protected Sub DOBM_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DOBM.SelectedIndexChanged
        Try
            Age.Text = Math.Round((Now.Date - CDate((DOBY.Text & "-" & DOBM.Text & "-" & DOBD.Text))).TotalDays / 365.24, 1)
        Catch ex As Exception

        End Try
    End Sub


End Class