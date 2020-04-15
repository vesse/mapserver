<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor version="1.0.0"
  xmlns="http://www.opengis.net/sld"
  xmlns:ogc="http://www.opengis.net/ogc"
  xmlns:xlink="http://www.w3.org/1999/xlink"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
  <NamedLayer>
    <Name>Maastotietokanta polygons</Name>
    <UserStyle>
      <Title>Maastotietokanta polygons</Title>
      <FeatureTypeStyle>
        <Rule>
          <Name>maastotietokanta_water_areas</Name>
          <MaxScaleDenominator>500000</MaxScaleDenominator>
          <ogc:Filter>
            <ogc:PropertyIsBetween>
              <ogc:PropertyName>luokka</ogc:PropertyName>
              <ogc:LowerBoundary>
                <ogc:Literal>36200</ogc:Literal>
              </ogc:LowerBoundary>
              <ogc:UpperBoundary>
                <ogc:Literal>36313</ogc:Literal>
              </ogc:UpperBoundary>
            </ogc:PropertyIsBetween>
          </ogc:Filter>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#5badd9</CssParameter>
            </Fill>
            <Stroke>
              <CssParameter name="stroke">#5badd9</CssParameter>
            </Stroke>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
