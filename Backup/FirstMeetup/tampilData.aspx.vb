Imports System.Data
Imports System.Data.SqlClient

Public Class tampilData
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=data")
        koneksi.Open()
        Dim input As String = "select * from pinjam"
        Dim adapter As New SqlDataAdapter(input, koneksi)
        Dim dataset As New DataSet
        adapter.Fill(dataset)
        Dim table As DataTable = dataset.Tables(0)
        GridViewTampil.DataSource = table
        GridViewTampil.DataBind()
        koneksi.Close()
    End Sub
End Class