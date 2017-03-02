<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor version="1.0.0"
  xmlns="http://www.opengis.net/sld"
  xmlns:ogc="http://www.opengis.net/ogc"
  xmlns:xlink="http://www.w3.org/1999/xlink"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
  <NamedLayer>
    <Name></Name>
    <UserStyle>
      <Title>Paikannimi</Title>
      <FeatureTypeStyle>

        <Rule>
          <Name>city_labels_8000k</Name>
          <MinScaleDenominator>8000000</MinScaleDenominator>
          <MaxScaleDenominator>17000000</MaxScaleDenominator>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>mittakaavarelevanssikoodi</ogc:PropertyName>
              <ogc:Literal>8000000</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <TextSymbolizer>
            <Label>
              <ogc:PropertyName>kirjoitusasu</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-family">Open Sans</CssParameter>
              <CssParameter name="font-size">14</CssParameter>
              <CssParameter name="font-style">normal</CssParameter>
              <CssParameter name="font-weight">bold</CssParameter>
            </Font>
            <LabelPlacement>
              <PointPlacement>
                <AnchorPoint>
                  <AnchorPointX>0.5</AnchorPointX>
                  <AnchorPointY>0</AnchorPointY>
                </AnchorPoint>
                <Displacement>
                  <DisplacementX>0</DisplacementX>
                  <DisplacementY>5</DisplacementY>
                </Displacement>
              </PointPlacement>
            </LabelPlacement>
            <Fill>
              <CssParameter name="fill">#333333</CssParameter>
            </Fill>
            <Halo>
            </Halo>
            <Priority>1000</Priority>
            <VendorOption name="group">yes</VendorOption>
            <VendorOption name="spaceAround">5</VendorOption>
          </TextSymbolizer>
        </Rule>

        <Rule>
          <Name>city_labels_4000k_big_cities</Name>
          <MinScaleDenominator>4000000</MinScaleDenominator>
          <MaxScaleDenominator>8000000</MaxScaleDenominator>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>mittakaavarelevanssikoodi</ogc:PropertyName>
              <ogc:Literal>8000000</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <TextSymbolizer>
            <Label>
              <ogc:PropertyName>kirjoitusasu</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-family">Open Sans</CssParameter>
              <CssParameter name="font-size">16</CssParameter>
              <CssParameter name="font-style">normal</CssParameter>
              <CssParameter name="font-weight">bold</CssParameter>
            </Font>
            <LabelPlacement>
              <PointPlacement>
                <AnchorPoint>
                  <AnchorPointX>0.5</AnchorPointX>
                  <AnchorPointY>0</AnchorPointY>
                </AnchorPoint>
                <Displacement>
                  <DisplacementX>0</DisplacementX>
                  <DisplacementY>5</DisplacementY>
                </Displacement>
              </PointPlacement>
            </LabelPlacement>
            <Fill>
              <CssParameter name="fill">#333333</CssParameter>
            </Fill>
            <Halo>
            </Halo>
            <Priority>1000</Priority>
            <VendorOption name="group">yes</VendorOption>
            <VendorOption name="spaceAround">5</VendorOption>
          </TextSymbolizer>
        </Rule>

        <Rule>
          <Name>city_labels_2000k_big_cities</Name>
          <MinScaleDenominator>2000000</MinScaleDenominator>
          <MaxScaleDenominator>4000000</MaxScaleDenominator>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>mittakaavarelevanssikoodi</ogc:PropertyName>
              <ogc:Literal>8000000</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <TextSymbolizer>
            <Label>
              <ogc:PropertyName>kirjoitusasu</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-family">Open Sans</CssParameter>
              <CssParameter name="font-size">18</CssParameter>
              <CssParameter name="font-style">normal</CssParameter>
              <CssParameter name="font-weight">bold</CssParameter>
            </Font>
            <LabelPlacement>
              <PointPlacement>
                <AnchorPoint>
                  <AnchorPointX>0.5</AnchorPointX>
                  <AnchorPointY>0</AnchorPointY>
                </AnchorPoint>
                <Displacement>
                  <DisplacementX>0</DisplacementX>
                  <DisplacementY>5</DisplacementY>
                </Displacement>
              </PointPlacement>
            </LabelPlacement>
            <Fill>
              <CssParameter name="fill">#333333</CssParameter>
            </Fill>
            <Halo>
            </Halo>
            <Priority>1000</Priority>
            <VendorOption name="group">yes</VendorOption>
            <VendorOption name="spaceAround">5</VendorOption>
          </TextSymbolizer>
        </Rule>

        <Rule>
          <Name>city_labels_2000k_medium_cities</Name>
          <MinScaleDenominator>2000000</MinScaleDenominator>
          <MaxScaleDenominator>4000000</MaxScaleDenominator>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>mittakaavarelevanssikoodi</ogc:PropertyName>
              <ogc:Literal>4500000</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <TextSymbolizer>
            <Label>
              <ogc:PropertyName>kirjoitusasu</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-family">Open Sans</CssParameter>
              <CssParameter name="font-size">14</CssParameter>
              <CssParameter name="font-style">normal</CssParameter>
              <CssParameter name="font-weight">bold</CssParameter>
            </Font>
            <LabelPlacement>
              <PointPlacement>
                <AnchorPoint>
                  <AnchorPointX>0.5</AnchorPointX>
                  <AnchorPointY>0</AnchorPointY>
                </AnchorPoint>
                <Displacement>
                  <DisplacementX>0</DisplacementX>
                  <DisplacementY>5</DisplacementY>
                </Displacement>
              </PointPlacement>
            </LabelPlacement>
            <Fill>
              <CssParameter name="fill">#333333</CssParameter>
            </Fill>
            <Halo>
            </Halo>
            <Priority>500</Priority>
            <VendorOption name="group">yes</VendorOption>
            <VendorOption name="spaceAround">5</VendorOption>
          </TextSymbolizer>
        </Rule>

        <Rule>
          <Name>city_labels_1000k_big_cities</Name>
          <MinScaleDenominator>500000</MinScaleDenominator>
          <MaxScaleDenominator>2000000</MaxScaleDenominator>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>mittakaavarelevanssikoodi</ogc:PropertyName>
              <ogc:Literal>8000000</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <TextSymbolizer>
            <Label>
              <ogc:PropertyName>kirjoitusasu</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-family">Open Sans</CssParameter>
              <CssParameter name="font-size">18</CssParameter>
              <CssParameter name="font-style">normal</CssParameter>
              <CssParameter name="font-weight">bold</CssParameter>
            </Font>
            <LabelPlacement>
              <PointPlacement>
                <AnchorPoint>
                  <AnchorPointX>0.5</AnchorPointX>
                  <AnchorPointY>0</AnchorPointY>
                </AnchorPoint>
                <Displacement>
                  <DisplacementX>0</DisplacementX>
                  <DisplacementY>5</DisplacementY>
                </Displacement>
              </PointPlacement>
            </LabelPlacement>
            <Fill>
              <CssParameter name="fill">#333333</CssParameter>
            </Fill>
            <Halo>
            </Halo>
            <Priority>1000</Priority>
            <VendorOption name="group">yes</VendorOption>
            <VendorOption name="spaceAround">5</VendorOption>
          </TextSymbolizer>
        </Rule>

        <Rule>
          <Name>city_labels_1000k_medium_cities</Name>
          <MinScaleDenominator>500000</MinScaleDenominator>
          <MaxScaleDenominator>2000000</MaxScaleDenominator>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>mittakaavarelevanssikoodi</ogc:PropertyName>
              <ogc:Literal>4500000</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <TextSymbolizer>
            <Label>
              <ogc:PropertyName>kirjoitusasu</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-family">Open Sans</CssParameter>
              <CssParameter name="font-size">14</CssParameter>
              <CssParameter name="font-style">normal</CssParameter>
              <CssParameter name="font-weight">bold</CssParameter>
            </Font>
            <LabelPlacement>
              <PointPlacement>
                <AnchorPoint>
                  <AnchorPointX>0.5</AnchorPointX>
                  <AnchorPointY>0</AnchorPointY>
                </AnchorPoint>
                <Displacement>
                  <DisplacementX>0</DisplacementX>
                  <DisplacementY>5</DisplacementY>
                </Displacement>
              </PointPlacement>
            </LabelPlacement>
            <Fill>
              <CssParameter name="fill">#333333</CssParameter>
            </Fill>
            <Halo>
            </Halo>
            <Priority>500</Priority>
            <VendorOption name="group">yes</VendorOption>
            <VendorOption name="spaceAround">5</VendorOption>
          </TextSymbolizer>
        </Rule>

        <Rule>
          <Name>city_labels_1000k_small_cities</Name>
          <MinScaleDenominator>500000</MinScaleDenominator>
          <MaxScaleDenominator>2000000</MaxScaleDenominator>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>mittakaavarelevanssikoodi</ogc:PropertyName>
              <ogc:Literal>2000000</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <TextSymbolizer>
            <Label>
              <ogc:PropertyName>kirjoitusasu</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-family">Open Sans</CssParameter>
              <CssParameter name="font-size">12</CssParameter>
              <CssParameter name="font-style">normal</CssParameter>
              <CssParameter name="font-weight">bold</CssParameter>
            </Font>
            <LabelPlacement>
              <PointPlacement>
                <AnchorPoint>
                  <AnchorPointX>0.5</AnchorPointX>
                  <AnchorPointY>0</AnchorPointY>
                </AnchorPoint>
                <Displacement>
                  <DisplacementX>0</DisplacementX>
                  <DisplacementY>5</DisplacementY>
                </Displacement>
              </PointPlacement>
            </LabelPlacement>
            <Fill>
              <CssParameter name="fill">#333333</CssParameter>
            </Fill>
            <Halo>
            </Halo>
            <Priority>300</Priority>
            <VendorOption name="group">yes</VendorOption>
            <VendorOption name="spaceAround">5</VendorOption>
          </TextSymbolizer>
        </Rule>

        <Rule>
          <Name>city_labels_1000k_very_small_cities</Name>
          <MinScaleDenominator>500000</MinScaleDenominator>
          <MaxScaleDenominator>1000000</MaxScaleDenominator>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>mittakaavarelevanssikoodi</ogc:PropertyName>
              <ogc:Literal>1000000</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <TextSymbolizer>
            <Label>
              <ogc:PropertyName>kirjoitusasu</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-family">Open Sans</CssParameter>
              <CssParameter name="font-size">12</CssParameter>
              <CssParameter name="font-style">normal</CssParameter>
              <CssParameter name="font-weight">bold</CssParameter>
            </Font>
            <LabelPlacement>
              <PointPlacement>
                <AnchorPoint>
                  <AnchorPointX>0.5</AnchorPointX>
                  <AnchorPointY>0</AnchorPointY>
                </AnchorPoint>
                <Displacement>
                  <DisplacementX>0</DisplacementX>
                  <DisplacementY>5</DisplacementY>
                </Displacement>
              </PointPlacement>
            </LabelPlacement>
            <Fill>
              <CssParameter name="fill">#333333</CssParameter>
            </Fill>
            <Halo>
            </Halo>
            <Priority>300</Priority>
            <VendorOption name="group">yes</VendorOption>
            <VendorOption name="spaceAround">5</VendorOption>
          </TextSymbolizer>
        </Rule>

      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
