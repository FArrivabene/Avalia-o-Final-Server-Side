<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
      <div class="page-container">
        <h1>Todos os Filmes</h1>
        <div class="cards-container">
          <xsl:for-each select="cards/card">
            <div class="card">
              <a href="{link}" target="_blank" class="card-link">
                <img src="https://picsum.photos/200/200" alt="Imagem do Card"/>
                <div class="card-content">
                  <h2>
                    <xsl:value-of select="title"/>
                  </h2>
                  <p>
                    <xsl:value-of select="description"/>
                  </p>
                  <p>
                    <strong>Categoria:</strong>
                    <xsl:value-of select="category"/>
                  </p>
                  <p>
                    <strong>Em exibição:</strong>
                    <xsl:value-of select="in_exhibition"/>
                  </p>
                </div>
              </a>
            </div>
          </xsl:for-each>
        </div>

        <h1>Filmes em Exibição</h1>
        <div class="exhibition-container">
          <xsl:for-each select="cards/card[in_exhibition='Sim']">
            <div class="card">
              <a href="{link}" target="_blank" class="card-link">
                <img src="https://picsum.photos/200/200" alt="Imagem do Card"/>
                <div class="card-content">
                  <h2>
                    <xsl:value-of select="title"/>
                  </h2>
                  <p>
                    <xsl:value-of select="description"/>
                  </p>
                  <p>
                    <strong>Categoria:</strong>
                    <xsl:value-of select="category"/>
                  </p>
                  <p>
                    <strong>Em exibição:</strong>
                    <xsl:value-of select="in_exhibition"/>
                  </p>
                </div>
              </a>
            </div>
          </xsl:for-each>
        </div>
      </div>
    </xsl:template>
</xsl:stylesheet>
