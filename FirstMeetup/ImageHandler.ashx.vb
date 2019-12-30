Imports System.Web
Imports System.Web.Services
Imports System.Data
Imports System.Data.SqlClient

Public Class ImageHandler
    Implements System.Web.IHttpHandler

    Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest

        Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=jastip")
        Dim sqlCmd As New SqlCommand()
        sqlCmd.CommandText = "select Gambar from customer where ID = @IdCs"
        sqlCmd.CommandType = Data.CommandType.Text
        sqlCmd.Connection = koneksi

        Dim IdCs As New SqlParameter("@IdCs", Data.SqlDbType.NVarChar)
        IdCs.Value = context.Request.QueryString("ID")
        sqlCmd.Parameters.Add(IdCs)

        koneksi.Open()
        Dim SqlReader As SqlDataReader = sqlCmd.ExecuteReader()
        SqlReader.Read()
        context.Response.BinaryWrite(CType(SqlReader("Gambar"), Byte()))
        SqlReader.Close()

        koneksi.Close()

    End Sub

    ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property

End Class