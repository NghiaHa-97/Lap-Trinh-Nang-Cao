<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<title>Trang chủ</title>
	<jsp:include page="my-header.jsp"></jsp:include>

</head>
<body>
	<jsp:include page="my-menu.jsp"/>


	<!-- start main -->
	<div class="main_bg">
		<div class="wrap">
			<div class="main">
				<!-- start gallery_sale  -->
				<div class="gallery1">
					<div class="container">
						<div style="background-color: azure">
							<ul id="filters" class="clearfix">
								<c:forEach var="item" items="${dsTheLoai }">
									<li><a
										href="${pageContext.request.contextPath }/home/danhmuc/danhsachsp?id=${item.id}"
										class="filter" data-filter="${item.id }">${item.tenLoai }</a></li>
								</c:forEach>


							</ul>
						</div>
						<div id="portfoliolist">
							<c:forEach var="item" items="${dsSanPham }">
								<div class="portfolio 1 " style="height: 490px;" data-cat="1 ">
									<div class="portfolio-wrapper" title="${item.tenSanPham }">
										<a href="${pageContext.request.contextPath }/home/chitiet/sp?id=${item.id }"> <img
											src="${pageContext.request.contextPath }/resources/Assets/images/${item.anhDaiDien }"
											style="width: 240px; height: 360px;" alt="Image 2" />
										
											<div class="price" style="text-align: center;">
												<h3
													style="overflow: hidden; text-overflow: ellipsis; white-space: nowrap; max-height: 27px;">${item.tenSanPham }</h3>
												<h4 style="display: flex; align-items: center;">
													<div style="width: 40%;">
														<span>${item.gia }đ</span> <span class="sale">${item.giaKM }đ</span>
													</div>
													<span class="details">Chi tiết</span>
												</h4>
											</div>
										</a>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
				<!-- container -->
				<script type="text/javascript"
					src="${pageContext.request.contextPath }/resources/Assets/js/fliplightbox.min.js"></script>
				<script type="text/javascript">$('body').flipLightBox()</script>
				<div class="clear"></div>
			</div>
			<!---End-gallery----->
		</div>
	</div>


	<script type="text/javascript">
    $(function () {

        var filterList = {

            init: function () {

                // MixItUp plugin
                // http://mixitup.io
                $('#portfoliolist').mixitup({
                    targetSelector: '.portfolio',
                    filterSelector: '.filter',
                    effects: ['fade'],
                    easing: 'snap',
                    // call the hover effect
                    onMixEnd: filterList.hoverEffect()
                });

            },

            hoverEffect: function () {

                // Simple parallax effect
                $('#portfoliolist .portfolio').hover(
                    function () {
                        $(this).find('.label').stop().animate({ bottom: 0 }, 200, 'easeOutQuad');
                        $(this).find('img').stop().animate({ top: -30 }, 500, 'easeOutQuad');
                    },
                    function () {
                        $(this).find('.label').stop().animate({ bottom: -40 }, 200, 'easeInQuad');
                        $(this).find('img').stop().animate({ top: 0 }, 300, 'easeOutQuad');
                    }
                    );

            }

        };

        // Run the show!
        filterList.init();


    });
</script>
	<div class="container">
		<ul class="pagination justify-content-center" style="margin: 20px 0">
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">4</a></li>
			<li class="page-item"><a class="page-link" href="#">5</a></li>
			<li class="page-item"><a class="page-link" href="#">6</a></li>
			<li class="page-item"><a class="page-link" href="#">Next</a></li>
		</ul>

	</div>
	<div class="clear"></div>

	<jsp:include page="my-footer.jsp"></jsp:include>
</body>
</html>