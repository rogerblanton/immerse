<%@include file="/libs/foundation/global.jsp" %>
<%
%>
<%@page session="false" contentType="text/html" pageEncoding="utf-8" %>

<h2>Variables</h2>
<p class="lead">Customize variables to define colors, sizes and more inside your custom CSS stylesheets.</p>
<div class="table-responsive">
    <table class="table table-bordered table-striped">
        <thead>
            <tr>
                <th>Property</th>
                <th>Value</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>navbarColor</td>
                <td>${properties.navbarColor}</td>
            </tr>
            <tr>
                <td>navbarLinkColor</td>
                <td>${properties.navbarLinkColor}</td>
            </tr>
            <tr>
                <td>jumbotronBackgroundColor</td>
                <td>${properties.jumbotronBackgroundColor}</td>
            </tr>
        </tbody>
    </table>
</div>