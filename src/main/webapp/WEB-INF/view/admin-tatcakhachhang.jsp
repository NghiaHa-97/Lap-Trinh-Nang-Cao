<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8" />
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="favicon.ico">
    <script src="${pageContext.request.contextPath }/resources/vendor/jquery/dist/jquery.min.js"></script>
    <link href="${pageContext.request.contextPath }/resources/vendor/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/resources/vendor/themify-icons/css/themify-icons.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/resources/vendor/flag-icon-css/css/flag-icon.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/resources/vendor/selectFX/css/cs-skin-elastic.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/resources/assets1/css/style.css" rel="stylesheet" />
    <script src="${pageContext.request.contextPath }/resources/Scripts/umd/popper.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/vendor/bootstrap/dist/js/bootstrap.min.js"></script>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
</head>
<body>

    <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">

            <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="./"><img src="/Content/Admin/images/logo.png" /></a>
                <a class="navbar-brand hidden" href="./">
                    <img src="/Content/Admin/images/logo2.png" />
                </a>
            </div>

            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="${pageContext.request.contextPath }/admin/home"> <i class="menu-icon fa fa-dashboard"></i>Tổng quan </a>
                    </li>
                    <h3 class="menu-title">Chức năng</h3><!-- /.menu-title -->
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-laptop"></i>Quản lí sản phẩm</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-puzzle-piece"></i><a href="${pageContext.request.contextPath }/admin/qlsp/danhsach">Tất cả sản phẩm</a></li>
                            <li><i class="fa fa-id-badge"></i><a href="${pageContext.request.contextPath }/admin/qlsp/themsanpham">Thêm sản phẩm</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-table"></i>Quản lí người dùng</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-table"></i><a href="${pageContext.request.contextPath }/admin/qlkh/danhsach">Tất cả người dùng</a></li>
                            
                        </ul>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside>

    <div id="right-panel" class="right-panel">

        <!-- Header-->
        <header id="header" class="header">

            <div class="header-menu">

                <div class="col-sm-7">
                    <a id="menuToggle" class="menutoggle pull-left"><i class="fa fa fa-tasks"></i></a>
                    <div class="header-left">

                        <div class="dropdown for-message">
                        </div>
                    </div>
                </div>

                <div class="col-sm-5">
                    <div class="user-area dropdown float-right">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img class="user-avatar rounded-circle" src="/Content/Admin/images/admin.jpg" alt="User Avatar">
                        </a>

                        <div class="user-menu dropdown-menu">
                            <a class="nav-link" href="#"><i class="fa fa-user"></i> Tài khoản</a>
                            <a class="nav-link" href="${pageContext.request.contextPath }/logout"><i class="fa fa-power-off"></i> Thoát</a>
                        </div>
                    </div>

                </div>
            </div>

        </header>
        <div class="content mt-3">
            

<div class="container">
    <div class="row">
        <div class="animated fadeIn">
            <div class="row">
                <div class="card-header col-sm-12">
                <!--
                    <form class="form-inline my-2 my-lg-0 ">
                        <input class="form-control mr-sm-2 col-sm-4" type="text" placeholder="Tên người dùng">
                        <button type="button" class="btn btn-dark">Tìm kiếm</button>
                    </form>
                -->
                    
                </div>
                
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table id="mytable" class="table table-bordred table-striped">
                            <thead>
                            <th>Tên người dùng</th>
                            <th>Email</th>
                            <th>Ngày sinh</th>
                            <th>Giới tính</th>
                            <th>Số điện thoại</th>
                            <th>Địa chỉ</th>
                            <th>Quyền</th>
                            <th>Sửa</th>
                            <th>Xóa</th>
                            </thead>
                            <tbody>
<tr>
                                        <td>Nguyễn Văn Minh</td>
                                        <td>minhnguyen998vp@gmail.com</td>
                                        <td>4/29/2019</td>
                                        <td>Nam</td>
                                        <td>0325942121</td>
                                        <td>Đạo đức - bx - vp</td>
                                        <td>1</td>
                                        <td><p data-placement="top" data-toggle="tooltip" title="Edit"><a href="addUser.html"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><span class="fa fa-edit"></span></button></a></p></td>
                                        <td>
                                            <p data-placement="top" data-toggle="tooltip" title="Delete">
                                                <a data-title="Delete" id="" data-toggle="modal" data-target="#myModal">
                                                    <button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete">
                                                        <i class="fa fa-trash" aria-hidden="true"></i>
                                                    </button>
                                                </a>
                                            </p>
                                        </td>
                                    </tr>
