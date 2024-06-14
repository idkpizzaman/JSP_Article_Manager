<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
</head>
<body>
	<h2>회원 가입</h2>
	
	<script>
      const joinFormSubmit = function(form) {
    	  form.loginId.value = form.login.value.trim();
    	  form.loginPw.value = form.login.value.trim();
    	  form.pwChk.value = form.login.value.trim();
    	  form.name.value = form.login.value.trim();
    	  
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
    	  if (form.name.value.length == 0) {
    		  alert('이름은 필수입력 정보입니다.');
    		  form.name.focus();
    		  return;
    	  }
    	  if (form.loginPw.value != form.pwChk.value) {
    		  alert('비밀번호를 확인해주세요.');
    		  form.loginPw.value = "";
    		  form.pwChk.value = "";
    		  form.loginPw.focus();
    		  return;
    	  }
    	  form.submit();
      }
    </script>
	
	<form action="doJoin" method="post" onsubmit="joinFormSubmit(this); return false;"></form>
		<div>
			<div>아이디: <input type="text" name="loginId" placeholder="아이디를 입력하세요" /></div>
			<div>비밀번호: <input type="text" name="loginPw" placeholder="비밀번호를 입력하세요" /></div>
			<div>비밀번호 확인: <input type="text" name="pwChk" placeholder="비밀번호 확인을 입력하세요" /></div>
			<div>이름: <input type="text" name="name" placeholder="이름을 입력하세요" /></div>
		</div>
		<div>
			<button>가입</button>
			<button <a href="../home/main">취소</a>></button>
		</div>
</body>
</html>