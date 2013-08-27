<%@ Page Title="" Language="C#" MasterPageFile="~/pys.Master" AutoEventWireup="true" CodeBehind="ServicesAdd.aspx.cs" Inherits="MedAdvance.ServicesAdd" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row-fluid">

        <div class="span9">
            <div class="form-horizontal" />
            <div class="tab-content" style="padding: 0;">
                <div class="tab-pane active" id="account-details">

                    <div class="widget widget-2">
                        <div class="widget-head">
                            <h4 class="heading glyphicons edit"><i></i>Hizmet Ekle</h4>
                        </div>
                        <div class="widget-body" style="padding-bottom: 0;">
                            <div class="alert alert-error" runat="server" id="err" visible="false"></div>
                            <div class="alert alert-success" runat="server" id="suc" visible="false"></div>
                            <div class="row-fluid">
                                <div class="span6">
                                    <div class="control-group">
                                        <label class="control-label">Başlık</label>
                                        <div class="controls">
                                            <asp:TextBox runat="server" ID="txt_title" CssClass="span10"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">Dil </label>
                                        <div class="controls">
                                            <asp:DropDownList runat="server" CssClass="span10" ID="ddl_Lang">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                                <div class="span6">
                                    <div class="control-group">
                                        <label class="control-label">Kategori</label>
                                        <div class="controls">
                                            <asp:DropDownList runat="server" ID="ddl_cat" AutoPostBack="true" OnSelectedIndexChanged="ddl_cat_SelectedIndexChanged">
                                                <asp:ListItem>Seçiniz...</asp:ListItem>
                                                <asp:ListItem>Üst Hizmet</asp:ListItem>
                                                <asp:ListItem>Alt Hizmet</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="control-group" runat="server" id="dv_ServicesCat" visible="false">
                                        <label class="control-label">Kategori</label>
                                        <div class="controls">
                                            <asp:DropDownList runat="server" CssClass="span10" ID="ddl_Services">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr class="separator bottom" />
                            <div class="control-group">
                                <label class="control-label">Hizmet Açıklama</label>
                                <div class="controls">
                                    <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" Height="330px"></FCKeditorV2:FCKeditor>
                                </div>
                            </div>
                            <div class="form-actions" style="margin: 0;">
                                <asp:LinkButton runat="server" ID="btn_save" class="btn btn-icon btn-primary glyphicons circle_ok" OnClick="servicesSave"><i></i>Hizmeti Kaydet</asp:LinkButton>
                                <asp:LinkButton runat="server" ID="btn_edit" Visible="false" class="btn btn-icon btn-primary glyphicons circle_ok"><i></i>Hizmeti Düzenle</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </div>

    <div class="span3">

        <div class="widget widget-2 primary widget-body-white">
            <div class="widget-head">
                <h4 class="heading glyphicons picture"><i></i>Hizmet Resmi</h4>
            </div>
            <div class="widget-body center">
                <div class="fileupload fileupload-new" data-provides="fileupload">
                    <div class="fileupload-new thumbnail">
                        <img src="http://www.placehold.it/202x188/232323" />
                    </div>
                    <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 100%;"></div>
                    <div>
                        <span class="btn btn-file btn-inverse btn-icon glyphicons picture"><i></i>
                            <span class="fileupload-new">Resim Seç</span>
                            <span class="fileupload-exists">Kaydet</span>
                            <asp:FileUpload runat="server" ID="fu_Service" /></span>
                        <a href="#" class="btn fileupload-exists" data-dismiss="fileupload">İptal</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>
