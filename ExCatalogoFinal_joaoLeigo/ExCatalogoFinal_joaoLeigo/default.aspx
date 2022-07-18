<%@ Page Title="" Language="C#" MasterPageFile="~/Base.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ExCatalogoFinal_joaoLeigo._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        .text1 {
            font-size:medium;
            font-weight: lighter;
            color:#101010;
            text-align:center;
        }
        img.slide {
                display: inline-block;
                width: 50%;
                height: auto;
                padding: 50px;
            }
        @media all and (max-width: 1000px) {
            img.slide {
                width: 60%;
            }
        }
        @media all and (max-width: 600px) {
            img.slide {
                width: 75%;
            }
        }

        .dot {
    cursor: pointer;
    height: 15px;
    width: 15px;
    margin-top:auto;
    background-color: #bbb;
    border-radius: 50%;
    display: inline-block;
    transition: background-color 0.6s ease;

        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  

    <div class="slideshow-container">

  <!-- Full-width images with number and caption text -->
  <div class="mySlides fade">
    <img src="bannersElectronica/banner-1.jpg" style="width:100%">
    <div class="text1">Auscultadores</div>
  </div>

  <div class="mySlides fade">
    <img src="bannersElectronica/banner-2.jpg" style="width:100%">
    <div class="text1">Smartwatches</div>
  </div>

  <div class="mySlides fade">
    <img src="bannersElectronica/banner-3.jpg" style="width:100%">
    <div class="text1">Iphones</div>
  </div>

        <div class="mySlides fade">
    <img src="bannersElectronica/banner1.jpg" style="width:100%">
    <div class="text1">Smartphones</div>
  </div>

        <div class="mySlides fade">
    <img src="bannersElectronica/banner5.jpg" style="width:100%">
    <div class="text1">Eletrónica</div>
  </div>

        <div class="mySlides fade">
    <img src="bannersElectronica/banner6.jpg" style="width:100%">
    <div class="text1">Muito mais</div>
  </div>
       </div>
<!-- The dots/circles -->
<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span>
  <span class="dot" onclick="currentSlide(2)"></span>
  <span class="dot" onclick="currentSlide(3)"></span>
  <span class="dot" onclick="currentSlide(4)"></span>
  <span class="dot" onclick="currentSlide(5)"></span>
  <span class="dot" onclick="currentSlide(6)"></span>
    <br />
</div>
    <marquee>
<section class="category">

    <div class="box-container">

        <a href="produtos.aspx" class="box">
            <img class="slide" src="Imagem_Produto/lg-20lb452a-400x400-imadygfmvr3kqczb.jpeg" alt="">
            
        </a>

        <a href="produtos.aspx" class="box">
            <img class="slide" src="Imagem_Produto/lenovo-a5500-hv-400x400-imae3kmthcrzkxpk.jpeg" alt="">
            
        </a>

        <a href="produtos.aspx" class="box">
            <img class="slide" src="Imagem_Produto/samsung-notebook-400x400-imadjbjvgshxfw4f.jpeg" alt="">
           
        </a>

        <a href="produtos.aspx" class="box">
            <img class="slide" src="Imagem_Produto/sony-bravia-kdl-50w800b-400x400-imadv3bzzkhyzaxz.jpeg" alt="">
           
        </a>

        <a href="produtos.aspx" class="box">
            <img class="slide" src="Imagem_Produto/sandisk-ultra-dual-drive-400x400-imadwkh5hg7dudhs.jpeg" alt="">
           
        </a>

        <a href="produtos.aspx" class="box">
            <img class="slide" src="Imagem_Produto/sony-xperia-z3-compact-400x400-imaey8gdpdhwngva.jpeg" alt="">
            
        </a>
	
    </div>

</section></marquee>
</asp:Content>
