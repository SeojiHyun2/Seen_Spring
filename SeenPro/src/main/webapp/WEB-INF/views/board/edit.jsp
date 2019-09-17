<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.js"></script>
        <script src="//cdn.ckeditor.com/4.7.1/standard/ckeditor.js"></script>
        <script type="text/javascript">
        
        $(document).ready(function(){
            
            CKEDITOR.replace( 'content' );
            CKEDITOR.config.height = 500;
             
        });
        
        $(document).ready(function(){
        	
        //	
        var content = CKEDITOR.instances.content.getData();
        
      //널 검사
      
      $("#save").on("click",function(){
    	  
    	  if($("#subject").val().trim() == ""){
              alert("제목을 입력하세요.");
              $("#subject").focus();
              return false;
          }
        
        //값 셋팅
          var objParams = {
                  <c:if test="${boardView.id != null}"> //있으면 수정 없으면 등록
                  id          : $("#board_id").val(),
                  </c:if>
                  subject     : $("#subject").val(),
                  content     : content
          };

        
          $.ajax({
              url         :   "/loginCheck/save",
              dataType    :   "json",
              contentType :   "application/x-www-form-urlencoded; charset=UTF-8",
              type        :   "post",
              data        :   objParams,
              success     :   function(retVal){

                  if(retVal.code == "OK") {
                      alert(retVal.message);
                      location.href = "board";  
                  } else {
                      alert(retVal.message);
                  }
                   
              },
              error       :   function(request, status, error){
                  console.log("AJAX_ERROR");
              }
          });

        
    	  
      });
       
      

        });
        
</script>


<style>

.A{

align: center;
}

</style>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
</head>
<body>
 <input type="hidden" id="board_id" name="board_id" value="${boardView.id}" />

	<h1>궁금증 풀어라</h1>

	<table  align="center">
		<tr>
			<td>제목: <input type="text" id="subject" name="subject"
				style="width: 600px;" placeholder="제목" value="${boardView.subject}" />

			</td>
		</tr>
		<tr>
		<td> <textarea name="content" id="content" rows="10" cols="80">${boardView.content}</textarea>
			</td>
		</tr>
		<tr>
			<td align="center">
				<br><button id="save" name="save">저장</button>
				<button id="list" name="list">목록으로 가기</button>
			</td>
		</tr>
	</table>
	</div>


</body>
</html>