<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link
	href="${pageContext.request.contextPath }/resources/Assets/css/slider.css"
	rel="stylesheet" type="text/css" media="all" />
<link
	href="${pageContext.request.contextPath }/resources/Assets/css/animate.min.css"
	rel="stylesheet" type="text/css" media="all" />
<link
	href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">
<link
	href="${pageContext.request.contextPath }/resources/Assets/css/style.css"
	rel="stylesheet" type="text/css" media="all" />
<link
	href="${pageContext.request.contextPath }/resources/Assets/css/owl.carousel.css"
	rel="stylesheet" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/resources/Assets/js/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<!-- start slider -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/resources/Assets/js/modernizr.custom.28468.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/resources/Assets/js/jquery.cslider.js"></script>
<script type="text/javascript">
        $(function () {
            $('#da-slider').cslider();
        });
    </script>
<!-- Owl Carousel ${pageContext.request.contextPath }/resources/Assets -->
<!-- Owl Carousel ${pageContext.request.contextPath }/resources/Assets -->
<!-- Prettify -->
<script
	src="${pageContext.request.contextPath }/resources/Assets/js/owl.carousel.js"></script>
<script>
        $(document).ready(function () {

            $("#owl-demo").owlCarousel({
                items: 4,
                lazyLoad: true,
                autoPlay: true,
                navigation: true,
                navigationText: ["", ""],
                rewindNav: false,
                scrollPerPage: false,
                pagination: false,
                paginationNumbers: false,
            });

        });
    </script>
<!-- //Owl Carousel ${pageContext.request.contextPath }/resources/Assets -->
<!-- start top_js_button -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/resources/Assets/js/move-top.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/resources/Assets/js/easing.js"></script>
<script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1200);
            });
        });
    </script>

<!--Script Category-->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/resources/Assets/js/jquery.easing.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/resources/Assets/js/jquery.mixitup.min.js"></script>


