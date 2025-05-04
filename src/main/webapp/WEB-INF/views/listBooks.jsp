<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>

<div class="card">
    <div class="card-header d-flex justify-content-between align-items-center">
        <h2>Books List</h2>
        <a href="/books/add" class="btn btn-primary">Add New Book</a>
    </div>
    <div class="card-body">
        <div class="row mb-3">
            <div class="col-md-6">
                <form action="/books/search" method="get" class="form-inline">
                    <div class="input-group">
                        <input type="text" name="authorName" class="form-control" placeholder="Search by author name...">
                        <button type="submit" class="btn btn-outline-secondary">Search</button>
                    </div>
                </form>
            </div>
        </div>
        
        <div class="table-responsive">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Title</th>
                        <th>Genre</th>
                        <th>Author</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${books}" var="book">
                        <tr>
                            <td>${book.title}</td>
                            <td>${book.genre}</td>
                            <td>${book.author.name}</td>
                            <td>
                                <a href="/books/edit/${book.id}" class="btn btn-sm btn-primary btn-action">Edit</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<%@ include file="layout/footer.jsp" %>