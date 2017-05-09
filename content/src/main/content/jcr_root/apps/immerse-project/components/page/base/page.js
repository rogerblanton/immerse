"use strict";

var global = this;

use(["/libs/wcm/foundation/components/utils/ResourceUtils.js"], function (ResourceUtils) {
    
    var CONST = {
        PROP_DESIGN_PATH: "cq:designPath"
    };

    var _getLanguage = function () {
        var language = "";
        if (global.currentPage) {
        	language = global.currentPage.getLanguage(false).toString();
        }
       return language;
    };
    var language = _getLanguage();
    
    return {
        language: language
    };

});
