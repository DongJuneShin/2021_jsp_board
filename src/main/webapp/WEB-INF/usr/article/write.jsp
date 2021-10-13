<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 데이지 UI 불러오기 -->
<link href="https://cdn.jsdelivr.net/npm/daisyui@0.20.0/dist/full.css"
	rel="stylesheet" type="text/css" />
	
<link rel="stylesheet" 
	href="${pageContext.request.contextPath}/resource/font.css" />

<title>JSP BOARD</title>
</head>
<body>
	<section class="section section-article-write"> <!-- 글쓰기 -->
	<div class="container mx-auto"> <!-- 너비 -->
	<form action="">
	
	<!-- 하나의 폼 요소 입력 -->
		<div class="form-control">
			<label class="label">
				<span class="label-text">제목</span>
			</label>
			<div>						<!-- w-full 너비 100퍼센트 -->
				<input class="input input-bordered w-full" maxlength="100" name="title" type="text"
					placeholder="제목을 입력해주세요." />
			</div>
		</div>
		</div>
		<div class="form-control">
			<label class="label">
				<span class="label-text">내용</span>
			</label>		
			<textarea maxlength="2000" class="textarea textarea h-60 textarea-bordered" placeholder="내용" name="body"></textarea>
		</div>


	</form>
	</section>
</body>
</html>