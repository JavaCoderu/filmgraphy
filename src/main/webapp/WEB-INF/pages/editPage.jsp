<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<c:if test="${empty film.title}" var="IsAnewPage" scope="request"/>

<t:wrapper title="${!IsAnewPage? 'Edit': 'Add'}">

    <jsp:attribute name="header">
        <c:choose>
        <c:when test="${IsAnewPage}">
            <h1>Add</h1>
        </c:when>
        <c:otherwise>
            <h1>Edit</h1>
        </c:otherwise>
    </c:choose>
    </jsp:attribute>

    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body >
        <c:choose>
            <c:when test="${IsAnewPage}">
                <c:url value="/add" var="var"/>
            </c:when>
            <c:otherwise>
                <c:url value="/edit" var="var"/>
            </c:otherwise>
        </c:choose>

        <form action="${var}" method="POST">
            <c:if test="${!IsAnewPage}"><input type="hidden" name="id" value="${film.id}"></c:if>
            <div class="form-group">
                <label for="title">Title</label>
                <input type="text" name="title" class="form-control" id="title" value="${film.title}">
            </div>
            <div class="form-group">
                <label for="year">Year</label>
                <input type="text" name="year" class="form-control" id="year" value="${film.year}">
            </div>
            <div class="form-group">
                <label for="genre">Genre</label>
                <input type="text" name="genre" class="form-control" id="genre" value="${film.genre}">
            </div>
            <div class="form-group">
                <label for="watched">Watched</label>
                <input type="text" name="watched" class="form-control" id="watched" value="${film.watched}">
            </div>
            <c:choose>
                <c:when test="${IsAnewPage}">
                    <input type="submit" class="btn btn-light" value="Add new film">
                </c:when>
                <c:otherwise>
                    <input type="submit" class="btn btn-light" value="Edit film">
                </c:otherwise>
            </c:choose>
        </form>
    </jsp:body>
</t:wrapper>

