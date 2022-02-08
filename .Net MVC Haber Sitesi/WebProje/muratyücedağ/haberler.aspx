<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="haberler.aspx.cs" Inherits="muratyücedağ.haberler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowPaging="True">
            <EditItemTemplate>
                Id:
                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                sliderKonusu:
                <asp:TextBox ID="sliderKonusuTextBox" runat="server" Text='<%# Bind("sliderKonusu") %>' />
                <br />
                sliderTarihi:
                <asp:TextBox ID="sliderTarihiTextBox" runat="server" Text='<%# Bind("sliderTarihi") %>' />
                <br />
                sliderBasligi:
                <asp:TextBox ID="sliderBasligiTextBox" runat="server" Text='<%# Bind("sliderBasligi") %>' />
                <br />
                sliderAciklamasi:
                <asp:TextBox ID="sliderAciklamasiTextBox" runat="server" Text='<%# Bind("sliderAciklamasi") %>' />
                <br />
                sliderYazari:
                <asp:TextBox ID="sliderYazariTextBox" runat="server" Text='<%# Bind("sliderYazari") %>' />
                <br />
                <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Id:
                <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                <br />
                sliderKonusu:
                <asp:TextBox ID="sliderKonusuTextBox" runat="server" Text='<%# Bind("sliderKonusu") %>' />
                <br />
                sliderTarihi:
                <asp:TextBox ID="sliderTarihiTextBox" runat="server" Text='<%# Bind("sliderTarihi") %>' />
                <br />
                sliderBasligi:
                <asp:TextBox ID="sliderBasligiTextBox" runat="server" Text='<%# Bind("sliderBasligi") %>' />
                <br />
                sliderAciklamasi:
                <asp:TextBox ID="sliderAciklamasiTextBox" runat="server" Text='<%# Bind("sliderAciklamasi") %>' />
                <br />
                sliderYazari:
                <asp:TextBox ID="sliderYazariTextBox" runat="server" Text='<%# Bind("sliderYazari") %>' />
                <br />
                <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
            </InsertItemTemplate>
            <ItemTemplate>
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                sliderKonusu:
                <asp:Label ID="sliderKonusuLabel" runat="server" Text='<%# Bind("sliderKonusu") %>' />
                <br />
                sliderTarihi:
                <asp:Label ID="sliderTarihiLabel" runat="server" Text='<%# Bind("sliderTarihi") %>' />
                <br />
                sliderBasligi:
                <asp:Label ID="sliderBasligiLabel" runat="server" Text='<%# Bind("sliderBasligi") %>' />
                <br />
                sliderAciklamasi:
                <asp:Label ID="sliderAciklamasiLabel" runat="server" Text='<%# Bind("sliderAciklamasi") %>' />
                <br />
                sliderYazari:
                <asp:Label ID="sliderYazariLabel" runat="server" Text='<%# Bind("sliderYazari") %>' />
                <br />

                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />&nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />&nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />

            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Table]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @original_Id AND [sliderKonusu] = @original_sliderKonusu AND [sliderTarihi] = @original_sliderTarihi AND [sliderBasligi] = @original_sliderBasligi AND [sliderAciklamasi] = @original_sliderAciklamasi AND [sliderYazari] = @original_sliderYazari" InsertCommand="INSERT INTO [Table] ([Id], [sliderKonusu], [sliderTarihi], [sliderBasligi], [sliderAciklamasi], [sliderYazari]) VALUES (@Id, @sliderKonusu, @sliderTarihi, @sliderBasligi, @sliderAciklamasi, @sliderYazari)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Table] SET [sliderKonusu] = @sliderKonusu, [sliderTarihi] = @sliderTarihi, [sliderBasligi] = @sliderBasligi, [sliderAciklamasi] = @sliderAciklamasi, [sliderYazari] = @sliderYazari WHERE [Id] = @original_Id AND [sliderKonusu] = @original_sliderKonusu AND [sliderTarihi] = @original_sliderTarihi AND [sliderBasligi] = @original_sliderBasligi AND [sliderAciklamasi] = @original_sliderAciklamasi AND [sliderYazari] = @original_sliderYazari">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="original_sliderKonusu" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_sliderTarihi" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_sliderBasligi" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_sliderAciklamasi" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_sliderYazari" Type="String"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="sliderKonusu" Type="String"></asp:Parameter>
                <asp:Parameter Name="sliderTarihi" Type="String"></asp:Parameter>
                <asp:Parameter Name="sliderBasligi" Type="String"></asp:Parameter>
                <asp:Parameter Name="sliderAciklamasi" Type="String"></asp:Parameter>
                <asp:Parameter Name="sliderYazari" Type="String"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="sliderKonusu" Type="String"></asp:Parameter>
                <asp:Parameter Name="sliderTarihi" Type="String"></asp:Parameter>
                <asp:Parameter Name="sliderBasligi" Type="String"></asp:Parameter>
                <asp:Parameter Name="sliderAciklamasi" Type="String"></asp:Parameter>
                <asp:Parameter Name="sliderYazari" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Id" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="original_sliderKonusu" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_sliderTarihi" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_sliderBasligi" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_sliderAciklamasi" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_sliderYazari" Type="String"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>

    </form>

</body>
</html>

