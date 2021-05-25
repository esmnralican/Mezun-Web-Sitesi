<html>
	<head>
		<title> FORUM</title>

		<body bgcolor = "#e7efd0">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> <!--türkçe karakter desteği-->
		<meta name="viewport" content="width-device-width, initial-scale-1"> <!-- mobil uyarlılığı-->
		
		<meta name="description" content="MAVİ LİSESİ MEZUNLAR WEB SAYFASI" />
		<meta name="keywords" content="mezun, lise"   />
	    <div id="header">
		<div class="yazialani">
		<br>
			   <center>
			<font color="#4f7942"><h1>「 MAVİ ANADOLU LİSESİ 」 <br> 12/A MEZUN SINIFI</h1></font>
				</center>
				</div>
			</div>	
		<link href="css/style.css" rel="stylesheet" type="text/css">
		<link rel="shortcut icon" href="image/icon.png">
	</head>
	 <body>
		<div id="header">
			<a href="index.asp" title="ANASAYFA">
			<img src="image/ozel-okul-acmak.jpg" alt="logo" class="websitesilogo" />
			</a>
			<ul class="menu">
			<br>
			<br>
				<li>
					<a href="index.asp" title="ANASAYFA" >ANASAYFA</a>
				</li>
				<li>
					<a href="kisiler.asp" title=" FORUM">KİŞİLER</a>
				</li>
				<li>
					<a href="fotograf-galerisi.asp" title="FOTOĞRAF GALERİSİ">FOTOĞRAF GALERİSİ</a>
				</li>
				<li>
					<a href="videolar.asp" title="VİDEOLAR">VİDEOLAR</a>
				</li>
				<li>
					<a href="iletisim.asp" title="İLETİŞİM">İLETİŞİM</a>
				</li>
				<li>
					<a href="oturum-acma.asp" title="OTURUM AÇMA">OTURUM AÇMA</a>
				</li>
				<br>
				<br>
				<br>
				<li>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;<a href="kayit.asp" title="KAYIT">KAYIT</a>
				</li>
				
				<li>
					<a href="kim-nerede-neyapiyor.asp" title="KİM, NEREDE, NE YAPIYOR?">KİM, NEREDE, NE YAPIYOR?</a>
				</li>
				<li>
					<a href="harita.asp" title="HARİTA">HARİTA</a>
				</li>
				<li>
					<a href="forum.asp" title=" FORUM" class="secili"> FORUM</a>
				</li>
			</ul>
		</div>
		<div id="content">
		<div align="center">
			<font face="Times New Roman" size="6" color="#CCFFCC">FORUM</font><br/>
		</div>
		<br>
			<div class="sayfabanner">
				<img src="image/ozel-okul-acmak.jpg"></img>
			</div>
			 <%
				Dim Cnxn, strCnxn  
				Dim rsCustomers, strSQLCustomers  
				Dim rsProducts, strSQLProducts  
	
			' open connection  
			Set Cnxn = Server.CreateObject("ADODB.Connection")  
			strCnxn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source="&Server.MapPath("mezun3_web.mdb")
  
				Cnxn.Open strCnxn  
	
			' create and open first Recordset using Connection - execute  
			Set rsCustomers = Server.CreateObject("ADODB.Recordset")  
			strSQLCustomers = "SELECT * FROM mezun3_web"  
			Set rsCustomers = Cnxn.Execute(strSQLCustomers)   
  
			' create and open second Recordset using recordset - open  
			Set rsProducts = Server.CreateObject("ADODB.Recordset")  
			strSQLProducts = "SELECT * FROM mezun3_web"  
			rsProducts.Open strSQLProducts,Cnxn
			  %>
			
				<div class="div6">
		<font face="Times New Roman" size="3"color="#CCFFCC">Foruma mesaj yazmak için tıkla</a><br><br>
		<table border="1" width="95%" border color="#CCFFCC">
		<tbody><tr align="left" style="background-color:#CCFFC;"><th style="width:15%;"><font face="Times New Roman" color="#CCFFCC">Kim?</font></th><th style="width:25%;"><font face="Times New Roman" color="#CCFFCC">Hangi tarihte?</font></th><th style="width:60%;"><font face="Times New Roman" color="#CCFFCC">Ne Yazmış?</font></th></tr>
			
		<tr><% Do until rscustomers.eof%>
		<td><font face="Times New Roman" size="3" color="#CCFFCC"><%=rscustomers("Kim")%></font></td>
		<td><font face="Times New Roman" size="3" color="#CCFFCC"><%=rscustomers("Hangi_tarihte")%></font></td>
		<td><font face="Times New Roman" size="3" color="#CCFFCC"><%=rscustomers("Ne_yazmis")%></font></td>
			</tr> <%rscustomers.movenext 
		loop %>
	 	<div style="clear:both;"></div>
		</div>
		
		
	 </body>

			
</html>