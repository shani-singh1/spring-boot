<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="layout/header.jsp" %>

<div class="card">
    <div class="card-header">
        <h2>Add New Author</h2>
    </div>
    <div class="card-body">
        <form:form action="/authors/add" method="post" modelAttribute="author">
            <div class="form-group">
                <label for="name">Name:</label>
                <form:input path="name" class="form-control" required="true"/>
            </div>
            
            <div class="form-group">
                <label for="biography">Biography:</label>
                <form:textarea path="biography" class="form-control" rows="5"/>
            </div>
            
            <button type="submit" class="btn btn-primary">Add Author</button>
            <a href="/authors/list" class="btn btn-secondary">Cancel</a>
        </form:form>
    </div>
</div>

<%@ include file="layout/footer.jsp" %>