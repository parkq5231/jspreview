<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
<script>
	$(function() {
		$("#liveToastBtn").on("click", function() {
			$(".toast").toast("show");
		});
		//end of liveToastBtn
		$('.btn').tooltip();
		
		$("#btnRegister").on("click", function() {
			$(".modal").modal("show");
		})//end of btnRegister
	}); //end of function
</script>
</head>
<body>
	<div class="container">
		<!-- start of row -->
		<div class="row">
			<div class="col-2 border">
				<a href="#" class="btn btn-outline-primary" data-toggle="tooltip"
					data-placement="top" title="로그인페이지로이동">로그인</a> <span
					id="btnRegister" class="btn btn-outline-success">회원가입</span>
				<button class="btn btn-outline-info">게시판</button>
			</div>

			<div class="col-8 border">
				<!-- toasts -->
				<button type="button" class="btn btn-primary" id="liveToastBtn">Show
					live toast</button>

			</div>
			<div class="col-2 border">third</div>
		</div>
		<!-- end of row -->
		<!--  start of row -->
		<div class="row">
			<div class="col-lg-6 col-md-12 border">
				<table class="table table-striped table-bordered table-hover">
					<thead class="table-dark">
						<tr style="">
							<td>번호</td>
							<td>이름</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>a</td>
						</tr>
						<tr>
							<td>2</td>
							<td>b</td>
						</tr>
						<tr>
							<td>3</td>
							<td>c</td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="col-lg-6 col-md-12 border"></div>

		</div>
		<!-- end of row -->
		<!-- start of alert -->
		<div class="alert alert-warning" role="alert">
			A simple primary <a href="#" class="alert-link">alert—check</a> it
			out!
		</div>
		<!-- end of alert -->
		<!-- start of row -->
		<div class="row">
			<div class="card mr-5 pt-5" style="width: 18rem;">
				<img src="..." class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>

			<div class="card mr-5" style="width: 18rem;">
				<img src="..." class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>

			<div class="card mr-5" style="width: 18rem;">
				<img src="..." class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>

		</div>
		<!-- end of row -->
	</div>
	<!-- end of container -->
	<!-- start of toasts -->
	<div class="position-fixed bottom-0 right-0 p-3"
		style="z-index: 5; right: 0; top: 0;">
		<div id="liveToast" class="toast hide" role="alert"
			aria-live="assertive" aria-atomic="true" data-delay="1000">
			<div class="toast-header">
				<img src="..." class="rounded mr-2" alt="..."> <strong
					class="mr-auto">Bootstrap</strong> <small>11 mins ago</small>
				<button type="button" class="ml-2 mb-1 close" data-dismiss="toast"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="toast-body">Hello, world! This is a toast message.</div>
		</div>
	</div>
	<!-- end of toasts -->
	<!-- start of modal -->
	<div class="modal hide" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-2 col-form-label">Email</label>
							<div class="col-sm-10">
								<input type="text" readonly class="form-control-plaintext"
									id="staticEmail" value="email@example.com">
							</div>
						</div>
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="inputPassword">
							</div>
						</div>


						<div class="form-group row">
							<label for="gridCheck1" class="col-sm-2 col-form-label">취미</label>
							<div class="col-sm-5">
								<input class="form-check-input" type="checkbox" id="gridCheck1">
								<label class="form-check-label" for="gridCheck1">
									Example checkbox </label>
							</div>
							<div class="col-sm-5">
								<input class="form-check-input" type="checkbox" id="gridCheck1">
								<label class="form-check-label" for="gridCheck1">
									Example checkbox </label>
							</div>
						</div>

						<div class="form-group row justify-content-center">
							<button class="btn btn-info">등록</button>
							<button class="btn btn-warning">취소</button>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>
	<!-- end of modal -->
</body>
</html>