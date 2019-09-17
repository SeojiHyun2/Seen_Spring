<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

	b { font-family: A Bebedera; font-size: 50px; }
	a { margin: inherit;}
	#cat{ font-weight: bold; }
	#cat_under { color: gray; }
	#title{ font-family: Suntech; font-size: 25px;}
	#input_area{ font-family: 나눔바른펜; font-size: 20px;}
  	#ucontent { width: 200px; height: 100px; }
 
 	.home {  
 	
 		background: url("images/home.png") no-repeat;
        border: none;
        width: 48px;
        height: 48px;
        cursor: pointer;

 		  }
 	
 	
</style>

</head>
<body>
	<a href="main" id="H" ><input type="button" class="home"></a>
	
	<h1 align="center" id="title">작가님의 소중한 작품, <b>See-N</b>에서 더욱 빛날거에요!</h1>
	<br>
	<form action="inputWork" enctype="multipart/form-data" method="post">
	
	<div id="input_area" align="center">
			<table style="border: none;">
				<tr>
				  <td>	
                    <div id="in_title">
                    	<small>작품 이름&nbsp;&nbsp;&nbsp;</small>
                        <input type="text" name="wName" id="utitle">
                    </div>
                  </td>
                </tr>
                <tr>
                  <td>	
                    <div class="wi_line"></div>
                    <div id="in_name">
                    	
                        <input type="hidden" name="artistname" id="uname" value="${login_art.artistname}">
                    </div>
                  </td>
                </tr>  
        	</table>	
        	<br>
                    <div class="work_category">
                    <span id="cat">Category</span><br>
                    <span id="cat_under">-----------------------------------------</span><br>
                    	Photo<input type="radio" name="wCategory" value="Photo">&nbsp;
                    	Draw<input type="radio" name="wCategory" value="Draw">&nbsp;
                    	Sound<input type="radio" name="wCategory" value="Sound">&nbsp;
                    	Video<input type="radio" name="wCategory" value="Video">&nbsp;
                    	Letter<input type="radio" name="wCategory" value="Letter">&nbsp;
                    </div>
                    <br>
                    <div class="wi_line"></div>
                    <div id="in_content">
                        <input type="text" name="wDescribe" id="ucontent" placeholder="작품 설명" style="text-align:center; ">
                    </div>  
                    <br>                 
                    <div id="in_file">
                        <input type="file" name="realWork">
                    </div>
                    <br>
                    <div class="bt_se">
                       <input type="submit" value="등록">
                    </div>
         			<br>
            </div>

</form>


</body>
</html>