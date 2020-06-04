

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

    <title>Chi tiết sản phẩm</title>
    <jsp:include page="my-header.jsp"></jsp:include>
</head>
<body>
    <!-- start header -->
    <jsp:include page="my-menu.jsp"/>

<!-- start main -->
<div class="main_bg">
    <div class="wrap">
        <div class="main">
            <!-- start content -->
            <div class="single">
                <!-- start span1_of_1 -->
                <div class="left_content">
                    <div class="span1_of_1">
                        <!-- start product_slider -->
                        <div class="product-view">
                            <div class="product-essential">
                                <div class="product-img-box">
                                    <div class="more-views" style="float:left;">
                                    </div>
                                    <div class="product-image">
                                        <a class="" href="#" title="Women Shorts" alt="Women Shorts">
                                            <img src="${pageContext.request.contextPath }/resources/Assets/images/${sanPham.anhDaiDien}" alt="Women Shorts" title="${sanPham.tenSanPham}" />
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end product_slider -->
                    </div>
                    <!-- start span1_of_1 -->
                    <div class="span1_of_1_des">
                        <div class="desc1">
                            <div>
                                
                                <h3 id="tenSanPham" style="font-weight: 700;">${sanPham.id}-${sanPham.tenSanPham}</h3>
                            </div>
                            <div style="display: flex;">
                                <div style="width: 50%; display: flex; justify-content: flex-start;">
                                    <span>Nhà sản xuất</span>
                                </div>
                                <div style="width: 50%; display: flex; justify-content: flex-end;">
                                    <strong  style="font-weight: 550;">${sanPham.nhaSanXuat.tenNSX}</strong>
                                </div>
                            </div>
                            <div style="display: flex;">
                                <div style="width: 50%; display: flex; justify-content: flex-start;">
                                    <span>Thể loại</span>
                                </div>
                                <div style="width: 50%; display: flex; justify-content: flex-end;">
                                    <strong  style="font-weight: 550;">${sanPham.theLoai.tenLoai}</strong>
                                    
                                </div>
                            </div>
                            <hr />
                            <div style="display: flex;">
                                <div style="width: 50%; display: flex; justify-content: flex-start;">
                                    <span>Giá thị trường</span>
                                </div>
                                <div style="width: 50%; display: flex; justify-content: flex-end;">
                                    <strong id="gia1" style="text-decoration: line-through; font-size: 14px; color: #888; font-weight: 550;">${sanPham.gia}</strong>
                                </div>
                            </div>
                            <div style="display: flex;">
                                <div style="width: 50%; display: flex; justify-content: flex-start;">
                                    <span>Giá bán</span>
                                </div>
                                <div style="width: 50%; display: flex; justify-content: flex-end;">
                                    <strong id="gia" style="font-size: 18px; color: #f15c22; font-weight: 550;">${sanPham.gia}</strong>
                                </div>
                            </div>
                            <div style="display: flex;">
                                <div style="width: 50%; display: flex; justify-content: flex-start;">
                                    <span>Tiết kiệm</span>
                                </div>
                                <div style="width: 50%; display: flex; justify-content: flex-end;">
                                    <strong style="font-size: 18px; font-weight: 550;">0đ</strong>
                                </div>
                            </div>
                            <div style="display: flex;">
                                <div style="width: 50%; display: flex; justify-content: flex-start;">
                                    <span>Tình trạng</span>
                                </div>
                                <div style="width: 50%; display: flex; justify-content: flex-end;">
                                    <em style="font-size: 14px; color: #f15c22; font-style: italic;">
                                        
                                        <c:if test="${sanPham.soLuong > 0 }">Còn Hàng</c:if>
                                        <c:if test="${sanPham.soLuong == 0 }">Hết Hàng</c:if>
                                        
                                    </em>
                                </div>
                            </div>
                            <hr />
                            <!-- <h5>Rs. 399 <a href="#">click for offer</a></h5> -->
                            <div class="available" style="border-top: none;">
                                <div style="display: flex;">
                                    <div style="width: 75px;">Số lượng:</div>
                                    <form class="form">
                                        <div class="form-group">
                                            <div class="btn-group">
                                                <button id="btnMinus" type="button" class="btn" style="background-color: #4CCFC1; color: #fff;" onclick="onChangeQuantity('btnMinus')"><i class="fa fa-minus"></i></button>
                                                <input id="quantityValue" type="text" class="form-control" value="1" style="width: 65px; border-radius: unset; text-align: center;">
                                                <button id="btnPlus" type="button" class="btn" style="background-color: #4CCFC1; color: #fff;" onclick="onChangeQuantity('btnPlus')"><i class="fa fa-plus"></i></button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="btn_form">
                                    
                                        <button type="button" id="addToCart">Thêm vào giỏ hàng</button>
                                    
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="share-desc">
                                <div class="share">
                                    <h4>Chia sẻ :</h4>
                                    <ul class="share_nav">
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/Assets/images/facebook.png" title="facebook"></a></li>
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/Assets/images/twitter.png" title="Twiiter"></a></li>
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/Assets/images/rss.png" title="Rss"></a></li>
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/Assets/images/gpluse.png" title="Google+"></a></li>
                                    </ul>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                    <div class="clear"></div>
                    <!-- start tabs -->
                    <section class="tabs">
                        <input id="tab-1" type="radio" name="radio-set" class="tab-selector-1" checked="checked">
                        <label for="tab-1" class="tab-label-1">Giới thiệu</label>

                        <input id="tab-2" type="radio" name="radio-set" class="tab-selector-2">
                        <label for="tab-2" class="tab-label-2">Nhà sản xuất</label>

                        <div class="clear-shadow"></div>

                        <div class="content" style="height: 450px;overflow-y: scroll;">
                            <div class="content-1">
                                <h4>
                                    <span>${sanPham.tenSanPham} </span>
                                </h4>
                                <div class="clear"></div>
                            </div>
                            <div class="content-2">
                                <p class="para">
                                    <span>WELCOME </span> Contrary to popular belief, Lorem Ipsum is not simply random
                                    text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years
                                    old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of
                                    the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites
                                    of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from
                                    sections
                                </p>
                                <ul class="qua_nav">
                                    <li>Multimedia Systems</li>
                                    <li>Digital media adapters</li>
                                    <li>
                                        Set top boxes for HDTV and IPTV Player applications on various Operating Systems and Hardware
                                        Platforms
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </section>
                    <!-- end tabs -->
                </div>
                <!-- start sidebar -->
                <div class="left_sidebar">
