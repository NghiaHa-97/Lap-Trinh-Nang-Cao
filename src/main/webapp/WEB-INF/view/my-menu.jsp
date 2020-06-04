<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>




<!-- start header -->
	<div class="header_bg">
		<div class="wrap">
			<div class="header">
				<div class="logo">
					<a href="${pageContext.request.contextPath }/home"><img
						src="${pageContext.request.contextPath }/resources/Assets/images/logo.png"
						alt="" /> </a>
				</div>
				<div class="h_icon">
					<ul class="icon1 sub-icon1">
						<li><a class="active-icon c1" href=""> <i>
									đ </i>
						</a>
							<ul class="sub-icon1 list">
								<li>
									<h3>Chưa có sản phẩm nào</h3>
									<a href=""></a>
								</li>
								<li>
									<p>
										Nếu có sản phẩm trong danh sách mong muốn của bạn bị thiếu,
										hãy <a href="/LienHe/Index">liên hệ </a>với chúng tôi.
									</p>
								</li>
							</ul></li>
					</ul>
				</div>
				<div class="h_search">
					<form action="${pageContext.request.contextPath }/home/timkiemsp" method="get">
							<input type="text" value="" placeholder="Tìm kiếm..." name="tensanpham">
							<input type="submit" value="">
					</form>
				</div>
			
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<div class="header_btm">
		<div class="wrap">
			<div class="header_sub">
				<div class="h_menu" style="width: 100%; display: flex;">
					<ul style="width: 50%;">
						<li class="active"><a
							href="${pageContext.request.contextPath }/home">Trang Chủ</a></li>
						<li><a
							href="${pageContext.request.contextPath }/home/danhmuc">Danh
								mục</a></li>
						<li><a href="${pageContext.request.contextPath }/hoadon/hienthigiohang">Giỏ hàng</a></li>
						<li><a href="#">Liên hệ</a></li>
						<sec:authorize access="hasRole('ADMIN')">
		  					<li><a href="${pageContext.request.contextPath }/admin/home">ADMIN</a></li>
  						</sec:authorize>
						
					</ul>
					<ul style="width: 50%;">

						<c:if test="${username.compareTo('')==0 }">
							<li style="float: right;"><a href="${pageContext.request.contextPath }/dangki">Đăng
									kí</a></li>
							<li  style="float: right;"><a id="user"
								href="${pageContext.request.contextPath }/showMyLoginForm">Đăng nhập | </a></li>

						</c:if>

						<c:if test="${username.compareTo('')!=0 }">

							<form:form action="${pageContext.request.contextPath }/logout"
								methot="post">
								<li style="float: right;">
									<button type='submit' class="btn btn-success" style="margin-top:2px;">Đăng xuất</button>
								</li>

							</form:form>



							<li  style="float: right;"><a id="user" href="#">Xin chào, ${nguoiDungCT.id} | </a></li>
						</c:if>
						<!-- else
                        { 
                            //phần này để khi đăng nhập xong hó hiển thị tên khách hàng
                            var @kh = Session["USER_SESSION"] as KhachHang;
                            <li style="float: right;"><a href="/DangNhap/DangXuat">Đăng xuất</a></li>
                            <li style="float: right;"><a href="#">Xin chào, @kh.TenKhachHang | </a></li>
                        } -->
					</ul>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>