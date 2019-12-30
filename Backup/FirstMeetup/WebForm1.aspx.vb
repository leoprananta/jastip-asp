Imports System
Imports System.Data.SqlClient


Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim jurusan As String
        jurusan = Mid(TextBox1.Text, 5, 2)
        If jurusan = "51" Then
            TextBox4.Text = "Teknik Informatika"
            TextBox2.Focus()
        ElseIf jurusan = "52" Then
            TextBox4.Text = "Sistem Informasi"
            TextBox2.Focus()
        ElseIf jurusan = "53" Then
            TextBox4.Text = "Teknik Mesin"
            TextBox2.Focus()
        ElseIf jurusan = "54" Then
            TextBox4.Text = "Teknik Elektro"
            TextBox2.Focus()
        ElseIf jurusan = "55" Then
            TextBox4.Text = "Teknik Industri"
            TextBox2.Focus()
        Else
            TextBox4.Text = "Prodi Lain"
            TextBox1.Text = ""
            TextBox3.Text = ""
            TextBox1.Focus()
        End If

        TextBox3.Text = Left(TextBox1.Text, 4)
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button4.Click
        clear()
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        If TextBox1.Text = "" Then
            TextBox1.Text = "Isi NIM"
            TextBox1.Focus()
        Else
            Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=data")
            koneksi.Open()
            Dim input As String = "insert into mhs (nim, nama, angkatan, prodi, alamat, kota, nohp, jekel, agama) values ('" & TextBox1.Text & "', '" & TextBox2.Text & "', '" & TextBox3.Text & "', '" & TextBox4.Text & "', '" & TextBox5.Text & "', '" & TextBox6.Text & "', '" & TextBox7.Text & "', '" & RadioButtonList1.SelectedValue & "', '" & DropDownList1.Text & "')"
            Dim command As New SqlCommand(input, koneksi)
            Dim reader As SqlDataReader = command.ExecuteReader
            koneksi.Close()
            reader.Close()

            clear()
        End If
    End Sub

    Private Sub clear()
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
        TextBox6.Text = ""
        TextBox7.Text = ""
        RadioButtonList1.SelectedIndex = -1
        DropDownList1.SelectedIndex = -1
        TextBox1.Focus()
    End Sub
End Class