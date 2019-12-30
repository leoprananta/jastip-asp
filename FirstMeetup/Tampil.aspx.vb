Imports System
Imports System.Data.SqlClient

Public Class Tampil
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=jastip")
        koneksi.Open()
        Dim tampil As String = "select datajastip.Tanggal, customer.Nama as 'Nama Customer', datajastip.Nama as 'Nama Barang', datajastip.Asal as 'Kota Asal', datajastip.Tujuan as 'Kota Tujuan', datajastip.Tarif as 'Tarif Jastip', datajastip.Total, datajastip.Metode from datajastip inner join customer on datajastip.ID=customer.ID"
        Dim adapter As New SqlDataAdapter(tampil, koneksi)
        Dim dataset As New DataSet
        adapter.Fill(dataset)
        Dim table As DataTable = dataset.Tables(0)
        dgvTampil.DataSource = table
        dgvTampil.DataBind()
        koneksi.Close()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles btnTanggal.Click
        Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=jastip")
        koneksi.Open()
        Dim tgl = lblTanggal.Text
        Dim tampil As String = "select datajastip.Tanggal, customer.Nama as 'Nama Customer', datajastip.Nama as 'Nama Barang', datajastip.Asal as 'Kota Asal', datajastip.Tujuan as 'Kota Tujuan', datajastip.Tarif as 'Tarif Jastip', datajastip.Total, datajastip.Metode from datajastip inner join customer on datajastip.ID=customer.ID where DAY(Tanggal) = '" & tgl & "'"
        Dim adapter As New SqlDataAdapter(tampil, koneksi)
        Dim dataset As New DataSet
        adapter.Fill(dataset)
        Dim table As DataTable = dataset.Tables(0)
        dgvTampil.DataSource = table
        dgvTampil.DataBind()
        koneksi.Close()
    End Sub

    Protected Sub btnMinggu_Click(sender As Object, e As EventArgs) Handles btnMinggu.Click
        Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=jastip")

        If ddlMinggu.SelectedIndex = 0 Then
            koneksi.Open()
            Dim tgl = lblTanggal.Text
            Dim tampil As String = "select datajastip.Tanggal, customer.Nama as 'Nama Customer', datajastip.Nama as 'Nama Barang', datajastip.Asal as 'Kota Asal', datajastip.Tujuan as 'Kota Tujuan', datajastip.Tarif as 'Tarif Jastip', datajastip.Total, datajastip.Metode from datajastip inner join customer on datajastip.ID=customer.ID where DAY(Tanggal) between 1 and 7"
            Dim adapter As New SqlDataAdapter(tampil, koneksi)
            Dim dataset As New DataSet
            adapter.Fill(dataset)
            Dim table As DataTable = dataset.Tables(0)
            dgvTampil.DataSource = table
            dgvTampil.DataBind()
            koneksi.Close()

        ElseIf ddlMinggu.SelectedIndex = 1 Then
            koneksi.Open()
            Dim tgl = lblTanggal.Text
            Dim tampil As String = "select datajastip.Tanggal, customer.Nama as 'Nama Customer', datajastip.Nama as 'Nama Barang', datajastip.Asal as 'Kota Asal', datajastip.Tujuan as 'Kota Tujuan', datajastip.Tarif as 'Tarif Jastip', datajastip.Total, datajastip.Metode from datajastip inner join customer on datajastip.ID=customer.ID where DAY(Tanggal) between 8 and 14"
            Dim adapter As New SqlDataAdapter(tampil, koneksi)
            Dim dataset As New DataSet
            adapter.Fill(dataset)
            Dim table As DataTable = dataset.Tables(0)
            dgvTampil.DataSource = table
            dgvTampil.DataBind()
            koneksi.Close()

        ElseIf ddlMinggu.SelectedIndex = 2 Then
            koneksi.Open()
            Dim tgl = lblTanggal.Text
            Dim tampil As String = "select datajastip.Tanggal, customer.Nama as 'Nama Customer', datajastip.Nama as 'Nama Barang', datajastip.Asal as 'Kota Asal', datajastip.Tujuan as 'Kota Tujuan', datajastip.Tarif as 'Tarif Jastip', datajastip.Total, datajastip.Metode from datajastip inner join customer on datajastip.ID=customer.ID where DAY(Tanggal) between 15 and 21"
            Dim adapter As New SqlDataAdapter(tampil, koneksi)
            Dim dataset As New DataSet
            adapter.Fill(dataset)
            Dim table As DataTable = dataset.Tables(0)
            dgvTampil.DataSource = table
            dgvTampil.DataBind()
            koneksi.Close()

        ElseIf ddlMinggu.SelectedIndex = 3 Then
            koneksi.Open()
            Dim tgl = lblTanggal.Text
            Dim tampil As String = "select datajastip.Tanggal, customer.Nama as 'Nama Customer', datajastip.Nama as 'Nama Barang', datajastip.Asal as 'Kota Asal', datajastip.Tujuan as 'Kota Tujuan', datajastip.Tarif as 'Tarif Jastip', datajastip.Total, datajastip.Metode from datajastip inner join customer on datajastip.ID=customer.ID where DAY(Tanggal) between 22 and 31"
            Dim adapter As New SqlDataAdapter(tampil, koneksi)
            Dim dataset As New DataSet
            adapter.Fill(dataset)
            Dim table As DataTable = dataset.Tables(0)
            dgvTampil.DataSource = table
            dgvTampil.DataBind()
            koneksi.Close()
        End If


    End Sub

    Protected Sub btnOperasi_Click(sender As Object, e As EventArgs) Handles btnOperasi.Click
        If ddlPilih.SelectedIndex = 0 Then
            Dim cari As String
            If ddlOperasi.Text = "Max" Then
                cari = "select max(Tarif) as data from datajastip"
            ElseIf ddlOperasi.Text = "Min" Then
                cari = "select min(Tarif) as data from datajastip"
            ElseIf ddlOperasi.Text = "Average" Then
                cari = "select avg(Tarif) as data from datajastip"
            ElseIf ddlOperasi.Text = "Total" Then
                cari = "select sum(Tarif) as data from datajastip"
            ElseIf ddlOperasi.Text = "Jumlah" Then
                cari = "select count(Tarif) as data from datajastip"
            End If

            Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=jastip")
            koneksi.Open()
            Dim command As New SqlCommand(cari, koneksi)
            Dim reader As SqlDataReader = command.ExecuteReader
            If reader.Read() Then
                tbOperasi.Text = reader("data")
            Else
                MsgBox("Data tidak ditemukan")
            End If


        ElseIf ddlPilih.SelectedIndex = 1 Then
            Dim cari As String
            If ddlOperasi.Text = "Max" Then
                cari = "select max(Total) as data from datajastip"
            ElseIf ddlOperasi.Text = "Min" Then
                cari = "select min(Total) as data from datajastip"
            ElseIf ddlOperasi.Text = "Average" Then
                cari = "select avg(Total) as data from datajastip"
            ElseIf ddlOperasi.Text = "Total" Then
                cari = "select sum(Total) as data from datajastip"
            ElseIf ddlOperasi.Text = "Jumlah" Then
                cari = "select count(Total) as data from datajastip"
            End If

            Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=jastip")
            koneksi.Open()
            Dim command As New SqlCommand(cari, koneksi)
            Dim reader As SqlDataReader = command.ExecuteReader
            If reader.Read() Then
                tbOperasi.Text = reader("data")
            Else
                MsgBox("Data tidak ditemukan")
            End If
        End If
    End Sub

    Protected Sub btnBulan_Click(sender As Object, e As EventArgs) Handles btnBulan.Click
        Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=jastip")

        If ddlBulan.SelectedIndex = 0 Then
            koneksi.Open()
            Dim tgl = lblTanggal.Text
            Dim tampil As String = "select datajastip.Tanggal, customer.Nama, datajastip.Nama as 'Nama Barang', datajastip.Asal, datajastip.Tujuan, datajastip.Tarif, datajastip.Total, datajastip.Metode from datajastip inner join customer on datajastip.ID=customer.ID where MONTH(Tanggal) = 1"
            Dim adapter As New SqlDataAdapter(tampil, koneksi)
            Dim dataset As New DataSet
            adapter.Fill(dataset)
            Dim table As DataTable = dataset.Tables(0)
            dgvTampil.DataSource = table
            dgvTampil.DataBind()
            koneksi.Close()

        ElseIf ddlMinggu.SelectedIndex = 1 Then
            koneksi.Open()
            Dim tgl = lblTanggal.Text
            Dim tampil As String = "select datajastip.Tanggal, customer.Nama, datajastip.Nama as 'Nama Barang', datajastip.Asal, datajastip.Tujuan, datajastip.Tarif, datajastip.Total, datajastip.Metode from datajastip inner join customer on datajastip.ID=customer.ID where MONTH(Tanggal) = 2"
            Dim adapter As New SqlDataAdapter(tampil, koneksi)
            Dim dataset As New DataSet
            adapter.Fill(dataset)
            Dim table As DataTable = dataset.Tables(0)
            dgvTampil.DataSource = table
            dgvTampil.DataBind()
            koneksi.Close()

        ElseIf ddlMinggu.SelectedIndex = 2 Then
            koneksi.Open()
            Dim tgl = lblTanggal.Text
            Dim tampil As String = "select datajastip.Tanggal, customer.Nama, datajastip.Nama as 'Nama Barang', datajastip.Asal, datajastip.Tujuan, datajastip.Tarif, datajastip.Total, datajastip.Metode from datajastip inner join customer on datajastip.ID=customer.ID where MONTH(Tanggal) = 3"
            Dim adapter As New SqlDataAdapter(tampil, koneksi)
            Dim dataset As New DataSet
            adapter.Fill(dataset)
            Dim table As DataTable = dataset.Tables(0)
            dgvTampil.DataSource = table
            dgvTampil.DataBind()
            koneksi.Close()

        ElseIf ddlMinggu.SelectedIndex = 3 Then
            koneksi.Open()
            Dim tgl = lblTanggal.Text
            Dim tampil As String = "select datajastip.Tanggal, customer.Nama, datajastip.Nama as 'Nama Barang', datajastip.Asal, datajastip.Tujuan, datajastip.Tarif, datajastip.Total, datajastip.Metode from datajastip inner join customer on datajastip.ID=customer.ID where MONTH(Tanggal) = 4"
            Dim adapter As New SqlDataAdapter(tampil, koneksi)
            Dim dataset As New DataSet
            adapter.Fill(dataset)
            Dim table As DataTable = dataset.Tables(0)
            dgvTampil.DataSource = table
            dgvTampil.DataBind()
            koneksi.Close()

        ElseIf ddlMinggu.SelectedIndex = 4 Then
            koneksi.Open()
            Dim tgl = lblTanggal.Text
            Dim tampil As String = "select datajastip.Tanggal, customer.Nama, datajastip.Nama as 'Nama Barang', datajastip.Asal, datajastip.Tujuan, datajastip.Tarif, datajastip.Total, datajastip.Metode from datajastip inner join customer on datajastip.ID=customer.ID where MONTH(Tanggal) = 5"
            Dim adapter As New SqlDataAdapter(tampil, koneksi)
            Dim dataset As New DataSet
            adapter.Fill(dataset)
            Dim table As DataTable = dataset.Tables(0)
            dgvTampil.DataSource = table
            dgvTampil.DataBind()
            koneksi.Close()

        ElseIf ddlMinggu.SelectedIndex = 5 Then
            koneksi.Open()
            Dim tgl = lblTanggal.Text
            Dim tampil As String = "select datajastip.Tanggal, customer.Nama, datajastip.Nama as 'Nama Barang', datajastip.Asal, datajastip.Tujuan, datajastip.Tarif, datajastip.Total, datajastip.Metode from datajastip inner join customer on datajastip.ID=customer.ID where MONTH(Tanggal) = 6"
            Dim adapter As New SqlDataAdapter(tampil, koneksi)
            Dim dataset As New DataSet
            adapter.Fill(dataset)
            Dim table As DataTable = dataset.Tables(0)
            dgvTampil.DataSource = table
            dgvTampil.DataBind()
            koneksi.Close()

        ElseIf ddlMinggu.SelectedIndex = 6 Then
            koneksi.Open()
            Dim tgl = lblTanggal.Text
            Dim tampil As String = "select datajastip.Tanggal, customer.Nama, datajastip.Nama as 'Nama Barang', datajastip.Asal, datajastip.Tujuan, datajastip.Tarif, datajastip.Total, datajastip.Metode from datajastip inner join customer on datajastip.ID=customer.ID where MONTH(Tanggal) = 7"
            Dim adapter As New SqlDataAdapter(tampil, koneksi)
            Dim dataset As New DataSet
            adapter.Fill(dataset)
            Dim table As DataTable = dataset.Tables(0)
            dgvTampil.DataSource = table
            dgvTampil.DataBind()
            koneksi.Close()

        ElseIf ddlMinggu.SelectedIndex = 7 Then
            koneksi.Open()
            Dim tgl = lblTanggal.Text
            Dim tampil As String = "select datajastip.Tanggal, customer.Nama, datajastip.Nama as 'Nama Barang', datajastip.Asal, datajastip.Tujuan, datajastip.Tarif, datajastip.Total, datajastip.Metode from datajastip inner join customer on datajastip.ID=customer.ID where MONTH(Tanggal) = 8"
            Dim adapter As New SqlDataAdapter(tampil, koneksi)
            Dim dataset As New DataSet
            adapter.Fill(dataset)
            Dim table As DataTable = dataset.Tables(0)
            dgvTampil.DataSource = table
            dgvTampil.DataBind()
            koneksi.Close()

        ElseIf ddlMinggu.SelectedIndex = 8 Then
            koneksi.Open()
            Dim tgl = lblTanggal.Text
            Dim tampil As String = "select datajastip.Tanggal, customer.Nama, datajastip.Nama as 'Nama Barang', datajastip.Asal, datajastip.Tujuan, datajastip.Tarif, datajastip.Total, datajastip.Metode from datajastip inner join customer on datajastip.ID=customer.ID where MONTH(Tanggal) = 9"
            Dim adapter As New SqlDataAdapter(tampil, koneksi)
            Dim dataset As New DataSet
            adapter.Fill(dataset)
            Dim table As DataTable = dataset.Tables(0)
            dgvTampil.DataSource = table
            dgvTampil.DataBind()
            koneksi.Close()

        ElseIf ddlMinggu.SelectedIndex = 9 Then
            koneksi.Open()
            Dim tgl = lblTanggal.Text
            Dim tampil As String = "select datajastip.Tanggal, customer.Nama, datajastip.Nama as 'Nama Barang', datajastip.Asal, datajastip.Tujuan, datajastip.Tarif, datajastip.Total, datajastip.Metode from datajastip inner join customer on datajastip.ID=customer.ID where MONTH(Tanggal) = 10"
            Dim adapter As New SqlDataAdapter(tampil, koneksi)
            Dim dataset As New DataSet
            adapter.Fill(dataset)
            Dim table As DataTable = dataset.Tables(0)
            dgvTampil.DataSource = table
            dgvTampil.DataBind()
            koneksi.Close()

        ElseIf ddlMinggu.SelectedIndex = 10 Then
            koneksi.Open()
            Dim tgl = lblTanggal.Text
            Dim tampil As String = "select datajastip.Tanggal, customer.Nama, datajastip.Nama as 'Nama Barang', datajastip.Asal, datajastip.Tujuan, datajastip.Tarif, datajastip.Total, datajastip.Metode from datajastip inner join customer on datajastip.ID=customer.ID where MONTH(Tanggal) = 11"
            Dim adapter As New SqlDataAdapter(tampil, koneksi)
            Dim dataset As New DataSet
            adapter.Fill(dataset)
            Dim table As DataTable = dataset.Tables(0)
            dgvTampil.DataSource = table
            dgvTampil.DataBind()
            koneksi.Close()

        ElseIf ddlMinggu.SelectedIndex = 11 Then
            koneksi.Open()
            Dim tgl = lblTanggal.Text
            Dim tampil As String = "select datajastip.Tanggal, customer.Nama, datajastip.Nama as 'Nama Barang', datajastip.Asal, datajastip.Tujuan, datajastip.Tarif, datajastip.Total, datajastip.Metode from datajastip inner join customer on datajastip.ID=customer.ID where MONTH(Tanggal) = 12"
            Dim adapter As New SqlDataAdapter(tampil, koneksi)
            Dim dataset As New DataSet
            adapter.Fill(dataset)
            Dim table As DataTable = dataset.Tables(0)
            dgvTampil.DataSource = table
            dgvTampil.DataBind()
            koneksi.Close()
        End If
    End Sub

    Protected Sub btnClear_Click(sender As Object, e As EventArgs) Handles btnClear.Click
        tbOperasi.Text = ""
    End Sub
End Class