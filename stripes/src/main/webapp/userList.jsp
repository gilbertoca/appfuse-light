<%@ include file="/taglibs.jsp"%>

<title><fmt:message key="userList.title"/></title>

<stripes:messages/>

<button onclick="location.href='userform'" style="float: right; margin-top: -30px; width: 100px">Add User</button>

<display:table name="actionBean.users" class="table" requestURI="users" id="userList" export="true" pagesize="10" excludedParams="ajax">
    <display:setProperty name="export.pdf.filename" value="users.pdf"/>
    <display:column property="id" media="csv excel xml pdf" titleKey="user.id"/>
    <display:column property="firstName" sortable="true" titleKey="user.firstName" escapeXml="true"
        href="userform" paramId="id" paramProperty="id"/>
    <display:column property="lastName" sortable="true" titleKey="user.lastName" escapeXml="true"/>
    <display:column property="email" sortable="true" titleKey="user.email" escapeXml="true"/>
</display:table>

<script type="text/javascript">highlightTableRows("userList");</script>
