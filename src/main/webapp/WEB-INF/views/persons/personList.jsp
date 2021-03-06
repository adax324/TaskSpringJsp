<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf"%>


<body id="page-top">


    <!-- Page Wrapper -->
    <div id="wrapper">

        <%@include file="../dynamic/sidebar.jspf"%>

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <%@include file="../dynamic/topbar.jspf"%>
                <!-- begin of form -->
                <div class="container-fluid">
                    <h1 class="text-secondary">Kursanci</h1>
                    <h5 class="text-secondary small">Wszyscy kursanci biorący udział w szkoleniu</h5>
                    <div class="card shadow mb-5">

                        <div class="card-header"><span class="text-primary font-weight-bold">Tabela Kursantów</span></div>
                        <div class="card-body py-3">
                            <table id="tableMoje" class="table table-bordered" cellspacing="0" width="100%">
                                <thead>
                                    <tr>
                                        <th>Imię</th>
                                        <th>Nazwisko</th>
                                        <th>Url Git</th>
                                        <th>Od czego się zaczęło</th>
                                        <th>Umiejętności</th>
                                        <th>Akcja</th>
                                    </tr>
                                    <c:forEach items="${person}" var="variable">
                                <tbody>

                                    <td>${variable.firstName}</td>
                                    <td>${variable.lastName}</td>
                                    <td><a href='<c:url value="${variable.urlGit}"/>' target="blank"
                                            class="btn btn-info btn-circle">
                                            <i class="fas fa-info-circle"></i></a></td>
                                    <td>${variable.description}</td>
                                    <td><a href="#" class="btn btn-success btn-circle" data-toggle="modal"
                                            data-target="#m${variable.id}" >
                                            <i class="fas fa-check"></i>
                                        </a></td>
                                    <td><a href='<c:url value="/persons/editNewPerson/${variable.id}"/>' style="text-decoration: none;"><button class="btn btn-primary btn-block">Edytuj</button></a></td>

                            </tbody>
                                <div class="modal fade" id="m${variable.id}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                                     aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">Imię Nazwisko</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="card shadow">
                                                    <div class="card-header">
                                                        <h4 class="text-center pt-2 font-weight-bold text-primary">Skills</h2>
                                                    </div>
                                                    <div class="card-body">
                                                        <h4 class="small font-weight-bold">Java <span class="float-right">${variable.java}%</span></h4>
                                                        <div class="progress mb-3">
                                                            <div class="progress-bar progress-bar-striped progress-bar-animated bg-danger"
                                                                 role="progressbar" style="width: ${variable.java}%" aria-valuenow="${variable.java}" aria-valuemin="0"
                                                                 aria-valuemax="100"></div>
                                                        </div>
                                                        <h4 class="small font-weight-bold">Wzorce projetowe <span class="float-right">${variable.bestPractice}%</span>
                                                        </h4>
                                                        <div class="progress mb-3">
                                                            <div class="progress-bar progress-bar-animated progress-bar-striped bg-warning"
                                                                 role="progressbar" style="width: ${variable.bestPractice}%" aria-valuenow="${variable.bestPractice}" aria-valuemin="0"
                                                                 aria-valuemax="100"></div>
                                                        </div>
                                                        <h4 class="small font-weight-bold">TDD <span class="float-right">${variable.tdd}%</span></h4>
                                                        <div class="progress mb-3">
                                                            <div class="progress-bar progress-bar-animated progress-bar-striped bg-primary"
                                                                 role="progressbar" style="width: ${variable.tdd}%" aria-valuenow="${variable.tdd}" aria-valuemin="0"
                                                                 aria-valuemax="100"></div>
                                                        </div>
                                                        <h4 class="small font-weight-bold">Bazy danych SQL <span class="float-right">${variable.question}%</span></h4>
                                                        <div class="progress mb-3">
                                                            <div class="progress-bar progress-bar-animated progress-bar-striped bg-info"
                                                                 role="progressbar" style="width: ${variable.question}%" aria-valuenow="${variable.question}" aria-valuemin="0"
                                                                 aria-valuemax="100"></div>
                                                        </div>
                                                        <h4 class="small font-weight-bold">Hibernate JPA <span class="float-right">${variable.jsp}%</span></h4>
                                                        <div class="progress mb-3">
                                                            <div class="progress-bar progress-bar-animated progress-bar-striped bg-success"
                                                                 role="progressbar" style="width: ${variable.jsp}%" aria-valuenow="${variable.jsp}" aria-valuemin="0"
                                                                 aria-valuemax="100"></div>
                                                        </div>
                                                        <h4 class="small font-weight-bold">HTML CSS <span class="float-right">${variable.html}%</span></h4>
                                                        <div class="progress mb-3">
                                                            <div class="progress-bar progress-bar-animated progress-bar-striped bg-dark"
                                                                 role="progressbar" style="width: ${variable.html}%" aria-valuenow="${variable.html}" aria-valuemin="0"
                                                                 aria-valuemax="100"></div>
                                                        </div>
                                                        <h4 class="small font-weight-bold">JSP <span class="float-right">${variable.jsp}%</span></h4>
                                                        <div class="progress mb-3">
                                                            <div class="progress-bar progress-bar-animated progress-bar-striped bg-secondary"
                                                                 role="progressbar" style="width: ${variable.jsp}%" aria-valuenow="${variable.jsp}" aria-valuemin="0"
                                                                 aria-valuemax="100"></div>
                                                        </div>
                                                        <h4 class="small font-weight-bold">Thymeleaf<span class="float-right">${variable.thymeleaf}%</span></h4>
                                                        <div class="progress mb-3">
                                                            <div class="progress-bar progress-bar-animated progress-bar-striped bg-light"
                                                                 role="progressbar" style="width: ${variable.thymeleaf}%" aria-valuenow="${variable.thymeleaf}" aria-valuemin="0"
                                                                 aria-valuemax="100"></div>
                                                        </div>
                                                        <h4 class="small font-weight-bold">GIT <span class="float-right">${variable.git}%</span></h4>
                                                        <div class="progress mb-3">
                                                            <div class="progress-bar progress-bar-animated progress-bar-striped bg-warning"
                                                                 role="progressbar" style="width: ${variable.git}%" aria-valuenow="${variable.git}" aria-valuemin="0"
                                                                 aria-valuemax="100"></div>
                                                        </div>

                                                    </div>
                                                    <h4></h4>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-danger float-right" data-dismiss="modal">Popraw</button>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </c:forEach>


                                </thead>
                            </table>



                        </div>
                    </div>
                    <a href='<c:url value="/persons/addNewPerson"/>' class="btn btn-info btn-icon-split">
                        <span class="icon text-white-50">
                        <i class="fas fa-info-circle"></i>
                        </span>
                        <span class="text">Dodaj nowego</span>
                        </a>

                </div>
                <!-- end of form -->

            </div>
            <!-- End of Main Content -->
            <%@include file="../dynamic/footer.jspf"%>
    </div>
    <!-- End of Page Wrapper -->
    <%@include file="../dynamic/logoutModal.jspf"%>






        <%@include file="../dynamic/baseJavascript.jspf"%>




<script>
    $(document).ready(function() {
    $('#tableMoje').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            'print'
        ]
    } );
} );
</script>



</body>

</html>