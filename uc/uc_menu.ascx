<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uc_menu.ascx.cs" Inherits="Deneme.uc.uc_menu" %>
<div class="navbar main">
    <div class="innerpx">
        <button type="button" class="btn btn-navbar hidden-desktop hidden-tablet">
            <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
        </button>
        <div class="positionWrapper">
            <span class="line"></span>
            <div class="profile">
                <span class="info hidden-phone">
                    <strong runat="server" id="adm_Name"></strong>
                    <em>Site Yöneticisi</em>
                </span>
            </div>
            <ul class="notif">
                <li><a href="" class="glyphicons camera btn " rel="tooltip" data-placement="bottom" data-original-title="2 Online Fotoğraf"><i></i><span>3</span></a></li>
                <li><a href="" class="glyphicons phone btn" rel="tooltip" data-placement="bottom" data-original-title="3 Biz Sizi Arayalım"><i></i><span>3</span></a></li>
                <li><a href="" class="glyphicons user_add btn" rel="tooltip" data-placement="bottom" data-original-title="3 İnsan Kaynakları"><i></i><span>3</span></a></li>
                <li><a href="" class="glyphicons envelope btn" rel="tooltip" data-placement="bottom" data-original-title="3 Yeni İletişim"><i></i><span>3</span></a></li>
            </ul>
            <ul class="topnav hidden-phone">

                <li>
                    <a href="#themer" data-toggle="collapse" class="logout glyphicons eyedropper"><i></i><span>Stil</span></a>
                    <div id="themer" class="collapse">
                        <div class="wrapper">
                            <h4>Stil <span>Renk &amp; Düzen</span></h4>
                            <ul>
                                <li>Tema:
                                    <select id="themer-theme" class="pull-right"></select><div class="clearfix"></div>
                                </li>
                                <li>Birincil Renk:
                                    <input type="minicolors" data-default="#ffffff" data-slider="hue" data-textfield="false" data-position="left" id="themer-primary-cp" /><div class="clearfix"></div>
                                </li>
                                <li class="advanced">Başlık Renk:
                                    <input type="minicolors" data-slider="hue" data-default="#ffffff" data-textfield="false" data-position="left" id="themer-header-cp" /><div class="clearfix"></div>
                                </li>
                                <li class="advanced">Menü Renk:
                                    <input type="minicolors" data-slider="hue" data-default="#ffffff" data-textfield="false" data-position="left" id="themer-menu-cp" /><div class="clearfix"></div>
                                </li>
                                <li>
                                    <span class="link" id="themer-custom-reset">Geri Dön</span>
                                    <span class="pull-right">
                                        <label>
                                            Gelişmiş
                                            <input type="checkbox" value="1" id="themer-advanced-toggle" /></label></span>
                                </li>
                            </ul>
                            <hr class="separator" />
                            <ul>
                                <li>Menü Pozisyon:
                                    <select id="themer-menu-position" class="pull-right"></select><div class="clearfix"></div>
                                </li>
                                <li>Menü Boyut:
                                    <select id="themer-menu-size" class="pull-right"></select><div class="clearfix"></div>
                                </li>
                            </ul>

                        </div>
                    </div>
                </li>
                <li>
                    <asp:LinkButton runat="server" ID="btn_logout" class="logout glyphicons lock" OnClick="btn_logout_Click"><i></i><span>Çıkış Yap</span></asp:LinkButton>
                    <%--<a href="login.html" class="logout glyphicons lock"><i></i><span>Çıkış Yap</span></a>--%>
                </li>
            </ul>
        </div>
    </div>
</div>
