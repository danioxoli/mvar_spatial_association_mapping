<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis minScale="1e+08" styleCategories="AllStyleCategories" maxScale="0" version="3.4.9-Madeira" simplifyAlgorithm="0" readOnly="0" simplifyDrawingTol="1" simplifyMaxScale="1" simplifyLocal="1" simplifyDrawingHints="1" hasScaleBasedVisibilityFlag="0" labelsEnabled="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 symbollevels="0" forceraster="0" type="RuleRenderer" enableorderby="0">
    <rules key="{401b84cf-8e1f-452f-a682-d88ebd9b63cf}">
      <rule symbol="0" filter=" &quot;class_Cki&quot;  = 'hh'  and  &quot;C_sim_fdr&quot;  &lt; 0.005" key="{7b6b135a-97dd-4d64-bc11-2bb4e8ff8a42}" label="High values cluster"/>
      <rule symbol="1" filter=" &quot;class_Cki&quot;  =  'hl' and  &quot;C_sim_fdr&quot;  &lt; 0.005" key="{61c08c79-7dec-48b2-aa30-aa961d4e1183}" label="High-low outlier"/>
      <rule symbol="2" filter=" &quot;class_Cki&quot;  =  'lh' and  &quot;C_sim_fdr&quot;  &lt; 0.005" key="{602bf413-db97-4186-b312-c45ba53aeb7f}" label="Low-high outlier"/>
      <rule symbol="3" filter=" &quot;class_Cki&quot;  =  'll' and  &quot;C_sim_fdr&quot;  &lt; 0.005" key="{c8280dca-18c8-4383-b1bf-9b7cd62aa6e9}" label="Low values cluster"/>
      <rule symbol="4" filter="&quot;C_sim_fdr&quot;  >= 0.005" key="{548fd712-4c3c-46c7-b64c-18b3005e479b}" label="Not significant 99.99% (CSR)"/>
    </rules>
    <symbols>
      <symbol clip_to_extent="1" alpha="1" force_rhr="0" type="fill" name="0">
        <layer locked="0" pass="0" enabled="1" class="SimpleFill">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="227,26,28,255"/>
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
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" alpha="1" force_rhr="0" type="fill" name="1">
        <layer locked="0" pass="0" enabled="1" class="SimpleFill">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="251,154,153,255"/>
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
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" alpha="1" force_rhr="0" type="fill" name="2">
        <layer locked="0" pass="0" enabled="1" class="SimpleFill">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="166,206,227,255"/>
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
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" alpha="1" force_rhr="0" type="fill" name="3">
        <layer locked="0" pass="0" enabled="1" class="SimpleFill">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="31,120,180,255"/>
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
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" alpha="1" force_rhr="0" type="fill" name="4">
        <layer locked="0" pass="0" enabled="1" class="SimpleFill">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="128,128,128,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <customproperties>
    <property key="dualview/previewExpressions" value="id"/>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
    <DiagramCategory penColor="#000000" backgroundColor="#ffffff" height="15" penAlpha="255" minScaleDenominator="0" diagramOrientation="Up" rotationOffset="270" labelPlacementMethod="XHeight" width="15" penWidth="0" minimumSize="0" scaleBasedVisibility="0" maxScaleDenominator="1e+08" backgroundAlpha="255" scaleDependency="Area" lineSizeType="MM" enabled="0" sizeType="MM" lineSizeScale="3x:0,0,0,0,0,0" sizeScale="3x:0,0,0,0,0,0" barWidth="5" opacity="1">
      <fontProperties style="" description="MS Shell Dlg 2,7.8,-1,5,50,0,0,0,0,0"/>
      <attribute field="" label="" color="#000000"/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings placement="1" obstacle="0" priority="0" showAll="1" linePlacementFlags="18" dist="0" zIndex="0">
    <properties>
      <Option type="Map">
        <Option type="QString" name="name" value=""/>
        <Option name="properties"/>
        <Option type="QString" name="type" value="collection"/>
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
    <default field="id" expression="" applyOnUpdate="0"/>
    <default field="q" expression="" applyOnUpdate="0"/>
    <default field="a" expression="" applyOnUpdate="0"/>
    <default field="c" expression="" applyOnUpdate="0"/>
    <default field="b" expression="" applyOnUpdate="0"/>
    <default field="d" expression="" applyOnUpdate="0"/>
    <default field="n_a" expression="" applyOnUpdate="0"/>
    <default field="n_b" expression="" applyOnUpdate="0"/>
    <default field="n_c" expression="" applyOnUpdate="0"/>
    <default field="n_d" expression="" applyOnUpdate="0"/>
    <default field="C_ki" expression="" applyOnUpdate="0"/>
    <default field="C_p_norm" expression="" applyOnUpdate="0"/>
    <default field="C_norm_fdr" expression="" applyOnUpdate="0"/>
    <default field="C_z_norm" expression="" applyOnUpdate="0"/>
    <default field="C_z_sim" expression="" applyOnUpdate="0"/>
    <default field="C_p_sim" expression="" applyOnUpdate="0"/>
    <default field="C_sim_fdr" expression="" applyOnUpdate="0"/>
    <default field="class_Cki" expression="" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint field="id" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="q" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="a" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="c" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="b" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="d" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="n_a" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="n_b" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="n_c" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="n_d" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="C_ki" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="C_p_norm" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="C_norm_fdr" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="C_z_norm" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="C_z_sim" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="C_p_sim" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="C_sim_fdr" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="class_Cki" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
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
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig sortExpression="&quot;C_sim_fdr&quot;" actionWidgetStyle="dropDown" sortOrder="0">
    <columns>
      <column hidden="0" width="-1" type="field" name="id"/>
      <column hidden="0" width="-1" type="field" name="q"/>
      <column hidden="0" width="-1" type="field" name="a"/>
      <column hidden="0" width="-1" type="field" name="b"/>
      <column hidden="0" width="-1" type="field" name="c"/>
      <column hidden="0" width="-1" type="field" name="d"/>
      <column hidden="0" width="-1" type="field" name="n_a"/>
      <column hidden="0" width="-1" type="field" name="n_b"/>
      <column hidden="0" width="-1" type="field" name="n_c"/>
      <column hidden="0" width="-1" type="field" name="n_d"/>
      <column hidden="0" width="-1" type="field" name="C_ki"/>
      <column hidden="0" width="-1" type="field" name="class_Cki"/>
      <column hidden="0" width="-1" type="field" name="C_p_norm"/>
      <column hidden="0" width="-1" type="field" name="C_norm_fdr"/>
      <column hidden="0" width="-1" type="field" name="C_z_norm"/>
      <column hidden="0" width="-1" type="field" name="C_p_sim"/>
      <column hidden="0" width="-1" type="field" name="C_sim_fdr"/>
      <column hidden="0" width="-1" type="field" name="C_z_sim"/>
      <column hidden="1" width="-1" type="actions"/>
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
