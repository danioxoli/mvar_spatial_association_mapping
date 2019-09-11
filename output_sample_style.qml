<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.4.9-Madeira" maxScale="0" simplifyDrawingTol="1" simplifyDrawingHints="1" minScale="1e+08" simplifyMaxScale="1" simplifyAlgorithm="0" readOnly="0" styleCategories="AllStyleCategories" hasScaleBasedVisibilityFlag="0" labelsEnabled="0" simplifyLocal="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 symbollevels="0" enableorderby="0" forceraster="0" type="RuleRenderer">
    <rules key="{401b84cf-8e1f-452f-a682-d88ebd9b63cf}">
      <rule key="{7b6b135a-97dd-4d64-bc11-2bb4e8ff8a42}" label="High values cluster" filter=" &quot;class_Cki&quot;  = 'hh'  and  &quot;C_sim_fdr&quot;  &lt; 0.0001" symbol="0"/>
      <rule key="{61c08c79-7dec-48b2-aa30-aa961d4e1183}" label="High-low outlier" filter=" &quot;class_Cki&quot;  =  'hl' and  &quot;C_sim_fdr&quot;  &lt; 0.0001" symbol="1"/>
      <rule key="{602bf413-db97-4186-b312-c45ba53aeb7f}" label="Low-high outlier" filter=" &quot;class_Cki&quot;  =  'lh' and  &quot;C_sim_fdr&quot;  &lt; 0.0001" symbol="2"/>
      <rule key="{c8280dca-18c8-4383-b1bf-9b7cd62aa6e9}" label="Low values cluster" filter=" &quot;class_Cki&quot;  =  'll' and  &quot;C_sim_fdr&quot;  &lt; 0.0001" symbol="3"/>
      <rule key="{548fd712-4c3c-46c7-b64c-18b3005e479b}" label="Not significant 99.99% (CSR)" filter="&quot;C_sim_fdr&quot;  >= 0.0001" symbol="4"/>
    </rules>
    <symbols>
      <symbol alpha="1" type="fill" name="0" clip_to_extent="1" force_rhr="0">
        <layer enabled="1" locked="0" class="SimpleFill" pass="0">
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
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" type="fill" name="1" clip_to_extent="1" force_rhr="0">
        <layer enabled="1" locked="0" class="SimpleFill" pass="0">
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
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" type="fill" name="2" clip_to_extent="1" force_rhr="0">
        <layer enabled="1" locked="0" class="SimpleFill" pass="0">
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
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" type="fill" name="3" clip_to_extent="1" force_rhr="0">
        <layer enabled="1" locked="0" class="SimpleFill" pass="0">
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
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" type="fill" name="4" clip_to_extent="1" force_rhr="0">
        <layer enabled="1" locked="0" class="SimpleFill" pass="0">
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
    <property key="dualview/previewExpressions" value="id"/>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
    <DiagramCategory diagramOrientation="Up" penWidth="0" penColor="#000000" maxScaleDenominator="1e+08" sizeType="MM" height="15" scaleBasedVisibility="0" lineSizeType="MM" width="15" lineSizeScale="3x:0,0,0,0,0,0" rotationOffset="270" minimumSize="0" enabled="0" minScaleDenominator="0" opacity="1" backgroundColor="#ffffff" barWidth="5" backgroundAlpha="255" scaleDependency="Area" penAlpha="255" labelPlacementMethod="XHeight" sizeScale="3x:0,0,0,0,0,0">
      <fontProperties style="" description="MS Shell Dlg 2,7.8,-1,5,50,0,0,0,0,0"/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings linePlacementFlags="18" placement="1" obstacle="0" dist="0" priority="0" zIndex="0" showAll="1">
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
    <default expression="" applyOnUpdate="0" field="id"/>
    <default expression="" applyOnUpdate="0" field="q"/>
    <default expression="" applyOnUpdate="0" field="a"/>
    <default expression="" applyOnUpdate="0" field="c"/>
    <default expression="" applyOnUpdate="0" field="b"/>
    <default expression="" applyOnUpdate="0" field="d"/>
    <default expression="" applyOnUpdate="0" field="n_a"/>
    <default expression="" applyOnUpdate="0" field="n_b"/>
    <default expression="" applyOnUpdate="0" field="n_c"/>
    <default expression="" applyOnUpdate="0" field="n_d"/>
    <default expression="" applyOnUpdate="0" field="C_ki"/>
    <default expression="" applyOnUpdate="0" field="C_p_norm"/>
    <default expression="" applyOnUpdate="0" field="C_norm_fdr"/>
    <default expression="" applyOnUpdate="0" field="C_z_norm"/>
    <default expression="" applyOnUpdate="0" field="C_z_sim"/>
    <default expression="" applyOnUpdate="0" field="C_p_sim"/>
    <default expression="" applyOnUpdate="0" field="C_sim_fdr"/>
    <default expression="" applyOnUpdate="0" field="class_Cki"/>
  </defaults>
  <constraints>
    <constraint unique_strength="0" constraints="0" field="id" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="q" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="a" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="c" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="b" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="d" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="n_a" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="n_b" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="n_c" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="n_d" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="C_ki" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="C_p_norm" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="C_norm_fdr" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="C_z_norm" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="C_z_sim" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="C_p_sim" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="C_sim_fdr" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" constraints="0" field="class_Cki" notnull_strength="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="id" desc="" exp=""/>
    <constraint field="q" desc="" exp=""/>
    <constraint field="a" desc="" exp=""/>
    <constraint field="c" desc="" exp=""/>
    <constraint field="b" desc="" exp=""/>
    <constraint field="d" desc="" exp=""/>
    <constraint field="n_a" desc="" exp=""/>
    <constraint field="n_b" desc="" exp=""/>
    <constraint field="n_c" desc="" exp=""/>
    <constraint field="n_d" desc="" exp=""/>
    <constraint field="C_ki" desc="" exp=""/>
    <constraint field="C_p_norm" desc="" exp=""/>
    <constraint field="C_norm_fdr" desc="" exp=""/>
    <constraint field="C_z_norm" desc="" exp=""/>
    <constraint field="C_z_sim" desc="" exp=""/>
    <constraint field="C_p_sim" desc="" exp=""/>
    <constraint field="C_sim_fdr" desc="" exp=""/>
    <constraint field="class_Cki" desc="" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortOrder="0" sortExpression="&quot;C_sim_fdr&quot;">
    <columns>
      <column type="field" width="-1" name="id" hidden="0"/>
      <column type="field" width="-1" name="q" hidden="0"/>
      <column type="field" width="-1" name="a" hidden="0"/>
      <column type="field" width="-1" name="b" hidden="0"/>
      <column type="field" width="-1" name="c" hidden="0"/>
      <column type="field" width="-1" name="d" hidden="0"/>
      <column type="field" width="-1" name="n_a" hidden="0"/>
      <column type="field" width="-1" name="n_b" hidden="0"/>
      <column type="field" width="-1" name="n_c" hidden="0"/>
      <column type="field" width="-1" name="n_d" hidden="0"/>
      <column type="field" width="-1" name="C_ki" hidden="0"/>
      <column type="field" width="-1" name="class_Cki" hidden="0"/>
      <column type="field" width="-1" name="C_p_norm" hidden="0"/>
      <column type="field" width="-1" name="C_norm_fdr" hidden="0"/>
      <column type="field" width="-1" name="C_z_norm" hidden="0"/>
      <column type="field" width="-1" name="C_p_sim" hidden="0"/>
      <column type="field" width="-1" name="C_sim_fdr" hidden="0"/>
      <column type="field" width="-1" name="C_z_sim" hidden="0"/>
      <column type="actions" width="-1" hidden="1"/>
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
