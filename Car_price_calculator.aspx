<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Car_price_calculator.aspx.vb" Inherits="Car_price_Configuator_webf" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 752px;
        }
        .auto-style2 {
            width: 294px;
        }
        .auto-style3 {
            width: 485px;
        }
        .auto-style4 {
            height: 71px;
            text-align: center;
            font-size: xx-large;
        }
        .auto-style5 {
            width: 294px;
            height: 41px;
        }
        .auto-style6 {
            height: 41px;
        }
        .auto-style7 {
            width: 294px;
            height: 60px;
        }
        .auto-style8 {
            height: 60px;
        }
        .auto-style10 {
            text-align: center;
            font-size: xx-large;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style10">
        BMW Sales Price Configurator<asp:Image ID="Image1" runat="server" Height="115px" Width="113px" />
            <br />
            </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Choose Car Model (select)</td>
                <td colspan="2">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem Value="41250">330i Sedan</asp:ListItem>
                        <asp:ListItem Value="43250">330i xDrive Sedan</asp:ListItem>
                        <asp:ListItem Value="44550">330e Sedan</asp:ListItem>
                        <asp:ListItem Value="46550">330e xDrive Sedan</asp:ListItem>
                        <asp:ListItem Value="54700">M340i Sedan</asp:ListItem>
                        <asp:ListItem Value="56700">M340i xDrive Sedan</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Design (select)</td>
                <td colspan="2">Trim Options<br />
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
                        <asp:ListItem Value="0">Sport Line</asp:ListItem>
                        <asp:ListItem Value="3800">M Sport</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Exterior (select)</td>
                <td class="auto-style3">Paint Options<br />
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="True">
                        <asp:ListItem Value="0">Alpine White</asp:ListItem>
                        <asp:ListItem Value="0">Jet Black</asp:ListItem>
                        <asp:ListItem Value="550">Melbourne Red Metallic</asp:ListItem>
                        <asp:ListItem Value="550">Phytonic Blue Metallic</asp:ListItem>
                        <asp:ListItem Value="550">Mineral Gray Metallic</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>Wheel Options<br />
                    <asp:RadioButtonList ID="RadioButtonList3" runat="server" AutoPostBack="True">
                        <asp:ListItem Value="0">18&quot; V-spoke orbit gray wheels</asp:ListItem>
                        <asp:ListItem Value="1000">19&quot; M Double-spoke wheels</asp:ListItem>
                        <asp:ListItem Value="1500">19&quot; M Double-spoke run-flat wheels</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Interior (select)</td>
                <td colspan="2">Color<br />
                    <asp:RadioButtonList ID="RadioButtonList4" runat="server" AutoPostBack="True">
                        <asp:ListItem Value="0">Black</asp:ListItem>
                        <asp:ListItem Value="0">Canberra Beige</asp:ListItem>
                        <asp:ListItem Value="1450">Black w/ blue contrast stitching </asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Options (select)</td>
                <td>Standard Packages<br />
                    <asp:RadioButtonList ID="RadioButtonList5" runat="server" AutoPostBack="True">
                        <asp:ListItem Value="0">No Package</asp:ListItem>
                        <asp:ListItem Value="900">Convience Package</asp:ListItem>
                        <asp:ListItem Value="3200">Premium Package</asp:ListItem>
                        <asp:ListItem Value="4400">Executive Package</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>Aditional Packages<br />
                    <asp:CheckBoxList ID="CheckBoxList2" runat="server" AutoPostBack="True">
                        <asp:ListItem Value="700">Driving Assistance Package</asp:ListItem>
                        <asp:ListItem Value="2450">Dynamic Handling Package</asp:ListItem>
                        <asp:ListItem Value="300">Shadowline Package</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="3">Sales Data</td>
            </tr>
            <tr>
                <td class="auto-style5">Tax Rate (Select)</td>
                <td colspan="2" class="auto-style6">
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Height="16px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem Value=".06">Vermont (6%)</asp:ListItem>
                        <asp:ListItem Value=".04">New York (4%)</asp:ListItem>
                        <asp:ListItem Value=".0625">Massachusetts (6.25%)</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Select If VIP Salesman</td>
                <td colspan="2" class="auto-style6">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="VIP Salesmen Select Here" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Calculate Sales Information</td>
                <td colspan="2" class="auto-style8">
                    <asp:Button ID="Button1" runat="server" Text="Calculate" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Current Vehicle Price Configurator</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox3" runat="server" Height="220px" TextMode="MultiLine" Width="867px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Running Totals</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox2" runat="server" Height="220px" TextMode="MultiLine" Width="867px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
