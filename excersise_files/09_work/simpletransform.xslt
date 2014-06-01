<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="1.0">
	<!-- This XSL stylesheet matches the <JavacoTea> tag in an assoicated XML 
		file and replaces it with the HTML contents of the template -->
	<xsl:template match="/JavacoTea">
		<html>
			<head>
				<title>New Herbal Tea Available</title>
			</head>
			<body>
				<img src="../05_work/javaco_logo.gif" />
				<h1>
					<xsl:value-of select="text()" />
				</h1>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>