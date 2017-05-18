<%--
  #%L
  ACS AEM Commons Package
  %%
  Copyright (C) 2013 Adobe
  %%
  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at
  
       http://www.apache.org/licenses/LICENSE-2.0
  
  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
  #L%
  --%>
<%@include file="/libs/foundation/global.jsp" %>
<%
%>
<%@page session="false" contentType="text/html" pageEncoding="utf-8"
        import="com.adobe.acs.commons.designer.DesignHtmlLibraryManager,
                com.adobe.acs.commons.designer.PageRegion" %>
<%

    /* Head */
    final String[] cssHeadLibs = properties.get(PageRegion.HEAD + "/" + DesignHtmlLibraryManager.PROPERTY_CSS, new String[]{});
    final String[] jsHeadLibs = properties.get(PageRegion.HEAD + "/" + DesignHtmlLibraryManager.PROPERTY_JS, new String[]{});

    /* Body */
    final String[] jsBodyLibs = properties.get(PageRegion.BODY + "/" + DesignHtmlLibraryManager.PROPERTY_JS, new String[]{});
%>

<div class="bs-docs-section" id="less-variables-section">
    <h1 class="page-header" id="less-variables">Variables</h1>
    <p class="lead">Customize variables to define colors, sizes and more inside your custom CSS stylesheets.</p>
    <h2 id="colors"><a class="anchorjs-link " href="#colors" aria-label="Anchor link for: colors" data-anchorjs-icon=""
                       style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Colors
    </h2>
    <p>Gray and brand colors for use across Bootstrap.</p>
    <div class="row">
        <div class="col-xs-4"><label for="input-@gray-base">@gray-base</label> <input class="form-control"
                                                                                      id="input-@gray-base" value="#000"
                                                                                      data-var="@gray-base"></div>
        <div class="col-xs-4"><label for="input-@gray-darker">@gray-darker</label> <input class="form-control"
                                                                                          id="input-@gray-darker"
                                                                                          value="lighten(@gray-base, 13.5%)"
                                                                                          data-var="@gray-darker"></div>
        <div class="col-xs-4"><label for="input-@gray-dark">@gray-dark</label> <input class="form-control"
                                                                                      id="input-@gray-dark"
                                                                                      value="lighten(@gray-base, 20%)"
                                                                                      data-var="@gray-dark"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@gray">@gray</label> <input class="form-control" id="input-@gray"
                                                                            value="lighten(@gray-base, 33.5%)"
                                                                            data-var="@gray"></div>
        <div class="col-xs-4"><label for="input-@gray-light">@gray-light</label> <input class="form-control"
                                                                                        id="input-@gray-light"
                                                                                        value="lighten(@gray-base, 46.7%)"
                                                                                        data-var="@gray-light"></div>
        <div class="col-xs-4"><label for="input-@gray-lighter">@gray-lighter</label> <input class="form-control"
                                                                                            id="input-@gray-lighter"
                                                                                            value="lighten(@gray-base, 93.5%)"
                                                                                            data-var="@gray-lighter">
        </div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@brand-primary">@brand-primary</label> <input class="form-control"
                                                                                              id="input-@brand-primary"
                                                                                              value="darken(#428bca, 6.5%)"
                                                                                              data-var="@brand-primary">
        </div>
        <div class="col-xs-4"><label for="input-@brand-success">@brand-success</label> <input class="form-control"
                                                                                              id="input-@brand-success"
                                                                                              value="#5cb85c"
                                                                                              data-var="@brand-success">
        </div>
        <div class="col-xs-4"><label for="input-@brand-info">@brand-info</label> <input class="form-control"
                                                                                        id="input-@brand-info"
                                                                                        value="#5bc0de"
                                                                                        data-var="@brand-info"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@brand-warning">@brand-warning</label> <input class="form-control"
                                                                                              id="input-@brand-warning"
                                                                                              value="#f0ad4e"
                                                                                              data-var="@brand-warning">
        </div>
        <div class="col-xs-4"><label for="input-@brand-danger">@brand-danger</label> <input class="form-control"
                                                                                            id="input-@brand-danger"
                                                                                            value="#d9534f"
                                                                                            data-var="@brand-danger">
        </div>
    </div>
    <h2 id="scaffolding"><a class="anchorjs-link " href="#scaffolding" aria-label="Anchor link for: scaffolding"
                            data-anchorjs-icon=""
                            style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Scaffolding
    </h2>
    <p>Settings for some of the most global styles.</p>
    <div class="row">
        <div class="col-xs-4"><label for="input-@body-bg">@body-bg</label> <input class="form-control"
                                                                                  id="input-@body-bg"
                                                                                  aria-describedby="help-block-@body-bg"
                                                                                  value="#fff" data-var="@body-bg">
            <p class="help-block" id="help-block-@body-bg">Background color for <code>&lt;body&gt;</code>.</p></div>
        <div class="col-xs-4"><label for="input-@text-color">@text-color</label> <input class="form-control"
                                                                                        id="input-@text-color"
                                                                                        aria-describedby="help-block-@text-color"
                                                                                        value="@gray-dark"
                                                                                        data-var="@text-color">
            <p class="help-block" id="help-block-@text-color">Global text color on <code>&lt;body&gt;</code>.</p></div>
        <div class="col-xs-4"><label for="input-@link-color">@link-color</label> <input class="form-control"
                                                                                        id="input-@link-color"
                                                                                        aria-describedby="help-block-@link-color"
                                                                                        value="@brand-primary"
                                                                                        data-var="@link-color">
            <p class="help-block" id="help-block-@link-color">Global textual link color.</p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@link-hover-color">@link-hover-color</label> <input class="form-control"
                                                                                                    id="input-@link-hover-color"
                                                                                                    aria-describedby="help-block-@link-hover-color"
                                                                                                    value="darken(@link-color, 15%)"
                                                                                                    data-var="@link-hover-color">
            <p class="help-block" id="help-block-@link-hover-color">Link hover color set via <code>darken()</code>
                function.</p></div>
        <div class="col-xs-4"><label for="input-@link-hover-decoration">@link-hover-decoration</label> <input
                class="form-control" id="input-@link-hover-decoration"
                aria-describedby="help-block-@link-hover-decoration" value="underline"
                data-var="@link-hover-decoration">
            <p class="help-block" id="help-block-@link-hover-decoration">Link hover decoration.</p></div>
    </div>
    <h2 id="typography"><a class="anchorjs-link " href="#typography" aria-label="Anchor link for: typography"
                           data-anchorjs-icon=""
                           style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Typography
    </h2>
    <p>Font, line-height, and color for body text, headings, and more.</p>
    <div class="row">
        <div class="col-xs-4"><label for="input-@font-family-sans-serif">@font-family-sans-serif</label> <input
                class="form-control" id="input-@font-family-sans-serif"
                value="&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif" data-var="@font-family-sans-serif">
        </div>
        <div class="col-xs-4"><label for="input-@font-family-serif">@font-family-serif</label> <input
                class="form-control" id="input-@font-family-serif"
                value="Georgia, &quot;Times New Roman&quot;, Times, serif" data-var="@font-family-serif"></div>
        <div class="col-xs-4"><label for="input-@font-family-monospace">@font-family-monospace</label> <input
                class="form-control" id="input-@font-family-monospace"
                aria-describedby="help-block-@font-family-monospace"
                value="Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace" data-var="@font-family-monospace">
            <p class="help-block" id="help-block-@font-family-monospace">Default monospace fonts for
                <code>&lt;code&gt;</code>, <code>&lt;kbd&gt;</code>, and <code>&lt;pre&gt;</code>.</p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@font-family-base">@font-family-base</label> <input class="form-control"
                                                                                                    id="input-@font-family-base"
                                                                                                    value="@font-family-sans-serif"
                                                                                                    data-var="@font-family-base">
        </div>
        <div class="col-xs-4"><label for="input-@font-size-base">@font-size-base</label> <input class="form-control"
                                                                                                id="input-@font-size-base"
                                                                                                value="14px"
                                                                                                data-var="@font-size-base">
        </div>
        <div class="col-xs-4"><label for="input-@font-size-large">@font-size-large</label> <input class="form-control"
                                                                                                  id="input-@font-size-large"
                                                                                                  value="ceil((@font-size-base * 1.25))"
                                                                                                  data-var="@font-size-large">
        </div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@font-size-small">@font-size-small</label> <input class="form-control"
                                                                                                  id="input-@font-size-small"
                                                                                                  value="ceil((@font-size-base * 0.85))"
                                                                                                  data-var="@font-size-small">
        </div>
        <div class="col-xs-4"><label for="input-@font-size-h1">@font-size-h1</label> <input class="form-control"
                                                                                            id="input-@font-size-h1"
                                                                                            value="floor((@font-size-base * 2.6))"
                                                                                            data-var="@font-size-h1">
        </div>
        <div class="col-xs-4"><label for="input-@font-size-h2">@font-size-h2</label> <input class="form-control"
                                                                                            id="input-@font-size-h2"
                                                                                            value="floor((@font-size-base * 2.15))"
                                                                                            data-var="@font-size-h2">
        </div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@font-size-h3">@font-size-h3</label> <input class="form-control"
                                                                                            id="input-@font-size-h3"
                                                                                            value="ceil((@font-size-base * 1.7))"
                                                                                            data-var="@font-size-h3">
        </div>
        <div class="col-xs-4"><label for="input-@font-size-h4">@font-size-h4</label> <input class="form-control"
                                                                                            id="input-@font-size-h4"
                                                                                            value="ceil((@font-size-base * 1.25))"
                                                                                            data-var="@font-size-h4">
        </div>
        <div class="col-xs-4"><label for="input-@font-size-h5">@font-size-h5</label> <input class="form-control"
                                                                                            id="input-@font-size-h5"
                                                                                            value="@font-size-base"
                                                                                            data-var="@font-size-h5">
        </div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@font-size-h6">@font-size-h6</label> <input class="form-control"
                                                                                            id="input-@font-size-h6"
                                                                                            value="ceil((@font-size-base * 0.85))"
                                                                                            data-var="@font-size-h6">
        </div>
        <div class="col-xs-4"><label for="input-@line-height-base">@line-height-base</label> <input class="form-control"
                                                                                                    id="input-@line-height-base"
                                                                                                    aria-describedby="help-block-@line-height-base"
                                                                                                    value="1.428571429"
                                                                                                    data-var="@line-height-base">
            <p class="help-block" id="help-block-@line-height-base">Unit-less <code>line-height</code> for use in
                components like buttons.</p></div>
        <div class="col-xs-4"><label for="input-@line-height-computed">@line-height-computed</label> <input
                class="form-control" id="input-@line-height-computed"
                aria-describedby="help-block-@line-height-computed" value="floor((@font-size-base * @line-height-base))"
                data-var="@line-height-computed">
            <p class="help-block" id="help-block-@line-height-computed">Computed "line-height" (<code>font-size</code> *
                <code>line-height</code>) for use with <code>margin</code>, <code>padding</code>, etc.</p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@headings-font-family">@headings-font-family</label> <input
                class="form-control" id="input-@headings-font-family"
                aria-describedby="help-block-@headings-font-family" value="inherit" data-var="@headings-font-family">
            <p class="help-block" id="help-block-@headings-font-family">By default, this inherits from the <code>&lt;body&gt;</code>.
            </p></div>
        <div class="col-xs-4"><label for="input-@headings-font-weight">@headings-font-weight</label> <input
                class="form-control" id="input-@headings-font-weight" value="500" data-var="@headings-font-weight">
        </div>
        <div class="col-xs-4"><label for="input-@headings-line-height">@headings-line-height</label> <input
                class="form-control" id="input-@headings-line-height" value="1.1" data-var="@headings-line-height">
        </div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@headings-color">@headings-color</label> <input class="form-control"
                                                                                                id="input-@headings-color"
                                                                                                value="inherit"
                                                                                                data-var="@headings-color">
        </div>
    </div>
    <h2 id="iconography"><a class="anchorjs-link " href="#iconography" aria-label="Anchor link for: iconography"
                            data-anchorjs-icon=""
                            style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Iconography
    </h2>
    <p>Specify custom location and filename of the included Glyphicons icon font. Useful for those including Bootstrap
        via Bower.</p>
    <div class="row">
        <div class="col-xs-4"><label for="input-@icon-font-path">@icon-font-path</label> <input class="form-control"
                                                                                                id="input-@icon-font-path"
                                                                                                aria-describedby="help-block-@icon-font-path"
                                                                                                value="&quot;../fonts/&quot;"
                                                                                                data-var="@icon-font-path">
            <p class="help-block" id="help-block-@icon-font-path">Load fonts from this directory.</p></div>
        <div class="col-xs-4"><label for="input-@icon-font-name">@icon-font-name</label> <input class="form-control"
                                                                                                id="input-@icon-font-name"
                                                                                                aria-describedby="help-block-@icon-font-name"
                                                                                                value="&quot;glyphicons-halflings-regular&quot;"
                                                                                                data-var="@icon-font-name">
            <p class="help-block" id="help-block-@icon-font-name">File name for all font files.</p></div>
        <div class="col-xs-4"><label for="input-@icon-font-svg-id">@icon-font-svg-id</label> <input class="form-control"
                                                                                                    id="input-@icon-font-svg-id"
                                                                                                    aria-describedby="help-block-@icon-font-svg-id"
                                                                                                    value="&quot;glyphicons_halflingsregular&quot;"
                                                                                                    data-var="@icon-font-svg-id">
            <p class="help-block" id="help-block-@icon-font-svg-id">Element ID within SVG icon file.</p></div>
    </div>
    <h2 id="components"><a class="anchorjs-link " href="#components" aria-label="Anchor link for: components"
                           data-anchorjs-icon=""
                           style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Components
    </h2>
    <p>Define common padding and border radius sizes and more. Values based on 14px text and 1.428 line-height (~20px to
        start).</p>
    <div class="row">
        <div class="col-xs-4"><label for="input-@padding-base-vertical">@padding-base-vertical</label> <input
                class="form-control" id="input-@padding-base-vertical" value="6px" data-var="@padding-base-vertical">
        </div>
        <div class="col-xs-4"><label for="input-@padding-base-horizontal">@padding-base-horizontal</label> <input
                class="form-control" id="input-@padding-base-horizontal" value="12px"
                data-var="@padding-base-horizontal"></div>
        <div class="col-xs-4"><label for="input-@padding-large-vertical">@padding-large-vertical</label> <input
                class="form-control" id="input-@padding-large-vertical" value="10px" data-var="@padding-large-vertical">
        </div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@padding-large-horizontal">@padding-large-horizontal</label> <input
                class="form-control" id="input-@padding-large-horizontal" value="16px"
                data-var="@padding-large-horizontal"></div>
        <div class="col-xs-4"><label for="input-@padding-small-vertical">@padding-small-vertical</label> <input
                class="form-control" id="input-@padding-small-vertical" value="5px" data-var="@padding-small-vertical">
        </div>
        <div class="col-xs-4"><label for="input-@padding-small-horizontal">@padding-small-horizontal</label> <input
                class="form-control" id="input-@padding-small-horizontal" value="10px"
                data-var="@padding-small-horizontal"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@padding-xs-vertical">@padding-xs-vertical</label> <input
                class="form-control" id="input-@padding-xs-vertical" value="1px" data-var="@padding-xs-vertical"></div>
        <div class="col-xs-4"><label for="input-@padding-xs-horizontal">@padding-xs-horizontal</label> <input
                class="form-control" id="input-@padding-xs-horizontal" value="5px" data-var="@padding-xs-horizontal">
        </div>
        <div class="col-xs-4"><label for="input-@line-height-large">@line-height-large</label> <input
                class="form-control" id="input-@line-height-large" value="1.3333333" data-var="@line-height-large">
        </div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@line-height-small">@line-height-small</label> <input
                class="form-control" id="input-@line-height-small" value="1.5" data-var="@line-height-small"></div>
        <div class="col-xs-4"><label for="input-@border-radius-base">@border-radius-base</label> <input
                class="form-control" id="input-@border-radius-base" value="4px" data-var="@border-radius-base"></div>
        <div class="col-xs-4"><label for="input-@border-radius-large">@border-radius-large</label> <input
                class="form-control" id="input-@border-radius-large" value="6px" data-var="@border-radius-large"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@border-radius-small">@border-radius-small</label> <input
                class="form-control" id="input-@border-radius-small" value="3px" data-var="@border-radius-small"></div>
        <div class="col-xs-4"><label for="input-@component-active-color">@component-active-color</label> <input
                class="form-control" id="input-@component-active-color"
                aria-describedby="help-block-@component-active-color" value="#fff" data-var="@component-active-color">
            <p class="help-block" id="help-block-@component-active-color">Global color for active items (e.g., navs or
                dropdowns).</p></div>
        <div class="col-xs-4"><label for="input-@component-active-bg">@component-active-bg</label> <input
                class="form-control" id="input-@component-active-bg" aria-describedby="help-block-@component-active-bg"
                value="@brand-primary" data-var="@component-active-bg">
            <p class="help-block" id="help-block-@component-active-bg">Global background color for active items (e.g.,
                navs or dropdowns).</p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@caret-width-base">@caret-width-base</label> <input class="form-control"
                                                                                                    id="input-@caret-width-base"
                                                                                                    aria-describedby="help-block-@caret-width-base"
                                                                                                    value="4px"
                                                                                                    data-var="@caret-width-base">
            <p class="help-block" id="help-block-@caret-width-base">Width of the <code>border</code> for generating
                carets that indicate dropdowns.</p></div>
        <div class="col-xs-4"><label for="input-@caret-width-large">@caret-width-large</label> <input
                class="form-control" id="input-@caret-width-large" aria-describedby="help-block-@caret-width-large"
                value="5px" data-var="@caret-width-large">
            <p class="help-block" id="help-block-@caret-width-large">Carets increase slightly in size for larger
                components.</p></div>
    </div>
    <h2 id="tables"><a class="anchorjs-link " href="#tables" aria-label="Anchor link for: tables" data-anchorjs-icon=""
                       style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Tables
    </h2>
    <p>Customizes the <code>.table</code> component with basic values, each used across all table variations.</p>
    <div class="row">
        <div class="col-xs-4"><label for="input-@table-cell-padding">@table-cell-padding</label> <input
                class="form-control" id="input-@table-cell-padding" aria-describedby="help-block-@table-cell-padding"
                value="8px" data-var="@table-cell-padding">
            <p class="help-block" id="help-block-@table-cell-padding">Padding for <code>&lt;th&gt;</code>s and <code>&lt;td&gt;</code>s.
            </p></div>
        <div class="col-xs-4"><label for="input-@table-condensed-cell-padding">@table-condensed-cell-padding</label>
            <input class="form-control" id="input-@table-condensed-cell-padding"
                   aria-describedby="help-block-@table-condensed-cell-padding" value="5px"
                   data-var="@table-condensed-cell-padding">
            <p class="help-block" id="help-block-@table-condensed-cell-padding">Padding for cells in <code>.table-condensed</code>.
            </p></div>
        <div class="col-xs-4"><label for="input-@table-bg">@table-bg</label> <input class="form-control"
                                                                                    id="input-@table-bg"
                                                                                    aria-describedby="help-block-@table-bg"
                                                                                    value="transparent"
                                                                                    data-var="@table-bg">
            <p class="help-block" id="help-block-@table-bg">Default background color used for all tables.</p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@table-bg-accent">@table-bg-accent</label> <input class="form-control"
                                                                                                  id="input-@table-bg-accent"
                                                                                                  aria-describedby="help-block-@table-bg-accent"
                                                                                                  value="#f9f9f9"
                                                                                                  data-var="@table-bg-accent">
            <p class="help-block" id="help-block-@table-bg-accent">Background color used for <code>.table-striped</code>.
            </p></div>
        <div class="col-xs-4"><label for="input-@table-bg-hover">@table-bg-hover</label> <input class="form-control"
                                                                                                id="input-@table-bg-hover"
                                                                                                aria-describedby="help-block-@table-bg-hover"
                                                                                                value="#f5f5f5"
                                                                                                data-var="@table-bg-hover">
            <p class="help-block" id="help-block-@table-bg-hover">Background color used for <code>.table-hover</code>.
            </p></div>
        <div class="col-xs-4"><label for="input-@table-bg-active">@table-bg-active</label> <input class="form-control"
                                                                                                  id="input-@table-bg-active"
                                                                                                  value="@table-bg-hover"
                                                                                                  data-var="@table-bg-active">
        </div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@table-border-color">@table-border-color</label> <input
                class="form-control" id="input-@table-border-color" aria-describedby="help-block-@table-border-color"
                value="#ddd" data-var="@table-border-color">
            <p class="help-block" id="help-block-@table-border-color">Border color for table and cell borders.</p></div>
    </div>
    <h2 id="buttons"><a class="anchorjs-link " href="#buttons" aria-label="Anchor link for: buttons"
                        data-anchorjs-icon=""
                        style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Buttons
    </h2>
    <p>For each of Bootstrap's buttons, define text, background and border color.</p>
    <div class="row">
        <div class="col-xs-4"><label for="input-@btn-font-weight">@btn-font-weight</label> <input class="form-control"
                                                                                                  id="input-@btn-font-weight"
                                                                                                  value="normal"
                                                                                                  data-var="@btn-font-weight">
        </div>
        <div class="col-xs-4"><label for="input-@btn-default-color">@btn-default-color</label> <input
                class="form-control" id="input-@btn-default-color" value="#333" data-var="@btn-default-color"></div>
        <div class="col-xs-4"><label for="input-@btn-default-bg">@btn-default-bg</label> <input class="form-control"
                                                                                                id="input-@btn-default-bg"
                                                                                                value="#fff"
                                                                                                data-var="@btn-default-bg">
        </div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@btn-default-border">@btn-default-border</label> <input
                class="form-control" id="input-@btn-default-border" value="#ccc" data-var="@btn-default-border"></div>
        <div class="col-xs-4"><label for="input-@btn-primary-color">@btn-primary-color</label> <input
                class="form-control" id="input-@btn-primary-color" value="#fff" data-var="@btn-primary-color"></div>
        <div class="col-xs-4"><label for="input-@btn-primary-bg">@btn-primary-bg</label> <input class="form-control"
                                                                                                id="input-@btn-primary-bg"
                                                                                                value="@brand-primary"
                                                                                                data-var="@btn-primary-bg">
        </div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@btn-primary-border">@btn-primary-border</label> <input
                class="form-control" id="input-@btn-primary-border" value="darken(@btn-primary-bg, 5%)"
                data-var="@btn-primary-border"></div>
        <div class="col-xs-4"><label for="input-@btn-success-color">@btn-success-color</label> <input
                class="form-control" id="input-@btn-success-color" value="#fff" data-var="@btn-success-color"></div>
        <div class="col-xs-4"><label for="input-@btn-success-bg">@btn-success-bg</label> <input class="form-control"
                                                                                                id="input-@btn-success-bg"
                                                                                                value="@brand-success"
                                                                                                data-var="@btn-success-bg">
        </div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@btn-success-border">@btn-success-border</label> <input
                class="form-control" id="input-@btn-success-border" value="darken(@btn-success-bg, 5%)"
                data-var="@btn-success-border"></div>
        <div class="col-xs-4"><label for="input-@btn-info-color">@btn-info-color</label> <input class="form-control"
                                                                                                id="input-@btn-info-color"
                                                                                                value="#fff"
                                                                                                data-var="@btn-info-color">
        </div>
        <div class="col-xs-4"><label for="input-@btn-info-bg">@btn-info-bg</label> <input class="form-control"
                                                                                          id="input-@btn-info-bg"
                                                                                          value="@brand-info"
                                                                                          data-var="@btn-info-bg"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@btn-info-border">@btn-info-border</label> <input class="form-control"
                                                                                                  id="input-@btn-info-border"
                                                                                                  value="darken(@btn-info-bg, 5%)"
                                                                                                  data-var="@btn-info-border">
        </div>
        <div class="col-xs-4"><label for="input-@btn-warning-color">@btn-warning-color</label> <input
                class="form-control" id="input-@btn-warning-color" value="#fff" data-var="@btn-warning-color"></div>
        <div class="col-xs-4"><label for="input-@btn-warning-bg">@btn-warning-bg</label> <input class="form-control"
                                                                                                id="input-@btn-warning-bg"
                                                                                                value="@brand-warning"
                                                                                                data-var="@btn-warning-bg">
        </div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@btn-warning-border">@btn-warning-border</label> <input
                class="form-control" id="input-@btn-warning-border" value="darken(@btn-warning-bg, 5%)"
                data-var="@btn-warning-border"></div>
        <div class="col-xs-4"><label for="input-@btn-danger-color">@btn-danger-color</label> <input class="form-control"
                                                                                                    id="input-@btn-danger-color"
                                                                                                    value="#fff"
                                                                                                    data-var="@btn-danger-color">
        </div>
        <div class="col-xs-4"><label for="input-@btn-danger-bg">@btn-danger-bg</label> <input class="form-control"
                                                                                              id="input-@btn-danger-bg"
                                                                                              value="@brand-danger"
                                                                                              data-var="@btn-danger-bg">
        </div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@btn-danger-border">@btn-danger-border</label> <input
                class="form-control" id="input-@btn-danger-border" value="darken(@btn-danger-bg, 5%)"
                data-var="@btn-danger-border"></div>
        <div class="col-xs-4"><label for="input-@btn-link-disabled-color">@btn-link-disabled-color</label> <input
                class="form-control" id="input-@btn-link-disabled-color" value="@gray-light"
                data-var="@btn-link-disabled-color"></div>
        <div class="col-xs-4"><label for="input-@btn-border-radius-base">@btn-border-radius-base</label> <input
                class="form-control" id="input-@btn-border-radius-base" value="@border-radius-base"
                data-var="@btn-border-radius-base"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@btn-border-radius-large">@btn-border-radius-large</label> <input
                class="form-control" id="input-@btn-border-radius-large" value="@border-radius-large"
                data-var="@btn-border-radius-large"></div>
        <div class="col-xs-4"><label for="input-@btn-border-radius-small">@btn-border-radius-small</label> <input
                class="form-control" id="input-@btn-border-radius-small" value="@border-radius-small"
                data-var="@btn-border-radius-small"></div>
    </div>
    <h2 id="forms"><a class="anchorjs-link " href="#forms" aria-label="Anchor link for: forms" data-anchorjs-icon=""
                      style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Forms
    </h2>
    <div class="row">
        <div class="col-xs-4"><label for="input-@input-bg">@input-bg</label> <input class="form-control"
                                                                                    id="input-@input-bg"
                                                                                    aria-describedby="help-block-@input-bg"
                                                                                    value="#fff" data-var="@input-bg">
            <p class="help-block" id="help-block-@input-bg"><code>&lt;input&gt;</code> background color</p></div>
        <div class="col-xs-4"><label for="input-@input-bg-disabled">@input-bg-disabled</label> <input
                class="form-control" id="input-@input-bg-disabled" aria-describedby="help-block-@input-bg-disabled"
                value="@gray-lighter" data-var="@input-bg-disabled">
            <p class="help-block" id="help-block-@input-bg-disabled"><code>&lt;input disabled&gt;</code> background
                color</p></div>
        <div class="col-xs-4"><label for="input-@input-color">@input-color</label> <input class="form-control"
                                                                                          id="input-@input-color"
                                                                                          aria-describedby="help-block-@input-color"
                                                                                          value="@gray"
                                                                                          data-var="@input-color">
            <p class="help-block" id="help-block-@input-color">Text color for <code>&lt;input&gt;</code>s</p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@input-border">@input-border</label> <input class="form-control"
                                                                                            id="input-@input-border"
                                                                                            aria-describedby="help-block-@input-border"
                                                                                            value="#ccc"
                                                                                            data-var="@input-border">
            <p class="help-block" id="help-block-@input-border"><code>&lt;input&gt;</code> border color</p></div>
        <div class="col-xs-4"><label for="input-@input-border-radius">@input-border-radius</label> <input
                class="form-control" id="input-@input-border-radius" aria-describedby="help-block-@input-border-radius"
                value="@border-radius-base" data-var="@input-border-radius">
            <p class="help-block" id="help-block-@input-border-radius">Default <code>.form-control</code> border radius
            </p></div>
        <div class="col-xs-4"><label for="input-@input-border-radius-large">@input-border-radius-large</label> <input
                class="form-control" id="input-@input-border-radius-large"
                aria-describedby="help-block-@input-border-radius-large" value="@border-radius-large"
                data-var="@input-border-radius-large">
            <p class="help-block" id="help-block-@input-border-radius-large">Large <code>.form-control</code> border
                radius</p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@input-border-radius-small">@input-border-radius-small</label> <input
                class="form-control" id="input-@input-border-radius-small"
                aria-describedby="help-block-@input-border-radius-small" value="@border-radius-small"
                data-var="@input-border-radius-small">
            <p class="help-block" id="help-block-@input-border-radius-small">Small <code>.form-control</code> border
                radius</p></div>
        <div class="col-xs-4"><label for="input-@input-border-focus">@input-border-focus</label> <input
                class="form-control" id="input-@input-border-focus" aria-describedby="help-block-@input-border-focus"
                value="#66afe9" data-var="@input-border-focus">
            <p class="help-block" id="help-block-@input-border-focus">Border color for inputs on focus</p></div>
        <div class="col-xs-4"><label for="input-@input-color-placeholder">@input-color-placeholder</label> <input
                class="form-control" id="input-@input-color-placeholder"
                aria-describedby="help-block-@input-color-placeholder" value="#999" data-var="@input-color-placeholder">
            <p class="help-block" id="help-block-@input-color-placeholder">Placeholder text color</p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@input-height-base">@input-height-base</label> <input
                class="form-control" id="input-@input-height-base" aria-describedby="help-block-@input-height-base"
                value="(@line-height-computed + (@padding-base-vertical * 2) + 2)" data-var="@input-height-base">
            <p class="help-block" id="help-block-@input-height-base">Default <code>.form-control</code> height</p></div>
        <div class="col-xs-4"><label for="input-@input-height-large">@input-height-large</label> <input
                class="form-control" id="input-@input-height-large" aria-describedby="help-block-@input-height-large"
                value="(ceil(@font-size-large * @line-height-large) + (@padding-large-vertical * 2) + 2)"
                data-var="@input-height-large">
            <p class="help-block" id="help-block-@input-height-large">Large <code>.form-control</code> height</p></div>
        <div class="col-xs-4"><label for="input-@input-height-small">@input-height-small</label> <input
                class="form-control" id="input-@input-height-small" aria-describedby="help-block-@input-height-small"
                value="(floor(@font-size-small * @line-height-small) + (@padding-small-vertical * 2) + 2)"
                data-var="@input-height-small">
            <p class="help-block" id="help-block-@input-height-small">Small <code>.form-control</code> height</p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@form-group-margin-bottom">@form-group-margin-bottom</label> <input
                class="form-control" id="input-@form-group-margin-bottom"
                aria-describedby="help-block-@form-group-margin-bottom" value="15px"
                data-var="@form-group-margin-bottom">
            <p class="help-block" id="help-block-@form-group-margin-bottom"><code>.form-group</code> margin</p></div>
        <div class="col-xs-4"><label for="input-@legend-color">@legend-color</label> <input class="form-control"
                                                                                            id="input-@legend-color"
                                                                                            value="@gray-dark"
                                                                                            data-var="@legend-color">
        </div>
        <div class="col-xs-4"><label for="input-@legend-border-color">@legend-border-color</label> <input
                class="form-control" id="input-@legend-border-color" value="#e5e5e5" data-var="@legend-border-color">
        </div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@input-group-addon-bg">@input-group-addon-bg</label> <input
                class="form-control" id="input-@input-group-addon-bg"
                aria-describedby="help-block-@input-group-addon-bg" value="@gray-lighter"
                data-var="@input-group-addon-bg">
            <p class="help-block" id="help-block-@input-group-addon-bg">Background color for textual input addons</p>
        </div>
        <div class="col-xs-4"><label for="input-@input-group-addon-border-color">@input-group-addon-border-color</label>
            <input class="form-control" id="input-@input-group-addon-border-color"
                   aria-describedby="help-block-@input-group-addon-border-color" value="@input-border"
                   data-var="@input-group-addon-border-color">
            <p class="help-block" id="help-block-@input-group-addon-border-color">Border color for textual input
                addons</p></div>
        <div class="col-xs-4"><label for="input-@cursor-disabled">@cursor-disabled</label> <input class="form-control"
                                                                                                  id="input-@cursor-disabled"
                                                                                                  aria-describedby="help-block-@cursor-disabled"
                                                                                                  value="not-allowed"
                                                                                                  data-var="@cursor-disabled">
            <p class="help-block" id="help-block-@cursor-disabled">Disabled cursor for form controls and buttons.</p>
        </div>
    </div>
    <h2 id="dropdowns"><a class="anchorjs-link " href="#dropdowns" aria-label="Anchor link for: dropdowns"
                          data-anchorjs-icon=""
                          style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Dropdowns
    </h2>
    <p>Dropdown menu container and contents.</p>
    <div class="row">
        <div class="col-xs-4"><label for="input-@dropdown-bg">@dropdown-bg</label> <input class="form-control"
                                                                                          id="input-@dropdown-bg"
                                                                                          aria-describedby="help-block-@dropdown-bg"
                                                                                          value="#fff"
                                                                                          data-var="@dropdown-bg">
            <p class="help-block" id="help-block-@dropdown-bg">Background for the dropdown menu.</p></div>
        <div class="col-xs-4"><label for="input-@dropdown-border">@dropdown-border</label> <input class="form-control"
                                                                                                  id="input-@dropdown-border"
                                                                                                  aria-describedby="help-block-@dropdown-border"
                                                                                                  value="rgba(0,0,0,.15)"
                                                                                                  data-var="@dropdown-border">
            <p class="help-block" id="help-block-@dropdown-border">Dropdown menu <code>border-color</code>.</p></div>
        <div class="col-xs-4"><label for="input-@dropdown-fallback-border">@dropdown-fallback-border</label> <input
                class="form-control" id="input-@dropdown-fallback-border"
                aria-describedby="help-block-@dropdown-fallback-border" value="#ccc"
                data-var="@dropdown-fallback-border">
            <p class="help-block" id="help-block-@dropdown-fallback-border">Dropdown menu <code>border-color</code>
                <strong>for IE8</strong>.</p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@dropdown-divider-bg">@dropdown-divider-bg</label> <input
                class="form-control" id="input-@dropdown-divider-bg" aria-describedby="help-block-@dropdown-divider-bg"
                value="#e5e5e5" data-var="@dropdown-divider-bg">
            <p class="help-block" id="help-block-@dropdown-divider-bg">Divider color for between dropdown items.</p>
        </div>
        <div class="col-xs-4"><label for="input-@dropdown-link-color">@dropdown-link-color</label> <input
                class="form-control" id="input-@dropdown-link-color" aria-describedby="help-block-@dropdown-link-color"
                value="@gray-dark" data-var="@dropdown-link-color">
            <p class="help-block" id="help-block-@dropdown-link-color">Dropdown link text color.</p></div>
        <div class="col-xs-4"><label for="input-@dropdown-link-hover-color">@dropdown-link-hover-color</label> <input
                class="form-control" id="input-@dropdown-link-hover-color"
                aria-describedby="help-block-@dropdown-link-hover-color" value="darken(@gray-dark, 5%)"
                data-var="@dropdown-link-hover-color">
            <p class="help-block" id="help-block-@dropdown-link-hover-color">Hover color for dropdown links.</p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@dropdown-link-hover-bg">@dropdown-link-hover-bg</label> <input
                class="form-control" id="input-@dropdown-link-hover-bg"
                aria-describedby="help-block-@dropdown-link-hover-bg" value="#f5f5f5"
                data-var="@dropdown-link-hover-bg">
            <p class="help-block" id="help-block-@dropdown-link-hover-bg">Hover background for dropdown links.</p></div>
        <div class="col-xs-4"><label for="input-@dropdown-link-active-color">@dropdown-link-active-color</label> <input
                class="form-control" id="input-@dropdown-link-active-color"
                aria-describedby="help-block-@dropdown-link-active-color" value="@component-active-color"
                data-var="@dropdown-link-active-color">
            <p class="help-block" id="help-block-@dropdown-link-active-color">Active dropdown menu item text color.</p>
        </div>
        <div class="col-xs-4"><label for="input-@dropdown-link-active-bg">@dropdown-link-active-bg</label> <input
                class="form-control" id="input-@dropdown-link-active-bg"
                aria-describedby="help-block-@dropdown-link-active-bg" value="@component-active-bg"
                data-var="@dropdown-link-active-bg">
            <p class="help-block" id="help-block-@dropdown-link-active-bg">Active dropdown menu item background
                color.</p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@dropdown-link-disabled-color">@dropdown-link-disabled-color</label>
            <input class="form-control" id="input-@dropdown-link-disabled-color"
                   aria-describedby="help-block-@dropdown-link-disabled-color" value="@gray-light"
                   data-var="@dropdown-link-disabled-color">
            <p class="help-block" id="help-block-@dropdown-link-disabled-color">Disabled dropdown menu item background
                color.</p></div>
        <div class="col-xs-4"><label for="input-@dropdown-header-color">@dropdown-header-color</label> <input
                class="form-control" id="input-@dropdown-header-color"
                aria-describedby="help-block-@dropdown-header-color" value="@gray-light"
                data-var="@dropdown-header-color">
            <p class="help-block" id="help-block-@dropdown-header-color">Text color for headers within dropdown
                menus.</p></div>
        <div class="col-xs-4"><label for="input-@dropdown-caret-color">@dropdown-caret-color</label> <input
                class="form-control" id="input-@dropdown-caret-color"
                aria-describedby="help-block-@dropdown-caret-color" value="#000" data-var="@dropdown-caret-color">
            <p class="help-block" id="help-block-@dropdown-caret-color">Deprecated <code>@dropdown-caret-color</code> as
                of v3.1.0</p></div>
    </div>
    <h2 id="media-queries-breakpoints"><a class="anchorjs-link " href="#media-queries-breakpoints"
                                          aria-label="Anchor link for: media queries breakpoints" data-anchorjs-icon=""
                                          style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Media
        queries breakpoints</h2>
    <p>Define the breakpoints at which your layout will change, adapting to different screen sizes.</p>
    <div class="row">
        <div class="col-xs-4"><label for="input-@screen-xs">@screen-xs</label> <input class="form-control"
                                                                                      id="input-@screen-xs"
                                                                                      aria-describedby="help-block-@screen-xs"
                                                                                      value="480px"
                                                                                      data-var="@screen-xs">
            <p class="help-block" id="help-block-@screen-xs">Deprecated <code>@screen-xs</code> as of v3.0.1</p></div>
        <div class="col-xs-4"><label for="input-@screen-xs-min">@screen-xs-min</label> <input class="form-control"
                                                                                              id="input-@screen-xs-min"
                                                                                              aria-describedby="help-block-@screen-xs-min"
                                                                                              value="@screen-xs"
                                                                                              data-var="@screen-xs-min">
            <p class="help-block" id="help-block-@screen-xs-min">Deprecated <code>@screen-xs-min</code> as of v3.2.0</p>
        </div>
        <div class="col-xs-4"><label for="input-@screen-phone">@screen-phone</label> <input class="form-control"
                                                                                            id="input-@screen-phone"
                                                                                            aria-describedby="help-block-@screen-phone"
                                                                                            value="@screen-xs-min"
                                                                                            data-var="@screen-phone">
            <p class="help-block" id="help-block-@screen-phone">Deprecated <code>@screen-phone</code> as of v3.0.1</p>
        </div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@screen-sm">@screen-sm</label> <input class="form-control"
                                                                                      id="input-@screen-sm"
                                                                                      aria-describedby="help-block-@screen-sm"
                                                                                      value="768px"
                                                                                      data-var="@screen-sm">
            <p class="help-block" id="help-block-@screen-sm">Deprecated <code>@screen-sm</code> as of v3.0.1</p></div>
        <div class="col-xs-4"><label for="input-@screen-sm-min">@screen-sm-min</label> <input class="form-control"
                                                                                              id="input-@screen-sm-min"
                                                                                              value="@screen-sm"
                                                                                              data-var="@screen-sm-min">
        </div>
        <div class="col-xs-4"><label for="input-@screen-tablet">@screen-tablet</label> <input class="form-control"
                                                                                              id="input-@screen-tablet"
                                                                                              aria-describedby="help-block-@screen-tablet"
                                                                                              value="@screen-sm-min"
                                                                                              data-var="@screen-tablet">
            <p class="help-block" id="help-block-@screen-tablet">Deprecated <code>@screen-tablet</code> as of v3.0.1</p>
        </div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@screen-md">@screen-md</label> <input class="form-control"
                                                                                      id="input-@screen-md"
                                                                                      aria-describedby="help-block-@screen-md"
                                                                                      value="992px"
                                                                                      data-var="@screen-md">
            <p class="help-block" id="help-block-@screen-md">Deprecated <code>@screen-md</code> as of v3.0.1</p></div>
        <div class="col-xs-4"><label for="input-@screen-md-min">@screen-md-min</label> <input class="form-control"
                                                                                              id="input-@screen-md-min"
                                                                                              value="@screen-md"
                                                                                              data-var="@screen-md-min">
        </div>
        <div class="col-xs-4"><label for="input-@screen-desktop">@screen-desktop</label> <input class="form-control"
                                                                                                id="input-@screen-desktop"
                                                                                                aria-describedby="help-block-@screen-desktop"
                                                                                                value="@screen-md-min"
                                                                                                data-var="@screen-desktop">
            <p class="help-block" id="help-block-@screen-desktop">Deprecated <code>@screen-desktop</code> as of v3.0.1
            </p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@screen-lg">@screen-lg</label> <input class="form-control"
                                                                                      id="input-@screen-lg"
                                                                                      aria-describedby="help-block-@screen-lg"
                                                                                      value="1200px"
                                                                                      data-var="@screen-lg">
            <p class="help-block" id="help-block-@screen-lg">Deprecated <code>@screen-lg</code> as of v3.0.1</p></div>
        <div class="col-xs-4"><label for="input-@screen-lg-min">@screen-lg-min</label> <input class="form-control"
                                                                                              id="input-@screen-lg-min"
                                                                                              value="@screen-lg"
                                                                                              data-var="@screen-lg-min">
        </div>
        <div class="col-xs-4"><label for="input-@screen-lg-desktop">@screen-lg-desktop</label> <input
                class="form-control" id="input-@screen-lg-desktop" aria-describedby="help-block-@screen-lg-desktop"
                value="@screen-lg-min" data-var="@screen-lg-desktop">
            <p class="help-block" id="help-block-@screen-lg-desktop">Deprecated <code>@screen-lg-desktop</code> as of
                v3.0.1</p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@screen-xs-max">@screen-xs-max</label> <input class="form-control"
                                                                                              id="input-@screen-xs-max"
                                                                                              value="(@screen-sm-min - 1)"
                                                                                              data-var="@screen-xs-max">
        </div>
        <div class="col-xs-4"><label for="input-@screen-sm-max">@screen-sm-max</label> <input class="form-control"
                                                                                              id="input-@screen-sm-max"
                                                                                              value="(@screen-md-min - 1)"
                                                                                              data-var="@screen-sm-max">
        </div>
        <div class="col-xs-4"><label for="input-@screen-md-max">@screen-md-max</label> <input class="form-control"
                                                                                              id="input-@screen-md-max"
                                                                                              value="(@screen-lg-min - 1)"
                                                                                              data-var="@screen-md-max">
        </div>
    </div>
    <h2 id="grid-system"><a class="anchorjs-link " href="#grid-system" aria-label="Anchor link for: grid system"
                            data-anchorjs-icon=""
                            style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Grid
        system</h2>
    <p>Define your custom responsive grid.</p>
    <div class="row">
        <div class="col-xs-4"><label for="input-@grid-columns">@grid-columns</label> <input class="form-control"
                                                                                            id="input-@grid-columns"
                                                                                            aria-describedby="help-block-@grid-columns"
                                                                                            value="12"
                                                                                            data-var="@grid-columns">
            <p class="help-block" id="help-block-@grid-columns">Number of columns in the grid.</p></div>
        <div class="col-xs-4"><label for="input-@grid-gutter-width">@grid-gutter-width</label> <input
                class="form-control" id="input-@grid-gutter-width" aria-describedby="help-block-@grid-gutter-width"
                value="30px" data-var="@grid-gutter-width">
            <p class="help-block" id="help-block-@grid-gutter-width">Padding between columns. Gets divided in half for
                the left and right.</p></div>
        <div class="col-xs-4"><label for="input-@grid-float-breakpoint">@grid-float-breakpoint</label> <input
                class="form-control" id="input-@grid-float-breakpoint"
                aria-describedby="help-block-@grid-float-breakpoint" value="@screen-sm-min"
                data-var="@grid-float-breakpoint">
            <p class="help-block" id="help-block-@grid-float-breakpoint">Point at which the navbar becomes
                uncollapsed.</p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@grid-float-breakpoint-max">@grid-float-breakpoint-max</label> <input
                class="form-control" id="input-@grid-float-breakpoint-max"
                aria-describedby="help-block-@grid-float-breakpoint-max" value="(@grid-float-breakpoint - 1)"
                data-var="@grid-float-breakpoint-max">
            <p class="help-block" id="help-block-@grid-float-breakpoint-max">Point at which the navbar begins
                collapsing.</p></div>
    </div>
    <h2 id="container-sizes"><a class="anchorjs-link " href="#container-sizes"
                                aria-label="Anchor link for: container sizes" data-anchorjs-icon=""
                                style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Container
        sizes</h2>
    <p>Define the maximum width of <code>.container</code> for different screen sizes.</p>
    <div class="row">
        <div class="col-xs-4"><label for="input-@container-tablet">@container-tablet</label> <input class="form-control"
                                                                                                    id="input-@container-tablet"
                                                                                                    value="(720px + @grid-gutter-width)"
                                                                                                    data-var="@container-tablet">
        </div>
        <div class="col-xs-4"><label for="input-@container-sm">@container-sm</label> <input class="form-control"
                                                                                            id="input-@container-sm"
                                                                                            aria-describedby="help-block-@container-sm"
                                                                                            value="@container-tablet"
                                                                                            data-var="@container-sm">
            <p class="help-block" id="help-block-@container-sm">For <code>@screen-sm-min</code> and up.</p></div>
        <div class="col-xs-4"><label for="input-@container-desktop">@container-desktop</label> <input
                class="form-control" id="input-@container-desktop" value="(940px + @grid-gutter-width)"
                data-var="@container-desktop"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@container-md">@container-md</label> <input class="form-control"
                                                                                            id="input-@container-md"
                                                                                            aria-describedby="help-block-@container-md"
                                                                                            value="@container-desktop"
                                                                                            data-var="@container-md">
            <p class="help-block" id="help-block-@container-md">For <code>@screen-md-min</code> and up.</p></div>
        <div class="col-xs-4"><label for="input-@container-large-desktop">@container-large-desktop</label> <input
                class="form-control" id="input-@container-large-desktop" value="(1140px + @grid-gutter-width)"
                data-var="@container-large-desktop"></div>
        <div class="col-xs-4"><label for="input-@container-lg">@container-lg</label> <input class="form-control"
                                                                                            id="input-@container-lg"
                                                                                            aria-describedby="help-block-@container-lg"
                                                                                            value="@container-large-desktop"
                                                                                            data-var="@container-lg">
            <p class="help-block" id="help-block-@container-lg">For <code>@screen-lg-min</code> and up.</p></div>
    </div>
    <h2 id="navbar"><a class="anchorjs-link " href="#navbar" aria-label="Anchor link for: navbar" data-anchorjs-icon=""
                       style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Navbar
    </h2>
    <div class="row">
        <div class="col-xs-4"><label for="input-@navbar-height">@navbar-height</label> <input class="form-control"
                                                                                              id="input-@navbar-height"
                                                                                              value="50px"
                                                                                              data-var="@navbar-height">
        </div>
        <div class="col-xs-4"><label for="input-@navbar-margin-bottom">@navbar-margin-bottom</label> <input
                class="form-control" id="input-@navbar-margin-bottom" value="@line-height-computed"
                data-var="@navbar-margin-bottom"></div>
        <div class="col-xs-4"><label for="input-@navbar-border-radius">@navbar-border-radius</label> <input
                class="form-control" id="input-@navbar-border-radius" value="@border-radius-base"
                data-var="@navbar-border-radius"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@navbar-padding-horizontal">@navbar-padding-horizontal</label> <input
                class="form-control" id="input-@navbar-padding-horizontal" value="floor((@grid-gutter-width / 2))"
                data-var="@navbar-padding-horizontal"></div>
        <div class="col-xs-4"><label for="input-@navbar-padding-vertical">@navbar-padding-vertical</label> <input
                class="form-control" id="input-@navbar-padding-vertical"
                value="((@navbar-height - @line-height-computed) / 2)" data-var="@navbar-padding-vertical"></div>
        <div class="col-xs-4"><label for="input-@navbar-collapse-max-height">@navbar-collapse-max-height</label> <input
                class="form-control" id="input-@navbar-collapse-max-height" value="340px"
                data-var="@navbar-collapse-max-height"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@navbar-default-color">@navbar-default-color</label> <input
                class="form-control" id="input-@navbar-default-color" value="#777" data-var="@navbar-default-color">
        </div>
        <div class="col-xs-4"><label for="input-@navbar-default-bg">@navbar-default-bg</label> <input
                class="form-control" id="input-@navbar-default-bg" value="#f8f8f8" data-var="@navbar-default-bg"></div>
        <div class="col-xs-4"><label for="input-@navbar-default-border">@navbar-default-border</label> <input
                class="form-control" id="input-@navbar-default-border" value="darken(@navbar-default-bg, 6.5%)"
                data-var="@navbar-default-border"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@navbar-default-link-color">@navbar-default-link-color</label> <input
                class="form-control" id="input-@navbar-default-link-color" value="#777"
                data-var="@navbar-default-link-color"></div>
        <div class="col-xs-4"><label
                for="input-@navbar-default-link-hover-color">@navbar-default-link-hover-color</label> <input
                class="form-control" id="input-@navbar-default-link-hover-color" value="#333"
                data-var="@navbar-default-link-hover-color"></div>
        <div class="col-xs-4"><label for="input-@navbar-default-link-hover-bg">@navbar-default-link-hover-bg</label>
            <input class="form-control" id="input-@navbar-default-link-hover-bg" value="transparent"
                   data-var="@navbar-default-link-hover-bg"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label
                for="input-@navbar-default-link-active-color">@navbar-default-link-active-color</label> <input
                class="form-control" id="input-@navbar-default-link-active-color" value="#555"
                data-var="@navbar-default-link-active-color"></div>
        <div class="col-xs-4"><label for="input-@navbar-default-link-active-bg">@navbar-default-link-active-bg</label>
            <input class="form-control" id="input-@navbar-default-link-active-bg"
                   value="darken(@navbar-default-bg, 6.5%)" data-var="@navbar-default-link-active-bg"></div>
        <div class="col-xs-4"><label
                for="input-@navbar-default-link-disabled-color">@navbar-default-link-disabled-color</label> <input
                class="form-control" id="input-@navbar-default-link-disabled-color" value="#ccc"
                data-var="@navbar-default-link-disabled-color"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label
                for="input-@navbar-default-link-disabled-bg">@navbar-default-link-disabled-bg</label> <input
                class="form-control" id="input-@navbar-default-link-disabled-bg" value="transparent"
                data-var="@navbar-default-link-disabled-bg"></div>
        <div class="col-xs-4"><label for="input-@navbar-default-brand-color">@navbar-default-brand-color</label> <input
                class="form-control" id="input-@navbar-default-brand-color" value="@navbar-default-link-color"
                data-var="@navbar-default-brand-color"></div>
        <div class="col-xs-4"><label
                for="input-@navbar-default-brand-hover-color">@navbar-default-brand-hover-color</label> <input
                class="form-control" id="input-@navbar-default-brand-hover-color"
                value="darken(@navbar-default-brand-color, 10%)" data-var="@navbar-default-brand-hover-color"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@navbar-default-brand-hover-bg">@navbar-default-brand-hover-bg</label>
            <input class="form-control" id="input-@navbar-default-brand-hover-bg" value="transparent"
                   data-var="@navbar-default-brand-hover-bg"></div>
        <div class="col-xs-4"><label for="input-@navbar-default-toggle-hover-bg">@navbar-default-toggle-hover-bg</label>
            <input class="form-control" id="input-@navbar-default-toggle-hover-bg" value="#ddd"
                   data-var="@navbar-default-toggle-hover-bg"></div>
        <div class="col-xs-4"><label
                for="input-@navbar-default-toggle-icon-bar-bg">@navbar-default-toggle-icon-bar-bg</label> <input
                class="form-control" id="input-@navbar-default-toggle-icon-bar-bg" value="#888"
                data-var="@navbar-default-toggle-icon-bar-bg"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label
                for="input-@navbar-default-toggle-border-color">@navbar-default-toggle-border-color</label> <input
                class="form-control" id="input-@navbar-default-toggle-border-color" value="#ddd"
                data-var="@navbar-default-toggle-border-color"></div>
    </div>
    <h3 id="inverted-navbar"><a class="anchorjs-link " href="#inverted-navbar"
                                aria-label="Anchor link for: inverted navbar" data-anchorjs-icon=""
                                style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Inverted
        navbar</h3>
    <div class="row">
        <div class="col-xs-4"><label for="input-@navbar-inverse-color">@navbar-inverse-color</label> <input
                class="form-control" id="input-@navbar-inverse-color" value="lighten(@gray-light, 15%)"
                data-var="@navbar-inverse-color"></div>
        <div class="col-xs-4"><label for="input-@navbar-inverse-bg">@navbar-inverse-bg</label> <input
                class="form-control" id="input-@navbar-inverse-bg" value="#222" data-var="@navbar-inverse-bg"></div>
        <div class="col-xs-4"><label for="input-@navbar-inverse-border">@navbar-inverse-border</label> <input
                class="form-control" id="input-@navbar-inverse-border" value="darken(@navbar-inverse-bg, 10%)"
                data-var="@navbar-inverse-border"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@navbar-inverse-link-color">@navbar-inverse-link-color</label> <input
                class="form-control" id="input-@navbar-inverse-link-color" value="lighten(@gray-light, 15%)"
                data-var="@navbar-inverse-link-color"></div>
        <div class="col-xs-4"><label
                for="input-@navbar-inverse-link-hover-color">@navbar-inverse-link-hover-color</label> <input
                class="form-control" id="input-@navbar-inverse-link-hover-color" value="#fff"
                data-var="@navbar-inverse-link-hover-color"></div>
        <div class="col-xs-4"><label for="input-@navbar-inverse-link-hover-bg">@navbar-inverse-link-hover-bg</label>
            <input class="form-control" id="input-@navbar-inverse-link-hover-bg" value="transparent"
                   data-var="@navbar-inverse-link-hover-bg"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label
                for="input-@navbar-inverse-link-active-color">@navbar-inverse-link-active-color</label> <input
                class="form-control" id="input-@navbar-inverse-link-active-color"
                value="@navbar-inverse-link-hover-color" data-var="@navbar-inverse-link-active-color"></div>
        <div class="col-xs-4"><label for="input-@navbar-inverse-link-active-bg">@navbar-inverse-link-active-bg</label>
            <input class="form-control" id="input-@navbar-inverse-link-active-bg"
                   value="darken(@navbar-inverse-bg, 10%)" data-var="@navbar-inverse-link-active-bg"></div>
        <div class="col-xs-4"><label
                for="input-@navbar-inverse-link-disabled-color">@navbar-inverse-link-disabled-color</label> <input
                class="form-control" id="input-@navbar-inverse-link-disabled-color" value="#444"
                data-var="@navbar-inverse-link-disabled-color"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label
                for="input-@navbar-inverse-link-disabled-bg">@navbar-inverse-link-disabled-bg</label> <input
                class="form-control" id="input-@navbar-inverse-link-disabled-bg" value="transparent"
                data-var="@navbar-inverse-link-disabled-bg"></div>
        <div class="col-xs-4"><label for="input-@navbar-inverse-brand-color">@navbar-inverse-brand-color</label> <input
                class="form-control" id="input-@navbar-inverse-brand-color" value="@navbar-inverse-link-color"
                data-var="@navbar-inverse-brand-color"></div>
        <div class="col-xs-4"><label
                for="input-@navbar-inverse-brand-hover-color">@navbar-inverse-brand-hover-color</label> <input
                class="form-control" id="input-@navbar-inverse-brand-hover-color" value="#fff"
                data-var="@navbar-inverse-brand-hover-color"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@navbar-inverse-brand-hover-bg">@navbar-inverse-brand-hover-bg</label>
            <input class="form-control" id="input-@navbar-inverse-brand-hover-bg" value="transparent"
                   data-var="@navbar-inverse-brand-hover-bg"></div>
        <div class="col-xs-4"><label for="input-@navbar-inverse-toggle-hover-bg">@navbar-inverse-toggle-hover-bg</label>
            <input class="form-control" id="input-@navbar-inverse-toggle-hover-bg" value="#333"
                   data-var="@navbar-inverse-toggle-hover-bg"></div>
        <div class="col-xs-4"><label
                for="input-@navbar-inverse-toggle-icon-bar-bg">@navbar-inverse-toggle-icon-bar-bg</label> <input
                class="form-control" id="input-@navbar-inverse-toggle-icon-bar-bg" value="#fff"
                data-var="@navbar-inverse-toggle-icon-bar-bg"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label
                for="input-@navbar-inverse-toggle-border-color">@navbar-inverse-toggle-border-color</label> <input
                class="form-control" id="input-@navbar-inverse-toggle-border-color" value="#333"
                data-var="@navbar-inverse-toggle-border-color"></div>
    </div>
    <h2 id="navs"><a class="anchorjs-link " href="#navs" aria-label="Anchor link for: navs" data-anchorjs-icon=""
                     style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Navs
    </h2>
    <h3 id="shared-nav-styles"><a class="anchorjs-link " href="#shared-nav-styles"
                                  aria-label="Anchor link for: shared nav styles" data-anchorjs-icon=""
                                  style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Shared
        nav styles</h3>
    <div class="row">
        <div class="col-xs-4"><label for="input-@nav-link-padding">@nav-link-padding</label> <input class="form-control"
                                                                                                    id="input-@nav-link-padding"
                                                                                                    value="10px 15px"
                                                                                                    data-var="@nav-link-padding">
        </div>
        <div class="col-xs-4"><label for="input-@nav-link-hover-bg">@nav-link-hover-bg</label> <input
                class="form-control" id="input-@nav-link-hover-bg" value="@gray-lighter" data-var="@nav-link-hover-bg">
        </div>
        <div class="col-xs-4"><label for="input-@nav-disabled-link-color">@nav-disabled-link-color</label> <input
                class="form-control" id="input-@nav-disabled-link-color" value="@gray-light"
                data-var="@nav-disabled-link-color"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@nav-disabled-link-hover-color">@nav-disabled-link-hover-color</label>
            <input class="form-control" id="input-@nav-disabled-link-hover-color" value="@gray-light"
                   data-var="@nav-disabled-link-hover-color"></div>
    </div>
    <h2 id="tabs"><a class="anchorjs-link " href="#tabs" aria-label="Anchor link for: tabs" data-anchorjs-icon=""
                     style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Tabs
    </h2>
    <div class="row">
        <div class="col-xs-4"><label for="input-@nav-tabs-border-color">@nav-tabs-border-color</label> <input
                class="form-control" id="input-@nav-tabs-border-color" value="#ddd" data-var="@nav-tabs-border-color">
        </div>
        <div class="col-xs-4"><label
                for="input-@nav-tabs-link-hover-border-color">@nav-tabs-link-hover-border-color</label> <input
                class="form-control" id="input-@nav-tabs-link-hover-border-color" value="@gray-lighter"
                data-var="@nav-tabs-link-hover-border-color"></div>
        <div class="col-xs-4"><label for="input-@nav-tabs-active-link-hover-bg">@nav-tabs-active-link-hover-bg</label>
            <input class="form-control" id="input-@nav-tabs-active-link-hover-bg" value="@body-bg"
                   data-var="@nav-tabs-active-link-hover-bg"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label
                for="input-@nav-tabs-active-link-hover-color">@nav-tabs-active-link-hover-color</label> <input
                class="form-control" id="input-@nav-tabs-active-link-hover-color" value="@gray"
                data-var="@nav-tabs-active-link-hover-color"></div>
        <div class="col-xs-4"><label for="input-@nav-tabs-active-link-hover-border-color">@nav-tabs-active-link-hover-border-color</label>
            <input class="form-control" id="input-@nav-tabs-active-link-hover-border-color" value="#ddd"
                   data-var="@nav-tabs-active-link-hover-border-color"></div>
        <div class="col-xs-4"><label for="input-@nav-tabs-justified-link-border-color">@nav-tabs-justified-link-border-color</label>
            <input class="form-control" id="input-@nav-tabs-justified-link-border-color" value="#ddd"
                   data-var="@nav-tabs-justified-link-border-color"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@nav-tabs-justified-active-link-border-color">@nav-tabs-justified-active-link-border-color</label>
            <input class="form-control" id="input-@nav-tabs-justified-active-link-border-color" value="@body-bg"
                   data-var="@nav-tabs-justified-active-link-border-color"></div>
    </div>
    <h2 id="pills"><a class="anchorjs-link " href="#pills" aria-label="Anchor link for: pills" data-anchorjs-icon=""
                      style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Pills
    </h2>
    <div class="row">
        <div class="col-xs-4"><label for="input-@nav-pills-border-radius">@nav-pills-border-radius</label> <input
                class="form-control" id="input-@nav-pills-border-radius" value="@border-radius-base"
                data-var="@nav-pills-border-radius"></div>
        <div class="col-xs-4"><label for="input-@nav-pills-active-link-hover-bg">@nav-pills-active-link-hover-bg</label>
            <input class="form-control" id="input-@nav-pills-active-link-hover-bg" value="@component-active-bg"
                   data-var="@nav-pills-active-link-hover-bg"></div>
        <div class="col-xs-4"><label
                for="input-@nav-pills-active-link-hover-color">@nav-pills-active-link-hover-color</label> <input
                class="form-control" id="input-@nav-pills-active-link-hover-color" value="@component-active-color"
                data-var="@nav-pills-active-link-hover-color"></div>
    </div>
    <h2 id="pagination"><a class="anchorjs-link " href="#pagination" aria-label="Anchor link for: pagination"
                           data-anchorjs-icon=""
                           style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Pagination
    </h2>
    <div class="row">
        <div class="col-xs-4"><label for="input-@pagination-color">@pagination-color</label> <input class="form-control"
                                                                                                    id="input-@pagination-color"
                                                                                                    value="@link-color"
                                                                                                    data-var="@pagination-color">
        </div>
        <div class="col-xs-4"><label for="input-@pagination-bg">@pagination-bg</label> <input class="form-control"
                                                                                              id="input-@pagination-bg"
                                                                                              value="#fff"
                                                                                              data-var="@pagination-bg">
        </div>
        <div class="col-xs-4"><label for="input-@pagination-border">@pagination-border</label> <input
                class="form-control" id="input-@pagination-border" value="#ddd" data-var="@pagination-border"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@pagination-hover-color">@pagination-hover-color</label> <input
                class="form-control" id="input-@pagination-hover-color" value="@link-hover-color"
                data-var="@pagination-hover-color"></div>
        <div class="col-xs-4"><label for="input-@pagination-hover-bg">@pagination-hover-bg</label> <input
                class="form-control" id="input-@pagination-hover-bg" value="@gray-lighter"
                data-var="@pagination-hover-bg"></div>
        <div class="col-xs-4"><label for="input-@pagination-hover-border">@pagination-hover-border</label> <input
                class="form-control" id="input-@pagination-hover-border" value="#ddd"
                data-var="@pagination-hover-border"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@pagination-active-color">@pagination-active-color</label> <input
                class="form-control" id="input-@pagination-active-color" value="#fff"
                data-var="@pagination-active-color"></div>
        <div class="col-xs-4"><label for="input-@pagination-active-bg">@pagination-active-bg</label> <input
                class="form-control" id="input-@pagination-active-bg" value="@brand-primary"
                data-var="@pagination-active-bg"></div>
        <div class="col-xs-4"><label for="input-@pagination-active-border">@pagination-active-border</label> <input
                class="form-control" id="input-@pagination-active-border" value="@brand-primary"
                data-var="@pagination-active-border"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@pagination-disabled-color">@pagination-disabled-color</label> <input
                class="form-control" id="input-@pagination-disabled-color" value="@gray-light"
                data-var="@pagination-disabled-color"></div>
        <div class="col-xs-4"><label for="input-@pagination-disabled-bg">@pagination-disabled-bg</label> <input
                class="form-control" id="input-@pagination-disabled-bg" value="#fff" data-var="@pagination-disabled-bg">
        </div>
        <div class="col-xs-4"><label for="input-@pagination-disabled-border">@pagination-disabled-border</label> <input
                class="form-control" id="input-@pagination-disabled-border" value="#ddd"
                data-var="@pagination-disabled-border"></div>
    </div>
    <h2 id="pager"><a class="anchorjs-link " href="#pager" aria-label="Anchor link for: pager" data-anchorjs-icon=""
                      style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Pager
    </h2>
    <div class="row">
        <div class="col-xs-4"><label for="input-@pager-bg">@pager-bg</label> <input class="form-control"
                                                                                    id="input-@pager-bg"
                                                                                    value="@pagination-bg"
                                                                                    data-var="@pager-bg"></div>
        <div class="col-xs-4"><label for="input-@pager-border">@pager-border</label> <input class="form-control"
                                                                                            id="input-@pager-border"
                                                                                            value="@pagination-border"
                                                                                            data-var="@pager-border">
        </div>
        <div class="col-xs-4"><label for="input-@pager-border-radius">@pager-border-radius</label> <input
                class="form-control" id="input-@pager-border-radius" value="15px" data-var="@pager-border-radius"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@pager-hover-bg">@pager-hover-bg</label> <input class="form-control"
                                                                                                id="input-@pager-hover-bg"
                                                                                                value="@pagination-hover-bg"
                                                                                                data-var="@pager-hover-bg">
        </div>
        <div class="col-xs-4"><label for="input-@pager-active-bg">@pager-active-bg</label> <input class="form-control"
                                                                                                  id="input-@pager-active-bg"
                                                                                                  value="@pagination-active-bg"
                                                                                                  data-var="@pager-active-bg">
        </div>
        <div class="col-xs-4"><label for="input-@pager-active-color">@pager-active-color</label> <input
                class="form-control" id="input-@pager-active-color" value="@pagination-active-color"
                data-var="@pager-active-color"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@pager-disabled-color">@pager-disabled-color</label> <input
                class="form-control" id="input-@pager-disabled-color" value="@pagination-disabled-color"
                data-var="@pager-disabled-color"></div>
    </div>
    <h2 id="jumbotron"><a class="anchorjs-link " href="#jumbotron" aria-label="Anchor link for: jumbotron"
                          data-anchorjs-icon=""
                          style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Jumbotron
    </h2>
    <div class="row">
        <div class="col-xs-4"><label for="input-@jumbotron-padding">@jumbotron-padding</label> <input
                class="form-control" id="input-@jumbotron-padding" value="30px" data-var="@jumbotron-padding"></div>
        <div class="col-xs-4"><label for="input-@jumbotron-color">@jumbotron-color</label> <input class="form-control"
                                                                                                  id="input-@jumbotron-color"
                                                                                                  value="inherit"
                                                                                                  data-var="@jumbotron-color">
        </div>
        <div class="col-xs-4"><label for="input-@jumbotron-bg">@jumbotron-bg</label> <input class="form-control"
                                                                                            id="input-@jumbotron-bg"
                                                                                            value="@gray-lighter"
                                                                                            data-var="@jumbotron-bg">
        </div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@jumbotron-heading-color">@jumbotron-heading-color</label> <input
                class="form-control" id="input-@jumbotron-heading-color" value="inherit"
                data-var="@jumbotron-heading-color"></div>
        <div class="col-xs-4"><label for="input-@jumbotron-font-size">@jumbotron-font-size</label> <input
                class="form-control" id="input-@jumbotron-font-size" value="ceil((@font-size-base * 1.5))"
                data-var="@jumbotron-font-size"></div>
        <div class="col-xs-4"><label for="input-@jumbotron-heading-font-size">@jumbotron-heading-font-size</label>
            <input class="form-control" id="input-@jumbotron-heading-font-size" value="ceil((@font-size-base * 4.5))"
                   data-var="@jumbotron-heading-font-size"></div>
    </div>
    <h2 id="form-states-and-alerts"><a class="anchorjs-link " href="#form-states-and-alerts"
                                       aria-label="Anchor link for: form states and alerts" data-anchorjs-icon=""
                                       style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Form
        states and alerts</h2>
    <p>Define colors for form feedback states and, by default, alerts.</p>
    <div class="row">
        <div class="col-xs-4"><label for="input-@state-success-text">@state-success-text</label> <input
                class="form-control" id="input-@state-success-text" value="#3c763d" data-var="@state-success-text">
        </div>
        <div class="col-xs-4"><label for="input-@state-success-bg">@state-success-bg</label> <input class="form-control"
                                                                                                    id="input-@state-success-bg"
                                                                                                    value="#dff0d8"
                                                                                                    data-var="@state-success-bg">
        </div>
        <div class="col-xs-4"><label for="input-@state-success-border">@state-success-border</label> <input
                class="form-control" id="input-@state-success-border" value="darken(spin(@state-success-bg, -10), 5%)"
                data-var="@state-success-border"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@state-info-text">@state-info-text</label> <input class="form-control"
                                                                                                  id="input-@state-info-text"
                                                                                                  value="#31708f"
                                                                                                  data-var="@state-info-text">
        </div>
        <div class="col-xs-4"><label for="input-@state-info-bg">@state-info-bg</label> <input class="form-control"
                                                                                              id="input-@state-info-bg"
                                                                                              value="#d9edf7"
                                                                                              data-var="@state-info-bg">
        </div>
        <div class="col-xs-4"><label for="input-@state-info-border">@state-info-border</label> <input
                class="form-control" id="input-@state-info-border" value="darken(spin(@state-info-bg, -10), 7%)"
                data-var="@state-info-border"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@state-warning-text">@state-warning-text</label> <input
                class="form-control" id="input-@state-warning-text" value="#8a6d3b" data-var="@state-warning-text">
        </div>
        <div class="col-xs-4"><label for="input-@state-warning-bg">@state-warning-bg</label> <input class="form-control"
                                                                                                    id="input-@state-warning-bg"
                                                                                                    value="#fcf8e3"
                                                                                                    data-var="@state-warning-bg">
        </div>
        <div class="col-xs-4"><label for="input-@state-warning-border">@state-warning-border</label> <input
                class="form-control" id="input-@state-warning-border" value="darken(spin(@state-warning-bg, -10), 5%)"
                data-var="@state-warning-border"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@state-danger-text">@state-danger-text</label> <input
                class="form-control" id="input-@state-danger-text" value="#a94442" data-var="@state-danger-text"></div>
        <div class="col-xs-4"><label for="input-@state-danger-bg">@state-danger-bg</label> <input class="form-control"
                                                                                                  id="input-@state-danger-bg"
                                                                                                  value="#f2dede"
                                                                                                  data-var="@state-danger-bg">
        </div>
        <div class="col-xs-4"><label for="input-@state-danger-border">@state-danger-border</label> <input
                class="form-control" id="input-@state-danger-border" value="darken(spin(@state-danger-bg, -10), 5%)"
                data-var="@state-danger-border"></div>
    </div>
    <h2 id="tooltips"><a class="anchorjs-link " href="#tooltips" aria-label="Anchor link for: tooltips"
                         data-anchorjs-icon=""
                         style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Tooltips
    </h2>
    <div class="row">
        <div class="col-xs-4"><label for="input-@tooltip-max-width">@tooltip-max-width</label> <input
                class="form-control" id="input-@tooltip-max-width" aria-describedby="help-block-@tooltip-max-width"
                value="200px" data-var="@tooltip-max-width">
            <p class="help-block" id="help-block-@tooltip-max-width">Tooltip max width</p></div>
        <div class="col-xs-4"><label for="input-@tooltip-color">@tooltip-color</label> <input class="form-control"
                                                                                              id="input-@tooltip-color"
                                                                                              aria-describedby="help-block-@tooltip-color"
                                                                                              value="#fff"
                                                                                              data-var="@tooltip-color">
            <p class="help-block" id="help-block-@tooltip-color">Tooltip text color</p></div>
        <div class="col-xs-4"><label for="input-@tooltip-bg">@tooltip-bg</label> <input class="form-control"
                                                                                        id="input-@tooltip-bg"
                                                                                        aria-describedby="help-block-@tooltip-bg"
                                                                                        value="#000"
                                                                                        data-var="@tooltip-bg">
            <p class="help-block" id="help-block-@tooltip-bg">Tooltip background color</p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@tooltip-opacity">@tooltip-opacity</label> <input class="form-control"
                                                                                                  id="input-@tooltip-opacity"
                                                                                                  value=".9"
                                                                                                  data-var="@tooltip-opacity">
        </div>
        <div class="col-xs-4"><label for="input-@tooltip-arrow-width">@tooltip-arrow-width</label> <input
                class="form-control" id="input-@tooltip-arrow-width" aria-describedby="help-block-@tooltip-arrow-width"
                value="5px" data-var="@tooltip-arrow-width">
            <p class="help-block" id="help-block-@tooltip-arrow-width">Tooltip arrow width</p></div>
        <div class="col-xs-4"><label for="input-@tooltip-arrow-color">@tooltip-arrow-color</label> <input
                class="form-control" id="input-@tooltip-arrow-color" aria-describedby="help-block-@tooltip-arrow-color"
                value="@tooltip-bg" data-var="@tooltip-arrow-color">
            <p class="help-block" id="help-block-@tooltip-arrow-color">Tooltip arrow color</p></div>
    </div>
    <h2 id="popovers"><a class="anchorjs-link " href="#popovers" aria-label="Anchor link for: popovers"
                         data-anchorjs-icon=""
                         style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Popovers
    </h2>
    <div class="row">
        <div class="col-xs-4"><label for="input-@popover-bg">@popover-bg</label> <input class="form-control"
                                                                                        id="input-@popover-bg"
                                                                                        aria-describedby="help-block-@popover-bg"
                                                                                        value="#fff"
                                                                                        data-var="@popover-bg">
            <p class="help-block" id="help-block-@popover-bg">Popover body background color</p></div>
        <div class="col-xs-4"><label for="input-@popover-max-width">@popover-max-width</label> <input
                class="form-control" id="input-@popover-max-width" aria-describedby="help-block-@popover-max-width"
                value="276px" data-var="@popover-max-width">
            <p class="help-block" id="help-block-@popover-max-width">Popover maximum width</p></div>
        <div class="col-xs-4"><label for="input-@popover-border-color">@popover-border-color</label> <input
                class="form-control" id="input-@popover-border-color"
                aria-describedby="help-block-@popover-border-color" value="rgba(0,0,0,.2)"
                data-var="@popover-border-color">
            <p class="help-block" id="help-block-@popover-border-color">Popover border color</p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@popover-fallback-border-color">@popover-fallback-border-color</label>
            <input class="form-control" id="input-@popover-fallback-border-color"
                   aria-describedby="help-block-@popover-fallback-border-color" value="#ccc"
                   data-var="@popover-fallback-border-color">
            <p class="help-block" id="help-block-@popover-fallback-border-color">Popover fallback border color</p></div>
        <div class="col-xs-4"><label for="input-@popover-title-bg">@popover-title-bg</label> <input class="form-control"
                                                                                                    id="input-@popover-title-bg"
                                                                                                    aria-describedby="help-block-@popover-title-bg"
                                                                                                    value="darken(@popover-bg, 3%)"
                                                                                                    data-var="@popover-title-bg">
            <p class="help-block" id="help-block-@popover-title-bg">Popover title background color</p></div>
        <div class="col-xs-4"><label for="input-@popover-arrow-width">@popover-arrow-width</label> <input
                class="form-control" id="input-@popover-arrow-width" aria-describedby="help-block-@popover-arrow-width"
                value="10px" data-var="@popover-arrow-width">
            <p class="help-block" id="help-block-@popover-arrow-width">Popover arrow width</p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@popover-arrow-color">@popover-arrow-color</label> <input
                class="form-control" id="input-@popover-arrow-color" aria-describedby="help-block-@popover-arrow-color"
                value="@popover-bg" data-var="@popover-arrow-color">
            <p class="help-block" id="help-block-@popover-arrow-color">Popover arrow color</p></div>
        <div class="col-xs-4"><label for="input-@popover-arrow-outer-width">@popover-arrow-outer-width</label> <input
                class="form-control" id="input-@popover-arrow-outer-width"
                aria-describedby="help-block-@popover-arrow-outer-width" value="(@popover-arrow-width + 1)"
                data-var="@popover-arrow-outer-width">
            <p class="help-block" id="help-block-@popover-arrow-outer-width">Popover outer arrow width</p></div>
        <div class="col-xs-4"><label for="input-@popover-arrow-outer-color">@popover-arrow-outer-color</label> <input
                class="form-control" id="input-@popover-arrow-outer-color"
                aria-describedby="help-block-@popover-arrow-outer-color" value="fadein(@popover-border-color, 5%)"
                data-var="@popover-arrow-outer-color">
            <p class="help-block" id="help-block-@popover-arrow-outer-color">Popover outer arrow color</p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label
                for="input-@popover-arrow-outer-fallback-color">@popover-arrow-outer-fallback-color</label> <input
                class="form-control" id="input-@popover-arrow-outer-fallback-color"
                aria-describedby="help-block-@popover-arrow-outer-fallback-color"
                value="darken(@popover-fallback-border-color, 20%)" data-var="@popover-arrow-outer-fallback-color">
            <p class="help-block" id="help-block-@popover-arrow-outer-fallback-color">Popover outer arrow fallback
                color</p></div>
    </div>
    <h2 id="labels"><a class="anchorjs-link " href="#labels" aria-label="Anchor link for: labels" data-anchorjs-icon=""
                       style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Labels
    </h2>
    <div class="row">
        <div class="col-xs-4"><label for="input-@label-default-bg">@label-default-bg</label> <input class="form-control"
                                                                                                    id="input-@label-default-bg"
                                                                                                    aria-describedby="help-block-@label-default-bg"
                                                                                                    value="@gray-light"
                                                                                                    data-var="@label-default-bg">
            <p class="help-block" id="help-block-@label-default-bg">Default label background color</p></div>
        <div class="col-xs-4"><label for="input-@label-primary-bg">@label-primary-bg</label> <input class="form-control"
                                                                                                    id="input-@label-primary-bg"
                                                                                                    aria-describedby="help-block-@label-primary-bg"
                                                                                                    value="@brand-primary"
                                                                                                    data-var="@label-primary-bg">
            <p class="help-block" id="help-block-@label-primary-bg">Primary label background color</p></div>
        <div class="col-xs-4"><label for="input-@label-success-bg">@label-success-bg</label> <input class="form-control"
                                                                                                    id="input-@label-success-bg"
                                                                                                    aria-describedby="help-block-@label-success-bg"
                                                                                                    value="@brand-success"
                                                                                                    data-var="@label-success-bg">
            <p class="help-block" id="help-block-@label-success-bg">Success label background color</p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@label-info-bg">@label-info-bg</label> <input class="form-control"
                                                                                              id="input-@label-info-bg"
                                                                                              aria-describedby="help-block-@label-info-bg"
                                                                                              value="@brand-info"
                                                                                              data-var="@label-info-bg">
            <p class="help-block" id="help-block-@label-info-bg">Info label background color</p></div>
        <div class="col-xs-4"><label for="input-@label-warning-bg">@label-warning-bg</label> <input class="form-control"
                                                                                                    id="input-@label-warning-bg"
                                                                                                    aria-describedby="help-block-@label-warning-bg"
                                                                                                    value="@brand-warning"
                                                                                                    data-var="@label-warning-bg">
            <p class="help-block" id="help-block-@label-warning-bg">Warning label background color</p></div>
        <div class="col-xs-4"><label for="input-@label-danger-bg">@label-danger-bg</label> <input class="form-control"
                                                                                                  id="input-@label-danger-bg"
                                                                                                  aria-describedby="help-block-@label-danger-bg"
                                                                                                  value="@brand-danger"
                                                                                                  data-var="@label-danger-bg">
            <p class="help-block" id="help-block-@label-danger-bg">Danger label background color</p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@label-color">@label-color</label> <input class="form-control"
                                                                                          id="input-@label-color"
                                                                                          aria-describedby="help-block-@label-color"
                                                                                          value="#fff"
                                                                                          data-var="@label-color">
            <p class="help-block" id="help-block-@label-color">Default label text color</p></div>
        <div class="col-xs-4"><label for="input-@label-link-hover-color">@label-link-hover-color</label> <input
                class="form-control" id="input-@label-link-hover-color"
                aria-describedby="help-block-@label-link-hover-color" value="#fff" data-var="@label-link-hover-color">
            <p class="help-block" id="help-block-@label-link-hover-color">Default text color of a linked label</p></div>
    </div>
    <h2 id="modals"><a class="anchorjs-link " href="#modals" aria-label="Anchor link for: modals" data-anchorjs-icon=""
                       style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Modals
    </h2>
    <div class="row">
        <div class="col-xs-4"><label for="input-@modal-inner-padding">@modal-inner-padding</label> <input
                class="form-control" id="input-@modal-inner-padding" aria-describedby="help-block-@modal-inner-padding"
                value="15px" data-var="@modal-inner-padding">
            <p class="help-block" id="help-block-@modal-inner-padding">Padding applied to the modal body</p></div>
        <div class="col-xs-4"><label for="input-@modal-title-padding">@modal-title-padding</label> <input
                class="form-control" id="input-@modal-title-padding" aria-describedby="help-block-@modal-title-padding"
                value="15px" data-var="@modal-title-padding">
            <p class="help-block" id="help-block-@modal-title-padding">Padding applied to the modal title</p></div>
        <div class="col-xs-4"><label for="input-@modal-title-line-height">@modal-title-line-height</label> <input
                class="form-control" id="input-@modal-title-line-height"
                aria-describedby="help-block-@modal-title-line-height" value="@line-height-base"
                data-var="@modal-title-line-height">
            <p class="help-block" id="help-block-@modal-title-line-height">Modal title line-height</p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@modal-content-bg">@modal-content-bg</label> <input class="form-control"
                                                                                                    id="input-@modal-content-bg"
                                                                                                    aria-describedby="help-block-@modal-content-bg"
                                                                                                    value="#fff"
                                                                                                    data-var="@modal-content-bg">
            <p class="help-block" id="help-block-@modal-content-bg">Background color of modal content area</p></div>
        <div class="col-xs-4"><label for="input-@modal-content-border-color">@modal-content-border-color</label> <input
                class="form-control" id="input-@modal-content-border-color"
                aria-describedby="help-block-@modal-content-border-color" value="rgba(0,0,0,.2)"
                data-var="@modal-content-border-color">
            <p class="help-block" id="help-block-@modal-content-border-color">Modal content border color</p></div>
        <div class="col-xs-4"><label for="input-@modal-content-fallback-border-color">@modal-content-fallback-border-color</label>
            <input class="form-control" id="input-@modal-content-fallback-border-color"
                   aria-describedby="help-block-@modal-content-fallback-border-color" value="#999"
                   data-var="@modal-content-fallback-border-color">
            <p class="help-block" id="help-block-@modal-content-fallback-border-color">Modal content border color
                <strong>for IE8</strong></p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@modal-backdrop-bg">@modal-backdrop-bg</label> <input
                class="form-control" id="input-@modal-backdrop-bg" aria-describedby="help-block-@modal-backdrop-bg"
                value="#000" data-var="@modal-backdrop-bg">
            <p class="help-block" id="help-block-@modal-backdrop-bg">Modal backdrop background color</p></div>
        <div class="col-xs-4"><label for="input-@modal-backdrop-opacity">@modal-backdrop-opacity</label> <input
                class="form-control" id="input-@modal-backdrop-opacity"
                aria-describedby="help-block-@modal-backdrop-opacity" value=".5" data-var="@modal-backdrop-opacity">
            <p class="help-block" id="help-block-@modal-backdrop-opacity">Modal backdrop opacity</p></div>
        <div class="col-xs-4"><label for="input-@modal-header-border-color">@modal-header-border-color</label> <input
                class="form-control" id="input-@modal-header-border-color"
                aria-describedby="help-block-@modal-header-border-color" value="#e5e5e5"
                data-var="@modal-header-border-color">
            <p class="help-block" id="help-block-@modal-header-border-color">Modal header border color</p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@modal-footer-border-color">@modal-footer-border-color</label> <input
                class="form-control" id="input-@modal-footer-border-color"
                aria-describedby="help-block-@modal-footer-border-color" value="@modal-header-border-color"
                data-var="@modal-footer-border-color">
            <p class="help-block" id="help-block-@modal-footer-border-color">Modal footer border color</p></div>
        <div class="col-xs-4"><label for="input-@modal-lg">@modal-lg</label> <input class="form-control"
                                                                                    id="input-@modal-lg" value="900px"
                                                                                    data-var="@modal-lg"></div>
        <div class="col-xs-4"><label for="input-@modal-md">@modal-md</label> <input class="form-control"
                                                                                    id="input-@modal-md" value="600px"
                                                                                    data-var="@modal-md"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@modal-sm">@modal-sm</label> <input class="form-control"
                                                                                    id="input-@modal-sm" value="300px"
                                                                                    data-var="@modal-sm"></div>
    </div>
    <h2 id="alerts"><a class="anchorjs-link " href="#alerts" aria-label="Anchor link for: alerts" data-anchorjs-icon=""
                       style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Alerts
    </h2>
    <p>Define alert colors, border radius, and padding.</p>
    <div class="row">
        <div class="col-xs-4"><label for="input-@alert-padding">@alert-padding</label> <input class="form-control"
                                                                                              id="input-@alert-padding"
                                                                                              value="15px"
                                                                                              data-var="@alert-padding">
        </div>
        <div class="col-xs-4"><label for="input-@alert-border-radius">@alert-border-radius</label> <input
                class="form-control" id="input-@alert-border-radius" value="@border-radius-base"
                data-var="@alert-border-radius"></div>
        <div class="col-xs-4"><label for="input-@alert-link-font-weight">@alert-link-font-weight</label> <input
                class="form-control" id="input-@alert-link-font-weight" value="bold" data-var="@alert-link-font-weight">
        </div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@alert-success-bg">@alert-success-bg</label> <input class="form-control"
                                                                                                    id="input-@alert-success-bg"
                                                                                                    value="@state-success-bg"
                                                                                                    data-var="@alert-success-bg">
        </div>
        <div class="col-xs-4"><label for="input-@alert-success-text">@alert-success-text</label> <input
                class="form-control" id="input-@alert-success-text" value="@state-success-text"
                data-var="@alert-success-text"></div>
        <div class="col-xs-4"><label for="input-@alert-success-border">@alert-success-border</label> <input
                class="form-control" id="input-@alert-success-border" value="@state-success-border"
                data-var="@alert-success-border"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@alert-info-bg">@alert-info-bg</label> <input class="form-control"
                                                                                              id="input-@alert-info-bg"
                                                                                              value="@state-info-bg"
                                                                                              data-var="@alert-info-bg">
        </div>
        <div class="col-xs-4"><label for="input-@alert-info-text">@alert-info-text</label> <input class="form-control"
                                                                                                  id="input-@alert-info-text"
                                                                                                  value="@state-info-text"
                                                                                                  data-var="@alert-info-text">
        </div>
        <div class="col-xs-4"><label for="input-@alert-info-border">@alert-info-border</label> <input
                class="form-control" id="input-@alert-info-border" value="@state-info-border"
                data-var="@alert-info-border"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@alert-warning-bg">@alert-warning-bg</label> <input class="form-control"
                                                                                                    id="input-@alert-warning-bg"
                                                                                                    value="@state-warning-bg"
                                                                                                    data-var="@alert-warning-bg">
        </div>
        <div class="col-xs-4"><label for="input-@alert-warning-text">@alert-warning-text</label> <input
                class="form-control" id="input-@alert-warning-text" value="@state-warning-text"
                data-var="@alert-warning-text"></div>
        <div class="col-xs-4"><label for="input-@alert-warning-border">@alert-warning-border</label> <input
                class="form-control" id="input-@alert-warning-border" value="@state-warning-border"
                data-var="@alert-warning-border"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@alert-danger-bg">@alert-danger-bg</label> <input class="form-control"
                                                                                                  id="input-@alert-danger-bg"
                                                                                                  value="@state-danger-bg"
                                                                                                  data-var="@alert-danger-bg">
        </div>
        <div class="col-xs-4"><label for="input-@alert-danger-text">@alert-danger-text</label> <input
                class="form-control" id="input-@alert-danger-text" value="@state-danger-text"
                data-var="@alert-danger-text"></div>
        <div class="col-xs-4"><label for="input-@alert-danger-border">@alert-danger-border</label> <input
                class="form-control" id="input-@alert-danger-border" value="@state-danger-border"
                data-var="@alert-danger-border"></div>
    </div>
    <h2 id="progress-bars"><a class="anchorjs-link " href="#progress-bars" aria-label="Anchor link for: progress bars"
                              data-anchorjs-icon=""
                              style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Progress
        bars</h2>
    <div class="row">
        <div class="col-xs-4"><label for="input-@progress-bg">@progress-bg</label> <input class="form-control"
                                                                                          id="input-@progress-bg"
                                                                                          aria-describedby="help-block-@progress-bg"
                                                                                          value="#f5f5f5"
                                                                                          data-var="@progress-bg">
            <p class="help-block" id="help-block-@progress-bg">Background color of the whole progress component</p>
        </div>
        <div class="col-xs-4"><label for="input-@progress-bar-color">@progress-bar-color</label> <input
                class="form-control" id="input-@progress-bar-color" aria-describedby="help-block-@progress-bar-color"
                value="#fff" data-var="@progress-bar-color">
            <p class="help-block" id="help-block-@progress-bar-color">Progress bar text color</p></div>
        <div class="col-xs-4"><label for="input-@progress-border-radius">@progress-border-radius</label> <input
                class="form-control" id="input-@progress-border-radius"
                aria-describedby="help-block-@progress-border-radius" value="@border-radius-base"
                data-var="@progress-border-radius">
            <p class="help-block" id="help-block-@progress-border-radius">Variable for setting rounded corners on
                progress bar.</p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@progress-bar-bg">@progress-bar-bg</label> <input class="form-control"
                                                                                                  id="input-@progress-bar-bg"
                                                                                                  aria-describedby="help-block-@progress-bar-bg"
                                                                                                  value="@brand-primary"
                                                                                                  data-var="@progress-bar-bg">
            <p class="help-block" id="help-block-@progress-bar-bg">Default progress bar color</p></div>
        <div class="col-xs-4"><label for="input-@progress-bar-success-bg">@progress-bar-success-bg</label> <input
                class="form-control" id="input-@progress-bar-success-bg"
                aria-describedby="help-block-@progress-bar-success-bg" value="@brand-success"
                data-var="@progress-bar-success-bg">
            <p class="help-block" id="help-block-@progress-bar-success-bg">Success progress bar color</p></div>
        <div class="col-xs-4"><label for="input-@progress-bar-warning-bg">@progress-bar-warning-bg</label> <input
                class="form-control" id="input-@progress-bar-warning-bg"
                aria-describedby="help-block-@progress-bar-warning-bg" value="@brand-warning"
                data-var="@progress-bar-warning-bg">
            <p class="help-block" id="help-block-@progress-bar-warning-bg">Warning progress bar color</p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@progress-bar-danger-bg">@progress-bar-danger-bg</label> <input
                class="form-control" id="input-@progress-bar-danger-bg"
                aria-describedby="help-block-@progress-bar-danger-bg" value="@brand-danger"
                data-var="@progress-bar-danger-bg">
            <p class="help-block" id="help-block-@progress-bar-danger-bg">Danger progress bar color</p></div>
        <div class="col-xs-4"><label for="input-@progress-bar-info-bg">@progress-bar-info-bg</label> <input
                class="form-control" id="input-@progress-bar-info-bg"
                aria-describedby="help-block-@progress-bar-info-bg" value="@brand-info"
                data-var="@progress-bar-info-bg">
            <p class="help-block" id="help-block-@progress-bar-info-bg">Info progress bar color</p></div>
    </div>
    <h2 id="list-group"><a class="anchorjs-link " href="#list-group" aria-label="Anchor link for: list group"
                           data-anchorjs-icon=""
                           style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>List
        group</h2>
    <div class="row">
        <div class="col-xs-4"><label for="input-@list-group-bg">@list-group-bg</label> <input class="form-control"
                                                                                              id="input-@list-group-bg"
                                                                                              aria-describedby="help-block-@list-group-bg"
                                                                                              value="#fff"
                                                                                              data-var="@list-group-bg">
            <p class="help-block" id="help-block-@list-group-bg">Background color on <code>.list-group-item</code></p>
        </div>
        <div class="col-xs-4"><label for="input-@list-group-border">@list-group-border</label> <input
                class="form-control" id="input-@list-group-border" aria-describedby="help-block-@list-group-border"
                value="#ddd" data-var="@list-group-border">
            <p class="help-block" id="help-block-@list-group-border"><code>.list-group-item</code> border color</p>
        </div>
        <div class="col-xs-4"><label for="input-@list-group-border-radius">@list-group-border-radius</label> <input
                class="form-control" id="input-@list-group-border-radius"
                aria-describedby="help-block-@list-group-border-radius" value="@border-radius-base"
                data-var="@list-group-border-radius">
            <p class="help-block" id="help-block-@list-group-border-radius">List group border radius</p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@list-group-hover-bg">@list-group-hover-bg</label> <input
                class="form-control" id="input-@list-group-hover-bg" aria-describedby="help-block-@list-group-hover-bg"
                value="#f5f5f5" data-var="@list-group-hover-bg">
            <p class="help-block" id="help-block-@list-group-hover-bg">Background color of single list items on
                hover</p></div>
        <div class="col-xs-4"><label for="input-@list-group-active-color">@list-group-active-color</label> <input
                class="form-control" id="input-@list-group-active-color"
                aria-describedby="help-block-@list-group-active-color" value="@component-active-color"
                data-var="@list-group-active-color">
            <p class="help-block" id="help-block-@list-group-active-color">Text color of active list items</p></div>
        <div class="col-xs-4"><label for="input-@list-group-active-bg">@list-group-active-bg</label> <input
                class="form-control" id="input-@list-group-active-bg"
                aria-describedby="help-block-@list-group-active-bg" value="@component-active-bg"
                data-var="@list-group-active-bg">
            <p class="help-block" id="help-block-@list-group-active-bg">Background color of active list items</p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@list-group-active-border">@list-group-active-border</label> <input
                class="form-control" id="input-@list-group-active-border"
                aria-describedby="help-block-@list-group-active-border" value="@list-group-active-bg"
                data-var="@list-group-active-border">
            <p class="help-block" id="help-block-@list-group-active-border">Border color of active list elements</p>
        </div>
        <div class="col-xs-4"><label for="input-@list-group-active-text-color">@list-group-active-text-color</label>
            <input class="form-control" id="input-@list-group-active-text-color"
                   aria-describedby="help-block-@list-group-active-text-color"
                   value="lighten(@list-group-active-bg, 40%)" data-var="@list-group-active-text-color">
            <p class="help-block" id="help-block-@list-group-active-text-color">Text color for content within active
                list items</p></div>
        <div class="col-xs-4"><label for="input-@list-group-disabled-color">@list-group-disabled-color</label> <input
                class="form-control" id="input-@list-group-disabled-color"
                aria-describedby="help-block-@list-group-disabled-color" value="@gray-light"
                data-var="@list-group-disabled-color">
            <p class="help-block" id="help-block-@list-group-disabled-color">Text color of disabled list items</p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@list-group-disabled-bg">@list-group-disabled-bg</label> <input
                class="form-control" id="input-@list-group-disabled-bg"
                aria-describedby="help-block-@list-group-disabled-bg" value="@gray-lighter"
                data-var="@list-group-disabled-bg">
            <p class="help-block" id="help-block-@list-group-disabled-bg">Background color of disabled list items</p>
        </div>
        <div class="col-xs-4"><label for="input-@list-group-disabled-text-color">@list-group-disabled-text-color</label>
            <input class="form-control" id="input-@list-group-disabled-text-color"
                   aria-describedby="help-block-@list-group-disabled-text-color" value="@list-group-disabled-color"
                   data-var="@list-group-disabled-text-color">
            <p class="help-block" id="help-block-@list-group-disabled-text-color">Text color for content within disabled
                list items</p></div>
        <div class="col-xs-4"><label for="input-@list-group-link-color">@list-group-link-color</label> <input
                class="form-control" id="input-@list-group-link-color" value="#555" data-var="@list-group-link-color">
        </div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@list-group-link-hover-color">@list-group-link-hover-color</label>
            <input class="form-control" id="input-@list-group-link-hover-color" value="@list-group-link-color"
                   data-var="@list-group-link-hover-color"></div>
        <div class="col-xs-4"><label for="input-@list-group-link-heading-color">@list-group-link-heading-color</label>
            <input class="form-control" id="input-@list-group-link-heading-color" value="#333"
                   data-var="@list-group-link-heading-color"></div>
    </div>
    <h2 id="panels"><a class="anchorjs-link " href="#panels" aria-label="Anchor link for: panels" data-anchorjs-icon=""
                       style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Panels
    </h2>
    <div class="row">
        <div class="col-xs-4"><label for="input-@panel-bg">@panel-bg</label> <input class="form-control"
                                                                                    id="input-@panel-bg" value="#fff"
                                                                                    data-var="@panel-bg"></div>
        <div class="col-xs-4"><label for="input-@panel-body-padding">@panel-body-padding</label> <input
                class="form-control" id="input-@panel-body-padding" value="15px" data-var="@panel-body-padding"></div>
        <div class="col-xs-4"><label for="input-@panel-heading-padding">@panel-heading-padding</label> <input
                class="form-control" id="input-@panel-heading-padding" value="10px 15px"
                data-var="@panel-heading-padding"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@panel-footer-padding">@panel-footer-padding</label> <input
                class="form-control" id="input-@panel-footer-padding" value="@panel-heading-padding"
                data-var="@panel-footer-padding"></div>
        <div class="col-xs-4"><label for="input-@panel-border-radius">@panel-border-radius</label> <input
                class="form-control" id="input-@panel-border-radius" value="@border-radius-base"
                data-var="@panel-border-radius"></div>
        <div class="col-xs-4"><label for="input-@panel-inner-border">@panel-inner-border</label> <input
                class="form-control" id="input-@panel-inner-border" aria-describedby="help-block-@panel-inner-border"
                value="#ddd" data-var="@panel-inner-border">
            <p class="help-block" id="help-block-@panel-inner-border">Border color for elements within panels</p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@panel-footer-bg">@panel-footer-bg</label> <input class="form-control"
                                                                                                  id="input-@panel-footer-bg"
                                                                                                  value="#f5f5f5"
                                                                                                  data-var="@panel-footer-bg">
        </div>
        <div class="col-xs-4"><label for="input-@panel-default-text">@panel-default-text</label> <input
                class="form-control" id="input-@panel-default-text" value="@gray-dark" data-var="@panel-default-text">
        </div>
        <div class="col-xs-4"><label for="input-@panel-default-border">@panel-default-border</label> <input
                class="form-control" id="input-@panel-default-border" value="#ddd" data-var="@panel-default-border">
        </div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@panel-default-heading-bg">@panel-default-heading-bg</label> <input
                class="form-control" id="input-@panel-default-heading-bg" value="#f5f5f5"
                data-var="@panel-default-heading-bg"></div>
        <div class="col-xs-4"><label for="input-@panel-primary-text">@panel-primary-text</label> <input
                class="form-control" id="input-@panel-primary-text" value="#fff" data-var="@panel-primary-text"></div>
        <div class="col-xs-4"><label for="input-@panel-primary-border">@panel-primary-border</label> <input
                class="form-control" id="input-@panel-primary-border" value="@brand-primary"
                data-var="@panel-primary-border"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@panel-primary-heading-bg">@panel-primary-heading-bg</label> <input
                class="form-control" id="input-@panel-primary-heading-bg" value="@brand-primary"
                data-var="@panel-primary-heading-bg"></div>
        <div class="col-xs-4"><label for="input-@panel-success-text">@panel-success-text</label> <input
                class="form-control" id="input-@panel-success-text" value="@state-success-text"
                data-var="@panel-success-text"></div>
        <div class="col-xs-4"><label for="input-@panel-success-border">@panel-success-border</label> <input
                class="form-control" id="input-@panel-success-border" value="@state-success-border"
                data-var="@panel-success-border"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@panel-success-heading-bg">@panel-success-heading-bg</label> <input
                class="form-control" id="input-@panel-success-heading-bg" value="@state-success-bg"
                data-var="@panel-success-heading-bg"></div>
        <div class="col-xs-4"><label for="input-@panel-info-text">@panel-info-text</label> <input class="form-control"
                                                                                                  id="input-@panel-info-text"
                                                                                                  value="@state-info-text"
                                                                                                  data-var="@panel-info-text">
        </div>
        <div class="col-xs-4"><label for="input-@panel-info-border">@panel-info-border</label> <input
                class="form-control" id="input-@panel-info-border" value="@state-info-border"
                data-var="@panel-info-border"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@panel-info-heading-bg">@panel-info-heading-bg</label> <input
                class="form-control" id="input-@panel-info-heading-bg" value="@state-info-bg"
                data-var="@panel-info-heading-bg"></div>
        <div class="col-xs-4"><label for="input-@panel-warning-text">@panel-warning-text</label> <input
                class="form-control" id="input-@panel-warning-text" value="@state-warning-text"
                data-var="@panel-warning-text"></div>
        <div class="col-xs-4"><label for="input-@panel-warning-border">@panel-warning-border</label> <input
                class="form-control" id="input-@panel-warning-border" value="@state-warning-border"
                data-var="@panel-warning-border"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@panel-warning-heading-bg">@panel-warning-heading-bg</label> <input
                class="form-control" id="input-@panel-warning-heading-bg" value="@state-warning-bg"
                data-var="@panel-warning-heading-bg"></div>
        <div class="col-xs-4"><label for="input-@panel-danger-text">@panel-danger-text</label> <input
                class="form-control" id="input-@panel-danger-text" value="@state-danger-text"
                data-var="@panel-danger-text"></div>
        <div class="col-xs-4"><label for="input-@panel-danger-border">@panel-danger-border</label> <input
                class="form-control" id="input-@panel-danger-border" value="@state-danger-border"
                data-var="@panel-danger-border"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@panel-danger-heading-bg">@panel-danger-heading-bg</label> <input
                class="form-control" id="input-@panel-danger-heading-bg" value="@state-danger-bg"
                data-var="@panel-danger-heading-bg"></div>
    </div>
    <h2 id="thumbnails"><a class="anchorjs-link " href="#thumbnails" aria-label="Anchor link for: thumbnails"
                           data-anchorjs-icon=""
                           style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Thumbnails
    </h2>
    <div class="row">
        <div class="col-xs-4"><label for="input-@thumbnail-padding">@thumbnail-padding</label> <input
                class="form-control" id="input-@thumbnail-padding" aria-describedby="help-block-@thumbnail-padding"
                value="4px" data-var="@thumbnail-padding">
            <p class="help-block" id="help-block-@thumbnail-padding">Padding around the thumbnail image</p></div>
        <div class="col-xs-4"><label for="input-@thumbnail-bg">@thumbnail-bg</label> <input class="form-control"
                                                                                            id="input-@thumbnail-bg"
                                                                                            aria-describedby="help-block-@thumbnail-bg"
                                                                                            value="@body-bg"
                                                                                            data-var="@thumbnail-bg">
            <p class="help-block" id="help-block-@thumbnail-bg">Thumbnail background color</p></div>
        <div class="col-xs-4"><label for="input-@thumbnail-border">@thumbnail-border</label> <input class="form-control"
                                                                                                    id="input-@thumbnail-border"
                                                                                                    aria-describedby="help-block-@thumbnail-border"
                                                                                                    value="#ddd"
                                                                                                    data-var="@thumbnail-border">
            <p class="help-block" id="help-block-@thumbnail-border">Thumbnail border color</p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@thumbnail-border-radius">@thumbnail-border-radius</label> <input
                class="form-control" id="input-@thumbnail-border-radius"
                aria-describedby="help-block-@thumbnail-border-radius" value="@border-radius-base"
                data-var="@thumbnail-border-radius">
            <p class="help-block" id="help-block-@thumbnail-border-radius">Thumbnail border radius</p></div>
        <div class="col-xs-4"><label for="input-@thumbnail-caption-color">@thumbnail-caption-color</label> <input
                class="form-control" id="input-@thumbnail-caption-color"
                aria-describedby="help-block-@thumbnail-caption-color" value="@text-color"
                data-var="@thumbnail-caption-color">
            <p class="help-block" id="help-block-@thumbnail-caption-color">Custom text color for thumbnail captions</p>
        </div>
        <div class="col-xs-4"><label for="input-@thumbnail-caption-padding">@thumbnail-caption-padding</label> <input
                class="form-control" id="input-@thumbnail-caption-padding"
                aria-describedby="help-block-@thumbnail-caption-padding" value="9px"
                data-var="@thumbnail-caption-padding">
            <p class="help-block" id="help-block-@thumbnail-caption-padding">Padding around the thumbnail caption</p>
        </div>
    </div>
    <h2 id="wells"><a class="anchorjs-link " href="#wells" aria-label="Anchor link for: wells" data-anchorjs-icon=""
                      style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Wells
    </h2>
    <div class="row">
        <div class="col-xs-4"><label for="input-@well-bg">@well-bg</label> <input class="form-control"
                                                                                  id="input-@well-bg" value="#f5f5f5"
                                                                                  data-var="@well-bg"></div>
        <div class="col-xs-4"><label for="input-@well-border">@well-border</label> <input class="form-control"
                                                                                          id="input-@well-border"
                                                                                          value="darken(@well-bg, 7%)"
                                                                                          data-var="@well-border"></div>
    </div>
    <h2 id="badges"><a class="anchorjs-link " href="#badges" aria-label="Anchor link for: badges" data-anchorjs-icon=""
                       style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Badges
    </h2>
    <div class="row">
        <div class="col-xs-4"><label for="input-@badge-color">@badge-color</label> <input class="form-control"
                                                                                          id="input-@badge-color"
                                                                                          value="#fff"
                                                                                          data-var="@badge-color"></div>
        <div class="col-xs-4"><label for="input-@badge-link-hover-color">@badge-link-hover-color</label> <input
                class="form-control" id="input-@badge-link-hover-color"
                aria-describedby="help-block-@badge-link-hover-color" value="#fff" data-var="@badge-link-hover-color">
            <p class="help-block" id="help-block-@badge-link-hover-color">Linked badge text color on hover</p></div>
        <div class="col-xs-4"><label for="input-@badge-bg">@badge-bg</label> <input class="form-control"
                                                                                    id="input-@badge-bg"
                                                                                    value="@gray-light"
                                                                                    data-var="@badge-bg"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@badge-active-color">@badge-active-color</label> <input
                class="form-control" id="input-@badge-active-color" aria-describedby="help-block-@badge-active-color"
                value="@link-color" data-var="@badge-active-color">
            <p class="help-block" id="help-block-@badge-active-color">Badge text color in active nav link</p></div>
        <div class="col-xs-4"><label for="input-@badge-active-bg">@badge-active-bg</label> <input class="form-control"
                                                                                                  id="input-@badge-active-bg"
                                                                                                  aria-describedby="help-block-@badge-active-bg"
                                                                                                  value="#fff"
                                                                                                  data-var="@badge-active-bg">
            <p class="help-block" id="help-block-@badge-active-bg">Badge background color in active nav link</p></div>
        <div class="col-xs-4"><label for="input-@badge-font-weight">@badge-font-weight</label> <input
                class="form-control" id="input-@badge-font-weight" value="bold" data-var="@badge-font-weight"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@badge-line-height">@badge-line-height</label> <input
                class="form-control" id="input-@badge-line-height" value="1" data-var="@badge-line-height"></div>
        <div class="col-xs-4"><label for="input-@badge-border-radius">@badge-border-radius</label> <input
                class="form-control" id="input-@badge-border-radius" value="10px" data-var="@badge-border-radius"></div>
    </div>
    <h2 id="breadcrumbs"><a class="anchorjs-link " href="#breadcrumbs" aria-label="Anchor link for: breadcrumbs"
                            data-anchorjs-icon=""
                            style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Breadcrumbs
    </h2>
    <div class="row">
        <div class="col-xs-4"><label for="input-@breadcrumb-padding-vertical">@breadcrumb-padding-vertical</label>
            <input class="form-control" id="input-@breadcrumb-padding-vertical" value="8px"
                   data-var="@breadcrumb-padding-vertical"></div>
        <div class="col-xs-4"><label for="input-@breadcrumb-padding-horizontal">@breadcrumb-padding-horizontal</label>
            <input class="form-control" id="input-@breadcrumb-padding-horizontal" value="15px"
                   data-var="@breadcrumb-padding-horizontal"></div>
        <div class="col-xs-4"><label for="input-@breadcrumb-bg">@breadcrumb-bg</label> <input class="form-control"
                                                                                              id="input-@breadcrumb-bg"
                                                                                              aria-describedby="help-block-@breadcrumb-bg"
                                                                                              value="#f5f5f5"
                                                                                              data-var="@breadcrumb-bg">
            <p class="help-block" id="help-block-@breadcrumb-bg">Breadcrumb background color</p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@breadcrumb-color">@breadcrumb-color</label> <input class="form-control"
                                                                                                    id="input-@breadcrumb-color"
                                                                                                    aria-describedby="help-block-@breadcrumb-color"
                                                                                                    value="#ccc"
                                                                                                    data-var="@breadcrumb-color">
            <p class="help-block" id="help-block-@breadcrumb-color">Breadcrumb text color</p></div>
        <div class="col-xs-4"><label for="input-@breadcrumb-active-color">@breadcrumb-active-color</label> <input
                class="form-control" id="input-@breadcrumb-active-color"
                aria-describedby="help-block-@breadcrumb-active-color" value="@gray-light"
                data-var="@breadcrumb-active-color">
            <p class="help-block" id="help-block-@breadcrumb-active-color">Text color of current page in the
                breadcrumb</p></div>
        <div class="col-xs-4"><label for="input-@breadcrumb-separator">@breadcrumb-separator</label> <input
                class="form-control" id="input-@breadcrumb-separator"
                aria-describedby="help-block-@breadcrumb-separator" value="&quot;/&quot;"
                data-var="@breadcrumb-separator">
            <p class="help-block" id="help-block-@breadcrumb-separator">Textual separator for between breadcrumb
                elements</p></div>
    </div>
    <h2 id="carousel"><a class="anchorjs-link " href="#carousel" aria-label="Anchor link for: carousel"
                         data-anchorjs-icon=""
                         style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Carousel
    </h2>
    <div class="row">
        <div class="col-xs-4"><label for="input-@carousel-text-shadow">@carousel-text-shadow</label> <input
                class="form-control" id="input-@carousel-text-shadow" value="0 1px 2px rgba(0,0,0,.6)"
                data-var="@carousel-text-shadow"></div>
        <div class="col-xs-4"><label for="input-@carousel-control-color">@carousel-control-color</label> <input
                class="form-control" id="input-@carousel-control-color" value="#fff" data-var="@carousel-control-color">
        </div>
        <div class="col-xs-4"><label for="input-@carousel-control-width">@carousel-control-width</label> <input
                class="form-control" id="input-@carousel-control-width" value="15%" data-var="@carousel-control-width">
        </div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@carousel-control-opacity">@carousel-control-opacity</label> <input
                class="form-control" id="input-@carousel-control-opacity" value=".5"
                data-var="@carousel-control-opacity"></div>
        <div class="col-xs-4"><label for="input-@carousel-control-font-size">@carousel-control-font-size</label> <input
                class="form-control" id="input-@carousel-control-font-size" value="20px"
                data-var="@carousel-control-font-size"></div>
        <div class="col-xs-4"><label for="input-@carousel-indicator-active-bg">@carousel-indicator-active-bg</label>
            <input class="form-control" id="input-@carousel-indicator-active-bg" value="#fff"
                   data-var="@carousel-indicator-active-bg"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label
                for="input-@carousel-indicator-border-color">@carousel-indicator-border-color</label> <input
                class="form-control" id="input-@carousel-indicator-border-color" value="#fff"
                data-var="@carousel-indicator-border-color"></div>
        <div class="col-xs-4"><label for="input-@carousel-caption-color">@carousel-caption-color</label> <input
                class="form-control" id="input-@carousel-caption-color" value="#fff" data-var="@carousel-caption-color">
        </div>
    </div>
    <h2 id="close"><a class="anchorjs-link " href="#close" aria-label="Anchor link for: close" data-anchorjs-icon=""
                      style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Close
    </h2>
    <div class="row">
        <div class="col-xs-4"><label for="input-@close-font-weight">@close-font-weight</label> <input
                class="form-control" id="input-@close-font-weight" value="bold" data-var="@close-font-weight"></div>
        <div class="col-xs-4"><label for="input-@close-color">@close-color</label> <input class="form-control"
                                                                                          id="input-@close-color"
                                                                                          value="#000"
                                                                                          data-var="@close-color"></div>
        <div class="col-xs-4"><label for="input-@close-text-shadow">@close-text-shadow</label> <input
                class="form-control" id="input-@close-text-shadow" value="0 1px 0 #fff" data-var="@close-text-shadow">
        </div>
    </div>
    <h2 id="code"><a class="anchorjs-link " href="#code" aria-label="Anchor link for: code" data-anchorjs-icon=""
                     style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Code
    </h2>
    <div class="row">
        <div class="col-xs-4"><label for="input-@code-color">@code-color</label> <input class="form-control"
                                                                                        id="input-@code-color"
                                                                                        value="#c7254e"
                                                                                        data-var="@code-color"></div>
        <div class="col-xs-4"><label for="input-@code-bg">@code-bg</label> <input class="form-control"
                                                                                  id="input-@code-bg" value="#f9f2f4"
                                                                                  data-var="@code-bg"></div>
        <div class="col-xs-4"><label for="input-@kbd-color">@kbd-color</label> <input class="form-control"
                                                                                      id="input-@kbd-color" value="#fff"
                                                                                      data-var="@kbd-color"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@kbd-bg">@kbd-bg</label> <input class="form-control" id="input-@kbd-bg"
                                                                                value="#333" data-var="@kbd-bg"></div>
        <div class="col-xs-4"><label for="input-@pre-bg">@pre-bg</label> <input class="form-control" id="input-@pre-bg"
                                                                                value="#f5f5f5" data-var="@pre-bg">
        </div>
        <div class="col-xs-4"><label for="input-@pre-color">@pre-color</label> <input class="form-control"
                                                                                      id="input-@pre-color"
                                                                                      value="@gray-dark"
                                                                                      data-var="@pre-color"></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@pre-border-color">@pre-border-color</label> <input class="form-control"
                                                                                                    id="input-@pre-border-color"
                                                                                                    value="#ccc"
                                                                                                    data-var="@pre-border-color">
        </div>
        <div class="col-xs-4"><label for="input-@pre-scrollable-max-height">@pre-scrollable-max-height</label> <input
                class="form-control" id="input-@pre-scrollable-max-height" value="340px"
                data-var="@pre-scrollable-max-height"></div>
    </div>
    <h2 id="type"><a class="anchorjs-link " href="#type" aria-label="Anchor link for: type" data-anchorjs-icon=""
                     style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Type
    </h2>
    <div class="row">
        <div class="col-xs-4"><label for="input-@component-offset-horizontal">@component-offset-horizontal</label>
            <input class="form-control" id="input-@component-offset-horizontal"
                   aria-describedby="help-block-@component-offset-horizontal" value="180px"
                   data-var="@component-offset-horizontal">
            <p class="help-block" id="help-block-@component-offset-horizontal">Horizontal offset for forms and
                lists.</p></div>
        <div class="col-xs-4"><label for="input-@text-muted">@text-muted</label> <input class="form-control"
                                                                                        id="input-@text-muted"
                                                                                        aria-describedby="help-block-@text-muted"
                                                                                        value="@gray-light"
                                                                                        data-var="@text-muted">
            <p class="help-block" id="help-block-@text-muted">Text muted color</p></div>
        <div class="col-xs-4"><label for="input-@abbr-border-color">@abbr-border-color</label> <input
                class="form-control" id="input-@abbr-border-color" aria-describedby="help-block-@abbr-border-color"
                value="@gray-light" data-var="@abbr-border-color">
            <p class="help-block" id="help-block-@abbr-border-color">Abbreviations and acronyms border color</p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@headings-small-color">@headings-small-color</label> <input
                class="form-control" id="input-@headings-small-color"
                aria-describedby="help-block-@headings-small-color" value="@gray-light"
                data-var="@headings-small-color">
            <p class="help-block" id="help-block-@headings-small-color">Headings small color</p></div>
        <div class="col-xs-4"><label for="input-@blockquote-small-color">@blockquote-small-color</label> <input
                class="form-control" id="input-@blockquote-small-color"
                aria-describedby="help-block-@blockquote-small-color" value="@gray-light"
                data-var="@blockquote-small-color">
            <p class="help-block" id="help-block-@blockquote-small-color">Blockquote small color</p></div>
        <div class="col-xs-4"><label for="input-@blockquote-font-size">@blockquote-font-size</label> <input
                class="form-control" id="input-@blockquote-font-size"
                aria-describedby="help-block-@blockquote-font-size" value="(@font-size-base * 1.25)"
                data-var="@blockquote-font-size">
            <p class="help-block" id="help-block-@blockquote-font-size">Blockquote font size</p></div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@blockquote-border-color">@blockquote-border-color</label> <input
                class="form-control" id="input-@blockquote-border-color"
                aria-describedby="help-block-@blockquote-border-color" value="@gray-lighter"
                data-var="@blockquote-border-color">
            <p class="help-block" id="help-block-@blockquote-border-color">Blockquote border color</p></div>
        <div class="col-xs-4"><label for="input-@page-header-border-color">@page-header-border-color</label> <input
                class="form-control" id="input-@page-header-border-color"
                aria-describedby="help-block-@page-header-border-color" value="@gray-lighter"
                data-var="@page-header-border-color">
            <p class="help-block" id="help-block-@page-header-border-color">Page header border color</p></div>
        <div class="col-xs-4"><label for="input-@dl-horizontal-offset">@dl-horizontal-offset</label> <input
                class="form-control" id="input-@dl-horizontal-offset"
                aria-describedby="help-block-@dl-horizontal-offset" value="@component-offset-horizontal"
                data-var="@dl-horizontal-offset">
            <p class="help-block" id="help-block-@dl-horizontal-offset">Width of horizontal description list titles</p>
        </div>
        <div class="clearfix"></div>
        <div class="col-xs-4"><label for="input-@dl-horizontal-breakpoint">@dl-horizontal-breakpoint</label> <input
                class="form-control" id="input-@dl-horizontal-breakpoint"
                aria-describedby="help-block-@dl-horizontal-breakpoint" value="@grid-float-breakpoint"
                data-var="@dl-horizontal-breakpoint">
            <p class="help-block" id="help-block-@dl-horizontal-breakpoint">Point at which .dl-horizontal becomes
                horizontal</p></div>
        <div class="col-xs-4"><label for="input-@hr-border">@hr-border</label> <input class="form-control"
                                                                                      id="input-@hr-border"
                                                                                      aria-describedby="help-block-@hr-border"
                                                                                      value="@gray-lighter"
                                                                                      data-var="@hr-border">
            <p class="help-block" id="help-block-@hr-border">Horizontal line color.</p></div>
    </div>
</div>