package com.adobe.immerse.rogerblanton.use;

import com.adobe.cq.sightly.WCMUsePojo;
import com.day.cq.wcm.api.Page;
import org.apache.sling.api.resource.ValueMap;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class StylesheetCustomizer extends WCMUsePojo {

    private static final Logger log = LoggerFactory.getLogger(StylesheetCustomizer.class);


    @Override
    public void activate() {

        Page cp = getCurrentPage();
        ValueMap inheritedPageProperties = getInheritedPageProperties();

        String designPagePath = inheritedPageProperties.get("cq:designPath", String.class);



    }

}
