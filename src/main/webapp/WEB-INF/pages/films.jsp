<%@page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:wrapper title="FILM">
    <jsp:attribute name="header">
        <h2>Films</h2>
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <table class="table table-striped">
            <thead class="black white-text">
                <tr>
                    <th scope="col">id</th>
                    <th scope="col">title</th>
                    <th scope="col">year</th>
                    <th scope="col">genre</th>
                    <th scope="col">watched</th>
                    <th scope="col">action</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="film" items="${filmsList}">
                <tr>
                    <th scope="row">${film.id}</th>
                    <td>${film.title}</td>
                    <td>${film.year}</td>
                    <td>${film.genre}</td>
                    <td>${film.watched}</td>
                    <td>
                        <a href="/edit/${film.id}">edit<span class="fas fa-pen"></span></a>
                        <a href="/delete/${film.id}">delete<span class="fas fa-trash-alt"></span></a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

        <div class="btn-group" role="group" aria-label="Basic example">
            <c:forEach begin="1" end="${pagesCount}" step="1" varStatus="i">
            <c:url value="/" var="url">
                <c:param name="page" value="${i.index}"/>
            </c:url>
                <a type="button" class="btn btn-secondary" href="${url}">${i.index}</a>
            </c:forEach>
        </div>
        <h2>Add</h2>
        <c:url value="/add" var="add"/>
        <a class="btn btn-primary" href="${add}" role="button">Add new film</a>
    </jsp:body>
</t:wrapper>