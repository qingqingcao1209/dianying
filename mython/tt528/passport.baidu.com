<!DOCTYPE html><html><!--STATUS OK--><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="description" content="百度帐号是登录所有百度系产品的通行证，登录后还可以在帐户管理页管理/修改您的个人信息，包括修改密码、绑定手机、身份认证等">
<title>
登录百度帐号
</title>
<link rel="shortcut icon" href="https://www.baidu.com/favicon.ico" type="image/x-icon">
<link rel="icon" sizes="any" mask="" href="https://www.baidu.com/img/baidu.svg">                <script type="text/javascript">
            window.wpo={start:new Date*1,pid:109,page:'passport'};
            var _hmt = _hmt || [];
        </script>
<link href="/static/passpc-base/css/base.css?cdnversion=1507972357" type="text/css" rel="stylesheet">        <link href="/static/passpc-base/css/ui/ui.css?cdnversion=1507972357" type="text/css" rel="stylesheet">                        
<link href="/static/passpc-account/css/boot_login_b9be111.css" type="text/css" rel="stylesheet">
<!--[if lte IE 9]>
<style style="text/javascript">
.pass-form-item .pass-clearbtn:hover{
    background-position:-27px -95px;
    transform: rotate(0deg);
}
.pass-suggestion-list li.pass-item-suggsetion a:hover{
    background-position:-28px -115px; 
    transform: rotate(0deg);
}
</style>
<![endif]-->
<!--[if IE 8]>
<style style="text/javascript">
.pass-form-item-memberPass{
    margin-top: -5px;
}
</style>
<![endif]-->
<script type="text/javascript" charset="UTF-8" src="https://ss0.bdstatic.com/5LMZfyabBhJ3otebn9fN2DJv/passApi/js/login_tangram_2e6e5ef.js"></script></head>
<body>
<div id="wrapper" class="">
<div id="head">
                   <div class="mod-header">
<a href="http://www.baidu.com/"><img src="/static/passpc-base/img/logo/logo.gif" alt="logo"></a>
</div>
                </div>
<div id="nav">
                <div class="nav-2">
<div class="mod-nav clearfix">
<h1 class="page-type-notab"></h1>
</div>
</div>
        </div>
<div id="content">
<div class="clearfix login-container">
<div class="login-form">
<h3 id="login-title">登录百度帐号</h3>
<div class="login-wrapper">
<div id="login"></div>
</div>
</div>
</div>
<a class="login-jin" id="loginJin" target="_blank" href="https://jin.baidu.com/insurance/apply?channel=bxpsp">
<div class="jin-png"></div>
<div class="jin-content"></div>
</a>
</div>
<div id="foot">
                    <div class="mod-footer">
<div class="copy-box">2017&nbsp;©Baidu</div>
</div>
                </div>
</div>
        <script type="text/javascript" src="/passApi/js/uni_wrapper.js?cdnversion=1507972357"></script>
<script type="text/javascript" src="/static/passpc-base/js/core.js?cdnversion=1507972357"></script>                            <script type="text/javascript" src="/static/passpc-base/js/ui/ui.js?cdnversion=1507972357"></script>
        <script type="text/javascript" src="https://passport.baidu.com/passApi/js/wrapper.js?v=1507972357"></script>
<script>
    var _config = {
        u: 'https:\/\/passport.baidu.com\/',
        product: 'pp',
        idc: '',
        subpro: '',
        noreal_u: '',
        staticpage: document.location.protocol + '//' + document.location.host+'/static/passpc-account/html/v3Jump.html',
        authsiteLogin : ['qzone','tsina','renren','weixin','tianyi'],
        authsiteCfgLogin: {act:'optional',display:'popup'},
        qrcode: true,
        sms: 1,
        qrcode_animation: 1
    }
    if(document.charset && (document.charset.toLowerCase().indexOf('utf') == -1) && (navigator.userAgent.indexOf("MSIE") > 0)) {
        location.href = location.href + (location.href.indexOf('?')>-1? "&nocache=1": "?nocache=1");
    }
    var _accountValue = "";
    var current_city = "上海";
</script>
<script type="text/javascript" src="/static/passpc-account/js/boot_login_2bace41.js"></script>                                        <script type="text/javascript">
        _hmt.push(['_setAutoPageview', false]);
        (function(){
            try{
                var tjstr = location.search,tjarr2 = [],tjresult = '';
                if(tjstr){
                    var tjarr = tjstr.slice(1).split('&');
                    for(var i = 0,len = tjarr.length;i<len;i++){
                        var query = tjarr[i].split('=')[0];
                        if(query != 't' && query != '_t'){
                            tjarr2.push(tjarr[i])
                        }
                    }
                }
                tjresult = location.pathname + (tjarr2.length > 0 ? ('?'+tjarr2.join('&')) : '')           
            }catch(e) {
                var tjresult = location.pathname
            }
            _hmt.push(['_trackPageview', tjresult]);
        })()
        var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://"); 
        document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F90056b3f84f90da57dc0f40150f005d5' type='text/javascript'%3E%3C/script%3E"));
        </script><script src=" https://hm.baidu.com/h.js?90056b3f84f90da57dc0f40150f005d5" type="text/javascript"></script>
<script type="text/javascript">wpo.tti=new Date*1;</script>


</body></html>