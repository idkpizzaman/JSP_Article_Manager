<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인뻬이베 ~</title>
</head>
<body>
	<h2>로그인 합시데이</h2>
	
	<script>
      const logininFormSubmit = function(form) {
    	  form.loginId.value = form.login.value.trim();
    	  form.loginPw.value = form.login.value.trim();
    	  
    	  if (form.loginId.value.length == 0) {
    		  alert('로그인 아이디는 필수입력 정보입니다.');
    		  form.loginId.focus();
    		  return;
    	  }
    	  if (form.loginPw.value.length == 0) {
    		  alert('로그인 비밀번호는 필수입력 정보입니다.');
    		  form.loginPw.focus();
    		  return;
    	  }
    	  form.submit();
      }
    </script>
	
	<form action="doLogin" method="post" onsubmit="loginFormSubmit(this); return false;">
		<div>
			<div>아이디: <input type="text" name="loginId"/></div>
			<div>비밀번호: <input type="text" name="loginPw"/></div>
		</div>
		<div>
			<button>로그인</button>
			<a href="../home/main">취소</a>
		</div>
	</form>
</body>
</html>