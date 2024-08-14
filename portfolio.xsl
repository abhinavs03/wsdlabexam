<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:template match="/">
    <html>
      <head>
        <title>Portfolio Items</title>
        <style>
          table {
            width: 100%;
            border-collapse: collapse;
          }
          th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
          }
          th {
            background-color: #f2f2f2;
          }
          tr:nth-child(even) {
            background-color: #f9f9f9;
          }
        </style>
      </head>
      <body>
        <h1>Portfolio Items</h1>
        <table>
          <tr>
            <th>Title</th>
            <th>Description</th>
            <th>Front-End Technologies</th>
            <th>Back-End Technologies</th>
          </tr>

          <xsl:for-each select="Portfolio/item">
            <tr>
              <td><xsl:value-of select="title" /></td>
              <td><xsl:value-of select="description" /></td>
              <td><xsl:value-of select="technologies/front-end" /></td>
              <td><xsl:value-of select="technologies/back-end" /></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
