<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Deneme.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Meta -->
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0" />
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	
	<!-- Bootstrap -->
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" />
	
	<!-- Bootstrap Extended -->
	<link href="bootstrap/extend/jasny-bootstrap/css/jasny-bootstrap.min.css" rel="stylesheet" />
	<link href="bootstrap/extend/jasny-bootstrap/css/jasny-bootstrap-responsive.min.css" rel="stylesheet" />
	<link href="bootstrap/extend/bootstrap-wysihtml5/css/bootstrap-wysihtml5-0.0.2.css" rel="stylesheet" />
	
	<!-- JQueryUI v1.9.2 -->
	<link rel="stylesheet" href="theme/scripts/jquery-ui-1.9.2.custom/css/smoothness/jquery-ui-1.9.2.custom.min.css" />
	<!-- Glyphicons -->
	<link rel="stylesheet" href="theme/css/glyphicons.css" />
	<!-- Bootstrap Extended -->
	<link rel="stylesheet" href="bootstrap/extend/bootstrap-select/bootstrap-select.css" />
	<link rel="stylesheet" href="bootstrap/extend/bootstrap-toggle-buttons/static/stylesheets/bootstrap-toggle-buttons.css" />
	<!-- Uniform -->
	<link rel="stylesheet" media="screen" href="theme/scripts/pixelmatrix-uniform/css/uniform.default.css" />
	<!-- JQuery v1.8.2 -->
	<script src="theme/scripts/jquery-1.8.2.min.js"></script>
	<!-- Modernizr -->
	<script src="theme/scripts/modernizr.custom.76094.js"></script>
	<!-- MiniColors -->
	<link rel="stylesheet" media="screen" href="theme/scripts/jquery-miniColors/jquery.miniColors.css" />
	<!-- Theme -->
	<link rel="stylesheet" href="theme/css/style.min.css?1359188708" />
	<!-- LESS 2 CSS -->
	<script src="theme/scripts/less-1.3.3.min.js"></script>
	
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
    <form runat="server" id="frm">
        <asp:ScriptManager ID="ScriptManager1" runat="server" AsyncPostBackTimeout="100000000"></asp:ScriptManager>
<!-- Start Content -->
	<div class="container-fluid left-menu">
		<div class="navbar main">
			<div class="innerpx">
				<button type="button" class="btn btn-navbar hidden-desktop hidden-tablet">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<div class="positionWrapper">
					<span class="line"></span>
					<div class="profile heading">
						<h1>PYS</h1>
						<em>Profesyonel Yönetim Sistemi</em>
					</div>
				</div>
			</div>
		</div>
	
		<div class="row-fluid rrow main">
			<div class="span12 main col" role="main">
				<div class="row-fluid rrow">
					<div class="span2 col main-left hide login menu-large">
						<div class="rrow scroll-y-left">
							<div class="iScrollWrapper">
			
							</div>
							<span class="navarrow hide">
								<span class="glyphicons circle_arrow_down"><i></i></span>
							</span>
						</div>
					</div>
					<div class="span10 col main-right login">
						<div class="rrow scroll-y" id="mainYScroller">
							<div class="inner topRight">
                <div class="positionWrapper loginWrapper hide">
	                <span class="line"></span>
                  <div class="box-1 loginbox">
                      <asp:UpdatePanel ID="UpdatePanel2" runat="server"><ContentTemplate>
	                  <div class="inner">
		                  <div class="fts" />
                				<fieldset>
                                    <div class="alert alert-error" runat="server" id="log_err" visible="false" ></div>
                                    <div class="alert alert-success" runat="server" id="log_inf" visible="false" ></div>
                					<legend>Admin Girişi</legend>
                					<hr class="separator bottom" style="margin-bottom: 10px;" />
                					<div class="input-prepend input-full">
                						<span class="add-on glyphicons user"><i></i></span>
                						<asp:TextBox runat="server" ID="txt_EmailLogin" placeholder="E-posta"></asp:TextBox>
                                        
                					</div>
                					<div class="input-prepend input-full">
                						<span class="add-on glyphicons lock"><i></i></span>
                						<asp:TextBox runat="server" ID="txt_PassLogin" placeholder="Parola" TextMode="Password"></asp:TextBox>
                					</div>
                					<a href="#" class="glyphicons circle_question_mark forgot">Parolamı Unuttum<i></i></a>
                					<hr class="separator bottom" style="margin-bottom: 10px;" />
                					<asp:LinkButton runat="server" ID="btn_login" CssClass="btn btn-icon btn-block glyphicons right flash btn-primary" OnClick="btn_login_Click">Oturum Aç<i></i></asp:LinkButton>
                				</fieldset>
                          <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                              <ProgressTemplate>
                                  <div class="alert alert-success">Giriş Yapılıyor</div>
                                  <img src="theme/images/loader.gif" height="150px" />
                              </ProgressTemplate>
                          </asp:UpdateProgress>
                			</div>
                          </ContentTemplate></asp:UpdatePanel>
	                  </div>
                  </div>
	<div class="btn-register">
		<a href="#" class="btn btn-icon btn-success glyphicons edit"><i></i>Kayıt Ol</a>
	</div>
