Imports System.Data.SqlClient
Imports System.Threading

Public Class recruitment
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("User") <> "1" Then Response.Redirect("announce.aspx")
        If Not Page.IsPostBack Then
            '  Gov.DataBind()
            Gov.Items.Insert(0, New ListItem("اختر المحافظة", ""))
            Locality.DataBind()
            Locality.Items.Insert(0, New ListItem("اختر القرية/المدينة", ""))

            IDNumber.Text = Session("UserId")
        End If
    End Sub








    Protected Sub Gov_SelectedIndexChanged(sender As Object, e As EventArgs) Handles Gov.SelectedIndexChanged
        SqlLocalities.SelectCommand = "Select LocalityId,locality from Localities where GovId=" & Gov.SelectedValue
        Locality.DataBind()

        Locality.Items.Insert(0, New ListItem("اختر القرية/المدينة", ""))
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click







        Dim FleCert_ As String = ""
        Dim FleId_ As String = ""
        Dim FlePIC_ As String = ""
        Dim Fledob_ As String = ""
        Dim FleMed_ As String = ""
        Dim FlePassport_ As String = ""
        Dim DriveLic_ As String = ""




        Try



            If FleCertificate.HasFile = True Then
                FleCert_ = ("RecrutmentAttachments/" & Guid.NewGuid.ToString & System.IO.Path.GetExtension(FleCertificate.FileName))
                Dim path = Server.MapPath(FleCert_)
                FleCertificate.SaveAs(path)
            End If




            If FleiD.HasFile = True Then
                FleId_ = ("RecrutmentAttachments/" & Guid.NewGuid.ToString & System.IO.Path.GetExtension(FleiD.FileName))
                Dim path = Server.MapPath(FleId_)
                FleiD.SaveAs(path)
            End If

            If FlepIC.HasFile = True Then
                FlePIC_ = ("RecrutmentAttachments/" & Guid.NewGuid.ToString & System.IO.Path.GetExtension(FlepIC.FileName))
                Dim path = Server.MapPath(FlePIC_)
                FlepIC.SaveAs(path)
            End If

            If FleDOB.HasFile = True Then
                Fledob_ = ("RecrutmentAttachments/" & Guid.NewGuid.ToString & System.IO.Path.GetExtension(FleDOB.FileName))
                Dim path = Server.MapPath(Fledob_)
                FleDOB.SaveAs(path)
            End If

            If FleMedical.HasFile = True Then
                FleMed_ = ("RecrutmentAttachments/" & Guid.NewGuid.ToString & System.IO.Path.GetExtension(FleMedical.FileName))
                Dim path = Server.MapPath(FleMed_)
                FleMedical.SaveAs(path)
            End If

            If FlePassport.HasFile = True Then
                FlePassport_ = ("RecrutmentAttachments/" & Guid.NewGuid.ToString & System.IO.Path.GetExtension(FlePassport.FileName))
                Dim path = Server.MapPath(FlePassport_)
                FlePassport.SaveAs(path)
            End If


            If DriveLic.HasFile = True Then
                DriveLic_ = ("RecrutmentAttachments/" & Guid.NewGuid.ToString & System.IO.Path.GetExtension(DriveLic.FileName))
                Dim path = Server.MapPath(DriveLic_)
                DriveLic.SaveAs(path)
            End If
        Catch ex As Exception
            msg.Text = "حصل خطأ في المرفقات"
            Exit Sub
        End Try


        Dim Qry As String
        Qry = "INSERT INTO [recruitments] " &
           "(announcenetid,[Fname] " &
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
           ",[Qualification] " &
           ",Speciality " &
           ",[DriveLicType] " &
           ",[Gender] " &
           ",[Religion] " &
           ",[MS] " &
           ",[weight] " &
           ",[Hight],skin,marks,eye,Hair " &
           ",[FatherOccupation] " &
           ",[FatherPlaceOfWork] " &
           ",[Skills],SurgeryInd,SurgeryDetails" &
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
           ",[RelativesInd],RelationshipName " &
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
            ", announcementId" &
           ",FileCert,FileCertE,FileID,FilePic,FileBirth,FileBirthE,FilePassport,FileDrivingLic,FileMedicalReps) " &
           "VALUES('" &
           Replace(Session("announcenetid"), "'", "''") & "','" &
            Replace(Fname.Text, "'", "''") & "','" &
            Replace(SName.Text, "'", "''") & "','" &
            Replace(TName.Text, "'", "''") & "','" &
            Replace(LName.Text, "'", "''") & "','" &
            IDNumber.Text & "','" &
            Replace(PlaceOfBirth.Text, "'", "''") & "','" &
            "" & "','" &
            DOBY.Text & "-" & DOBM.Text & "-" & DOBD.Text & "','" &
            Age.Text & "','" &
            Replace(Nat.Text, "'", "''") & "','" &
            Passport.Text & "','" &
            Replace(Qualification.Text, "'", "''") & "','" &
            Replace(Speciality.SelectedItem.Text, "'", "''") & "','" &
            Replace(DriveLicType.Text, "'", "''") & "','" &
            Gender.Text & "','" &
            "" & "','" &
            MS.SelectedItem.Text & "','" &
            weight.Text & "','" &
            Hight.Text & "','" &
            Replace(Skin.Text, "'", "''") & "','" &
            Replace(Marks.Text, "'", "''") & "','" &
            Replace(Eye.Text, "'", "''") & "','" &
            Replace(Hair.Text, "'", "''") & "','" &
            Replace(FatherOccupation.Text, "'", "''") & "','" &
            Replace(FatherPlaceOfWork.Text, "'", "''") & "','" &
            Replace(Skills.Text, "'", "''") & "','" &
            SurgeryInd.SelectedValue & "','" &
            Replace(SurgeryDetails.Text, "'", "''") & "','" &
            SecurityForces.SelectedValue & "','" &
            Replace(SecurityForcesWWW.Text, "'", "''") & "','" &
            Gov.SelectedItem.Text & "','" &
            Replace(Locality.SelectedItem.Text, "'", "''") & "','" &
            Replace(Street.Text, "'", "''") & "','" &
            Replace(Near.Text, "'", "''") & "','" &
            Replace(ExactAddress.Text, "'", "''") & "','" &
            Email.Text & "','" &
            Mobile1.Text & "','" &
            Mobile2.Text & "','" &
            Tel.Text & "','" &
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
            "" & "','" &
            FleId_ & "','" &
            FlePIC_ & "','" &
            Fledob_ & "','" &
            "" & "','" &
            FlePassport_ & "','" &
            DriveLic_ & "','" &
            FleMed_ & "' )"


        Dim com As New SqlClient.SqlCommand
        com.CommandText = Qry
        Dim con As New SqlConnection(Me.SqlGovs.ConnectionString)

        If con.State = ConnectionState.Closed Then con.Open()
        com.Connection = con

        Try
            com.ExecuteNonQuery()

            lblmESSAGE.Text = "تم ارسال طلبكم الى الجهات المختصة, سيتم التواصل معكم عبر الرسائل النصية قريبا."
            Button1.Enabled = False



            ScriptManager.RegisterStartupScript(Me, Me.GetType(), "Pop2", "openModal();", True)

            msg.Text = "تم ارسال طلبكم الى الجهات المختصة, سيتم التواصل معكم عبر الرسائل النصية قريبا."
        Catch ex As Exception
            msg.Text = "حصل خطأ في الادخال. الرجاء التواصل مع الجهات المختصة"
        End Try



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

    Protected Sub RadioButtonList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles SecurityForces.SelectedIndexChanged
        If SecurityForces.SelectedValue = "نعم" Then SecurityForcesWWW.Enabled = True Else SecurityForcesWWW.Enabled = False

    End Sub

    Protected Sub SecurityForces_SelectedIndexChanged(sender As Object, e As EventArgs) Handles SecurityForces.SelectedIndexChanged

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