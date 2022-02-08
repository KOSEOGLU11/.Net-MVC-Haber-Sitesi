<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="muratyücedağ.news_times_web.web.admin" %>

<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>News Times a Entertainment Category Flat Bootstrap Responsive Website Template | New & Events :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="News Times Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<link href='//fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'>
</head>

<body>
<!-- banner -->
	<div class="banner1" style="margin-bottom: 4rem;">
		<div class="banner-info1">
			<div class="container">
				<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
					  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					  </button>
						<div class="logo">
							<a class="navbar-brand" href="index.html"><span>N</span> News Times</a>
						</div>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav cl-effect-18" id="cl-effect-18">
							<li><a href="index.aspx">Ana Sayfa</a></li>
							<li class="act"><a href="admin.aspx" class="active">Admin Paneli</a></li>
						</ul>
					</div><!-- /.navbar-collapse -->	
					
				</nav>
			</div>
		</div>
	</div>
<!-- //banner -->

		<form id="form1" runat="server" class="container">
            <div>
                <p class="text-danger">
                    Haberler
                </p>
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


<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
</body>
</html>