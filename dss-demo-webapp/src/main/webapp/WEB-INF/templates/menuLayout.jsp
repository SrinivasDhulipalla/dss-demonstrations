<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<c:set var="currentPage" value="${requestScope['javax.servlet.forward.servlet_path']}" />

<c:choose> 
    <%-- ADMIN PART --%>
    <c:when test="${fn:contains(currentPage, 'admin')}">
        <div class="list-group hidden-print">
            <a href="<spring:url value="/admin/proxy"/>" class="list-group-item${currentPage eq '/admin/proxy' ? ' active' : ''}"><spring:message code="label.proxy" /></a>
            <a href="<spring:url value="/admin/certificates"/>" class="list-group-item${currentPage eq '/admin/certificates' ? ' active' : ''}"><spring:message code="label.certificates" /></a>
        </div>
    </c:when>
    <%-- NO ADMIN PART --%>
    <c:otherwise>
        <div class="panel panel-default">
            <div class="panel-heading">e-Signature</div>
            <div class="list-group hidden-print">
                <a href="<spring:url value="/sign-a-document" />" class="list-group-item${currentPage eq '/sign-a-document' ? ' active' : ''}"><spring:message code="label.signADocument" /></a>
                <a href="<spring:url value="/sign-multiple-documents" />" class="list-group-item${currentPage eq '/sign-multiple-documents' ? ' active' : ''}"><spring:message code="label.signMultiDocuments" /></a>
                <a href="<spring:url value="/signature-standalone" />" class="list-group-item${currentPage eq '/signature-standalone' ? ' active' : ''}">Standalone application</a>
                <a href="<spring:url value="/signature-rest" />" class="list-group-item${currentPage eq '/signature-rest' ? ' active' : ''}">REST/SOAP WebServices</a>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">Server side</div>
            <div class="list-group hidden-print">
                <a href="<spring:url value="/extension" />" class="list-group-item${currentPage eq '/extension' ? ' active' : ''}"><spring:message code="label.extend" /></a>
                <a href="<spring:url value="/validation" />" class="list-group-item${currentPage eq '/validation' ? ' active' : ''}"><spring:message code="label.validate" /></a>
                <a href="<spring:url value="/validation-policy" />" class="list-group-item${currentPage eq '/validation-policy' ? ' active' : ''}"><spring:message code="label.validation-policy" /></a>
                <a href="<spring:url value="/tsl-info"/>" class="list-group-item${currentPage eq '/tsl-info' ? ' active' : ''}"><spring:message code="label.tsls" /></a>
            </div>
        </div>
    </c:otherwise>
</c:choose>

<div class="panel panel-default">
    <div class="panel-heading">Documentation</div>
    <div class="list-group hidden-print">
        <a href="<spring:url value="/doc/dss-documentation.html" />" target="_blank" class="list-group-item">HTML</a>
        <a href="<spring:url value="/doc/dss-documentation.pdf" />" target="_blank" class="list-group-item">PDF</a>
    </div>
</div>

<div class="panel panel-default">
    <div class="panel-heading">Useful links</div>
    <div class="list-group hidden-print">
        <a href="https://ec.europa.eu/cefdigital/wiki/display/CEFDIGITAL/eSignature" class="list-group-item">CEF Digital</a>
        <a href="https://joinup.ec.europa.eu/asset/sd-dss/description" class="list-group-item">Joinup</a>
        <a href="https://github.com/esig/" class="list-group-item" title="GitHub - Source code">GitHub source code</a>
        <a href="https://ec.europa.eu/cefdigital/code/projects/ESIG/" class="list-group-item" title="Bitbucket - Source code">Bitbucket source code</a>
        <a href="https://ec.europa.eu/cefdigital/tracker/projects/DSS/issues" class="list-group-item" title="Jira - Issue tracker">Report a bug</a>
        <a href="https://esig-dss.atlassian.net/projects/DSS" class="list-group-item" title="Jira - old">Old Jira</a>
        <a href="https://joinup.ec.europa.eu/software/tlmanager/release/all" class="list-group-item"><spring:message code="label.tlmanager.tl.eu" /></a>
     </div>     
</div>