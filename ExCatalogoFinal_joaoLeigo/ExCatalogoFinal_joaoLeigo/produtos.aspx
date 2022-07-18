<%@ Page Title="" Language="C#" MasterPageFile="~/Base.Master" AutoEventWireup="true" CodeBehind="produtos.aspx.cs" Inherits="ExCatalogoFinal_joaoLeigo.produtos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        table  {
            height: 22px;
            font-family: "Bahnschrift SemiBold";
            font-size: 1.5vw;
            font-weight: bold;
            text-align:center;
            width:100%;
            border-collapse: collapse;
        }
        .buttonClass {
    padding: 2px 10px;
    text-decoration: none;
    background-color: #0B1D2F;
    color:white;
}
.buttonClass:hover
{
    border: solid 1px Black;
    background-color: #ffffff;
    color:black;
     box-shadow: 0 0.5em 0.5em -0.4em #ffffff;
    transform: translateY(-0.25em);
    cursor: pointer;
}
.auto-style6 {
background-color: #0B1D2F;
}
.buttonClass2 {
    padding: 2px 10px;
    text-decoration: none;
    background-color:lightgrey;
    color:#0B1D2F;
}
.buttonClass2:hover
{
    border: solid 1px Black;
    background-color:#0B1D2F;
    color:#ffffff;
    box-shadow: 0 0.5em 0.5em -0.4em #0B1D2F;
    transform: translateY(-0.25em);
    cursor: pointer;
}
.tipo {
background-color:lightgrey;
}
ItemTemplate#Image1 {
    width: auto;
    max-height: 100px;
}
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="auto-style6">
        <tr>
            <td class="auto-style3">
                <asp:LinkButton ID="LinkButton1" CssClass="buttonClass" runat="server" OnClick="LinkButton1_Click">Todas as Marcas</asp:LinkButton>
            </td>
            <td class="auto-style3">
                <asp:LinkButton ID="LinkButton2" CssClass="buttonClass" runat="server" OnClick="LinkButton2_Click">Acer</asp:LinkButton>
            </td>
            <td class="auto-style3">
                <asp:LinkButton ID="LinkButton3" CssClass="buttonClass" runat="server" OnClick="LinkButton3_Click">Asus</asp:LinkButton>
            </td>
            <td class="auto-style3">
                <asp:LinkButton ID="LinkButton4" CssClass="buttonClass" runat="server" OnClick="LinkButton4_Click">Apple</asp:LinkButton>
            </td>
            <td class="auto-style3">
                <asp:LinkButton ID="LinkButton5" CssClass="buttonClass" runat="server" OnClick="LinkButton5_Click">Dell</asp:LinkButton>
            </td>
            <td class="auto-style3">
                <asp:LinkButton ID="LinkButton6" CssClass="buttonClass" runat="server" OnClick="LinkButton6_Click">HP</asp:LinkButton>
            </td>
            <td class="auto-style3">
                <asp:LinkButton ID="LinkButton7" CssClass="buttonClass" runat="server" OnClick="LinkButton7_Click">Mi</asp:LinkButton>
            </td>
            <td class="auto-style3">
                <asp:LinkButton ID="LinkButton8" CssClass="buttonClass" runat="server" OnClick="LinkButton8_Click">Motorola</asp:LinkButton>
            </td>
            <td class="auto-style3">
                <asp:LinkButton ID="LinkButton9" CssClass="buttonClass" runat="server" OnClick="LinkButton9_Click">Micromax</asp:LinkButton>
            </td>
            <td class="auto-style3">
                <asp:LinkButton ID="LinkButton10" CssClass="buttonClass" runat="server" OnClick="LinkButton10_Click">Lenovo</asp:LinkButton>
            </td>
            <td class="auto-style3">
                <asp:LinkButton ID="LinkButton11" CssClass="buttonClass" runat="server" OnClick="LinkButton11_Click">LG</asp:LinkButton>
            </td>
            <td class="auto-style3">
                <asp:LinkButton ID="LinkButton12" CssClass="buttonClass" runat="server" OnClick="LinkButton12_Click">Rato</asp:LinkButton>
            </td>
            <td class="auto-style3">
                <asp:LinkButton ID="LinkButton13" CssClass="buttonClass" runat="server" OnClick="LinkButton13_Click">Sony</asp:LinkButton>
            </td>
            <td class="auto-style3">
                <asp:LinkButton ID="LinkButton14" CssClass="buttonClass" runat="server" OnClick="LinkButton14_Click">Samsung</asp:LinkButton>
            </td>
        </tr>
    </table>
    <table class="tipo">
        <tr>
            <td class="auto-style3">
                <asp:LinkButton ID="LinkAcess" CssClass="buttonClass2" runat="server" OnClick="LinkAcess_Click">Acessórios PC</asp:LinkButton>
            </td>
            <td class="auto-style3">
                <asp:LinkButton ID="LinkLaptop" CssClass="buttonClass2" runat="server" OnClick="LinkLaptop_Click">Laptops</asp:LinkButton>
            </td>
            <td class="auto-style3">
                <asp:LinkButton ID="LinkTablet" CssClass="buttonClass2" runat="server" OnClick="LinkTablet_Click">Tablet</asp:LinkButton>
            </td>
            <td class="auto-style3">
                <asp:LinkButton ID="LinkTelm" CssClass="buttonClass2" runat="server" OnClick="LinkTelm_Click">Telemóveis</asp:LinkButton>
            </td>
            <td class="auto-style3">
                <asp:LinkButton ID="LinkTV" CssClass="buttonClass2" runat="server" OnClick="LinkTV_Click">Televisões</asp:LinkButton>
            </td>
        </tr>
    </table>
    <br />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="3" Width="100%" RepeatDirection="Horizontal" BorderColor="#0099CC" BorderWidth="0px" BackColor="White" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#0098DA" ShowFooter="False" CellPadding="30" CellSpacing="30">
        <AlternatingItemStyle BackColor="White" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#0098DA" />
        <HeaderStyle BackColor="#0098DA" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
    <ItemTemplate>
        &nbsp;<asp:Label ID="MarcaLabel" runat="server" Text='<%# Eval("Marca") %>' />
        <br />
        <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
        <br />
        Preço:
        <asp:Label ID="PreçoLabel" runat="server" Text='<%# Eval("Preço") %>' />
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Imagem") %>' style="max-height:200px; max-width:400px; height:auto; width:auto;"/>
        <br />
        <br />
        Características:
        <asp:Label ID="CaracterísticasLabel" runat="server" Text='<%# Eval("Características") %>' />
        <br />
        Stock:
        <asp:Label ID="StockLabel" runat="server" Text='<%# Eval("Stock") %>' />
        <br />
<br />
    </ItemTemplate>
        <SelectedItemStyle BackColor="White" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" />
        <SeparatorStyle BackColor="Black" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#0098DA" HorizontalAlign="Center" VerticalAlign="Top" />
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Produtos]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Produtos] WHERE ([Marca] = @Marca)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Marca" QueryStringField="marca" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Produtos] WHERE ([Tipo] = @Tipo)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Tipo" QueryStringField="tipo" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
