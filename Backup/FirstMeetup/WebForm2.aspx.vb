Imports System
Imports System.Data.SqlClient
Public Class WebForm2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSimpan.Click
        Dim koneksi As New SqlConnection("integrated security=sspi; data source=localhost; initial catalog=data")
        koneksi.Open()
        Dim insert As String = "insert into pinjam (no, merk, pinjam, hari, jenis, warna, kembali) values ('" & tbNO.Text & "', '" & tbMerk.Text & "', '" & tbPinjam.Text & "', '" & tbHari.Text & "', '" & rbListJenis.SelectedValue & "', '" & ddlWarna.Text & "', '" & cldKembali.SelectedDate & "')"
        Dim cmd As New SqlCommand(insert, koneksi)
        Dim reader As SqlDataReader = cmd.ExecuteReader

        clear()
    End Sub

    Private Sub clear()
        tbNO.Text = ""
        tbMerk.Text = ""
        tbPinjam.Text = ""
        tbHari.Text = ""
        rbListJenis.SelectedIndex = -1
        ddlWarna.SelectedIndex = -1
        cldKembali.SelectedDate = Date.Now
    End Sub
End Class