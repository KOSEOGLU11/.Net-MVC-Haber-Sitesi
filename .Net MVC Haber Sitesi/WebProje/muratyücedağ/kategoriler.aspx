<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kategoriler.aspx.cs" Inherits="muratyücedağ.kategoriler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Id">
                <AlternatingItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("sliderKonusu") %>' runat="server" ID="sliderKonusuLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("sliderTarihi") %>' runat="server" ID="sliderTarihiLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("sliderBasligi") %>' runat="server" ID="sliderBasligiLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("sliderAciklamasi") %>' runat="server" ID="sliderAciklamasiLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("sliderYazari") %>' runat="server" ID="sliderYazariLabel" /></td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                            <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                        </td>
                        <td>
                            <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel1" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("sliderKonusu") %>' runat="server" ID="sliderKonusuTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("sliderTarihi") %>' runat="server" ID="sliderTarihiTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("sliderBasligi") %>' runat="server" ID="sliderBasligiTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("sliderAciklamasi") %>' runat="server" ID="sliderAciklamasiTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("sliderYazari") %>' runat="server" ID="sliderYazariTextBox" /></td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                            <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                        </td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Id") %>' runat="server" ID="IdTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("sliderKonusu") %>' runat="server" ID="sliderKonusuTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("sliderTarihi") %>' runat="server" ID="sliderTarihiTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("sliderBasligi") %>' runat="server" ID="sliderBasligiTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("sliderAciklamasi") %>' runat="server" ID="sliderAciklamasiTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("sliderYazari") %>' runat="server" ID="sliderYazariTextBox" /></td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("sliderKonusu") %>' runat="server" ID="sliderKonusuLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("sliderTarihi") %>' runat="server" ID="sliderTarihiLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("sliderBasligi") %>' runat="server" ID="sliderBasligiLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("sliderAciklamasi") %>' runat="server" ID="sliderAciklamasiLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("sliderYazari") %>' runat="server" ID="sliderYazariLabel" /></td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table runat="server" id="itemPlaceholderContainer" style="" border="0">
                                    <tr runat="server" style="">
                                        <th runat="server">Id</th>
                                        <th runat="server">sliderKonusu</th>
                                        <th runat="server">sliderTarihi</th>
                                        <th runat="server">sliderBasligi</th>
                                        <th runat="server">sliderAciklamasi</th>
                                        <th runat="server">sliderYazari</th>
                                    </tr>
                                    <tr runat="server" id="itemPlaceholder"></tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style=""></td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("sliderKonusu") %>' runat="server" ID="sliderKonusuLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("sliderTarihi") %>' runat="server" ID="sliderTarihiLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("sliderBasligi") %>' runat="server" ID="sliderBasligiLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("sliderAciklamasi") %>' runat="server" ID="sliderAciklamasiLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("sliderYazari") %>' runat="server" ID="sliderYazariLabel" /></td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
