<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/users/header.jsp" %>
<!-- Main Content -->
<div id="content">
    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-4 text-gray-800">UsersCRUD</h1>
            <a href="user/list" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                    class="fas fa-download fa-sm text-white-50"></i> Lista użytkowników</a>
        </div>
        <h1>Dodaj Użytkownika</h1>
        <form action="/user/add" method="POST">
            <div class="form-group">
                <label>Podaj nazwę:</label>
                <input type="text" class="form-control" name="newName">
            </div>

            <div class="form-group">
                <label>Podaj Email:</label>
                <input type="email" class="form-control" name="newEmail">
            </div>
            <div class="form-group">
                <label>Podaj hasło:</label>
                <input type="password" class="form-control" name="newPassword">
            </div>
            <button type="submit" class="btn btn-primary">Zapisz</button>
        </form>


    </div>
    <!-- End of Main Content -->
<%@ include file="/users/footer.jsp" %>