</div>

<div>
	<div class="positionWrapper registerWrapper hide">
		<span class="line"></span>
		<div class="box-1 registerbox">
			<div class="inner">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
                <div class="alert alert-error" runat="server" id="save_err" visible="false" ></div>
                <div class="alert alert-success" runat="server" id="save_inf" visible="false" ></div>
				<div  class="fts" >
                <asp:TextBox runat="server" ID="txt_SaveName" placeholder="İsim"></asp:TextBox>
                    <asp:TextBox runat="server" ID="txt_SaveSurname" placeholder="Soyisim"></asp:TextBox>
                    <asp:TextBox runat="server" ID="txt_SaveEmail" placeholder="E-posta"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* Geçerli format değil" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txt_SaveEmail" ForeColor="Red" EnableViewState="True"></asp:RegularExpressionValidator>
                    <asp:TextBox runat="server" ID="txt_Savepass" placeholder="Parola" TextMode="Password"></asp:TextBox>
                    <asp:TextBox runat="server" ID="txt_Savepass1" TextMode="Password" placeholder="Parola Tekrar"></asp:TextBox>
				<asp:LinkButton runat="server" ID="btn_save" CssClass="btn btn-icon btn-block glyphicons right edit btn-success"  OnClick="btn_save_Click" >Kayıt Ol<i></i></asp:LinkButton>
				</div>
            </ContentTemplate></asp:UpdatePanel>
			</div>
		</div>
		<div class="btn-login">
			<a href="#" class="btn btn-icon btn-primary glyphicons unlock"><i></i>Giriş</a>
		</div>
	</div>
