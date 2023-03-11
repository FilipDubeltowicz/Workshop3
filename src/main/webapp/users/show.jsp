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

        <table class="table">
            <tbody>
            <tr>
                <th scope="row">id:</th>
                <td>${user.id}</td>
            </tr>
            <tr>
                <th scope="row">Nazwa Użytkownika:</th>
                <td>${user.username}</td>
            </tr>
            <tr>
                <th scope="row">Email:</th>
                <td>${user.email}</td>
            </tr>
            </tbody>
        </table>
    </div>
    <!-- End of Main Content -->
<%@ include file="/users/footer.jsp" %>