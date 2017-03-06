<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor version="1.0.0"
  xmlns="http://www.opengis.net/sld"
  xmlns:ogc="http://www.opengis.net/ogc"
  xmlns:xlink="http://www.w3.org/1999/xlink"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
  <NamedLayer>
    <Name>Yleiskartta city marker 1000k</Name>
    <UserStyle>
      <Title>Yleiskartta city marker 1000k</Title>
      <FeatureTypeStyle>
        <Rule>
          <Name>yk_city_marker</Name>
          <MinScaleDenominator>500000</MinScaleDenominator>
          <MaxScaleDenominator>2000000</MaxScaleDenominator>
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

                    <ogc:Literal>4</ogc:Literal>
                    <ogc:Literal>circle</ogc:Literal>

                    <ogc:Literal>3</ogc:Literal>
                    <ogc:Literal>circle</ogc:Literal>

                    <ogc:Literal>2</ogc:Literal>
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

                      <ogc:Literal>4</ogc:Literal>
                      <ogc:Literal>#ebebeb</ogc:Literal>

                      <ogc:Literal>3</ogc:Literal>
                      <ogc:Literal>#ebebeb</ogc:Literal>

                      <ogc:Literal>2</ogc:Literal>
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
                  <ogc:Literal>9</ogc:Literal>

                  <ogc:Literal>6</ogc:Literal>
                  <ogc:Literal>9</ogc:Literal>

                  <ogc:Literal>5</ogc:Literal>
                  <ogc:Literal>7</ogc:Literal>

                  <ogc:Literal>4</ogc:Literal>
                  <ogc:Literal>6</ogc:Literal>

                  <ogc:Literal>3</ogc:Literal>
                  <ogc:Literal>5</ogc:Literal>

                  <ogc:Literal>2</ogc:Literal>
                  <ogc:Literal>3</ogc:Literal>
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

                <ogc:Literal>4</ogc:Literal>
                <ogc:Literal>150</ogc:Literal>

                <ogc:Literal>3</ogc:Literal>
                <ogc:Literal>50</ogc:Literal>

                <ogc:Literal>3</ogc:Literal>
                <ogc:Literal>30</ogc:Literal>
              </ogc:Function>
            </Priority>
          </PointSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
