<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor version="1.0.0"
  xmlns="http://www.opengis.net/sld"
  xmlns:ogc="http://www.opengis.net/ogc"
  xmlns:xlink="http://www.w3.org/1999/xlink"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
  <NamedLayer>
    <Name>Digiroad 500k</Name>
    <UserStyle>
      <Title>Digiroad 500k</Title>
      <FeatureTypeStyle>
        <Rule>
          <Name>digiroad_500k</Name>
          <MinScaleDenominator>500000</MinScaleDenominator>
          <MaxScaleDenominator>2000000</MaxScaleDenominator>
          <ogc:Filter>
            <ogc:Or>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>toiminn_lk</ogc:PropertyName>
                <!-- Highway -->
                <ogc:Literal>1</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>toiminn_lk</ogc:PropertyName>
                <!-- Main road -->
                <ogc:Literal>2</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>toiminn_lk</ogc:PropertyName>
                <!-- Regional road -->
                <ogc:Literal>3</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Filter>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#CC8822</CssParameter>
              <CssParameter name="stroke-width">
                <ogc:Function name="Recode">
                  <ogc:PropertyName>toiminn_lk</ogc:PropertyName>

                  <ogc:Literal>1</ogc:Literal>
                  <ogc:Literal>2</ogc:Literal>

                  <ogc:Literal>2</ogc:Literal>
                  <ogc:Literal>1</ogc:Literal>

                  <ogc:Literal>3</ogc:Literal>
                  <ogc:Literal>0.75</ogc:Literal>

                </ogc:Function>
              </CssParameter>
              <CssParameter name="stroke-linejoin">bevel</CssParameter>
              <CssParameter name="stroke-linecap">square</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
