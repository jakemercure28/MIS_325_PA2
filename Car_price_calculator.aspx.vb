
Partial Class Car_price_Configuator_webf
    Inherits System.Web.UI.Page
    Public Shared total_330i As Integer, total_330xi As Integer, total_330e As Integer,
        total_330xe As Integer, total_340i As Integer, total_340xi As Integer

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        'local variables used in the button1 procedure
        Dim package As ListItem
        Dim str_list_options As String = Nothing
        Dim vehicle_price_subtotal As Integer = 0, tax_rate As Decimal,
            vehicle_price_total As Decimal, sales_commission_rate As Decimal = 0.01,
            sales_commission As Decimal, vehicle_discount As Decimal = 0,
            dec_price As Decimal = 0, is_error As Integer = 0

        'get user selections for the vehicle and check if selcted value is not empty
        If (DropDownList1.SelectedIndex <> 0) Then
            vehicle_price_subtotal += DropDownList1.SelectedValue
            str_list_options &= "Vehicle: " & DropDownList1.SelectedItem.Text & vbNewLine
        End If
        If (DropDownList1.SelectedIndex = 0) Then
            is_error = 1
        End If

        If RadioButtonList1.SelectedIndex <> -1 Then
            vehicle_price_subtotal += RadioButtonList1.SelectedValue
            str_list_options &= "Trim Option: " & RadioButtonList1.SelectedItem.Text & vbNewLine
        End If

        If RadioButtonList2.SelectedIndex <> -1 Then
            vehicle_price_subtotal += RadioButtonList2.SelectedValue
            str_list_options &= "Paint Option: " & RadioButtonList2.SelectedItem.Text & vbNewLine
        End If

        If RadioButtonList3.SelectedIndex <> -1 Then
            vehicle_price_subtotal += RadioButtonList3.SelectedValue
            str_list_options &= "Wheel Option: " & RadioButtonList3.SelectedItem.Text & vbNewLine
        End If

        If RadioButtonList4.SelectedIndex <> -1 Then
            vehicle_price_subtotal += RadioButtonList4.SelectedValue
            str_list_options &= "Interior Color: " & RadioButtonList4.SelectedItem.Text & vbNewLine
        End If

        If RadioButtonList5.SelectedIndex <> -1 Then
            vehicle_price_subtotal += RadioButtonList5.SelectedValue
            str_list_options &= "Packages: " & RadioButtonList5.SelectedItem.Text & vbNewLine
        End If

        'mark error true if error detected
        If DropDownList1.SelectedIndex = -1 Or RadioButtonList1.SelectedIndex = -1 Or RadioButtonList2.SelectedIndex = -1 Or
            RadioButtonList3.SelectedIndex = -1 Or RadioButtonList4.SelectedIndex = -1 Or RadioButtonList5.SelectedIndex = -1 Then

            TextBox3.Text = "Please check selected values for error."
            is_error = 1
        End If



        'Adds price of aditional options, packages and driver features
        For Each package In CheckBoxList2.Items

            If package.Selected = True Then
                vehicle_price_subtotal += package.Value
                str_list_options &= package.Text & " " & vbNewLine
            End If
        Next

        'discount vehicle if on sale
        If DropDownList1.SelectedIndex = 3 Or DropDownList1.SelectedIndex = 4 Then
            vehicle_price_subtotal = vehicle_price_subtotal - (0.1 * vehicle_price_subtotal)
        End If

        'add taxes
        If DropDownList2.SelectedIndex <> 0 Then
            tax_rate = DropDownList2.SelectedValue
            vehicle_price_total = (tax_rate * vehicle_price_subtotal) + vehicle_price_subtotal
        End If
        If DropDownList2.SelectedIndex = 0 Then
            is_error = 1
        End If

        'determine vip status
        If (CheckBox1.Checked = True) Then
            sales_commission_rate = 0.015
        End If

        'calculate sales commission
        sales_commission = (vehicle_price_subtotal * sales_commission_rate)

        'increment running totals
        Select Case DropDownList1.SelectedIndex
            Case 1
                total_330i += 1
            Case 2
                total_330xi += 1
            Case 3
                total_330e += 1
            Case 4
                total_330xe += 1
            Case 5
                total_340i += 1
            Case 6
                total_340xi += 1

        End Select

        'if there is no error, then print out information
        If is_error <> 1 Then
            'print to upper textbox
            TextBox3.Text = str_list_options & "Pre-tax subtotal: " & vehicle_price_subtotal & vbNewLine &
            "Total: " & vehicle_price_total & vbNewLine &
            vbNewLine & "Sales commission: " & sales_commission

            'print to lower textbox
            TextBox2.Text = "Total model 330i sold: " & total_330i & vbNewLine &
            "Total model 330i xDrive sold: " & total_330xi & vbNewLine &
            "Total model 330e sold: " & total_330e & vbNewLine &
            "Total model 330e xDrive sold: " & total_330xe & vbNewLine &
            "Total model 340i sold: " & total_340i & vbNewLine &
            "Total model 340i xDrive sold: " & total_340xi

        End If

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Image1.ImageUrl = "~\Images\bmwlogo.png"
    End Sub

End Class
