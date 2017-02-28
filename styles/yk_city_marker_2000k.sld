<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor version="1.0.0"
  xmlns="http://www.opengis.net/sld"
  xmlns:ogc="http://www.opengis.net/ogc"
  xmlns:xlink="http://www.w3.org/1999/xlink"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
  <NamedLayer>
    <Name>Yleiskartta city marker 2000k</Name>
    <UserStyle>
      <Title>Yleiskartta city marker 2000k</Title>
      <FeatureTypeStyle>
        <Rule>
          <Name>yk_city_marker_big_2000k</Name>
          <MinScaleDenominator>2000000</MinScaleDenominator>
          <MaxScaleDenominator>4000000</MaxScaleDenominator>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>asukasluok</ogc:PropertyName>
              <ogc:Literal>7</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
              <Mark>
                <WellKnownName>square</WellKnownName>
                <Fill>
                  <CssParameter name="fill">#c7c7c7</CssParameter>
                </Fill>
                <Stroke>
                  <CssParameter name="stroke">#5c5c5c</CssParameter>
                  <CssParameter name="stroke-width">1</CssParameter>
                  <CssParameter name="stroke-linejoin">bevel</CssParameter>
                  <CssParameter name="stroke-linecap">square</CssParameter>
                </Stroke>
              </Mark>
              <Size>8</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          <Name>yk_city_marker_middle_2000k</Name>
          <MinScaleDenominator>2000000</MinScaleDenominator>
          <MaxScaleDenominator>4000000</MaxScaleDenominator>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>asukasluok</ogc:PropertyName>
              <ogc:Literal>6</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
              <Mark>
                <WellKnownName>circle</WellKnownName>
                <Fill>
                  <CssParameter name="fill">#ebebeb</CssParameter>
                </Fill>
                <Stroke>
                  <CssParameter name="stroke">#5c5c5c</CssParameter>
                  <CssParameter name="stroke-width">1</CssParameter>
                  <CssParameter name="stroke-linejoin">bevel</CssParameter>
                  <CssParameter name="stroke-linecap">square</CssParameter>
                </Stroke>
              </Mark>
              <Size>8</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          <Name>yk_city_marker_small_2000k</Name>
          <MinScaleDenominator>2000000</MinScaleDenominator>
          <MaxScaleDenominator>4000000</MaxScaleDenominator>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>asukasluok</ogc:PropertyName>
              <ogc:Literal>5</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
              <Mark>
                <WellKnownName>circle</WellKnownName>
                <Fill>
                  <CssParameter name="fill">#ebebeb</CssParameter>
                </Fill>
                <Stroke>
                  <CssParameter name="stroke">#5c5c5c</CssParameter>
                  <CssParameter name="stroke-width">1</CssParameter>
                  <CssParameter name="stroke-linejoin">bevel</CssParameter>
                  <CssParameter name="stroke-linecap">square</CssParameter>
                </Stroke>
              </Mark>
              <Size>6</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          <Name>yk_city_marker_small_2000k</Name>
          <MinScaleDenominator>2000000</MinScaleDenominator>
          <MaxScaleDenominator>4000000</MaxScaleDenominator>
          <ogc:Filter>
            <ogc:Or>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>asukasluok</ogc:PropertyName>
                <ogc:Literal>4</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>asukasluok</ogc:PropertyName>
                <ogc:Literal>3</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
              <Mark>
                <WellKnownName>circle</WellKnownName>
                <Fill>
                  <CssParameter name="fill">#ebebeb</CssParameter>
                </Fill>
                <Stroke>
                  <CssParameter name="stroke">#5c5c5c</CssParameter>
                  <CssParameter name="stroke-width">1</CssParameter>
                  <CssParameter name="stroke-linejoin">bevel</CssParameter>
                  <CssParameter name="stroke-linecap">square</CssParameter>
                </Stroke>
              </Mark>
              <Size>4</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
