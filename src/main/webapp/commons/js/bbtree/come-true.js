/*[/img/ng/dist/common/js/come-true.js]*/
!function(a,b){"use strict";var c="bbt-pregnant-timeline";b("."+c+"-close button").click(function(a){a.preventDefault(),b(this).closest("."+c).remove()}),function(){var a=b("."+c+"-bottom"),d=0;a.length&&(a.find("."+c+"-close button").bind("click",function(){b(window).unbind("."+c)}),b(window).bind("scroll."+c,function(){document.body.scrollTop>d?a.hasClass(c+"-bottom-show")||a.addClass(c+"-bottom-show"):a.hasClass(c+"-bottom-show")&&a.removeClass(c+"-bottom-show")}),function(){var b,e,f=window.MutationObserver||window.WebKitMutationObserver||window.MozMutationObserver,g=document.querySelector("."+c+"-top, ."+c+"-home");f&&g&&(b=new f(function(){setTimeout(function(){d=g.offsetHeight},1e3)}),e={attributeFilter:["style","class"],attributes:!0,characterData:!0,childList:!0,subtree:!0},b.observe(g,e),a.find("."+c+"-close button").bind("click",function(){b.disconnect()}),d=g.offsetHeight)}())}(),function(){var d=function(){var b=a.navigator.userAgent,c="";return b.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/)&&(c="ios"),b.indexOf("Android")>-1&&(c="android"),(/MicroMessenger/i.test(b)||/QQ/i.test(b))&&(c="qq-"+c),c}();b("."+c+"-go").each(function(){var a=this.getAttribute("data-href-"+d),c=this.getAttribute("refcode"),e=this.getAttribute("data-ralated-refcode");!a||a&&a.indexOf(".babytree.com")>=0||(this.href=a,c&&!/\-android$|\-ios$/.test(c)&&this.setAttribute("refcode",c+"-"+d),d.indexOf("android")>-1&&((new Image).src="http://"+this.host+"/img/photoPlaceHolder1.gif",e&&e!==c&&b(this).click(function(){setTimeout(function(){b("a[refcode="+e+"-"+d+"]").click()},1e3)})))})}()}(this,this.Zepto);