<tr>
                                        <td>Nguyễn Văn A</td>
                                        <td>minhnguyen997vp@gmail.com</td>
                                        <td>5/18/2019</td>
                                        <td>Nam</td>
                                        <td>0325942122</td>
                                        <td>Vĩnh Ph&#250;c</td>
                                        <td>2</td>
                                        <td><p data-placement="top" data-toggle="tooltip" title="Edit"><a href="addUser.html"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><span class="fa fa-edit"></span></button></a></p></td>
                                        <td>
                                            <p data-placement="top" data-toggle="tooltip" title="Delete">
                                                <a data-title="Delete" id="" data-toggle="modal" data-target="#myModal">
                                                    <button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete">
                                                        <i class="fa fa-trash" aria-hidden="true"></i>
                                                    </button>
                                                </a>
                                            </p>
                                        </td>
                                    </tr>
<tr>
                                        <td>Ho&#224;ng Minh Đại</td>
                                        <td>admin1</td>
                                        <td>5/9/2019</td>
                                        <td>Nam</td>
                                        <td>0123455555</td>
                                        <td>H&#224; Nội</td>
                                        <td>2</td>
                                        <td><p data-placement="top" data-toggle="tooltip" title="Edit"><a href="addUser.html"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><span class="fa fa-edit"></span></button></a></p></td>
                                        <td>
                                            <p data-placement="top" data-toggle="tooltip" title="Delete">
                                                <a data-title="Delete" id="" data-toggle="modal" data-target="#myModal">
                                                    <button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete">
                                                        <i class="fa fa-trash" aria-hidden="true"></i>
                                                    </button>
                                                </a>
                                            </p>
                                        </td>
                                    </tr>
<tr>
                                        <td>đại</td>
                                        <td>dai</td>
                                        <td>5/9/2019</td>
                                        <td>Nam</td>
                                        <td>0125478</td>
                                        <td>H&#224; Nội</td>
                                        <td>2</td>
                                        <td><p data-placement="top" data-toggle="tooltip" title="Edit"><a href="addUser.html"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><span class="fa fa-edit"></span></button></a></p></td>
                                        <td>
                                            <p data-placement="top" data-toggle="tooltip" title="Delete">
                                                <a data-title="Delete" id="" data-toggle="modal" data-target="#myModal">
                                                    <button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete">
                                                        <i class="fa fa-trash" aria-hidden="true"></i>
                                                    </button>
                                                </a>
                                            </p>
                                        </td>
                                    </tr>
<tr>
                                        <td></td>
                                        <td></td>
                                        <td>1/1/0001</td>
                                        <td>Nam</td>
                                        <td></td>
                                        <td></td>
                                        <td>1</td>
                                        <td><p data-placement="top" data-toggle="tooltip" title="Edit"><a href="addUser.html"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><span class="fa fa-edit"></span></button></a></p></td>
                                        <td>
                                            <p data-placement="top" data-toggle="tooltip" title="Delete">
                                                <a data-title="Delete" id="" data-toggle="modal" data-target="#myModal">
                                                    <button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete">
                                                        <i class="fa fa-trash" aria-hidden="true"></i>
                                                    </button>
                                                </a>
                                            </p>
                                        </td>
                                    </tr>
                            </tbody>
                        </table>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- modal confirm-->
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title">Xác nhận</h3>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <p>Bạn có chắc chắn muốn xóa không ?</p>
            </div>
            <div class="modal-footer">
                <button class="btn btn-default" id="btnDelete">Có</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Không</button>
            </div>
        </div>
    </div>
</div>
<script>
    $(".pagination .page-item a").addClass("page-link");

</script>
        </div>

    </div> <!-- .content -->

    <script src="${pageContext.request.contextPath }/resources/assets1/js/widgets.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets1/js/main.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets1/js/dashboard.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets1/js/init-scripts/data-table/datatables-init.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets1/js/init-scripts/chart-js/chartjs-init.js"></script>
</body>
</html>
