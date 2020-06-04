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
        <div class="animated fadeIn">
            <div class="row">
                <div class="card-header col-sm-11">
                    <!--<form class="form-inline my-2 my-lg-0 " method="post" action="/AdminSite/AdminQuanLySanPham/TimKiem">
                        <input class="form-control mr-sm-2 col-sm-2" name="TenSanPham" type="text" placeholder="Tên sản phẩm">

                        <button type="submit" class="btn btn-dark">Tìm kiếm</button>
                    </form>-->
                </div>
                <div class="card-header col-sm-1 btn-add">
                    <a class="btn btn-success" href="${pageContext.request.contextPath }/admin/qlsp/themsanpham"><i class="fa fa-plus" aria-hidden="true"></i></a>
                </div>
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table id="mytable" class="table table-bordred table-striped">

                            <thead>
                                <th>Tên sản phẩm</th>
                                <th>Loại sản phẩm</th>
                                <th>Tên nhà sản xuất</th>
                                <th>Đơn giá</th>
                                <th>Giảm giá</th>
                                <th>Số lượng</th>
                                <th>Sửa</th>
                                <th>Xóa</th>
                            </thead>
                            <tbody id="dsSanPham">
                            <!--.............................................-->

                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div><!-- .animated -->
    </div>
</div>


<!-- Modal -->
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title">Xác nhận</h3>
                <button type="button" class="close" data-dismiss="modal">&times;</button>

            </div>
            <div class="modal-body">
                <p>Bạn có chắc chắn muốn xóa không ?</p>
            </div>
            <input type="text" hidden id="MaSanPham" />
            <div class="modal-footer">
                <button class="btn btn-default" id="btnDelete" style="background-color: red;">Có</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Không</button>
            </div>
        </div>

    </div>
</div>

<script>

    async function getAllSP(){
        const response=await fetch("/LTJavaWeb_BanHangDienTu/apisanpham/sanphams")

        const readData=await response.json();
        
        return readData;
    }

    getAllSP().then((data)=>{
        console.log(data);
        data.forEach(cru => {
            let html;
            html='<tr class="data-table">'+
                                       " <td>"+cru.tenSanPham+"</td>"+
                                       " <td>"+cru.theLoai.tenLoai+"</td>"+
                                       " <td>"+cru.nhaSanXuat.tenNSX+"</td>"+
                                       " <td>"+cru.gia+"</td>"+
                                       " <td>"+cru.giaKM+"</td>"+
                                       " <td>"+cru.soLuong+"</td>"+
                                        "<td>"+
                                            '<p data-placement="top" data-toggle="tooltip" title="Edit">'+
                                                '<a href="${pageContext.request.contextPath }/admin/qlsp/formsuasp?id='+cru.id+'">'+
                                                
                                                   ' <button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit">'+
                                                       ' <span class="fa fa-edit"></span>'+
                                                    '</button>'+
                                                '</a>'+
                                            '</p>'+
                                        '</td>'+
                                        '<td>'+
                                           ' <p data-placement="top" class="modal-delete" data-toggle="tooltip" title="Delete">'+
                                                '<a href="${pageContext.request.contextPath }/admin/qlsp/xoasanpham?id='+cru.id +'" '+ 'class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#myModal">'+
                                                    '<i class="fa fa-trash" aria-hidden="true" style="color:#ffffff"></i>'+
                                                '</a>'+
                                            '</p>'+
                                        '</td>'+
                                '</tr>';
            
            
            document.querySelector("#dsSanPham").insertAdjacentHTML("beforeend",html);           
        });




    });










    // xóa sản phẩm
    // $('#myModal').on('show.bs.modal', (e) => {
    //     const link = e.relatedTarget;
    //     let MaSanPham = parseInt(jQuery(link).attr('id'));
    //     jQuery('#btnDelete').click(() => {
    //         jQuery.ajax({
    //             url: '/AdminQuanLySanPham/XoaSanPham',
    //             method: 'POST',
    //             data: { MaSanPham },
    //             dataType: 'text',
    //             success: (response) => {
    //                 response = JSON.parse(response)
    //                 if (response.status == true) {
    //                     jQuery('#myModal').modal('hide');
    //                     location.reload();
    //                 } else {
    //                     alert('Xóa sản phẩm thất bại!')
    //                 }
    //             }
    //         })
    //     })
    // });
    // $(".pagination .page-item a").addClass("page-link");
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
