<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor version="1.0.0"
  xmlns="http://www.opengis.net/sld"
  xmlns:ogc="http://www.opengis.net/ogc"
  xmlns:xlink="http://www.w3.org/1999/xlink"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
  <NamedLayer>
    <Name>Yleiskartta city marker 4500k</Name>
    <UserStyle>
      <Title>Yleiskartta city marker 4500k</Title>
      <FeatureTypeStyle>
        <!-- Index OK, created for asukasluok -->
        <Rule>
          <Name>yk_city_marker</Name>
          <MinScaleDenominator>4000000</MinScaleDenominator>
          <MaxScaleDenominator>8000000</MaxScaleDenominator>
          <ogc:Filter>
            <ogc:Or>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>asukasluok</ogc:PropertyName>
                <!-- Over 100k population -->
                <ogc:Literal>7</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>asukasluok</ogc:PropertyName>
                <!-- 50k-100k population -->
                <ogc:Literal>6</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>asukasluok</ogc:PropertyName>
                <!-- 20k-50k population -->
                <ogc:Literal>5</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
              <Mark>
                <WellKnownName>
                  <ogc:Function name="Recode">
                    <ogc:PropertyName>asukasluok</ogc:PropertyName>

                    <ogc:Literal>7</ogc:Literal>
                    <ogc:Literal>square</ogc:Literal>

                    <ogc:Literal>6</ogc:Literal>
                    <ogc:Literal>circle</ogc:Literal>

                    <ogc:Literal>5</ogc:Literal>
                    <ogc:Literal>circle</ogc:Literal>
                  </ogc:Function>
                </WellKnownName>
                <Fill>
                  <CssParameter name="fill">
                    <ogc:Function name="Recode">
                      <ogc:PropertyName>asukasluok</ogc:PropertyName>

                      <ogc:Literal>7</ogc:Literal>
                      <ogc:Literal>#c7c7c7</ogc:Literal>

                      <ogc:Literal>6</ogc:Literal>
                      <ogc:Literal>#ebebeb</ogc:Literal>

                      <ogc:Literal>5</ogc:Literal>
                      <ogc:Literal>#ebebeb</ogc:Literal>
                    </ogc:Function>
                  </CssParameter>
                </Fill>
                <Stroke>
                  <CssParameter name="stroke">#5c5c5c</CssParameter>
                  <CssParameter name="stroke-width">1</CssParameter>
                  <CssParameter name="stroke-linejoin">bevel</CssParameter>
                  <CssParameter name="stroke-linecap">square</CssParameter>
                </Stroke>
              </Mark>
              <Size>
                <ogc:Function name="Recode">
                  <ogc:PropertyName>asukasluok</ogc:PropertyName>

                  <ogc:Literal>7</ogc:Literal>
                  <ogc:Literal>8</ogc:Literal>

                  <ogc:Literal>6</ogc:Literal>
                  <ogc:Literal>6</ogc:Literal>

                  <ogc:Literal>5</ogc:Literal>
                  <ogc:Literal>4</ogc:Literal>
                </ogc:Function>
              </Size>
            </Graphic>
            <Priority>
              <ogc:Function name="Recode">
                <ogc:PropertyName>asukasluok</ogc:PropertyName>

                <ogc:Literal>7</ogc:Literal>
                <ogc:Literal>950</ogc:Literal>

                <ogc:Literal>6</ogc:Literal>
                <ogc:Literal>450</ogc:Literal>

                <ogc:Literal>5</ogc:Literal>
                <ogc:Literal>250</ogc:Literal>
              </ogc:Function>
            </Priority>
          </PointSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
