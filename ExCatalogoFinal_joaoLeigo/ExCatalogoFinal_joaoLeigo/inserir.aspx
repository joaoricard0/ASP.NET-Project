<%@ Page Title="" Language="C#" MasterPageFile="~/Base.Master" AutoEventWireup="true" CodeBehind="inserir.aspx.cs" Inherits="ExCatalogoFinal_joaoLeigo.inserir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

  
.btnUpload {
  background-color: #0B1D2F;
  border-radius: 10px;
  color: #FFFFFF;
  cursor: pointer;
        }

        h2, .auto-style7 {
            text-align: center;
        }

        .auto-style3 {
            text-align:left;
        }
   

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Sistema de Upload de Novos artigos</h2>
    <div class="auto-style7">
 
        
        <table class="tabela" align="center">
            <tr>
                <td class="auto-style3">Nome:</td>
                <td>
                    <asp:TextBox ID="txtNome" runat="server" style="margin-left: 0px" Width="320px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Preço:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtPreco" runat="server" Height="16px" Width="320px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Marca:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtMarca" runat="server" Height="16px" Width="320px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Tipo:</td>
                <td>
                    <asp:TextBox ID="txtTipo" runat="server" Height="16px" Width="320px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Imagem Artigo:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="320px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Características:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtCaract" runat="server" Height="16px" Width="320px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Stock:</td>
                <td>
                    <asp:TextBox ID="txtStock" runat="server" Height="16px" Width="320px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
            </table>
        <div class="auto-style7">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" class="btnUpload" CausesValidation="False"/>
            </div>
        <br />
        <asp:Label ID="Label1" runat="server" Text="..."></asp:Label>
    </div>
    </asp:Content>
