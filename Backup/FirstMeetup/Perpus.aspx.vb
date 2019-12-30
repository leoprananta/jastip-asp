Imports System.Data
Imports System.Data.SqlClient

Public Class Perpus
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub clear()
        nim.Text = ""
        nama.Text = ""
        prodi.Text = ""
        angkatan.Text = ""
        tgl.Text = ""
        judul.Text = ""
        pengarang.Text = ""
        penerbit.Text = ""

        nim.Focus()
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=pause")
        koneksi.Open()
        Dim nimm = nim.Text
        Dim cari As String = "select * from mhs2 where nim= '" & nimm & "' "
        Dim command As New SqlCommand(cari, koneksi)
        Dim reader As SqlDataReader = command.ExecuteReader
        If reader.Read() Then
            MsgBox("Data sudah ada")
            reader.Close()

        Else
            koneksi.Close()
            koneksi.Open()
            Dim input As String = "insert into mhs2 (nim, nama, progdi, angkatan, tgl, judul, pengarang, penerbit, bayar) values ('" & nim.Text & "', '" & nama.Text & "', '" & prodi.Text & "', '" & angkatan.Text & "', '" & tgl.Text & "', '" & judul.Text & "', '" & pengarang.Text & "', '" & penerbit.Text & "', '" & bayar.Text & "')"
            Dim commandd As New SqlCommand(input, koneksi)
            Dim readerr As SqlDataReader = commandd.ExecuteReader
            koneksi.Close()
            readerr.Close()

            clear()

            koneksi.Open()
            Dim prodii = sprodi.Text
            Dim tampil As String = "select * from mhs2"
            Dim adapter As New SqlDataAdapter(tampil, koneksi)
            Dim dataset As New DataSet
            adapter.Fill(dataset)
            Dim table As DataTable = dataset.Tables(0)
            GridView1.DataSource = table
            GridView1.DataBind()
            koneksi.Close()

        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim jurusan As String
        jurusan = Mid(nim.Text, 5, 2)
        If jurusan = "51" Then
            prodi.Text = "Teknik Informatika"
            nama.Focus()
        ElseIf jurusan = "52" Then
            prodi.Text = "Sistem Informasi"
            nama.Focus()
        ElseIf jurusan = "53" Then
            prodi.Text = "Teknik Mesin"
            nama.Focus()
        ElseIf jurusan = "54" Then
            prodi.Text = "Teknik Elektro"
            nama.Focus()
        ElseIf jurusan = "55" Then
            prodi.Text = "Teknik Industri"
            nama.Focus()
        Else
            prodi.Text = "Prodi Lain"
            nim.Text = ""
            angkatan.Text = ""
            nim.Focus()
        End If

        angkatan.Text = Left(nim.Text, 4)
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button3.Click
        Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=pause")
        koneksi.Open()
        Dim judull = sjudul.Text
        Dim input As String = "select * from mhs2 where judul like '%" + judull + "%'"
        Dim adapter As New SqlDataAdapter(input, koneksi)
        Dim dataset As New DataSet
        adapter.Fill(dataset)
        Dim table As DataTable = dataset.Tables(0)
        GridView1.DataSource = table
        GridView1.DataBind()
        koneksi.Close()
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button4.Click
        Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=pause")
        koneksi.Open()
        Dim namaa = snama.Text
        Dim input As String = "select * from mhs2 where nama like '%" + namaa + "%'"
        Dim adapter As New SqlDataAdapter(input, koneksi)
        Dim dataset As New DataSet
        adapter.Fill(dataset)
        Dim table As DataTable = dataset.Tables(0)
        GridView1.DataSource = table
        GridView1.DataBind()
        koneksi.Close()
    End Sub

    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button5.Click
        Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=pause")
        koneksi.Open()
        Dim prodii = sprodi.Text
        Dim input As String = "select * from mhs2 where progdi like '%" + prodii + "%'"
        Dim adapter As New SqlDataAdapter(input, koneksi)
        Dim dataset As New DataSet
        adapter.Fill(dataset)
        Dim table As DataTable = dataset.Tables(0)
        GridView1.DataSource = table
        GridView1.DataBind()
        koneksi.Close()
    End Sub

    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button6.Click
        Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=pause")
        koneksi.Open()
        Dim angkatann = sangkatan.Text
        Dim input As String = "select * from mhs2 where angkatan like '%" + angkatann + "%'"
        Dim adapter As New SqlDataAdapter(input, koneksi)
        Dim dataset As New DataSet
        adapter.Fill(dataset)
        Dim table As DataTable = dataset.Tables(0)
        GridView1.DataSource = table
        GridView1.DataBind()
        koneksi.Close()
    End Sub

    Protected Sub Button7_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button7.Click
        Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=pause")
        koneksi.Open()
        Dim nimm = sNIM.Text
        Dim cari As String = "select * from mhs2 where nim= '" & nimm & "' "
        Dim command As New SqlCommand(cari, koneksi)
        Dim reader As SqlDataReader = Command.ExecuteReader
        If reader.Read() Then
            nim.Text = reader("nim")
            nama.Text = reader("nama")
            prodi.Text = reader("progdi")
            angkatan.Text = reader("angkatan")
            tgl.Text = reader("tgl")
            judul.Text = reader("judul")
            pengarang.Text = reader("pengarang")
            penerbit.Text = reader("penerbit")
            bayar.Text = reader("bayar")
        Else
            MsgBox("Data tidak ditemukan")
        End If

        reader.Close()

        Dim adapter As New SqlDataAdapter(cari, koneksi)
        Dim dataset As New DataSet
        adapter.Fill(dataset)
        Dim table As DataTable = dataset.Tables(0)
        GridView1.DataSource = table
        GridView1.DataBind()
        koneksi.Close()
    End Sub

    Protected Sub Button8_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button8.Click
        Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=pause")
        koneksi.Open()
        Dim cari As String = "select count(nim) as hit, max(bayar) as mx, min(bayar) as mn, avg(bayar) as aver, sum(bayar) as sm, count(bayar) as cnt from mhs2"
        Dim command As New SqlCommand(cari, koneksi)
        Dim reader As SqlDataReader = command.ExecuteReader
        If reader.Read() Then
            data.Text = reader("hit")
            max.Text = reader("mx")
            min.Text = reader("mn")
            rata.Text = reader("aver")
            total.Text = reader("sm")
            jumlah.Text = reader("cnt")
        Else
            MsgBox("Data tidak ditemukan")
        End If


    End Sub

    Protected Sub Button9_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button9.Click
        Dim cari As String
        If list.Text = "Max" Then
            cari = "select max(bayar) as data from mhs2"
        ElseIf list.Text = "Min" Then
            cari = "select min(bayar) as data from mhs2"
        ElseIf list.Text = "Rata-rata" Then
            cari = "select avg(bayar) as data from mhs2"
        ElseIf list.Text = "Total" Then
            cari = "select sum(bayar) as data from mhs2"
        ElseIf list.Text = "Jumlah" Then
            cari = "select count(bayar) as data from mhs2"
        End If

        Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=pause")
        koneksi.Open()
        Dim command As New SqlCommand(cari, koneksi)
        Dim reader As SqlDataReader = command.ExecuteReader
        If reader.Read() Then
            baru.Text = reader("data")
        Else
            MsgBox("Data tidak ditemukan")
        End If
    End Sub

    Protected Sub Button10_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button10.Click
        If nim.Enabled = True Then
            Dim pesan As String
            pesan = MsgBox("Hapus ?", MsgBoxStyle.YesNo + MsgBoxStyle.Question, "Warning")
            If pesan = vbYes Then
                Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=pause")
                koneksi.Open()
                Dim input As String = "delete from mhs2 where nim= '" & nim.Text & "' "
                Dim commandd As New SqlCommand(input, koneksi)
                Dim readerr As SqlDataReader = commandd.ExecuteReader

                clear()
                MsgBox("Data berhasil dihapus")
            End If
        End If
        

    End Sub

    Protected Sub Button11_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button11.Click
        If nim.Enabled = True Then
            Dim pesan As String
            pesan = MsgBox("Edit ?", MsgBoxStyle.YesNo + MsgBoxStyle.Question, "Warning")
            If pesan = vbYes Then
                Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=pause")
                koneksi.Open()
                Dim input As String = "update mhs2 set nim = '" & nim.Text & "', nama = '" & nama.Text & "', progdi = '" & prodi.Text & "', angkatan = '" & angkatan.Text & "', tgl ='" & tgl.Text & "', judul = '" & judul.Text & "', pengarang = '" & pengarang.Text & "', penerbit = '" & penerbit.Text & "', bayar = '" & bayar.Text & "' where nim= '" & nim.Text & "'"
                Dim commandd As New SqlCommand(input, koneksi)
                Dim readerr As SqlDataReader = commandd.ExecuteReader

                clear()
                MsgBox("Data berhasil diedit")
            End If
        End If
    End Sub
End Class