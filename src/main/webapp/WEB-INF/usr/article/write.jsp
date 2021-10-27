<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<title>JSP BOARD</title>

<!-- 모바일에서 디자인이 축소되지 않게 하기 위한 코드 -->
<meta name="viewport" content="width=device-width, initial-scale=1">


<!-- 데이지 UI 불러오기 -->
<link href="https://cdn.jsdelivr.net/npm/daisyui@0.20.0/dist/full.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/font.css" />
	
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/common.css" />
</head>
<body>게시물 등록
<body>
	<section class="section section-article-write px-4">
		<div class="container mx-auto">
			<script>
				let ArticleWrite__submitDone = false;
				
				function ArticleWrite__submit(form){
					if(ArticleWrite__submitDone){
						return;
					}
					
					if(form.title.value.length==0){
						alert('제목을 입력해주세요. ');
						form.title.focus();
						
						return;
					}
					
					if(form.body.value.length==0){
						alert('내용을 입력해주세요. ');
						form.body.focus();
						
						return;
					}
					
					form.submit();
					ArticleWrite__submitDone=true;
				}
			</script>
			<form action="../article/doWrite" method="POST" onsubmit="ArticleWrite__ submit(this) return false;">
				<div class="form-control">
					<label class="label">
						<span class="label-text">제목</span>
					</label>
					<div>
						<input class="input input-bordered w-full" maxlength="100"
							name="title" type="text" placeholder="제목을 입력해주세요." />
					</div>
				</div>

				<div class="form-control">
					<label class="label">
						<span class="label-text">내용</span>
					</label>
					<textarea maxlength="2000" class="textarea textarea-bordered h-60"
						placeholder="내용을 입력해주세요" name="body"></textarea>
				</div>
				
				<div class="btns">
					<button type="submit" class="btn btn-link">작성</button>
					<button type="button" class="btn btn-link">작성취소</button>
				</div>
			</form>
		</div>
	</section>
</body>
</html> 