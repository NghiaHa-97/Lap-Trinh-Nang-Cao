<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<head>
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

        <div class="col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h3>Thêm người dùng</h3>
                </div>
                <div class="card-body card-block">
                    <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
                        <div class="row form-group">
                            <div class="col col-md-2"><label for="text-input" class=" form-control-label">Họ Tên</label></div>
                            <div class="col-12 col-md-7"><input type="text" id="text-input" name="text-input" placeholder="Họ tên" class="form-control"></div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-2"><label for="text-input" class=" form-control-label">Địa chỉ email</label></div>
                            <div class="col-12 col-md-7"><input type="text" id="text-input" name="text-input" placeholder="abc@gmail.com" class="form-control"></div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-2"><label for="text-input" class=" form-control-label">Mật khẩu</label></div>
                            <div class="col-12 col-md-7"><input type="password" id="text-input" name="text-input" class="form-control"></div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-2"><label for="text-input" class=" form-control-label">Xác nhận mật khẩu</label></div>
                            <div class="col-12 col-md-7"><input type="password" id="text-input" name="text-input" class="form-control"></div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-2"><label for="text-input" class=" form-control-label">Ngày sinh</label></div>
                            <div class="col-12 col-md-3"><input type="date" id="text-input" name="text-input" placeholder="abc@gmail.com" class="form-control"></div>
                        </div>
                        <div class="page-header">
                            <h3>Ảnh đại diện</h3>
                            <hr>
                            <img class="img-thumbnail" src="http://placehold.it/400x400" alt="">
                        </div>
                        <fieldset class="form-group">
                            <input type="file" class="form-control-file" id="image">
                        </fieldset>
                    </form>
                </div>
                <div class="card-footer">
                    <button type="submit" class="btn btn-primary btn-sm">
                        <i class="fa fa-dot-circle-o"></i> Thêm
                    </button>
                    <button type="reset" class="btn btn-danger btn-sm">
                        <i class="fa fa-ban"></i> Hủy
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>

        </div>

    </div> <!-- .content -->

    <script src="${pageContext.request.contextPath }/resources/assets1/js/widgets.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets1/js/main.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets1/js/dashboard.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets1/js/init-scripts/data-table/datatables-init.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets1/js/init-scripts/chart-js/chartjs-init.js"></script>
</body>
</html>