<div class="sellers">
    <h4>Sản phẩm có liên quan</h4>
    <div style="height: 850px; overflow-y: scroll;">
                <div style="display: flex; margin: 25px auto; width: 200px;" title="Xiaomi Pad">
                    <a href="#" style="text-decoration: none; width: 100%">
                        <img src="${pageContext.request.contextPath }/resources/Assets/images/Xiaomi Pad.jpg" alt="image" style="width: 135px; height: 180px;">
                        <div style="font-weight: 700; color: #999; overflow: hidden">
                            Xiaomi Pad
                        </div>
                        <div style="font-weight: 400; color: #1d9d74; font-size: 12px;">
                            Apple
                        </div>
                        <div>
                                <span style="color: #f15c22; font-size: 16px; font-weight: 500;">9000000đ</span>
                                <span style="color: #333333; text-decoration: line-through; font-size: 12px">8000000đ</span>
                                <span style="padding: 5px; color: #fff; background-color: #f51919;">-12%</span>
                        </div>
                    </a>
                </div>

    </div>
    <div class="banner-wrap bottom_banner color_link">
        <a href="#" class="main_link">
            <figure><img src="${pageContext.request.contextPath }/resources/Assets/images/delivery.png" alt=""></figure>
            <h5><span>Free Shipping</span><br> on orders over 250K.</h5>
            <p>This offer is valid on all our store items.</p>
        </a>
    </div>
