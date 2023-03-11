<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/users/header.jsp" %>
<!-- Main Content -->
<div id="content">
    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-4 text-gray-800">UsersCRUD</h1>
            <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                    class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
        </div>
        <h1>Edytuj Użytkownika</h1>
        <form action="/user/edit" method="POST">
            <input type="hidden" name="id" value="${user.id}"/>
            <div class="form-group">
                <label>Podaj nową nazwę:</label>
                <input value="${user.username}" type="text" class="form-control" name="newName">
            </div>

            <div class="form-group">
                <label>Podaj nowy Email:</label>
                <input value="${user.email}" type="email" class="form-control" name="newEmail">
            </div>
            <div class="form-group">
                <label>Podaj nowe hasło:</label>
                <input value="${user.password}" type="password" class="form-control" name="newPassword">
            </div>
            <button type="submit" class="btn btn-primary">Edytuj</button>
        </form>



    </div>
    <!-- End of Main Content -->
<%@ include file="/users/footer.jsp" %>