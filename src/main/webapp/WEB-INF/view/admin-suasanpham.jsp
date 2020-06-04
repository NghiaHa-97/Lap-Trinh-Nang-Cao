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
                    <h3>Sửa sản phẩm</h3>
                </div>
                <div class="card-body card-block">
                    <form:form action="${pageContext.request.contextPath }/admin/qlsp/savesanpham"  method="GET" enctype="multipart/form-data" class="form-horizontal" id="FormAdd" modelAttribute="sanPham">
                        <form:hidden path="id"/>
                        <div class="row form-group">
                            <div></div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label for="text-input" class=" form-control-label">Tên sản phẩm(*)</label></div>
                            <div class="col-12 col-md-7"><form:input type="text" name="TenSanPham" id="TenSanPham" placeholder="Tên Sản Phẩm" path="tenSanPham" class="form-control"/></div>
                            <div class="col-md-2 error"><span class="field-validation-valid text-danger" data-valmsg-for="TenSanPham" data-valmsg-replace="true"></span></div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label for="selectLg" class=" form-control-label">Loại sản phẩm(*)</label></div>
                            <div class="col-12 col-md-4">
                                <form:select name="TheLoaiID" id="selectLg" class="form-control" path="theLoai.id">
                                             <form:option value="1">Máy Tính Bảng</form:option>
                                                <form:option value="2">Điện Thoại Bàn Phím</form:option>
                                                <form:option value="3">Điện Thoại Cảm Ứng</form:option>
                                                <form:option value="4">Màn Hinh</form:option>
                                                <form:option value="5">Máy Chiếu</form:option>
                                                <form:option value="6">Máy In</form:option>
                                                <form:option value="7">Bàn Phím</form:option>
                                                <form:option value="8">Chuột</form:option>
                                                <form:option value="9">Loa</form:option>
                                                <form:option value="10">Sạc Không Dây</form:option>
                                                <form:option value="11">Máy Ảnh</form:option>
                                </form:select>
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label for="selectLg" class=" form-control-label">Nhà sản xuất(*)</label></div>
                            <div class="col-12 col-md-4">
                                <form:select name="NSXID" id="selectLg1" class="form-control" path="nhaSanXuat.id">
                                            <form:option value="1">Apple</form:option>
                                            <form:option value="2">Samsung</form:option>
                                            <form:option value="3">Canon</form:option>
                                            <form:option value="4">Sony</form:option>
                                            <form:option value="5">Xiaomi</form:option>
                                            <form:option value="6">Viettel</form:option>
                                            <form:option value="7">Nokia</form:option>
                                            <form:option value="8">FPT</form:option>
                                            <form:option value="9">Vin</form:option>
                                            <form:option value="10">Abey</form:option>
                                            <form:option value="11">XKeyboard</form:option>
                                            <form:option value="12">Jbail</form:option>
                                </form:select>
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label for="text-input" class=" form-control-label">Giá(*)</label></div>

                            <div class="col-12 col-md-4"><form:input type="number" id="text-input1" min="0" placeholder="nhập giá" class="form-control" path="gia"/></div>
                            <div class="col-md-1">VNĐ</div>
                            <div class="col-md-2 error"><span class="field-validation-valid text-danger" data-valmsg-for="Gia" data-valmsg-replace="true"></span></div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label for="text-input" class=" form-control-label">Giảm giá</label></div>
                            <div class="col-12 col-md-4"><form:input type="number" id="text-input"   min="0" placeholder="nhập giảm giá" class="form-control" path="giaKM"/></div>
                            <div class="col-md-3">VNĐ</div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label for="text-input" class=" form-control-label">Số lượng(*)</label></div>
                            <div class="col-12 col-md-4"><form:input type="number" id="Soluong"   placeholder="nhập số lượng" min="0" class="form-control" path="soLuong"/></div>
                            <div class="col-md-1">chiếc</div>
                            <div class="col-md-4 error"><span class="field-validation-valid text-danger" data-valmsg-for="SoLuong" data-valmsg-replace="true"></span></div>
                        </div>
                       
                        <div class="page-header" style="padding: 0 0 0 0;">
                            <h3>Ảnh minh họa</h3>
                            <hr>
                            <img class="img-thumbnail" src="/${pageContext.request.contextPath }/resources/assets1/images/${sanPham.anhDaiDien}" id="displayImg">
                        </div>
                        <fieldset class="form-group">
                            <input type="file" class="form-control-file" id="image" name="Hinhminhhoa" onchange="onFileSelected(event)">
                            <input type="text" hidden value="Apple Ipad Air 2.jpg" name="Hinhminhhoa" />
                        </fieldset>
                        <input type="submit" class="btn btn-primary btn-sm" value="Lưu"/>
                            <!--<i class="fa fa-dot-circle-o"></i> Lưu -->
                            
                        
                        <a type="button" class="btn btn-danger btn-sm" href="${pageContext.request.contextPath }/admin/qlsp/danhsach">
                            <i class="fa fa-ban"></i> Hủy
                        </a>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    //lấy ảnh từ máy hiển thị lên web
    const onFileSelected = (event) => {
        var selectedFile = event.target.files[0];
        var reader = new FileReader();

        var imgtag = document.getElementById("displayImg");
        imgtag.title = selectedFile.name;

        reader.onload = function (event) {
            imgtag.src = event.target.result;
        };
        reader.readAsDataURL(selectedFile);
    }
    // validate dữ liệu trước khi submit
    const validateForm = () => {
        if (document.getElementById('TenSanPham').value == "") {
            alert("Bạn phải nhập tên sản phẩm");
            return false;
        }
        if (document.getElementById('Gia').value == "") {
            alert("Phải nhập giá sản phẩm");
            return false;
        }
        if (document.getElementById('SoLuong').value == "") {
            alert("Bạn phải nhập số lượng");
            return false;
        }
    }
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
