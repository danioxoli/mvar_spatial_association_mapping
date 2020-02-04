<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis labelsEnabled="0" styleCategories="AllStyleCategories" minScale="1e+08" readOnly="0" hasScaleBasedVisibilityFlag="0" simplifyAlgorithm="0" maxScale="0" simplifyDrawingHints="1" simplifyDrawingTol="1" simplifyMaxScale="1" version="3.4.5-Madeira" simplifyLocal="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 forceraster="0" type="RuleRenderer" enableorderby="0" symbollevels="0">
    <rules key="{401b84cf-8e1f-452f-a682-d88ebd9b63cf}">
      <rule key="{7b6b135a-97dd-4d64-bc11-2bb4e8ff8a42}" filter=" &quot;class_Cki&quot;  = 'hh'  and  &quot;C_sim_fdr&quot;  &lt; 0.0001" label="High values cluster" symbol="0"/>
      <rule key="{61c08c79-7dec-48b2-aa30-aa961d4e1183}" filter=" &quot;class_Cki&quot;  =  'hl' and  &quot;C_sim_fdr&quot;  &lt; 0.0001" label="High-low outlier" symbol="1"/>
      <rule key="{602bf413-db97-4186-b312-c45ba53aeb7f}" filter=" &quot;class_Cki&quot;  =  'lh' and  &quot;C_sim_fdr&quot;  &lt; 0.0001" label="Low-high outlier" symbol="2"/>
      <rule key="{c8280dca-18c8-4383-b1bf-9b7cd62aa6e9}" filter=" &quot;class_Cki&quot;  =  'll' and  &quot;C_sim_fdr&quot;  &lt; 0.0001" label="Low values cluster" symbol="3"/>
      <rule key="{548fd712-4c3c-46c7-b64c-18b3005e479b}" filter="&quot;C_sim_fdr&quot;  >= 0.0001" label="Not significant 99.99% (CSR)" symbol="4"/>
    </rules>
    <symbols>
      <symbol type="fill" force_rhr="0" name="0" clip_to_extent="1" alpha="1">
        <layer enabled="1" pass="0" class="SimpleFill" locked="0">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="55,122,68,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" force_rhr="0" name="1" clip_to_extent="1" alpha="1">
        <layer enabled="1" pass="0" class="SimpleFill" locked="0">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="162,202,125,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="55,122,68,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" force_rhr="0" name="2" clip_to_extent="1" alpha="1">
        <layer enabled="1" pass="0" class="SimpleFill" locked="0">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="202,149,188,135"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="142,70,194,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" force_rhr="0" name="3" clip_to_extent="1" alpha="1">
        <layer enabled="1" pass="0" class="SimpleFill" locked="0">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="142,70,194,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" force_rhr="0" name="4" clip_to_extent="1" alpha="1">
        <layer enabled="1" pass="0" class="SimpleFill" locked="0">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="128,128,128,209"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <customproperties>
    <property value="id" key="dualview/previewExpressions"/>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory sizeType="MM" minScaleDenominator="0" barWidth="5" rotationOffset="270" sizeScale="3x:0,0,0,0,0,0" penWidth="0" width="15" diagramOrientation="Up" penAlpha="255" backgroundColor="#ffffff" height="15" penColor="#000000" opacity="1" backgroundAlpha="255" scaleBasedVisibility="0" enabled="0" scaleDependency="Area" minimumSize="0" maxScaleDenominator="1e+08" lineSizeType="MM" labelPlacementMethod="XHeight" lineSizeScale="3x:0,0,0,0,0,0">
      <fontProperties description=".AppleSystemUIFont,13,-1,5,50,0,0,0,0,0" style=""/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings obstacle="0" dist="0" priority="0" linePlacementFlags="18" zIndex="0" placement="1" showAll="1">
    <properties>
      <Option type="Map">
        <Option value="" type="QString" name="name"/>
        <Option name="properties"/>
        <Option value="collection" type="QString" name="type"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <fieldConfiguration>
    <field name="id">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="q">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="a">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="c">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="b">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="d">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="n_a">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="n_b">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="n_c">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="n_d">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="C_ki">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="C_p_norm">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="C_norm_fdr">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="C_z_norm">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="C_z_sim">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="C_p_sim">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="C_sim_fdr">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="class_Cki">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="id" index="0" name=""/>
    <alias field="q" index="1" name=""/>
    <alias field="a" index="2" name=""/>
    <alias field="c" index="3" name=""/>
    <alias field="b" index="4" name=""/>
    <alias field="d" index="5" name=""/>
    <alias field="n_a" index="6" name=""/>
    <alias field="n_b" index="7" name=""/>
    <alias field="n_c" index="8" name=""/>
    <alias field="n_d" index="9" name=""/>
    <alias field="C_ki" index="10" name=""/>
    <alias field="C_p_norm" index="11" name=""/>
    <alias field="C_norm_fdr" index="12" name=""/>
    <alias field="C_z_norm" index="13" name=""/>
    <alias field="C_z_sim" index="14" name=""/>
    <alias field="C_p_sim" index="15" name=""/>
    <alias field="C_sim_fdr" index="16" name=""/>
    <alias field="class_Cki" index="17" name=""/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default expression="" field="id" applyOnUpdate="0"/>
    <default expression="" field="q" applyOnUpdate="0"/>
    <default expression="" field="a" applyOnUpdate="0"/>
    <default expression="" field="c" applyOnUpdate="0"/>
    <default expression="" field="b" applyOnUpdate="0"/>
    <default expression="" field="d" applyOnUpdate="0"/>
    <default expression="" field="n_a" applyOnUpdate="0"/>
    <default expression="" field="n_b" applyOnUpdate="0"/>
    <default expression="" field="n_c" applyOnUpdate="0"/>
    <default expression="" field="n_d" applyOnUpdate="0"/>
    <default expression="" field="C_ki" applyOnUpdate="0"/>
    <default expression="" field="C_p_norm" applyOnUpdate="0"/>
    <default expression="" field="C_norm_fdr" applyOnUpdate="0"/>
    <default expression="" field="C_z_norm" applyOnUpdate="0"/>
    <default expression="" field="C_z_sim" applyOnUpdate="0"/>
    <default expression="" field="C_p_sim" applyOnUpdate="0"/>
    <default expression="" field="C_sim_fdr" applyOnUpdate="0"/>
    <default expression="" field="class_Cki" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint notnull_strength="0" unique_strength="0" field="id" exp_strength="0" constraints="0"/>
    <constraint notnull_strength="0" unique_strength="0" field="q" exp_strength="0" constraints="0"/>
    <constraint notnull_strength="0" unique_strength="0" field="a" exp_strength="0" constraints="0"/>
    <constraint notnull_strength="0" unique_strength="0" field="c" exp_strength="0" constraints="0"/>
    <constraint notnull_strength="0" unique_strength="0" field="b" exp_strength="0" constraints="0"/>
    <constraint notnull_strength="0" unique_strength="0" field="d" exp_strength="0" constraints="0"/>
    <constraint notnull_strength="0" unique_strength="0" field="n_a" exp_strength="0" constraints="0"/>
    <constraint notnull_strength="0" unique_strength="0" field="n_b" exp_strength="0" constraints="0"/>
    <constraint notnull_strength="0" unique_strength="0" field="n_c" exp_strength="0" constraints="0"/>
    <constraint notnull_strength="0" unique_strength="0" field="n_d" exp_strength="0" constraints="0"/>
    <constraint notnull_strength="0" unique_strength="0" field="C_ki" exp_strength="0" constraints="0"/>
    <constraint notnull_strength="0" unique_strength="0" field="C_p_norm" exp_strength="0" constraints="0"/>
    <constraint notnull_strength="0" unique_strength="0" field="C_norm_fdr" exp_strength="0" constraints="0"/>
    <constraint notnull_strength="0" unique_strength="0" field="C_z_norm" exp_strength="0" constraints="0"/>
    <constraint notnull_strength="0" unique_strength="0" field="C_z_sim" exp_strength="0" constraints="0"/>
    <constraint notnull_strength="0" unique_strength="0" field="C_p_sim" exp_strength="0" constraints="0"/>
    <constraint notnull_strength="0" unique_strength="0" field="C_sim_fdr" exp_strength="0" constraints="0"/>
    <constraint notnull_strength="0" unique_strength="0" field="class_Cki" exp_strength="0" constraints="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="id" exp="" desc=""/>
    <constraint field="q" exp="" desc=""/>
    <constraint field="a" exp="" desc=""/>
    <constraint field="c" exp="" desc=""/>
    <constraint field="b" exp="" desc=""/>
    <constraint field="d" exp="" desc=""/>
    <constraint field="n_a" exp="" desc=""/>
    <constraint field="n_b" exp="" desc=""/>
    <constraint field="n_c" exp="" desc=""/>
    <constraint field="n_d" exp="" desc=""/>
    <constraint field="C_ki" exp="" desc=""/>
    <constraint field="C_p_norm" exp="" desc=""/>
    <constraint field="C_norm_fdr" exp="" desc=""/>
    <constraint field="C_z_norm" exp="" desc=""/>
    <constraint field="C_z_sim" exp="" desc=""/>
    <constraint field="C_p_sim" exp="" desc=""/>
    <constraint field="C_sim_fdr" exp="" desc=""/>
    <constraint field="class_Cki" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortExpression="&quot;C_sim_fdr&quot;" actionWidgetStyle="dropDown" sortOrder="0">
    <columns>
      <column hidden="0" type="field" name="id" width="-1"/>
      <column hidden="0" type="field" name="q" width="-1"/>
      <column hidden="0" type="field" name="a" width="-1"/>
      <column hidden="0" type="field" name="b" width="-1"/>
      <column hidden="0" type="field" name="c" width="-1"/>
      <column hidden="0" type="field" name="d" width="-1"/>
      <column hidden="0" type="field" name="n_a" width="-1"/>
      <column hidden="0" type="field" name="n_b" width="-1"/>
      <column hidden="0" type="field" name="n_c" width="-1"/>
      <column hidden="0" type="field" name="n_d" width="-1"/>
      <column hidden="0" type="field" name="C_ki" width="-1"/>
      <column hidden="0" type="field" name="class_Cki" width="-1"/>
      <column hidden="0" type="field" name="C_p_norm" width="-1"/>
      <column hidden="0" type="field" name="C_norm_fdr" width="-1"/>
      <column hidden="0" type="field" name="C_z_norm" width="-1"/>
      <column hidden="0" type="field" name="C_p_sim" width="-1"/>
      <column hidden="0" type="field" name="C_sim_fdr" width="-1"/>
      <column hidden="0" type="field" name="C_z_sim" width="-1"/>
      <column hidden="1" type="actions" width="-1"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
