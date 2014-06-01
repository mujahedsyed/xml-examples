<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="1.0">
	<xsl:template match="/">
		<html>
			<head>
				<title>Our Items</title>
			</head>
			<body
				style="background-color: #DACFE5; font-family:Arial, Helvetica, sans-serif">
				<xsl:for-each select="items/item">
					<!-- <xsl:sort select="@available" order="descending"/> -->
					<!-- sorting on type -->
					<xsl:sort select="type" order="descending"/>
					<xsl:choose>
						<xsl:when test="@available = 'no' ">
							<h1 style="color: #8A8A8A">
								<img style="border:0; margin-left:10px">
									<xsl:attribute name="src">
								<xsl:value-of select="photo"></xsl:value-of>
							</xsl:attribute>
								</img>
								<xsl:value-of select="name"></xsl:value-of>
								<xsl:text> </xsl:text>
								<xsl:value-of select="type"></xsl:value-of>
							</h1>
						</xsl:when>
						<xsl:when test="@available = 'soon' ">
							<h1 style="color: #000077">
								<img style="border:0; margin-left:10px">
									<xsl:attribute name="src">
								<xsl:value-of select="photo"></xsl:value-of>
							</xsl:attribute>
								</img>
								<xsl:value-of select="name"></xsl:value-of>
								<xsl:text> </xsl:text>
								<xsl:value-of select="type"></xsl:value-of>
							</h1>
						</xsl:when>
						<xsl:otherwise>
							<h1 style="color: #OD3427">
								<img style="border:0; margin-left:10px">
									<xsl:attribute name="src">
								<xsl:value-of select="photo"></xsl:value-of>
							</xsl:attribute>
								</img>
								<xsl:value-of select="name"></xsl:value-of>
								<xsl:text> </xsl:text>
								<xsl:value-of select="type"></xsl:value-of>
							</h1>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>