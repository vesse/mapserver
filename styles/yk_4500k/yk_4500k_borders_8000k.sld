<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor version="1.0.0"
  xmlns="http://www.opengis.net/sld"
  xmlns:ogc="http://www.opengis.net/ogc"
  xmlns:xlink="http://www.w3.org/1999/xlink"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
  <NamedLayer>
    <Name>Yleiskartta borders 8000k</Name>
    <UserStyle>
      <Title>Yleiskartta borders 8000k</Title>
      <FeatureTypeStyle>

        <!-- Separate rule for dashed line because it is not supported
             with function -->
        <Rule>
          <Name>yk_country_border_water</Name>
          <MinScaleDenominator>8000000</MinScaleDenominator>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>kohdeluokk</ogc:PropertyName>
              <!-- Water border -->
              <ogc:Literal>82100</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#666666</CssParameter>
              <CssParameter name="stroke-width">1</CssParameter>
              <CssParameter name="stroke-linejoin">bevel</CssParameter>
              <CssParameter name="stroke-linecap">square</CssParameter>
              <CssParameter name="stroke-dasharray">10 5</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>

        <Rule>
          <Name>yk_border_land</Name>
          <MinScaleDenominator>8000000</MinScaleDenominator>
          <ogc:Filter>
            <ogc:Or>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>kohdeluokk</ogc:PropertyName>
                <!-- Country border -->
                <ogc:Literal>84111</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>kohdeluokk</ogc:PropertyName>
                <!-- Partial province border -->
                <ogc:Literal>84112</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>kohdeluokk</ogc:PropertyName>
                <!-- Partial province border -->
                <ogc:Literal>84115</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Filter>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#666666</CssParameter>
              <CssParameter name="stroke-linejoin">bevel</CssParameter>
              <CssParameter name="stroke-linecap">square</CssParameter>
              <CssParameter name="stroke-width">
                <ogc:Function name="Recode">
                  <ogc:PropertyName>kohdeluokk</ogc:PropertyName>

                  <ogc:Literal>84111</ogc:Literal>
                  <ogc:Literal>1</ogc:Literal>

                  <ogc:Literal>84112</ogc:Literal>
                  <ogc:Literal>0.5</ogc:Literal>

                  <ogc:Literal>84115</ogc:Literal>
                  <ogc:Literal>0.5</ogc:Literal>

                </ogc:Function>
              </CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