I form QGIS possono avere una funzione Python che può essere chiamata quando un form viene aperto.

Usa questa funzione per aggiungere logica extra ai tuoi forms..

Inserisci il nome della funzione nel campo "Funzione Python di avvio".

Segue un esempio:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
	geom = feature.geometry()
	control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field editable="1" name="C_ki"/>
    <field editable="1" name="C_norm_fdr"/>
    <field editable="1" name="C_p_norm"/>
    <field editable="1" name="C_p_sim"/>
    <field editable="1" name="C_sim_fdr"/>
    <field editable="1" name="C_z_norm"/>
    <field editable="1" name="C_z_sim"/>
    <field editable="1" name="D_z_norm"/>
    <field editable="1" name="Di"/>
    <field editable="1" name="Di_norm_fd"/>
    <field editable="1" name="Di_p_norm"/>
    <field editable="1" name="Di_p_sim"/>
    <field editable="1" name="Di_sim_fdr"/>
    <field editable="1" name="Di_z_sim"/>
    <field editable="1" name="a"/>
    <field editable="1" name="b"/>
    <field editable="1" name="c"/>
    <field editable="1" name="class_Cki"/>
    <field editable="1" name="class_Di"/>
    <field editable="1" name="d"/>
    <field editable="1" name="id"/>
    <field editable="1" name="n_a"/>
    <field editable="1" name="n_b"/>
    <field editable="1" name="n_c"/>
    <field editable="1" name="n_d"/>
    <field editable="1" name="q"/>
  </editable>
  <labelOnTop>
    <field name="C_ki" labelOnTop="0"/>
    <field name="C_norm_fdr" labelOnTop="0"/>
    <field name="C_p_norm" labelOnTop="0"/>
    <field name="C_p_sim" labelOnTop="0"/>
    <field name="C_sim_fdr" labelOnTop="0"/>
    <field name="C_z_norm" labelOnTop="0"/>
    <field name="C_z_sim" labelOnTop="0"/>
    <field name="D_z_norm" labelOnTop="0"/>
    <field name="Di" labelOnTop="0"/>
    <field name="Di_norm_fd" labelOnTop="0"/>
    <field name="Di_p_norm" labelOnTop="0"/>
    <field name="Di_p_sim" labelOnTop="0"/>
    <field name="Di_sim_fdr" labelOnTop="0"/>
    <field name="Di_z_sim" labelOnTop="0"/>
    <field name="a" labelOnTop="0"/>
    <field name="b" labelOnTop="0"/>
    <field name="c" labelOnTop="0"/>
    <field name="class_Cki" labelOnTop="0"/>
    <field name="class_Di" labelOnTop="0"/>
    <field name="d" labelOnTop="0"/>
    <field name="id" labelOnTop="0"/>
    <field name="n_a" labelOnTop="0"/>
    <field name="n_b" labelOnTop="0"/>
    <field name="n_c" labelOnTop="0"/>
    <field name="n_d" labelOnTop="0"/>
    <field name="q" labelOnTop="0"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>id</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
