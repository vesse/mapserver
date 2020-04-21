<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor version="1.0.0"
  xmlns="http://www.opengis.net/sld"
  xmlns:ogc="http://www.opengis.net/ogc"
  xmlns:xlink="http://www.w3.org/1999/xlink"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
  <NamedLayer>
    <Name>Yleiskartta elevation 2000k</Name>
    <UserStyle>
      <Title>Yleiskartta elevation 2000k</Title>
      <FeatureTypeStyle>
        <Rule>
          <Name>yk_elevation_2000k</Name>
          <MinScaleDenominator>2000000</MinScaleDenominator>
          <MaxScaleDenominator>4000000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">
                <ogc:Function name="Recode">
                  <ogc:PropertyName>korkeus</ogc:PropertyName>

                  <ogc:Literal>0</ogc:Literal>
                  <ogc:Literal>#bff5a3</ogc:Literal>

                  <ogc:Literal>100</ogc:Literal>
                  <ogc:Literal>#caf5a3</ogc:Literal>

                  <ogc:Literal>200</ogc:Literal>
                  <ogc:Literal>#d4f5a3</ogc:Literal>

                  <ogc:Literal>300</ogc:Literal>
                  <ogc:Literal>#dff5a3</ogc:Literal>

                  <ogc:Literal>400</ogc:Literal>
                  <ogc:Literal>#e9f5a3</ogc:Literal>

                  <ogc:Literal>500</ogc:Literal>
                  <ogc:Literal>#f4f5a3</ogc:Literal>

                  <ogc:Literal>600</ogc:Literal>
                  <ogc:Literal>#f5eca3</ogc:Literal>

                  <ogc:Literal>700</ogc:Literal>
                  <ogc:Literal>#f5e2a3</ogc:Literal>

                  <ogc:Literal>800</ogc:Literal>
                  <ogc:Literal>#f5d7a3</ogc:Literal>

                  <ogc:Literal>900</ogc:Literal>
                  <ogc:Literal>#f5cca3</ogc:Literal>

                  <ogc:Literal>1000</ogc:Literal>
                  <ogc:Literal>#f5c3a3</ogc:Literal>

                  <ogc:Literal>1100</ogc:Literal>
                  <ogc:Literal>#f5b8a3</ogc:Literal>

                  <ogc:Literal>1200</ogc:Literal>
                  <ogc:Literal>#f5ada3</ogc:Literal>

                </ogc:Function>
              </CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
