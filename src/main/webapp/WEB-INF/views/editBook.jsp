<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="layout/header.jsp" %>

<div class="card">
    <div class="card-header">
        <h2>Edit Book</h2>
    </div>
    <div class="card-body">
        <form:form action="/books/edit" method="post" modelAttribute="book">
            <form:hidden path="id"/>
            
            <div class="form-group">
                <label for="title">Title:</label>
                <form:input path="title" class="form-control" required="true"/>
            </div>
            
            <div class="form-group">
                <label for="genre">Genre:</label>
                <form:input path="genre" class="form-control" required="true"/>
            </div>
            
            <div class="form-group">
                <label for="author">Author:</label>
                <form:select path="author.id" class="form-control" required="true">
                    <form:option value="" label="Select an author"/>
                    <form:options items="${authors}" itemValue="id" itemLabel="name"/>
                </form:select>
            </div>
            
            <button type="submit" class="btn btn-primary">Update Book</button>
            <a href="/books/list" class="btn btn-secondary">Cancel</a>
        </form:form>
    </div>
</div>

<%@ include file="layout/footer.jsp" %>