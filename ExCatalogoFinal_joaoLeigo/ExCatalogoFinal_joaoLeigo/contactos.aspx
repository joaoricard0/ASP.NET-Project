<%@ Page Title="" Language="C#" MasterPageFile="~/Base.Master" AutoEventWireup="true" CodeBehind="contactos.aspx.cs" Inherits="ExCatalogoFinal_joaoLeigo.contactos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        h2 {
            text-align:center;
        }
        .btnContacto {
            font-family: "Bahnschrift SemiBold";
            background-color: #0B1D2F;
            border-radius: 10px;
            color: #FFFFFF;
            cursor: pointer;
            font-size: 1rem;
            line-height: 1.5;
            text-decoration: none;
        }

   
        .auto-style8 {
            margin-top: 0px;
        }
        .auto-style9 {
            margin-left: 0px;
            margin-top: 0px;
        }
        iframe.auto-style10 {
            margin-top:0px;
            margin-left: 12px;
        }
        .container {
            align-content: center;
            justify-content: center;
            display: flex;
            flex-wrap: wrap;
        }
        section.numbers, a {
            text-align:center;
            align-content: center;
            justify-content: center;
             display: flex;
            flex-wrap: wrap;
        }
        span {
            font-size:x-large;
        }
   
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Contacte-nos</h2>
    <br />
    <div>
        <div class="container">
            <div>
                <table class="auto-style9" align="left">

                    <tr>
                        <td class="auto-style8">Nome:</td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtNome" runat="server" Width="320px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>E-mail:</td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server" Width="320px" TextMode="Email"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Contacto</td>
                        <td>
                            <asp:TextBox ID="txtContact" runat="server" Width="320px" TextMode="Phone"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Mensagem:</td>
                        <td>
                            <asp:TextBox ID="txtMsg" runat="server" Width="320px" Height="60px" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="btnEnviar" runat="server" OnClick="btnEnviar_Click" Text="Enviar" class="btnContacto" CausesValidation="False" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="..."></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
                <div class="auto-style7">
                    <br />
                </div>
            </div>
            <br />
            <div>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d99557.90596635894!2d-9.301596381329201!3d38.759470700738454!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd1ecde83bdc105b%3A0x907be536826af083!2sContinente%20Amadora!5e0!3m2!1spt-PT!2spt!4v1639876844940!5m2!1spt-PT!2spt" width="500" height="300" style="border: 0;" allowfullscreen="" loading="lazy" class="auto-style10"></iframe>
            </div>
        </div>
       </div>
    <section class="numbers">
    <div>

            <div>
                PORTUGAL E ESTRANGEIRO
     
            
                <br />
                <span>219 999 999 ou 911 111 111</span></div>
            <br />
            <div>
                das 8h às 24h de 2ª feira a domingo
            </div>


        </div>
        </section>
    <br />
</asp:Content>
