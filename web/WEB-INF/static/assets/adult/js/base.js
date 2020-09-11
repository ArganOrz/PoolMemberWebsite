/**
 * Created by Veblin on 5/12/16.
 */

(function () {
    'use strict'
    function importCSS(name) {
        var _importCSS = (function (oHead) {
            function loadError(oError) {
                throw new URIError("The CSS " + oError.target.src + " is not accessible.");
            }

            return function (sSrc, fOnload) {
                var oScript = document.createElement("link");
                oScript.rel = "stylesheet";
                if (fOnload) {
                    oScript.onload = fOnload;
                }
                oHead.appendChild(oScript);
                oScript.href = sSrc;
            }
        })(document.body || document.getElementsByTagName("body")[0]);
        //页面模块
        _importCSS("../css/" + name + ".css?v=" + 0);
    }
    //fixcss
    // if (navigator.userAgent.indexOf('Macintosh') > -1) {
    //     importCSS('fixmac');
    // }
})()



