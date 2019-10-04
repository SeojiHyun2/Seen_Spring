<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<style type="text/css">

#phone{
	width: 10%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

#check{
	width: 8%;
	background-color: #999999;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}


input[type=text] {
	width: 20%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=password] {
	width: 20%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit] {
	width: 20%;
	background-color: #999999;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=button] {
	width: 8%;
	background-color: #999999;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}


input[type=reset] {
	width: 20%;
	background-color: #999999;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=reset]:hover {
	background-color: #999999;
}

div {
	border-radius: 5px;
	padding: 20px;
}

select{
	width: 10%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

</style>   
    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script type="text/javascript">


$(document).ready(function(){
	
	$("#passwd2").on("keyup",function(){
		 if ($("#passwd").val() != $("#passwd2").val()) {
		       $("#result2").text("비밀번호가 일치하지 않습니다.");
		       $("#result2").css("color", "red");
		       $("#passwd2").focus();

		       return false;
		    } else if ($("#passwd").val() == $("#passwd2").val()) {

		       $("#result2").text("비밀번호가 동일합니다.");
		       $("#result2").css("color", "blue");
		    }

		
	});
});

function openConfirmid(e, input) {
	console.log("adfadsfasdfadsf");
	e.preventDefault();
	if (input.artistname.value == "") {

		alert("작가명을 입력하지 않았습니다.")
		return;
	} else {
		input.action = "memberArtAdd"
	}
	url = "Art_Confirm?artistname=" + input.artistname.value;
	open(
			url,
			"confirm",
			"toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=310,height=180");
	//e.stopPropagation();

}

$(document).ready(function(){
	
	$("#emailSelect").click(function(){
		var email2=$("#emailSelect option:selected").val();
		$("#email2").val(email2);
		
	});
	
	
});
</script>

<div align="center">    
<form action="memberArtAdd" method="get">
	<div align="left">
	<label for="fname">작가ID</label><br>
		 <input type="text" name="artistname" id="artistname" id="name" class="aa"> 
		 <input type="submit" name="idCheck" id="check" value="중복확인"
				onclick="openConfirmid(event,this.form)"> <br><br>
	<label for="fname">비밀번호</label><br>
		<input type="password" name="a_passwd" id="passwd" id="name" class="aa"><br>
	<label for="fname">비밀번호 확인</label><br>
		<input type="password" name="a_passwd2" id="passwd2" onkeyup="check()" id="name" class="aa"><span id="result2"></span> <br>
				<span id="result2"></span><br> 
	<label for="fname">이름</label><br>
		<input type="text" name="a_username"><br><br>
		<input type="text" name="a_post" id="sample4_postcode" placeholder="우편번호">
		<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호"><br>
		<input type="text" name="a_addr1" id="sample4_roadAddress" placeholder="도로명주소">
		<input type="text" name="a_addr2" id="sample4_jibunAddress" placeholder="지번주소">
		<span id="guide" style="color:#999"></span><br><br>
	<label for="fname">전화번호</label><br>
		  <select name="a_phone1">
  			<option value="010">010</option>
  			<option value="011">011</option>
		  </select>-<input type="text" name="a_phone2" id="phone" class="aa">-<input type="text" name="a_phone3" id="phone" class="aa" ><br><br>
	<label for="fname">이메일</label><br>
		<input type="text" name="a_email1" id="email1" id="name" class="aa">@<input type="text" name="a_email2" id="email2" placeholder="직접입력" id="name" class="aa">
     		  <select  id="emailSelect">
     		  	 <option value="" selected disabled="disabled" style="width: 50px;">==선택하세요==</option>
       			 <option value="daum.net">daum.net</option>
        		 <option value="naver.com">naver.com</option>
              </select><br><br>
	<input type="submit" value="회원가입" class="a">
	<input type="reset" value="취소" class="a"><br><br>
	</div>
</form>
</div>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample4_roadAddress').value = fullRoadAddr;
                document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

                } else {
                    document.getElementById('guide').innerHTML = '';
                }
            }
        }).open();
    }

</script>