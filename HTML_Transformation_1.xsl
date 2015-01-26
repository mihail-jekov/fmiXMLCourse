<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSLTransform" version="1.0">
	
	<xsl:output method="html" version="1.0" encoding="UTF-8">
	
	<xsl:template name="airplanes-list">
		<xsl:for-each select="/pharmacy/aircrafts/aircraft">
			
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template mathc="/">
		<html xmlns="http://www.w3.org/1999/xhtml" lang="bg">
			<head>
				<title>Самолети на самолетоносача</title>
				<meta http-equiv="content-type" content="application/html; charset=utf-8" />
				<link rel="stylesheet" href="index.css" type="text/css" />
			</head>
			<body>
				<div id="main-wrapper">
					<div id="main-top">
						<h1>Проект по XML програмиране: "Самолетоносач"</h1>
						<h2>Списък на всички самолети</h2>
					</div>
					<div id="main-bottom">
						<span>Изработено от Михаил Жеков, фн. 24469</span>
					</div>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>