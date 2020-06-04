<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Giỏ Hàng</title>
<jsp:include page="my-header.jsp"></jsp:include>
</head>
<body>
	<!-- start header -->
	<jsp:include page="my-menu.jsp" />

	<div class="row">
		<div class="col-md-9 left-container">
			<table class="table cart-table">
				<thead class="thead-light">
					<tr>
						<th>
							<form action="#" class="form">
								<div class="checkbox">
									<input type="checkbox" id="checkboxAll" />
								</div>
							</form>
						</th>
						<th colspan="2" class="header-cart">Giỏ hàng</th>
						<th class="header-cart" style="text-align: center;">Giá</th>
						<th class="header-cart">Số lượng</th>
					</tr>
				</thead>
				<tbody class="tbody">

					<c:forEach var="item" items="${listChiTietHD }">
					<tr id="row-item-${item.sanPham.id}">
						<td>
							<form action="#" class="form">
								<div class="checkbox">
									<input type="checkbox" class="checkboxItem" id="item-${item.sanPham.id}" />
								</div>
							</form>
						</td>
						<td class="col-content-img">
							<div>
								<img
									src="${pageContext.request.contextPath }/resources/Assets/images/${item.sanPham.anhDaiDien}"
									alt="images">
							</div>
						</td>
						<td class="col-content-title">
							<div>
								<div class="title">${item.sanPham.tenSanPham}</div>
								<div>
									<div class="author">
										Nhà sản xuất : <span style="color: #0066c0;">${item.sanPham.nhaSanXuat.tenNSX}</span>
									</div>
									<div class="author">
										Thể loại : <span>${item.sanPham.theLoai.tenLoai}</span>
									</div>
									<div>
										<button class="delete">Xóa</button> | <a href="#">Thêm
											vào yêu thích</a>
									</div>
								</div>
							</div>
						</td>
						<td class="col-content-price">
							<div>
								<span class="product-price">${item.donGia} đ</span> <span
									class="saving">Tiết kiệm -0 đ</span>
							</div>
						</td>
						<td class="col-content-quantity"><input type="number"
							value="${item.soLuong}" class="form-control" min="1"></td>
					</tr>
					</c:forEach>


					
					
				</tbody>
				<tfoot>
					<td colspan="3">
						<div>
							<button type="button" class="btn btn-danger deselect">Xóa chọn</button>
						</div>
					</td>
					<td>
						<div class="footer-price">
							<span class="total-price"></span> 
							<span class="total-saving">Tiết kiệm 0 đ</span>
						</div>
					</td>


					<td>
						<div>
							<form action="${pageContext.request.contextPath }/hoadon/luuhoadon" method="post">
								<button type="submit" class="btn btn-success"
									style="font-size: 14px;">
									<i class="fa fa-shopping-cart"></i>Thanh toán
								</button>
							</form>
						</div>
					</td>
				</tfoot>
			</table>
		</div>
		<div class="col-md-3 right-container">
			<div class="cart-info">
				<div class="info">
					<span class="text-bold" style="font-size: 17px;"></span>
					<span class="total-price" style="color: #f15c22"></span> 
					<span style="font-size: 14px;">( Chưa có cước vận chuyển )</span>
				</div>

				<div class="payment">
					<form action="${pageContext.request.contextPath }/hoadon/luuhoadon" method="post">
						<button type="submit" class="btn btn-success">
							<i class="fa fa-shopping-cart"></i> Thanh toán
						</button>
					</form>
				</div>
			</div>
			<div class="more-product">
				<div class="sellers">
					<h4>Sản phẩm có liên quan</h4>
					<div style="height: 850px; overflow-y: scroll;">
						<div style="display: flex; margin: 25px auto; width: 200px;"
							title="Xiaomi Pad">
							<a href="#" style="text-decoration: none; width: 100%"> <img
								src="${pageContext.request.contextPath }/resources/Assets/images/Xiaomi Pad.jpg"
								alt="image" style="width: 135px; height: 180px;">
								<div style="font-weight: 700; color: #999; overflow: hidden">
									Xiaomi Pad</div>
								<div style="font-weight: 400; color: #1d9d74; font-size: 12px;">
									Apple</div>
								<div>
									<span
										style="color: #f15c22; font-size: 16px; font-weight: 500;">9000000đ</span>
									<span
										style="color: #333333; text-decoration: line-through; font-size: 12px">8000000đ</span>
									<span
										style="padding: 5px; color: #fff; background-color: #f51919;">-12%</span>
								</div>
							</a>
						</div>

					</div>
					<div class="banner-wrap bottom_banner color_link">
						<a href="#" class="main_link">
							<figure>
								<img
									src="${pageContext.request.contextPath }/resources/Assets/images/delivery.png"
									alt="">
							</figure>
							<h5>
								<span>Free Shipping</span><br> on orders over 250K.
							</h5>
							<p>This offer is valid on all our store items.</p>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script>
		function capNhatTong(){
			var totalPrice=document.querySelectorAll(".product-price");
			var soLuong=document.querySelectorAll(".form-control");

			var tongGia=0;
			var tongSL=0;

			totalPrice.forEach((cru)=>{
				tongGia+=parseInt(cru.textContent);

			})
			soLuong.forEach((cru)=>{
				tongSL+=parseInt(cru.value);
				
			})

			document.querySelector(".total-price").textContent="Tổng Tiền: " +tongGia +" đ";
			document.querySelector(".text-bold").textContent=tongSL+" Sản phẩm";
		}

		capNhatTong();
		


		//xóa sản phẩm giỏ hàng 

		async function deleteSP(url) {
			const response = await fetch(url, {
			method: 'DELETE',
			headers: {
				'Content-type': 'application/json'
			}
			});

			const resData = await response.json();
			console.log(resData);
			//return resData;
		}

		//xoa 1 sp

		var deleteItem=function(even){
			var id, idCha;
			idCha=even.target.parentNode.parentNode.parentNode.parentNode.parentNode.id;
			id=idCha.split('-')[2];
			console.log(idCha);
			console.log(id);
			url="/LTJavaWeb_BanHangDienTu/apihoadon/giohang/"+id;
			deleteSP(url);


			var value=document.getElementById(idCha);

			value.parentNode.removeChild(value);
			capNhatTong();

		}

		document.querySelector(".tbody").addEventListener("click",deleteItem);


		










	</script>







	<script>
    $('#checkboxAll').click(() => {
        if ($('#checkboxAll').is(':checked')) {
            $('.checkboxItem').prop('checked', true)
            isCheckedAll = true
        } else {
            $('.checkboxItem').prop('checked', false)
        }
    })

    const onClickSelectItem = selector => {
        let numberAllRow = $('.checkboxItem').length
        if (!$(selector).is(':checked') && $('#checkboxAll').is(':checked')) {
            $('#checkboxAll').prop('checked', false)
        } else {
            let numberRowIsChecked = $('.checkboxItem').filter(function () {
                return $(this).is(':checked')
            }).length
            if (numberRowIsChecked === numberAllRow) {
                $('#checkboxAll').prop('checked', true)
            }
        }
    }

    const onClickRemoveItemSelected = () => {
        const listItemSelected = []
        $('.checkboxItem').each(function () {
            if ($(this).is(':checked')) {
                //item-id
                let productID = $(this).attr('id').split('-')[1]
                listItemSelected.push(parseInt(productID))
            }
        })
       
    }

</script>


	<jsp:include page="my-footer.jsp" />
</body>
</html>