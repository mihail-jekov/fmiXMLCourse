<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" version="1.0">
	
	<xsl:output method="html" version="1.0" encoding="UTF-8" />
	
	<xsl:template name="airplanes-list">
		<xsl:for-each select="/aircraft-carrier/missions/mission">
			<xsl:variable name="mission_id" select="@id" />
			<div class="element-wrapper">
				<span>Адмирали: </span>
				<xsl:for-each select="/*/*/soldier">
					<xsl:if test="contains(@mission, $mission_id) and current()/position = 'адмирал'">
						<span><xsl:value-of select="current()/first-name" />&#160;<xsl:value-of select="current()/last-name" /></span>
					</xsl:if>
				</xsl:for-each>
				<xsl:value-of select="count(/aircraft-carrier/soldiers/soldier[@mission])" />
			</div>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template match="/">
		<html xmlns="http://www.w3.org/1999/xhtml" lang="bg">
			<head>
				<title>Самолети пренасяни от самолетоносач, от клас <xsl:value-of select="@class" /></title>
				<meta http-equiv="content-type" content="application/html; charset=utf-8" />
				<link rel="stylesheet" href="index.css" type="text/css" />
			</head>
			<body>
				<div id="main-wrapper">
					<div id="main-top">
						<h1>Проект по XML програмиране: "Самолетоносач"</h1>
						<h2>Самолети пренасяни от самолетоносач, от клас <xsl:value-of select="aircraft-carrier/@class" /></h2>
					</div>
					<div id="main-center">
						<xsl:call-template name="airplanes-list"></xsl:call-template>
					</div>
					<div id="main-bottom">
						<span>Изработено от Михаил Жеков, фн. 24469</span>
					</div>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>