</div>
                </div>
                <!-- end sidebar -->
                <div class="clear"></div>
            </div>
            <!-- end content -->
        </div>
    </div>
    <div id="modalAddToCart" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="modalAddToCart" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Sản phẩm đã được thêm vào giỏ hàng</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body" id="addProductSuccess">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" onclick="onRedirectToAction('${pageContext.request.contextPath }/home')">Tiếp tục mua hàng</button>
                    <button type="button" class="btn btn-success" onclick="onRedirectToAction('${pageContext.request.contextPath }/hoadon/hienthigiohang')">Đến giỏ hàng</button>
                </div>
            </div>
        </div>
    </div>
    <div id="modalLogin" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="modalLogin" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Thông báo</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="alert alert-danger">Bạn phải đăng nhập để sử dụng chức năng này</div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" onclick="onRedirectToAction('${pageContext.request.contextPath }/showMyLoginForm')">Đăng nhập</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Đóng lại</button>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    const onChangeQuantity = selector => {
        let quantity = 50
        let currentValue = $('#quantityValue').val()
        if (selector === 'btnMinus') {
            --currentValue === 0 ? $('#quantityValue').val(1) : $('#quantityValue').val(currentValue)
        } else {
            ++currentValue > quantity ? $('#quantityValue').val(quantity) : $('#quantityValue').val(currentValue)
        }
    }
    const onRedirectToAction = url => {
        $(location).attr("href", url)
    }
</script>

<script>

    var gia1= parseInt(document.getElementById("gia1").textContent);

    document.getElementById("btnMinus").addEventListener("click",()=>{
       var soLuong= document.getElementById("quantityValue").value;
       document.getElementById("gia").textContent=gia1*soLuong;
    });

    document.getElementById("btnPlus").addEventListener("click",()=>{
        var soLuong= document.getElementById("quantityValue").value;
        document.getElementById("gia").textContent=gia1*soLuong;
    });

</script>

<script>
    async function getSanPham(id){
        let url='/LTJavaWeb_BanHangDienTu/apisanpham/sanphams/'+id;
        const response=await fetch(url);

        const sp= await response.json();

        console.log(sp);
        return sp;
    }

    async function postGioHang(url, hoadon){
        const response = await fetch(url, {
	        method: 'POST',
	        headers: {
	            'Content-type': 'application/json'
	        },
	        body: JSON.stringify(hoadon)
	        });
	
	        const resData = await response.json();
	        console.log(resData);
	        return resData;
    }

    $('#addToCart').click(() => {
        
        var str1=document.getElementById("user").textContent;
        var str2="Đăng nhập | ";
        var n = str1.localeCompare(str2)
        console.log(n);
        
        if(n!==0){
            var sanPham;
            var chiTietHoaDon= new Object();
            console.log(n);
            var sanPhamID=document.querySelector("#tenSanPham").textContent;
            var idSP=parseInt(sanPhamID.split('-')[0]);
            console.log("----------------"+ idSP);
            getSanPham(idSP).then(data=>{
                chiTietHoaDon.sanPham=data;
                
                chiTietHoaDon.soLuong=parseInt(document.querySelector("#quantityValue").value);
                chiTietHoaDon.donGia=parseInt(document.querySelector("#gia").textContent);
                
                var url="/LTJavaWeb_BanHangDienTu/apihoadon/giohang";
            
                postGioHang(url,chiTietHoaDon).then(data=>{
                    console.log(data);
                });
            });
            

           
            

            //console.log(chiTietHoaDon);
            
            

           $('#modalAddToCart').modal('show')
        }else{
        
            $('#modalLogin').modal('show')
        }
            
       
    })

    
</script>




<jsp:include page="my-footer.jsp"/>
</body>
</html>