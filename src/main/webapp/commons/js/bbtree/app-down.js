/*[/img/ng/dist/product/wap/app/js/app-down.js]*/
!function(a,b){"use strict";var c={list:[],isUc:function(){var b=a.navigator.userAgent;return b.indexOf("UCBrowser")>-1?!0:!1}(),client:function(){var b=!1,c=a.navigator.userAgent;return(/MicroMessenger/i.test(c)||/QQ/i.test(c))&&(b=!0),c.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/)?b?"iosMyapp":"ios":c.indexOf("Android")>-1?b?"iosMyapp":"android":"common"}(),register:function(a){var c,d=this.client;return this.isUc?void this.list.push(a):(c=b([].slice.call(document.querySelectorAll("#"+a.id))),c.attr("href",a.url[d]).attr("refcode",a.refcode+d),void(a.bcrefcode&&c.attr("bcrefcode",a.bcrefcode)))},download:function(a){var b=document.createElement("iframe");b.setAttribute("width",0),b.setAttribute("height",0),b.setAttribute("style","display:none;overflow:hidden;"),document.body.appendChild(b),b.setAttribute("src",a)},refcode:function(a,c){var d,e="";e=c?'<a refcode="'+a+'" bcrefcode="'+c+'"></a>':'<a refcode="'+a+'"></a>',d=b(e),b("body").append(d),b.fn.tap?d.trigger("tap"):d.trigger("mousedown"),d.remove()},type:function(){var a="click";return b.fn.tap&&(a="tap"),a},init:function(){this.isUc&&b(document).on(this.type(),"a",this.tap.bind(this))},tap:function(a){var b,c=a.currentTarget.id;b=this.list.filter(function(a){return c===a.id})[0],b&&(a.stopPropagation(),this.guide(b))},guide:function(b){var c=this.client;"common"===c?a.location=b.url.common:(this.refcode(b.refcode+c,b.bcrefcode),this.download(b.url[c]))}};c.init(),a.AppDown=c}(window,window.Zepto||window.jQuery);
