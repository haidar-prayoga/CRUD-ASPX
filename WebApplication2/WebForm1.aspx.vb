Imports MySql.Data.MySqlClient

Public Class WebForm1
    Inherits System.Web.UI.Page

    Dim koneksi As New MySqlConnection("data source=localhost; user=root; pwd=''; initial catalog=db_printing")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)

    End Sub

    Protected Sub Button1_Click1(sender As Object, e As EventArgs) Handles Button1.Click
        koneksi.Open()
        Dim cari As String = "SELECT * FROM tb_printing WHERE no_hp='" & TextBox1.Text & "'"
        Dim command As New MySqlCommand(cari, koneksi)
        Dim reader As MySqlDataReader = command.ExecuteReader

        If reader.Read Then
            TextBox2.Text = reader("no_hp").ToString
            TextBox3.Text = reader("nama_lengkap")
            DropDownList1.SelectedValue = reader("jenis_produk")
            RadioButtonList1.SelectedValue = reader("metode_pengiriman")
            TextBox4.Text = reader("jumlah_pesanan").ToString
            reader.Close()
            koneksi.Close()
        End If
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        If TextBox2.Text = "" Then
            MsgBox("Nomor Hp Harus Diisi", MsgBoxStyle.Information)
            TextBox2.Focus()
        Else
            If TextBox3.Text = "" Then
                MsgBox("Nama Harus Diisi", MsgBoxStyle.Information)
                TextBox3.Focus()
            ElseIf DropDownList1.Text = "" Then
                MsgBox("Jenis Produk Harus Dipilih", MsgBoxStyle.Information)
            ElseIf RadioButtonList1.Text = "" Then
                MsgBox("Metode Pengiriman Harus Dipilih", MsgBoxStyle.Information)
                If TextBox4.Text = "" Then
                    MsgBox("Jumlah Harus Diisi", MsgBoxStyle.Information)
                    TextBox4.Focus()
                End If
            Else
                koneksi.Open()
                Dim cari As String = "SELECT * FROM tb_printing WHERE no_hp='" & TextBox2.Text & "'"
                Dim command1 As New MySqlCommand(cari, koneksi)
                Dim reader1 As MySqlDataReader = command1.ExecuteReader
                If reader1.Read Then
                    MsgBox("Data No Hp Sudah ada", MsgBoxStyle.Information)
                    TextBox2.Focus()
                Else
                    Dim koneksi1 As New MySqlConnection("data source=localhost; user=root; pwd=''; initial catalog=db_printing")
                    koneksi1.Open()
                    Dim input As String = "INSERT INTO tb_printing(no_hp, nama_lengkap, jenis_produk, metode_pengiriman, jumlah_pesanan)" &
                        "VALUES('" & TextBox2.Text & "', '" & TextBox3.Text & "', '" & DropDownList1.Text & "', '" & RadioButtonList1.Text & "',
                        '" & TextBox4.Text & "')"
                    Dim command As New MySqlCommand(input, koneksi1)
                    Dim reader As MySqlDataReader = command.ExecuteReader

                    TextBox2.Text = ""
                    TextBox3.Text = ""
                    DropDownList1.SelectedValue = Nothing
                    RadioButtonList1.SelectedValue = Nothing
                    TextBox4.Text = ""

                    MsgBox("Data Berhasil Disimpan", MsgBoxStyle.Information)
                End If
            End If
        End If
    End Sub
End Class