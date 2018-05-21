<?xml version='1.0'?>
<xsl:stylesheet
          xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version='1.0'>
<xsl:output method="html"/>

<xsl:template match="text">
  <HTML><HEAD><TITLE>
    <xsl:value-of select="./title"/>
  </TITLE>
  </HEAD>
  <BODY>
    <xsl:apply-templates/>
  </BODY>
  </HTML>
</xsl:template>

<xsl:template match="title">
  <H1><xsl:apply-templates/></H1>
</xsl:template>

<xsl:template match="para">
  <P><xsl:apply-templates/></P>
</xsl:template>

<xsl:template match="p">
  <P><xsl:apply-templates/></P>
</xsl:template>

<xsl:template match="lb">
  <br><xsl:apply-templates/></br>
</xsl:template>


<xsl:template match="div">
  <xsl:apply-templates/>
</xsl:template>

<xsl:template match="list">
  <ul><xsl:apply-templates/></ul>
</xsl:template>

<xsl:template match="item">
  <li><xsl:apply-templates/></li>
</xsl:template>

<xsl:template match="list[contains(@rend,'n')]">
    <xsl:copy>
      <ol><xsl:apply-templates /></ol>
    </xsl:copy>
</xsl:template>

<xsl:template match="list[contains(@rend,'u')]">
    <xsl:copy>
      <ul><xsl:apply-templates /></ul>
    </xsl:copy>
</xsl:template>

<xsl:template match="table">
  <table><xsl:apply-templates/></table>
</xsl:template>

<xsl:template match="row">
  <tr><xsl:apply-templates/></tr>
</xsl:template>

<xsl:template match="cell[contains(@role,'label')]">
    <xsl:copy>
      <td><i><xsl:apply-templates /></i></td>
    </xsl:copy>
</xsl:template>


<xsl:template match="cell">
  <td><xsl:apply-templates/></td>
</xsl:template>


<xsl:template match="ref">
  <span style="color:#1010ff"><xsl:apply-templates/></span>
</xsl:template>

<xsl:template match="cit">
  <xsl:apply-templates/>
</xsl:template>

<xsl:template match="bibl">
  <xsl:apply-templates/>
</xsl:template>

<xsl:template match="quote">
  <xsl:apply-templates/>
</xsl:template>

<xsl:template match="hi[contains(@rend,'i')]">
    <xsl:copy>
      <i><xsl:apply-templates /></i>
    </xsl:copy>
</xsl:template>

<xsl:template match="hi[contains(@rend,'u')]">
    <xsl:copy>
      <u><xsl:apply-templates /></u>
    </xsl:copy>
</xsl:template>

<xsl:template match="hi[contains(@rend,'du')]">
    <xsl:copy>
      <span style="color:#c0c0c0"><u><xsl:apply-templates /></u></span>
    </xsl:copy>
</xsl:template>

<xsl:template match="hi[contains(@rend,'b')]">
    <xsl:copy>
      <b><xsl:apply-templates /></b>
    </xsl:copy>
</xsl:template>

<xsl:template match="hi[contains(@rend,'s')]">
    <xsl:copy>
      <del><xsl:apply-templates /></del>
    </xsl:copy>
</xsl:template>

<xsl:template match="hi[contains(@rend,'sup')]">
    <xsl:copy>
      <sup><xsl:apply-templates /></sup>
    </xsl:copy>
</xsl:template>

<xsl:template match="hi[contains(@rend,'sub')]">
    <xsl:copy>
      <sub><xsl:apply-templates /></sub>
    </xsl:copy>
</xsl:template>


<xsl:template match="hi[contains(@rend,'i') and contains(@rend,'b')]">
    <xsl:copy>
      <i><b><xsl:apply-templates /></b></i>
    </xsl:copy>
</xsl:template>

<xsl:template match="hi[contains(@rend,'i') and contains(@rend,'u')]">
    <xsl:copy>
      <i><u><xsl:apply-templates /></u></i>
    </xsl:copy>
</xsl:template>


<xsl:template match="hi[contains(@rend,'b') and contains(@rend,'u')]">
    <xsl:copy>
      <b><u><xsl:apply-templates /></u></b>
    </xsl:copy>
</xsl:template>

<xsl:template match="hi[contains(@rend,'sup') and contains(@rend,'u')]">
    <xsl:copy>
      <sup><u><xsl:apply-templates /></u></sup>
    </xsl:copy>
</xsl:template>


<xsl:template match="hi[contains(@rend,'b') and contains(@rend,'i') and contains(@rend,'u')]">
    <xsl:copy>
      <i><b><u><xsl:apply-templates /></u></b></i>
    </xsl:copy>
</xsl:template>

<xsl:template match="hi[contains(@rend,'b') and contains(@rend,'sup') and contains(@rend,'u')]">
    <xsl:copy>
      <sup><b><u><xsl:apply-templates /></u></b></sup>
    </xsl:copy>
</xsl:template>

<xsl:template match="note">
 <span style="color:#00ff00"><sup><xsl:value-of select="@id"/></sup></span>
</xsl:template> 

<xsl:template match="persName">
  <span style="color:#ff6600"><xsl:apply-templates/></span>
</xsl:template>

<xsl:template match="placeName">
  <span style="color:#ff0000"><xsl:apply-templates/></span>
</xsl:template>


<xsl:template match="orgName">
  <span style="color:#336699"><xsl:apply-templates/></span>
</xsl:template>

<xsl:template match="listEvent">
  <xsl:apply-templates/>
</xsl:template>
  		
<xsl:template match="event">
  <span style="color:#339966"><xsl:apply-templates/></span>
</xsl:template>

<xsl:template match="term">
  <span style="color:#00ff00"><xsl:apply-templates/></span>
</xsl:template>




</xsl:stylesheet>