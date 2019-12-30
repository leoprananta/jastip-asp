Impo



















































rts System.Data
Imports System.Data.SqlClient
Imports System.IO

Public Class WebForm3
















































    Inherits System.Web.UI.Page

    Private Sub Tampil()
        Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=jastip")
        koneksi.Open()
        Dim tampil As String = "select * from customer"
        Dim adapter As New SqlDataAdapter(tampil, koneksi)
        Dim dataset As New DataSet
        adapter.Fill(dataset)
        Dim table As DataTable = dataset.Tables(0)
        dgvCs.DataSource = table
        dgvCs.DataBind()
        koneksi.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Tampil()
    End Sub

    Private Sub Clear()
        tbIdCs.Text = ""
        tbNamaCs.Text = ""
        rbJekelCs.SelectedIndex = -1
        tbAlamatCs.Text = ""
        tbDomisiliCs.Text = ""
        tbNoCs.Text = ""
        Image1.ImageUrl = ""
        Image1.Visible = False
    End Sub

    Protected Sub btnSimpanCs_Click(sender As Object, e As EventArgs) Handles btnSimpanCs.Click
        Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=jastip")
        koneksi.Open()
        Dim id = tbIdCs.Text
        Dim cari As String = "select * from customer where ID= '" & id & "' "
        Dim command As New SqlCommand(cari, koneksi)
        Dim reader As SqlDataReader = command.ExecuteReader
        If reader.Read() Then
            MsgBox("Data sudah ada")
            reader.Close()

        Else
            koneksi.Close()

            If (Not FileUpload1.PostedFile Is Nothing) AndAlso (FileUpload1.PostedFile.FileName <> "") Then
                Dim buffer(FileUpload1.PostedFile.ContentLength) As Byte
                Dim postFile As HttpPostedFile = FileUpload1.PostedFile
                postFile.InputStream.Read(buffer, 0, CInt(FileUpload1.PostedFile.ContentLength))

                Dim sqlCommand As New SqlCommand()
                sqlCommand.CommandText = "insert into customer(ID, Nama, Jekel, Alamat, Domisili, Telfon, NamaGambar, Gambar, Ukuran, Tipe)" & _
                                  " VALUES (@IdCs, @Nama, @Jekel, @Alamat, @Domisili, @Telfon, @NamaGambar, @Gambar, @Ukuran, @Tipe)"
                sqlCommand.CommandType = CommandType.Text
                sqlCommand.Connection = koneksi

                Dim IdCs As New SqlParameter("@IdCs", SqlDbType.NVarChar, 50)
                IdCs.Value = tbIdCs.Text
                sqlCommand.Parameters.Add(IdCs)

                Dim Nama As New SqlParameter("@Nama", SqlDbType.NVarChar, 100)
                Nama.Value = tbNamaCs.Text
                sqlCommand.Parameters.Add(Nama)

                Dim Jekel As New SqlParameter("@Jekel", SqlDbType.NVarChar, 20)
                Jekel.Value = rbJekelCs.Text
                sqlCommand.Parameters.Add(Jekel)

                Dim Alamat As New SqlParameter("@Alamat", SqlDbType.NVarChar, 100)
                Alamat.Value = tbAlamatCs.Text
                sqlCommand.Parameters.Add(Alamat)

                Dim Domisili As New SqlParameter("@Domisili", SqlDbType.NVarChar, 50)
                Domisili.Value = tbDomisiliCs.Text
                sqlCommand.Parameters.Add(Domisili)

                Dim Telfon As New SqlParameter("@Telfon", SqlDbType.NVarChar, 50)
                Telfon.Value = tbNoCs.Text
                sqlCommand.Parameters.Add(Telfon)

                Dim NamaGambar As New SqlParameter("@NamaGambar", SqlDbType.NVarChar, 200)
                NamaGambar.Value = FileUpload1.PostedFile.FileName
                sqlCommand.Parameters.Add(NamaGambar)

                Dim Gambar As New SqlParameter("@Gambar", SqlDbType.Image, buffer.Length)
                Gambar.Value = buffer
                sqlCommand.Parameters.Add(Gambar)

                Dim Ukuran As New SqlParameter("@Ukuran", SqlDbType.BigInt, 99999)
                Ukuran.Value = FileUpload1.PostedFile.ContentLength
                sqlCommand.Parameters.Add(Ukuran)

                Dim Tipe As New SqlParameter("@Tipe", SqlDbType.NVarChar, 200)
                Tipe.Value = FileUpload1.PostedFile.ContentType
                sqlCommand.Parameters.Add(Tipe)

                koneksi.Open()
                sqlCommand.ExecuteNonQuery()
                koneksi.Close()
            End If

            Clear()

            Tampil()

        End If
    End Sub

    Protected Sub btnEditCs_Click(sender As Object, e As EventArgs) Handles btnEditCs.Click
        Dim pesan As String
        pesan = MsgBox("Edit Data?", MsgBoxStyle.YesNo + MsgBoxStyle.Question, "Warning")
        If pesan = vbYes Then
            Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=jastip")

            If (Not FileUpload1.PostedFile Is Nothing) AndAlso (FileUpload1.PostedFile.FileName <> "") Then
                Dim buffer(FileUpload1.PostedFile.ContentLength) As Byte
                Dim postFile As HttpPostedFile = FileUpload1.PostedFile
                postFile.InputStream.Read(buffer, 0, CInt(FileUpload1.PostedFile.ContentLength))

                Dim sqlCommand As New SqlCommand()
                sqlCommand.CommandText = "update customer set ID = @IdCs, Nama = @Nama, Jekel = @Jekel, Alamat = @Alamat, Domisili = @Domisili, Telfon = @Telfon, NamaGambar = @NamaGambar, Gambar = @Gambar, Ukuran = @Ukuran, Tipe = @Tipe" & _
                                  " where ID = @IdCs"
                sqlCommand.CommandType = CommandType.Text
                sqlCommand.Connection = koneksi

                Dim IdCs As New SqlParameter("@IdCs", SqlDbType.NVarChar, 50)
                IdCs.Value = tbIdCs.Text
                sqlCommand.Parameters.Add(IdCs)

                Dim Nama As New SqlParameter("@Nama", SqlDbType.NVarChar, 100)
                Nama.Value = tbNamaCs.Text
                sqlCommand.Parameters.Add(Nama)

                Dim Jekel As New SqlParameter("@Jekel", SqlDbType.NVarChar, 20)
                Jekel.Value = rbJekelCs.Text
                sqlCommand.Parameters.Add(Jekel)

                Dim Alamat As New SqlParameter("@Alamat", SqlDbType.NVarChar, 100)
                Alamat.Value = tbAlamatCs.Text
                sqlCommand.Parameters.Add(Alamat)

                Dim Domisili As New SqlParameter("@Domisili", SqlDbType.NVarChar, 50)
                Domisili.Value = tbDomisiliCs.Text
                sqlCommand.Parameters.Add(Domisili)

                Dim Telfon As New SqlParameter("@Telfon", SqlDbType.NVarChar, 50)
                Telfon.Value = tbNoCs.Text
                sqlCommand.Parameters.Add(Telfon)

                Dim NamaGambar As New SqlParameter("@NamaGambar", SqlDbType.NVarChar, 200)
                NamaGambar.Value = FileUpload1.PostedFile.FileName
                sqlCommand.Parameters.Add(NamaGambar)

                Dim Gambar As New SqlParameter("@Gambar", SqlDbType.Image, buffer.Length)
                Gambar.Value = buffer
                sqlCommand.Parameters.Add(Gambar)

                Dim Ukuran As New SqlParameter("@Ukuran", SqlDbType.BigInt, 99999)
                Ukuran.Value = FileUpload1.PostedFile.ContentLength
                sqlCommand.Parameters.Add(Ukuran)

                Dim Tipe As New SqlParameter("@Tipe", SqlDbType.NVarChar, 200)
                Tipe.Value = FileUpload1.PostedFile.ContentType
                sqlCommand.Parameters.Add(Tipe)

                koneksi.Open()
                sqlCommand.ExecuteNonQuery()
                koneksi.Close()
            End If

            Clear()

            Tampil()
        End If
    End Sub

    Protected Sub btnHapusCs_Click(sender As Object, e As EventArgs) Handles btnHapusCs.Click
        Dim pesan As String
        pesan = MsgBox("Hapus Data?", MsgBoxStyle.YesNo + MsgBoxStyle.Question, "Warning")
        If pesan = vbYes Then
            Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=jastip")
            koneksi.Open()
            Dim input As String = "delete from customer where ID = '" & tbIdCs.Text & "'"
            Dim commandd As New SqlCommand(input, koneksi)
            Dim readerr As SqlDataReader = commandd.ExecuteReader
            koneksi.Close()
            readerr.Close()

            Clear()

            Tampil()
        End If
    End Sub

    Protected Sub btnCari_Click(sender As Object, e As EventArgs) Handles btnCari.Click
        Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=jastip")
        koneksi.Open()
        Dim idCs = tbIdCs.Text
        Dim cari As String = "select * from customer where ID= '" & idCs & "' "
        Dim command As New SqlCommand(cari, koneksi)
        Dim reader As SqlDataReader = command.ExecuteReader
        If reader.Read() Then
            tbNamaCs.Text = reader("Nama")
            If (reader("Jekel") = "Laki-laki") Then
                rbJekelCs.SelectedIndex = 0
            Else
                rbJekelCs.SelectedIndex = 1
            End If
            tbAlamatCs.Text = reader("Alamat")
            tbDomisiliCs.Text = reader("Domisili")
            tbNoCs.Text = reader("Telfon")

            Image1.Visible = True
            Dim id As String = tbIdCs.Text
            Image1.ImageUrl = "imagehandler.ashx?ID=" & id
        Else
            MsgBox("Data tidak ditemukan")
        End If

        reader.Close()
    End Sub

    Protected Sub btnClear_Click(sender As Object, e As EventArgs) Handles btnClear.Click
        Clear()
    End Sub
End Class