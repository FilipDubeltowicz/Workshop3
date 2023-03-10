<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/users/header.jsp" %>
<!-- Main Content -->
<div id="content">
    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-4 text-gray-800">UsersCRUD</h1>
            <a href="/user/add" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                    class="fas fa-download fa-sm text-white-50"></i>Dodaj Użytkownika</a>
        </div>
        <h1>Lista Użytkowników</h1>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">id</th>
                <th scope="col">Nazwa</th>
                <th scope="col">Email</th>
                <th scope="col">Akcja</th>
            </tr>
            </thead>
            <tbody>
            <%--            Początek petli--%>
            <c:forEach items="${users}" var="user">
                <tr>
                    <th scope="row">${user.id}</th>
                    <td>${user.username}</td>
                    <td>${user.email}</td>
                    <td><a href="add.jsp"> Dodaj</a>
                        <a href="edit.jsp"> Edytuj</a>
                        <a href="show.jsp"> Pokaz</a>
                    </td>
                </tr>
            </c:forEach>
            <%--            koniec pętli--%>
            </tbody>
        </table>

    </div>
    <!-- End of Main Content -->
<%@ include file="/users/footer.jsp" %>