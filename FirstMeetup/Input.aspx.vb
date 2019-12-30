Imports System
Imports System.Data.SqlClient

Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim day As String = Now.Day
        Dim month As String = Now.Month
        Dim year As String = Now.Year
        lblTanggal.Text = day + "-" + month + "-" + year
        lblTanggal0.Text = month + "/" + day + "/" + year
    End Sub

    Protected Sub btnSimpanData_Click(sender As Object, e As EventArgs) Handles btnSimpanData.Click
        Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=jastip")
        koneksi.Open()
        Dim input As String = "insert into datajastip (Tanggal, ID, Nama, Harga, Asal, Tujuan, Tarif, Total, Metode) values ('" & lblTanggal0.Text & "', '" & tbIdCs.Text & "', '" & tbNamaBrg.Text & "', '" & tbHargaBrg.Text & "', '" & ddlAsal.Text & "', '" & tbTujuan.Text & "', '" & tbTarif.Text & "', '" & tbTotal.Text & "', '" & rbMetode.Text & "')"
        Dim command As New SqlCommand(input, koneksi)
        Dim reader As SqlDataReader = command.ExecuteReader
        koneksi.Close()
        reader.Close()

        MsgBox("Data Berhasil Disimpan", MsgBoxStyle.Information)

        Clear()
    End Sub

    Private Sub Clear()
        tbIdCs.Text = ""
        tbNamaBrg.Text = ""
        tbHargaBrg.Text = ""
        'gbr
        ddlAsal.SelectedIndex = -1
        tbTujuan.Text = ""
        tbTarif.Text = ""
        tbTotal.Text = ""
        rbMetode.SelectedIndex = -1
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles btnCek.Click
        Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=jastip")
        koneksi.Open()
        Dim id = tbIdCs.Text
        Dim cari As String = "select * from customer where ID = '" & id & "'"
        Dim command As New SqlCommand(cari, koneksi)
        Dim reader As SqlDataReader = command.ExecuteReader
        If reader.Read() Then
            tbTujuan.Text = reader("Domisili")
        Else
            MsgBox("Data tidak ditemukan")
        End If
    End Sub

    Protected Sub btnHitung_Click(sender As Object, e As EventArgs) Handles btnHitung.Click
        If tbTarif.Text = "" Then
            MsgBox("Harap Isi Tarif Jastip", MsgBoxStyle.Information)
        Else
            Dim harga As Integer = tbHargaBrg.Text
            Dim jastip As Integer = tbTarif.Text
            Dim total As Integer = harga + jastip
            tbTotal.Text = total
        End If
    End Sub
End Class