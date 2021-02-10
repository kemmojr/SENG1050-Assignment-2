<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>

   <xsl:template match="//business">

	<html>

	   <head>
		<title>Banana Airline Bookings</title>
		<link rel="stylesheet" href="style.css" type="text/css" />
		<style type="text/css">
		<!--
			p.green {color: green}
			p.red {color: red}
			div.green {color: green}
			div.red {color: #a20000}

			ol.color {color: blue}
			a {
				color: inherit;
				font-weight: bold;
			}
			ol {
				float: left;
			}
			ul {
				padding-bottom: 1em;
				float: left;
			}
			ol > li::before {
				content: "\a0"; /* This is the nbsp entity in CSS */
				clear: both;
			}
			ol > li::after {
				content: "";
				clear: both;
				display: table;
			}
			img {
				float: left;
				padding-bottom: 2em;
			}
			ol > li {
				padding-top: 3em;
			}
			.left-block {
				float: left;
			}
			video {
				float: left;
				clear: left;
			}
			embed {
				float: left;
				padding-left: 5em;
				margin-top: 2em;
			}
		-->
			
		</style>
		
	   </head>

	   <body>
			<h1>Service U</h1>		
			<hr></hr>
			<h2>Services: </h2>
			<xsl:apply-templates select="businesses" />
			
			<hr id="foot" />
			<address id="copyright">
			Timothy Kemmis<br></br> kemmojr@gmail.com<br></br> c3329386<br></br> Computer Science
			</address>
	   </body>

	</html>

   </xsl:template>

   <xsl:template match="businesses">
		<!--<p style="font-style:italic" class="green">-->
		<xsl:value-of select="business/serviceType" />
		<xsl:text> </xsl:text>
		<xsl:value-of select="business/businessName" />
		<xsl:text> </xsl:text>
		<!-- Change this to be an image type-->

		<!-- xsl:value-of select="businessLogo/alt" 
		<img alt="business/businessLogo/alt1">
			<xsl:attribute name="business/businessLogo/src1">
				<xsl:value-of select="business/businessLogo/location1"/>			
			</xsl:attribute>			
		</img>	
	-->
		
		<xsl:value-of select="business/businessEmail"/>
		<xsl:text></xsl:text>
		
		<!--
		<xsl:apply-templates select="business/manager"/>
		
		<xsl:apply-templates select="business/employee"/>
		
		<img alt="business/picture/alt">
			<xsl:attribute name="business/picture/src">
				<xsl:value-of select="business/picture/location"/>			
			</xsl:attribute>			
		</img>
		-->
		<xsl:value-of select="business/URL"/>
		<xsl:link></xsl:link>
		
		<xsl:value-of select="business/address"/>
		<xsl:text></xsl:text>
		
		<xsl:value-of select="business/phNumber"/>
		<xsl:text></xsl:text>
		
		<xsl:value-of select="business/workHours"/>
		<xsl:text></xsl:text>
		<!--
		<xsl:apply-templates select="business/inHomeService"/>
		-->
		<xsl:value-of select="business/businessDescription"/>
		<xsl:text></xsl:text>
		
		<xsl:value-of select="business/review"/>
		<xsl:text></xsl:text>
		
		<xsl:value-of select="business/FAQ"/>
		<xsl:text></xsl:text>
		<br></br>
		
	</xsl:template>
	
	<xsl:template match="business/manager">
		<xsl:text>Manager: </xsl:text>
		<br></br>
		<xsl:value-of select="business/manName"/>
		<xsl:text></xsl:text>
		
		<xsl:text>Manager ph: </xsl:text>
		<xsl:value-of select="business/phManContactNumber"/>
		<xsl:text></xsl:text>
		
		<xsl:text>Email: </xsl:text>
		<xsl:value-of select="business/manEmail"/>
		<xsl:text></xsl:text>
		
	</xsl:template>
	
	<xsl:template match="business/employee">
		<xsl:text>Emloyee: </xsl:text>
		<br></br>
		<xsl:value-of select="business/emName"/>
		<xsl:text></xsl:text>
		
		<xsl:text>Employee ph: </xsl:text>
		<xsl:value-of select="business/phEmContactNumber"/>
		<xsl:text></xsl:text>
		
		<xsl:text>Email: </xsl:text>
		<xsl:value-of select="business/emEmail"/>
		<xsl:text></xsl:text>
		
	</xsl:template>
	
	<xsl:template match="business/inHomeService">
		<xsl:text>Minimum price: </xsl:text>
		<br></br>
		<xsl:value-of select="business/minimumPrice"/>
		<xsl:text></xsl:text>
		
		<xsl:text>Hourly rate: </xsl:text>
		<xsl:value-of select="business/hourlyFee"/>
		<xsl:text></xsl:text>
		
	</xsl:template>
		
		
		
		<!--
		<li>
			
			<div class="left-block">
				<xsl:if test='aircraft_photo!=""'>
					<img alt="Aircraft Photo">
						<xsl:attribute name="src">
							<xsl:value-of select="aircraft_photo"/>			
						</xsl:attribute>				
					</img>	
				</xsl:if>
				
				<xsl:if test='aircraft_video!=""'>
					<video width="320" height="240" controls="controls">
						<source type="audio/mp4">
							<xsl:attribute name="src">
								<xsl:value-of select="aircraft_video"/>
							</xsl:attribute>			
						</source>
					</video>
				</xsl:if>
			</div>
			
			<ul>
				<li><xsl:text>Date: </xsl:text><xsl:value-of select="date" /></li>
				<li><xsl:text>Flight: </xsl:text><xsl:value-of select="flight" /></li>
				
				<xsl:choose>
					<xsl:when test='depart/airportcode="SYD"'>
						<div class="red">  				
							<li>
								<xsl:text>Depart Airport: </xsl:text>
								<xsl:apply-templates select="depart" />
							</li>
						</div>
					</xsl:when>
				
					<xsl:otherwise>
						<div class="green">
							<li>
								<xsl:text>Depart Airport: </xsl:text>
								<xsl:apply-templates select="depart" />
							</li>
						</div> 
					</xsl:otherwise>
				</xsl:choose>
					
				<li><xsl:text>Depart Time: </xsl:text><xsl:value-of select="depart/time" /></li>
				<li>
					<xsl:text>Arrive Airport: </xsl:text>
					<xsl:apply-templates select="arrive" />
				</li>
				<li><xsl:text>Arrive Time: </xsl:text><xsl:value-of select="arrive/time" /></li>
				<li><xsl:text>Class: </xsl:text><xsl:value-of select="class" /></li>
				
				<xsl:choose>				
					<xsl:when test='aircraft!=""'>
						<li><xsl:text>Aircraft: </xsl:text><xsl:value-of select="aircraft" /></li>
					</xsl:when>
					
					<xsl:otherwise>
						<li><xsl:text>Plane Type Unknown </xsl:text></li>
					</xsl:otherwise>					
				</xsl:choose>
				
			</ul>
			
			<xsl:if test='aircraft_youtube!=""'>
				<embed width="560" height="315">
					<xsl:attribute name="src">
						<xsl:value-of select="aircraft_youtube"/>			
					</xsl:attribute>			
				</embed>
			</xsl:if>		
			
		</li>
   </xsl:template>-->
   <!--
   <xsl:template match="employee">
		<xsl:value-of select="airportcode/@airport" />
		<xsl:text> [</xsl:text>
		<xsl:choose>
			<xsl:when test='airportweb!=""'>
				Note the use of {} here as a shorthand for XPATH rather than using the xsl:attribute element as above-->
				<!--
				<a href='{airportweb}'><xsl:value-of select="airportcode" /></a>
			</xsl:when>
			
			<xsl:otherwise>
				<xsl:value-of select="airportcode" />
			</xsl:otherwise>
		</xsl:choose>
		<xsl:text>]</xsl:text>
   </xsl:template>
-->   
</xsl:stylesheet>
