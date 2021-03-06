
<!--
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


-->


<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Đăng kí</title>

    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath }/resources/Assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath }/resources/Assets/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="" style="background-image: linear-gradient(180deg,#40C4B2 10%,#47BEAF 100%)">

    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Tạo tài khoản mới!</h1>
                            </div>
                            <div class="text-center" style="margin: 20px;">
                                <span class="alert alert-danger" id="formValidation"></span>
                            </div>
                            <form class="user" >
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" name="Hotenkh" placeholder="Họ và tên (*)" path="nguoiDungCT.hoTen"/>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" name="Diachikh" placeholder="Địa chỉ (*)" path="nguoiDungCT.diaChi"/>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="date" class="form-control form-control-user" placeholder="Ngày sinh" name="Ngaysinh" path="nguoiDungCT.ngaySinh"/>
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control form-control-user" name="Dienthoaikh" placeholder="Số điện thoại" path="nguoiDungCT.sDT"/>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-3">
                                        <label style="display: flex;">
                                            <input type="radio" class="form-control form-control-user" name="Gioitinh"
                                                value="false" checked> Nam
                                        </label>
                                    </div>
                                    <div class="col-sm-3">
                                        <label style="display: flex;">
                                            <input type="radio" class="form-control form-control-user" name="Gioitinh"
                                                value="true"> Nữ
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input path="nguoiDungCT.email" type="email" class="form-control form-control-user" name="Email" placeholder="Email"/>
                                </div>
                                <div class="form-group">
                                    <input path="username" type="text" class="form-control form-control-user" name="Tendn" placeholder="Tên đăng nhập (*)"/>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input path="password" type="password" class="form-control form-control-user" placeholder="Mật khẩu (*)" name="Matkhau"/>
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="password" class="form-control form-control-user" name="XacNhanMatKhau" placeholder="Xác nhận mật khẩu (*)">
                                    </div>
                                </div>
                                <button id="btnTaoTaiKhoan" type="button" class="btn btn-primary btn-user btn-block">
                                    Tạo tài khoản
                                </button>
                                
                                
                                
                                <hr>
                                <a href="/Home/Index" class="btn btn-google btn-user btn-block">
                                    <i class="fab fa-google fa-fw"></i> Tạo tài khoản với Google
                                </a>
                                <a href="/Home/Index" class="btn btn-facebook btn-user btn-block">
                                    <i class="fab fa-facebook-f fa-fw"></i> Tạo tài khoản với Facebook
                                </a>
                            </form>
                            <hr>
                            <div class="text-center">
                                <a class="small" href="#">Quên mật khẩu?</a>
                            </div>
                            <div class="text-center">
                                <a class="small" href="${pageContext.request.contextPath }/showMyLoginForm">Đã có tài khoản? Đăng nhập!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath }/resources/Assets/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/Assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath }/resources/Assets/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath }/resources/Assets/js/sb-admin-2.min.js"></script>

    <script>
    
   
    
	    async function post(url, users) {
	        const response = await fetch(url, {
	        method: 'POST',
	        headers: {
	            'Content-type': 'application/json'
	        },
	        body: JSON.stringify(users)
	        });
	
	        const resData = await response.json();
	        console.log(resData);
	        return resData;
	    
	    }
    	
        $('#formValidation').hide()
        $('#btnTaoTaiKhoan').click(() => {
            let messageErr = '';
            let data = {};

            data.TenKhachHang = $('input[name="Hotenkh"]').val();
            data.DiaChi = $('input[name="Diachikh"]').val();
            data.SDT = $('input[name="Dienthoaikh"]').val();
            data.NgaySinh = $('input[name="Ngaysinh"]').val();
            data.GioiTinh = $('input[name="Gioitinh"]:checked').val();
            data.Email = $('input[name="Email"]').val();
            data.TaiKhoan = $('input[name="Tendn"]').val();
            data.Matkhau_MaHoa = $('input[name="Matkhau"]').val();
            data.XacNhanMatKhau = $('input[name="XacNhanMatKhau"]').val();

            if (!data.TenKhachHang) {
                messageErr = 'Bạn chưa nhập họ tên';
            } else if (!data.DiaChi) {
                messageErr = 'Bạn chưa nhập địa chỉ';
            } else if (!data.TaiKhoan) {
                messageErr = 'Bạn chưa nhập tên đăng nhập';
            } else if (!data.Matkhau_MaHoa) {
                messageErr = 'Bạn chưa nhập mật khẩu';
            } else if (data.Matkhau_MaHoa !== data.XacNhanMatKhau) {
                messageErr = 'Xác nhận mật khẩu không đúng';
            }

            if (messageErr) {
                $('#formValidation').show().text(messageErr);
                window.scrollTo(0, 0);
            }else{
                let users=new Object();
                let data=document.querySelectorAll(".form-control");
                users.nguoiDungCT={
                    hoTen:data[0].value,
                    diaChi:data[1].value,
                    ngaySinh:data[2].value,
                    sDT:data[3].value,
                    gT:1,
                    email:data[6].value
                };
                if(data[5].checked===true){
                    users.nguoiDungCT.gT=parseInt(data[5].value);
                }

                users.username=data[7].value;
                users.password="{noop}"+data[8].value;
                users.enabled=1;
                users.listAuthorities=[
                    {	
                    	id:1,
                        authority:"ROLE_EMPLOYEE"
                    }
                ];

                console.log(users);
                let url="apinguoidung/nguoidung";

                post(url, users).then((data)=>{
                    console.log(data);
                    if(data!==null){
                        alert("Đăng ký thành công. Mời bạn đăng nhập");
                        location.href = "http://localhost:8080/LTJavaWeb_BanHangDienTu/showMyLoginForm";
                    }
                    
                    
                });
            }
             
        })

        

    </script>

</body>

</html>
