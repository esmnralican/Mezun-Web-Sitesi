<html>
	<head>
	<br>
	  <center>
			<font color="#4f7942"><h1>「 MAVİ ANADOLU LİSESİ 」 <br> 12/A MEZUN SINIFI</h1></font>
				</center>
		<title> KİM, NEREDE, NE YAPIYOR? </title>
		<body bgcolor = "#e7efd0">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> <!--türkçe karakter desteği-->
		<meta name="viewport" content="width-device-width, initial-scale-1"> <!-- mobil uyarlılığı-->
		
		<meta name="description" content="MAVİ LİSESİ MEZUNLAR WEB SAYFASI" />
		<meta name="keywords" content="mezun, lise"   />
	
		<link href="css/style.css" rel="stylesheet" type="text/css">
		<link rel="shortcut icon" href="image/icon.png">
	</head>
	 <body>
		<div id="header">
			<a href="index.asp" title="ANASAYFA">
			<img src="image/ozel-okul-acmak.jpg" alt="logo" class="websitesilogo" />
			</a>
			<br>
			<br>
			<ul class="menu">
				<li>
					<a href="index.asp" title="ANASAYFA">ANASAYFA</a>
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
					<a href="kim-nerede-neyapiyor.asp" title="KİM, NEREDE, NE YAPIYOR?" class="secili">KİM, NEREDE, NE YAPIYOR?</a>
				</li>
				<li>
					<a href="harita.asp" title="HARİTA">HARİTA</a>
				</li>
				<li>
					<a href="forum.asp" title=" FORUM"> FORUM</a>
				</li>
			</ul>
		</div>
		<br>
		<br>
		<div id="content">
			<div align="center">
				<font face="Times New Roman" size="5" color="#CCFFCC"> <br>KİM, NEREDE, NE YAPIYOR?</font><br />
			</div>
			<br>
			<br>
			
				
   <%
    Dim Cnxn, strCnxn  
    Dim rsCustomers, strSQLCustomers  
    Dim rsProducts, strSQLProducts  
  
    ' open connection  
    Set Cnxn = Server.CreateObject("ADODB.Connection")  
    strCnxn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source="&Server.MapPath("mezun2_web.mdb")
  
    Cnxn.Open strCnxn  
  
    ' create and open first Recordset using Connection - execute  
    Set rsCustomers = Server.CreateObject("ADODB.Recordset")  
    strSQLCustomers = "SELECT * FROM mezun2_web"  
    Set rsCustomers = Cnxn.Execute(strSQLCustomers)   
  
    ' create and open second Recordset using recordset - open  
    Set rsProducts = Server.CreateObject("ADODB.Recordset")  
    strSQLProducts = "SELECT * FROM mezun2_web"  
    rsProducts.Open strSQLProducts,Cnxn
    %>


		<table border=2  bordercolor="#CCFFCC">
		<tr>
		<td align="center" colspan="8" width="100"><font face="Times New Roman" size="5" color="#CCFFCC">Mezunlarımız</td>
		</tr>	
		<tr>
		<br>
		<td width="100"><font face="Times New Roman" size="3" color="#CCFFCC">Adı</font></td>
		<td width="100"><font face="Times New Roman" size="3" color="#CCFFCC">Soyadı</font></td>
		<td width="100"><font face="Times New Roman" size="3" color="#CCFFCC">Mesleği</font></td>
		<td width="100"><font face="Times New Roman" size="3" color="#CCFFCC">Nerede Yaşıyor</font></td>
		<td width="100"><font face="Times New Roman" size="3" color="#CCFFCC">Linkedin Hesabı</font></td>
		<td width="100"><font face="Times New Roman" size="3" color="#CCFFCC">Telefon Numarası</font></td>
		<td width="100"><font face="Times New Roman" size="3" color="#CCFFCC">Web Sitesi</font></td>
		<td width="100"><font face="Times New Roman" size="3" color="#CCFFCC">Twitter Hesabı</font></td>
         
		</tr>
			<tr><% Do until rscustomers.eof%>
			<td><font face="Times New Roman" size="3" color="#CCFFCC"><%=rscustomers("Adi")%></font></td>
			<td><font face="Times New Roman" size="3" color="#CCFFCC"><%=rscustomers("Soyadi")%></font></td>
			<td><font face="Times New Roman" size="3" color="#CCFFCC"><%=rscustomers("Meslegi")%></font></td>
			<td><font face="Times New Roman" size="3" color="#CCFFCC"><%=rscustomers("Nerede_yasiyor")%></font></td>
			<td><a href="<%=rsCustomers("Linkedin_hesabi")%>" target="_blank"><%=rsCustomers("Linkedin_hesabi")%></a></td>
			<td><font face="Times New Roman" size="3" color="#CCFFCC"><%=rscustomers("Telefon_numarasi")%></font></td>
			<td><a href="<%=rsCustomers("Web_sitesi")%>" target="_blank"><%=rsCustomers("Web_sitesi")%></a></td>
			<td><a href="<%=rsCustomers("Twitter_hesabi")%>" target="_blank"><%=rsCustomers("Twitter_hesabi")%></a></td>
			</tr> <%rscustomers.movenext 
		loop %>
	 </body>
	
	
</html>