</div>							</div>
						</div>
					</div>
				</div>
			</div>

		<!-- End Content -->
		</div>
		
		<!-- Sticky Footer -->
		<div id="footer" class="hide">
	      	<div class="wrap">
	      		<ul>
	      				      			<li class="active"><span data-toggle="menu-position" data-menu-position="left-menu" class="glyphicons circle_arrow_left" title=""><i></i></span></li>
	      			<li><span data-toggle="menu-position" data-menu-position="right-menu" class="glyphicons circle_arrow_right" title=""><i></i></span></li>
	      			<li><span data-toggle="menu-position" data-menu-position="top-menu" class="glyphicons circle_arrow_top" title=""><i></i></span></li>
	      			<li class="divider"></li>
	      			<li class="active"><span data-toggle="menu-size" data-menu-size="0" class="glyphicons show_big_thumbnails text" title=""><i></i><span class="hidden-phone">Large menus</span></span></li>
	      			<li><span data-toggle="menu-size" data-menu-size="1" class="glyphicons show_thumbnails text" title=""><i></i><span class="hidden-phone">Small menus</span></span></li>
	      				      			<li><a href="documentation.html" class="glyphicons circle_question_mark text" title=""><i></i><span class="hidden-phone">Documentation</span></a></li>
	      		</ul>
	      	</div>
	    </div>
	</form>
	<!-- Cubiq iScroll -->
	<!--[if gte IE 9]><!-->
	<script src="theme/scripts/cubiq-iscroll/src/iscroll.js"></script>
	<!--<![endif]-->
	
	<!--[if lt IE 9]>
	<script src="theme/scripts/cubiq-iscroll/src/iscroll-ie.js"></script>
	<![endif]-->
	
	<script type="text/javascript">
	    var scrollers = [];
	    var mainYScroller;

	    $(function () {
	        //document.addEventListener('touchmove', function(e){ e.preventDefault(); });
	        var xScrollers = $(".scroll-x");
	        for (var i = 0; i < xScrollers.length; i++)
	            scrollers.push(new iScroll(xScrollers[i], {
	                vScroll: false,
	                hideScrollbar: true,
	                useTransform: $('html').is('.lt-ie9') ? false : true,
	                onBeforeScrollStart: function (e) {
	                    var target;
	                    if (!e) var e = window.event;
	                    if (e.target) target = e.target;
	                    else if (e.srcElement) target = e.srcElement;
	                    if (target.nodeType == 3) target = target.parentNode;

	                    if (target.tagName != 'SELECT' && target.tagName != 'INPUT' && target.tagName != 'TEXTAREA') {
	                        if (e.preventDefault) e.preventDefault();
	                        else e.returnValue = false;
	                    }
	                }
	            }));

	        var yScrollers = $('.scroll-y').not('#mainYScroller');
	        $.each(yScrollers, function (i, v) {
	            var scroller = new iScroll($(v).attr('id'),
                {
                    hScroll: false,
                    hideScrollbar: true,
                    useTransform: $('html').is('.lt-ie9') ? false : true,
                    onBeforeScrollStart: function (e) {
                        var target;
                        if (!e) var e = window.event;
                        if (e.target) target = e.target;
                        else if (e.srcElement) target = e.srcElement;
                        if (target.nodeType == 3) target = target.parentNode;

                        if (target.tagName != 'SELECT' &&
                            target.tagName != 'INPUT' &&
                            target.tagName != 'TEXTAREA' &&
                            $(target).parents('table-responsive').size() == 0) {
                            if (e.preventDefault) e.preventDefault();
                            else e.returnValue = false;
                        }
                    }
                });
	            scrollers.push(scroller);
	        });

	        mainYScroller = new iScroll('mainYScroller',
            {
                zoom: true,
                hScroll: false,
                hideScrollbar: true,
                useTransform: $('html').is('.lt-ie9') ? false : true,
                onBeforeScrollStart: function (e) {
                    var target;
                    if (!e) var e = window.event;
                    if (e.target) target = e.target;
                    else if (e.srcElement) target = e.srcElement;
                    if (target.nodeType == 3) target = target.parentNode;

                    if ($('input:focus, textarea:focus').length) $('input:focus, textarea:focus').blur();

                    if ($(target).parents('.table-responsive').size() > 0 ||
                        $(target).parents('.google-visualization-table-table').size() > 0 ||
                        $(target).parents('#calendar').size() > 0 ||
                        $(target).is('.btn')) {
                        return true;
                    }

                    if (target.tagName != 'SELECT' &&
                        target.tagName != 'INPUT' &&
                        target.tagName != 'TEXTAREA') {
                        if (e.preventDefault) e.preventDefault();
                        else e.returnValue = false;
                    }
                },
                onScrollEnd: function () {
                    //if (mainYScroller.enabled == false) mainYScroller.enable();
                }
            });
	        scrollers['mainYScroller'] = mainYScroller;
	    });
	    function mail_control() {
	        var statu = false;
	        var mail = document.getElementById("txt_SaveEmail").value;
	        var regex = /^[a-zA-Z0-9._-]+@([a-zA-Z0-9.-]+.)+([.])+[a-zA-Z0-9.-]{2,4}$/;
	        if (regex.test(mail) == true)
	        { statu = true; }
	        else
	        { statu = false; }
	        return statu;
	    }
	</script>
	
	<!-- JQueryUI v1.9.2 -->
	<script src="theme/scripts/jquery-ui-1.9.2.custom/js/jquery-ui-1.9.2.custom.min.js"></script>
	
	<!-- JQueryUI Touch Punch -->
	<!-- small hack that enables the use of touch events on sites using the jQuery UI user interface library -->
	<script src="theme/scripts/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>
	
	<!-- MiniColors -->
	<script src="theme/scripts/jquery-miniColors/jquery.miniColors.js"></script>
	
	<!-- Themer -->
	<script>
	    var themerPrimaryColor = '#DA4C4C',
            themerHeaderColor = '#393D41',
            themerMenuColor = '#232628';
	</script>
	<script src="theme/scripts/jquery.cookie.js"></script>
	<script src="theme/scripts/themer.js"></script>
	
	
	
	<!-- Resize Script -->
	<script src="theme/scripts/jquery.ba-resize.js"></script>
	
	<!-- Uniform -->
	<script src="theme/scripts/pixelmatrix-uniform/jquery.uniform.min.js"></script>
	
	<!-- Bootstrap Script -->
	<script src="bootstrap/js/bootstrap.min.js"></script>
	
	<!-- Bootstrap Extended -->
	<script src="bootstrap/extend/bootstrap-select/bootstrap-select.js"></script>
	<script src="bootstrap/extend/bootstrap-toggle-buttons/static/js/jquery.toggle.buttons.js"></script>
	<script src="bootstrap/extend/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js"></script>
	<script src="bootstrap/extend/jasny-bootstrap/js/jasny-bootstrap.min.js" type="text/javascript"></script>
	<script src="bootstrap/extend/jasny-bootstrap/js/bootstrap-fileupload.js" type="text/javascript"></script>
	<script src="bootstrap/extend/bootbox.js" type="text/javascript"></script>
	<script src="bootstrap/extend/bootstrap-wysihtml5/js/wysihtml5-0.3.0_rc2.min.js" type="text/javascript"></script>
	<script src="bootstrap/extend/bootstrap-wysihtml5/js/bootstrap-wysihtml5-0.0.2.js" type="text/javascript"></script>
	
	<!-- Custom Onload Script -->
	<script src="theme/scripts/load.js"></script>
</body>
</html>
