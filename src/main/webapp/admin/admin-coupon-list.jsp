<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../assets/css/admin/admin-coupon-list.css">
<link rel="stylesheet" href="../assets/css/index.css">
<link rel="icon" href="../assets/images/favicon.ico">
<title>쿠폰 조회</title>
</head>
<body>
	<form id="frame">
		
		<div class="menu-wrap">
			<img class="menu-icon" src="../assets/images/admin/menu.png" alt="메뉴">
			<span>공지사항 관리</span>
			<div id="menu-frame">
				<div class="menu-header">
					<div class="welcome">admin님 환영합니다!</div>
				    <button class="logout" onclick="location.href='admin-logout.admin'">로그아웃</button>
				</div>
				<ul>
					<li>
						<p>
							<a href="../admin/admin-list.admin" style="color: white;">공지사항 관리</a>
						</p>
						<div>
							<p>
								<a href="../admin/admin-list.admin" >공지사항 조회</a>
							</p>
							<p>
								<a href="../admin/admin-write.admin">공지사항 신규등록</a>
							</p>
						</div>
					</li>
					<li>
						<p>
							<a
								href="../admin/admin-banner-list.admin" style="color: white;">배너 관리</a>
						</p>
						<div>
							<p>
								<a href="../admin/admin-banner-list.admin">배너 조회</a>
							</p>
							<p>
								<a href="../admin/admin-banner-write.admin">배너 신규등록</a>
							</p>
						</div>
					</li>
					<li>
						<p>
							<a href="../admin/admin-customerInfo-list.admin" style="color: white;">회원 관리</a>
						</p>
						<div>
							<p>
								<a href="../admin/admin-customerInfo-list.admin">일반회원 정보조회</a>
							</p>
							<p>
								<a href="../admin/admin-sellerInfo-list.admin">판매자회원 정보조회</a>
							</p>
						</div>
					</li>
					<li>
						<p>
							<a href="../admin/admin-coupon-list.admin" style="color: white;">쿠폰 관리</a>
						</p>
						<div>
							<p>
								<a href="../admin/admin-coupon-list.admin">쿠폰 조회</a>
							</p>
							<p>
								<a href="../admin/admin-coupon-write.admin">쿠폰 신규등록</a>
							</p>
						</div>
					</li>
				</ul>
			</div>
		</div>

		<div class="division-line"></div>

		<div class="title">
			<h1 class="h1">쿠폰 조회</h1>
		</div>

		<section class="notice-search">
			<div class="search-bar">
				<input type="text" class="search" placeholder="쿠폰명을 입력하세요" />
			</div>
			<div class="buttons">
				<button type="button" class="search-btn">검색</button>
				<button type="button" class="reset-btn" onclick="location.reload();">초기화</button>
				<button type="button" class="new-add-btn">신규 추가</button>
			</div>
		</section>

		<section class="notice-list">
			<table>
				<thead>
					<tr>
						<th>No</th>
						<th>쿠폰명</th>
						<th>시작일</th>
						<th>종료일</th>
						<th>쿠폰코드</th>
						<th>관리</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach var="adminCoupon" items="${adminCouponList}" varStatus="status">
						<tr>
							<td>${status.index + 1}</td>
							<td>${adminCoupon.adminCouponTitle}</td>
							<td>${adminCoupon.adminCouponStart}</td>
							<td>${adminCoupon.adminCouponEnd}</td>
							<td>${adminCoupon.adminCouponCode}</td>
							<td>
								<div class="change-buttons">
									<button type="button" class="edit-btn"
										onclick="location.href='admin-coupon-update.admin?id=${adminCoupon.id}'">수정</button>
									<button type="button" class="delete-btn"
										data-id="${adminCoupon.id}">삭제</button>
								</div>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</section>
	</form>

</body>
	<script>
      const startdateInput = document.querySelector("#start-date");
      let startDate = `${adminBanner.adminBannerStart}`;
      startDate = startDate.split(" ")[0];
      startdateInput.value = startDate; 
      
      const endDateInput = document.querySelector("#end-date");
      let endDate = `${adminBanner.adminBannerEnd}`;
      endDate = endDate.split(" ")[0];
      endDateInput.value = endDate;
      </script>
	<script src="../assets/js/admin/admin-coupon-list.js"></script>
</html>
