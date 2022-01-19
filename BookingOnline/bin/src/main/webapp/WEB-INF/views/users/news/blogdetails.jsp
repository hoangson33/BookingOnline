<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>

<mt:layout_user title="Blog Details">

	<jsp:attribute name="content">
	
	<!-- =======================================         ==End Header section==      =======================================-->
	<!-- =======================================         ==Start Breadcrumbs section==      =======================================-->
	<section class="hotel-breadcrumbs pos-relative">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="breadcrumbs-content align-row-spacebetween">
						<ol class="breadcrumb">
							<li><a href="#">Home</a></li>
							<li class="active">News Details</li>
						</ol>
						<h2 class="text-uppercase color-ff">News Details</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================================         ==End Breadcrumbs section==      =======================================-->
	<!-- ======================================================             ==Start blog details style==     ==========================================================-->
	<section class="blog-details section-padding">
		<div class="container">
			<div class="row">
				<div class="col-xl-8 col-lg-8">
					<div class="blog-details-content">
						<img src="${pageContext.request.contextPath }/resources/user/images/blog-details-img.jpg" alt="blog details img"
							class="img-fluid">
						<h4 class="fw-700 color-33 pt-40 pb-25 post-title">Maecenas
							imperdiet neque sit</h4>
						<p class=" details-txt color-77 dropcap-style1 pr-20">
							<span class="fw-700">l</span>orem ipsum dolor sit amet,
							consectetur adipiscing elit. Vivamus euismod risus ligula, id
							luctus lectus volutpat sed. Lorem ipsum dolor sit amet,
							consectetur adipiscing elit. Praesent id mi sit amet nibh iaculis
							faucibus vitae et magna. Lorem ipsum dolor sit amet, consectetur
							adipiscing elit. Ut sed bibendum leo. Mauris mauris massa,
							eleifend et purus vel, feugiat rutrum nulla. Cras vitae est vel
							ipsum faucibus fermentum a ultricies urna. Cum sociis natoque
							penatibus et magnis dis parturient montes. Morbi mollis
							vestibulum sollicitudin. Nunc in eros a justo facilisis rutrum.
							Aenean id ullamcorper libero. Vestibulum imperdiet nibh vel magna
							lacinia ultrices. Sed id interdum urna. Nam ac elit a ante
							commodo tristique. Duis lacus urna, condimentum a vehicula a,
							hendrerit ac nisi Lorem ipsum dolor sit amet, consectetur
							adipiscing elit. Aliquam vulputate, tortor nec commodo ultricies,
							lectus nisl facilisis enim, vitae viverra urna nulla sed turpis.
							Nullam lacinia faucibus risus, a euismod lorem tincidunt id.
							Donec maximus placerat tempor. Class aptent taciti sociosqu ad
							litora torquent per conubia nostra, per inceptos himenaeos.
							Suspendisse faucibus sed dolor eget posuere. Proin tincidunt
							fermentum arcu. Nam ac elementum nibh. Donec facilisis interdum
							orci sit amet ullamcorper.
						</p>
						<blockquote class="blockqute">
							<h2 class="title-20 color-33 pos-relative">It's crazy, but
								the things you love, prospective buyers might hate—and that
								means you might have a hard time unloading your home when it
								comes time to sell. Here's how to choose wisely</h2>
							<span class="display-block pos-relative color-66">David
								Leo</span>
						</blockquote>
						<p>Donec gravida malesuada lacus, eget tristique Lorem ipsum
							dolor sit amet, consectetur adipiscing elit. Aliquam vulputate,
							tortor nec commodo ultricies, lectus nisl facilisis enim, vitae
							viverra urna nulla sed turpis. Nullam lacinia faucibus risus, a
							euismod lorem tincidunt id. Donec maximus placerat tempor. Class
							aptent taciti sociosqu ad litora torquent per conubia nostra, per
							inceptos himenaeos. Suspendisse faucibus sed dolor eget posuere.
							Proin tincidunt fermentum arcu. Nam ac elementum nibh. Donec
							facilisis interdum orci sit amet ullamcorper. Donec gravida
							malesuada lacus, eget tristique Lorem ipsum dolor sit amet,
							consectetur adipiscing elit. Aliquam vulputate,</p>
						<div class="tagnshare-area align-row-spacebetween">
							<div class="tags">
								<ul class="admin display-inline">
									<li>By admin</li>
									<li>February 20th, <span class="update-year"></span></li>
								</ul>
								<ul class="tag pt-20">
									<li><a href="#">blog post</a></li>
									<li><a href="#">Artistic</a></li>
									<li><a href="#">real estate</a></li>
									<li><a href="#">family home</a></li>
								</ul>
							</div>
							<ul class="social-share display-inline">
								<li class="facebook"><a href="#"><i
										class="fa fa-facebook"></i></a></li>
								<li class="twitter"><a href="#"><i
										class="fa fa-twitter"></i></a></li>
								<li class="g-plus"><a href="#"><i
										class="fa fa-google-plus"></i></a></li>
								<li class="instagram"><a href="#"><i
										class="fa fa-instagram"></i></a></li>
							</ul>
						</div>
						<div class="comment-area">
							<h4 class="comment-title color-33 fw-600">
								Comments <span>(2)</span>
							</h4>
							<ul class="comment-wrapper pt-45">
								<li><img src="${pageContext.request.contextPath }/resources/user/images/commenter-img1.jpg" alt="author img">
								<h6>
										<span><a href="#" class="name">Kavin smith </a>- CEO
											CHI ART PRO</span><a href="#" class="reply">REPLY</a>
									</h6>
									<p>Vestibulum imperdiet nibh vel magna lacinia ultrices.
										Sed id interdum urna. Nam ac elit a ante commodo tristique.
										Duis lacus urna, condimentum a vehiculaa,Duis lacus</p>
									<div class="reply-form pos-relative align-row-center-left">
										<img src="${pageContext.request.contextPath }/resources/user/images/commenter-img3.jpg" alt="author img"><input
											type="text" name="reply" placeholder="Write a comment"><a
											href="#" class="reply">REPLY</a>
									</div></li>
								<li><img src="${pageContext.request.contextPath }/resources/user/images/commenter-img2.jpg" alt="author img">
								<h6>
										<span><a href="#" class="name">Kavin smith </a>- CEO
											CHI ART PRO</span><a href="#" class="reply">REPLY</a>
									</h6>
									<p>Vestibulum imperdiet nibh vel magna lacinia ultrices.
										Sed id interdum urna. Nam ac elit a ante commodo tristique.
										Duis lacus urna, condimentum a vehiculaa,Duis lacus</p>
									<!--reply-->
									<ul>
										<li><img src="${pageContext.request.contextPath }/resources/user/images/commenter-img3.jpg" alt="author img">
										<h6>
												<span><a href="#" class="name">Kavin smith </a>- CEO
													CHI ART PRO</span><a href="#" class="reply">REPLY</a>
											</h6>
											<p>Vestibulum imperdiet nibh vel magna lacinia ultrices.
												Sed id interdum urna. Nam ac elit</p></li>
									</ul></li>
							</ul>
						</div>
						<!--/comment-area-->
						<div class="comment-form contact-form">
							<h4 class="contact-title color-33 pb-50">Leave a comment</h4>
							<div class="abform-area clearfix">
								<form action="#" method="post">
									<div class="abinput-group name float-left">
										<input type="text" name="name" placeholder="Name">
									</div>
									<div class="abinput-group email float-left">
										<input type="email" name="email" placeholder="Email">
									</div>
									<div class="abinput-group msg">
										<textarea name="msg" placeholder="Message"></textarea>
									</div>
									<button type="submit"
										class="pos-relative btn-default solid-bg-btn">
										<span>SEND NOW</span>
									</button>
								</form>
								<!--/form-->
							</div>
						</div>
						<!--/comment form-->
					</div>
				</div>
				<!--/col-->
				<div class="col-xl-3 offset-xl-1 col-lg-4">
					<aside class="clearfix">
						<div class="single-sidebar">
							<h6 class="fw-600 color-33 text-uppercase pb-20">Search
								Widget</h6>
							<form action="#">
								<div class="input-group searchbar clearfix">
									<input type="search" name="search" placeholder="Search">
									<button type="submit">
										<i class="ion-ios-search"></i>
									</button>
								</div>
							</form>
						</div>
						<div class="single-sidebar newsletter">
							<h6 class="fw-600 color-33 text-uppercase pb-20">News Letter</h6>
							<form action="#">
								<div class="input-group clearfix">
									<input type="email" name="email"
										placeholder="Enter email address">
									<button type="submit">
										<i class="fa fa-caret-right"></i>
									</button>
								</div>
							</form>
							<p class="spam-warning">
								<i class="fa fa-info-circle"></i>We never spam your email
							</p>
						</div>
						<div class="single-sidebar">
							<div class="blockqute">
								<i class="fa fa-quote-left"></i>
								<h6 class="color-ff pt-15">Your success with inbound
									marketing and sales is much more dependent on the width of your
									brain than the width of your wallet.</h6>
								<span class="display-block pos-relative color-ff">David
									Leo</span>
							</div>
						</div>
						<div class="single-sidebar recent-post">
							<h6 class="fw-600 color-33 text-uppercase">RECENT Post</h6>
							<div class="recent-post">
								<div class="single-post pos-relative align-row-left-top">
									<a href="#"><img alt="post img" class="post-img"
										src="${pageContext.request.contextPath }/resources/user/images/blog-recent-post-img1.jpg"></a>
									<ul class="post-text">
										<li><a href="#">Aenean facilisis id neque malesuadais
												suscipit</a></li>
										<li class="post-time"><span class="date">28 July <span
												class="update-year"></span></span></li>
									</ul>
								</div>
								<!--recent post-2-->
								<div class="single-post pos-relative align-row-left-top">
									<a href="#"><img alt="post img" class="post-img"
										src="${pageContext.request.contextPath }/resources/user/images/blog-recent-post-img2.jpg"></a>
									<ul class="post-text">
										<li><a href="#">Aenean facilisis id neque malesuadais
												suscipit</a></li>
										<li class="post-time"><span class="date">25 July <span
												class="update-year"></span></span></li>
									</ul>
								</div>
								<!--recent post-3-->
								<div class="single-post pos-relative align-row-left-top">
									<a href="#"><img alt="post img" class="post-img"
										src="${pageContext.request.contextPath }/resources/user/images/blog-recent-post-img3.jpg"></a>
									<ul class="post-text">
										<li><a href="#">Aenean facilisis id neque malesuadais
												suscipit</a></li>
										<li class="post-time"><span class="date">21 July <span
												class="update-year"></span></span></li>
									</ul>
								</div>
								<!--/single post-->
							</div>
						</div>
						<div class="single-sidebar archives category">
							<h6 class="fw-600 color-33 text-uppercase pb-20">Categories</h6>
							<ul>
								<li><a href="#">PSD Blog Templates<span>12</span></a></li>
								<li><a href="#">Best PSD Mockup<span>10</span></a></li>
								<li><a href="#">Pattern Collection <span
										class="update-year"></span><span>14</span></a></li>
								<li><a href="#">Web Design Course<span>25</span></a></li>
								<li><a href="#">UI / UX Design<span>30</span></a></li>
							</ul>
						</div>
						<div class="single-sidebar tags">
							<h6 class="fw-600 color-33 text-uppercase pb-20">Tags Widget</h6>
							<ul class="clearfix display-inline">
								<li><a href="#">blog</a></li>
								<li><a href="#">ecommerce</a></li>
								<li><a href="#">video music</a></li>
								<li><a href="#">awesome</a></li>
								<li><a href="#">parallax</a></li>
								<li><a href="#">flat design</a></li>
								<li><a href="#">media</a></li>
								<li><a href="#">photography</a></li>
								<li><a href="#">shop</a></li>
							</ul>
						</div>
						<div class="single-sidebar archives">
							<h6 class="fw-600 color-33 text-uppercase pb-20">Archives</h6>
							<ul>
								<li><a href="#">January <span class="update-year"></span><span>(12)</span></a></li>
								<li><a href="#">February <span class="update-year"></span><span>(10)</span></a></li>
								<li><a href="#">March <span class="update-year"></span><span>(14)</span></a></li>
								<li><a href="#">April <span class="update-year"></span><span>(25)</span></a></li>
								<li><a href="#">May <span class="update-year"></span><span>(30)</span></a></li>
								<li><a href="#">June <span class="update-year"></span><span>(11)</span></a></li>
							</ul>
						</div>
						<!--/single sidebar-->
					</aside>
				</div>
				<!--/col-->
			</div>
		</div>
	</section>
	<!-- =======================================================              ==End blog details style==     ==========================================================-->
	<!-- =======================================         ==Start footer section==      =======================================-->
	
	
	</jsp:attribute>
</mt:layout_user>