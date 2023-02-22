<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�뷡 ���λ���</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<link rel="stylesheet" href="/jspTemplate/test/test02/style.css" type="text/css">

</head>
<body>

	<%
	// ��Ƽ��Ʈ ���� 
	
	    Map<String, Object> artistInfo = new HashMap<>();
	    artistInfo.put("name", "������");
	    artistInfo.put("debute", 2008);
	    artistInfo.put("agency", "EDAM�������θ�Ʈ");
	    artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");
	
	
	// ������ �뷡 ����Ʈ 
	    List<Map<String, Object>> musicList = new ArrayList<>();
	
	    Map<String, Object> musicInfo = new HashMap<>();
	    musicInfo.put("id", 1);
	    musicInfo.put("title", "�ȷ�Ʈ");
	    musicInfo.put("album", "Palette");
	    musicInfo.put("singer", "������");
	    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
	    musicInfo.put("time", 217);
	    musicInfo.put("composer", "������");
	    musicInfo.put("lyricist", "������");
	    musicList.add(musicInfo);
	
	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 2);
	    musicInfo.put("title", "������");
	    musicInfo.put("album", "Real");
	    musicInfo.put("singer", "������");
	    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
	    musicInfo.put("time", 233);
	    musicInfo.put("composer", "�̹μ�");
	    musicInfo.put("lyricist", "���̳�");
	    musicList.add(musicInfo);
	
	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 3);
	    musicInfo.put("title", "������");
	    musicInfo.put("album", "palette");
	    musicInfo.put("singer", "������");
	    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
	    musicInfo.put("time", 253);
	    musicInfo.put("composer", "����,�����");
	    musicInfo.put("lyricist", "������");
	    musicList.add(musicInfo);
	
	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 4);
	    musicInfo.put("title", "�߻�");
	    musicInfo.put("album", "�߻�");
	    musicInfo.put("singer", "������");
	    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
	    musicInfo.put("time", 194);
	    musicInfo.put("composer", "������");
	    musicInfo.put("lyricist", "������");
	    musicList.add(musicInfo);
	
	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 5);
	    musicInfo.put("title", "������");
	    musicInfo.put("album", "CHAT-SHIRE");
	    musicInfo.put("singer", "������");
	    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
	    musicInfo.put("time", 194);
	    musicInfo.put("composer", "������,������,��ä��");
	    musicInfo.put("lyricist", "������");
	    musicList.add(musicInfo);
	
	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 6);
	    musicInfo.put("title", "Blueming");
	    musicInfo.put("album", "Love poem");
	    musicInfo.put("singer", "������");
	    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
	    musicInfo.put("time", 217);
	    musicInfo.put("composer", "������,������,��ä��");
	    musicInfo.put("lyricist", "������");
	    musicList.add(musicInfo);
	    
	    String idString = request.getParameter("id");
	    int id = 0;
	    if(idString != null)
	    {
	    	id = Integer.parseInt(idString);	    	
	    }
	    
	    String search = request.getParameter("search");
	    
	    //Map<String, Object> song = musicList.get(id-1);
	   
	%>

	<div id="wrap">
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />
		<section class="contents">
			<div class="song">
				<h2>�� ����</h2>
				<div class="music-info border border-success mb-3 d-flex p-3">
				<% for(Map<String, Object> song:musicList){ 
					
						//id�� ���޵Ǹ�, id�� ��ġ�ϴ� �뷡 �����ֱ�
						//������ ���޵Ǹ�, ������ ��ġ�ϴ� �뷡 �����ֱ�
					
						if((idString != null && id == (int)song.get("id")) || (search != null && search.equals(song.get("title"))))
						{						
							int time = (int)song.get("time");
						    int min = time / 60;
						    int sec = time % 60;
				%>
					<img width="220" src="<%= song.get("thumbnail") %>" class="mr-3">
					<div>
						<span class="display-4"><%= song.get("title") %></span><br>
						<span class="text-success font-weight-bold"><%= song.get("singer") %></span>
						<div class="mt-4">
							<div>�ٹ�<span class="ml-5"><%= song.get("album") %></span></div>
							<div>����ð�<span class="ml-3"><%= min %>:<%= sec %></span></div>
							<div>�۰<span class="ml-3"><%= song.get("composer") %></span></div>
							<div>�ۻ簡<span class="ml-3"><%= song.get("lyricist") %></span></div>
						</div>
					</div>
						
				<% 
					}
				} %>
				</div>
			</div>
			<div class="lyrics mb-5 mt-4">
				<h2>����</h2>
				<hr>
				<div>���� ���� ����</div>
			</div>
		</section>
		<jsp:include page="footer.jsp" />
	</div>

</body>
</html>