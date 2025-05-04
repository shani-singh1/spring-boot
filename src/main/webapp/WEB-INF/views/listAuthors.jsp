<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>

<div class="card">
    <div class="card-header d-flex justify-content-between align-items-center">
        <h2>Authors List</h2>
        <a href="/authors/add" class="btn btn-primary">Add New Author</a>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Biography</th>
                        <th>Number of Books</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${authors}" var="author">
                        <tr>
                            <td>${author.name}</td>
                            <td>${author.biography}</td>
                            <td>${author.books.size()}</td>
                            <td>
                                <a href="/authors/edit/${author.id}" class="btn btn-sm btn-primary btn-action">Edit</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<%@ include file="layout/footer.jsp" %>