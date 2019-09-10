<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis minScale="1e+08" maxScale="0" simplifyDrawingHints="1" simplifyAlgorithm="0" labelsEnabled="0" version="3.4.5-Madeira" simplifyLocal="1" simplifyDrawingTol="1" readOnly="0" styleCategories="AllStyleCategories" hasScaleBasedVisibilityFlag="0" simplifyMaxScale="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 enableorderby="0" forceraster="0" type="RuleRenderer" symbollevels="0">
    <rules key="{401b84cf-8e1f-452f-a682-d88ebd9b63cf}">
      <rule label="hh cluster" symbol="0" key="{7b6b135a-97dd-4d64-bc11-2bb4e8ff8a42}" filter=" &quot;class_Cki&quot;  = 'hh'  and  &quot;C_sim_fdr&quot;  &lt; 0.0001"/>
      <rule label="hl outlier" symbol="1" key="{61c08c79-7dec-48b2-aa30-aa961d4e1183}" filter=" &quot;class_Cki&quot;  =  'hl' and  &quot;C_sim_fdr&quot;  &lt; 0.0001"/>
      <rule label="lh outlier" symbol="2" key="{602bf413-db97-4186-b312-c45ba53aeb7f}" filter=" &quot;class_Cki&quot;  =  'lh' and  &quot;C_sim_fdr&quot;  &lt; 0.0001"/>
      <rule label="ll cluster" symbol="3" key="{c8280dca-18c8-4383-b1bf-9b7cd62aa6e9}" filter=" &quot;class_Cki&quot;  =  'll' and  &quot;C_sim_fdr&quot;  &lt; 0.0001"/>
    </rules>
    <symbols>
      <symbol name="0" force_rhr="0" clip_to_extent="1" type="fill" alpha="1">
        <layer locked="0" enabled="1" pass="0" class="SimpleFill">
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
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="1" force_rhr="0" clip_to_extent="1" type="fill" alpha="1">
        <layer locked="0" enabled="1" pass="0" class="SimpleFill">
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
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="2" force_rhr="0" clip_to_extent="1" type="fill" alpha="1">
        <layer locked="0" enabled="1" pass="0" class="SimpleFill">
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
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="3" force_rhr="0" clip_to_extent="1" type="fill" alpha="1">
        <layer locked="0" enabled="1" pass="0" class="SimpleFill">
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
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
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
  <SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
    <DiagramCategory opacity="1" backgroundColor="#ffffff" maxScaleDenominator="1e+08" sizeScale="3x:0,0,0,0,0,0" diagramOrientation="Up" barWidth="5" scaleBasedVisibility="0" minScaleDenominator="0" labelPlacementMethod="XHeight" rotationOffset="270" sizeType="MM" lineSizeScale="3x:0,0,0,0,0,0" scaleDependency="Area" penAlpha="255" penColor="#000000" height="15" minimumSize="0" penWidth="0" backgroundAlpha="255" width="15" lineSizeType="MM" enabled="0">
      <fontProperties description=".SF NS Text,13,-1,5,50,0,0,0,0,0" style=""/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings priority="0" zIndex="0" showAll="1" placement="1" obstacle="0" dist="0" linePlacementFlags="18">
    <properties>
      <Option type="Map">
        <Option name="name" value="" type="QString"/>
        <Option name="properties"/>
        <Option name="type" value="collection" type="QString"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
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
    <field name="b">
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
    <field name="C_z_sim">
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
    <alias index="0" name="" field="id"/>
    <alias index="1" name="" field="q"/>
    <alias index="2" name="" field="a"/>
    <alias index="3" name="" field="b"/>
    <alias index="4" name="" field="c"/>
    <alias index="5" name="" field="d"/>
    <alias index="6" name="" field="n_a"/>
    <alias index="7" name="" field="n_b"/>
    <alias index="8" name="" field="n_c"/>
    <alias index="9" name="" field="n_d"/>
    <alias index="10" name="" field="C_ki"/>
    <alias index="11" name="" field="C_p_norm"/>
    <alias index="12" name="" field="C_norm_fdr"/>
    <alias index="13" name="" field="C_z_norm"/>
    <alias index="14" name="" field="C_p_sim"/>
    <alias index="15" name="" field="C_sim_fdr"/>
    <alias index="16" name="" field="C_z_sim"/>
    <alias index="17" name="" field="class_Cki"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default applyOnUpdate="0" field="id" expression=""/>
    <default applyOnUpdate="0" field="q" expression=""/>
    <default applyOnUpdate="0" field="a" expression=""/>
    <default applyOnUpdate="0" field="b" expression=""/>
    <default applyOnUpdate="0" field="c" expression=""/>
    <default applyOnUpdate="0" field="d" expression=""/>
    <default applyOnUpdate="0" field="n_a" expression=""/>
    <default applyOnUpdate="0" field="n_b" expression=""/>
    <default applyOnUpdate="0" field="n_c" expression=""/>
    <default applyOnUpdate="0" field="n_d" expression=""/>
    <default applyOnUpdate="0" field="C_ki" expression=""/>
    <default applyOnUpdate="0" field="C_p_norm" expression=""/>
    <default applyOnUpdate="0" field="C_norm_fdr" expression=""/>
    <default applyOnUpdate="0" field="C_z_norm" expression=""/>
    <default applyOnUpdate="0" field="C_p_sim" expression=""/>
    <default applyOnUpdate="0" field="C_sim_fdr" expression=""/>
    <default applyOnUpdate="0" field="C_z_sim" expression=""/>
    <default applyOnUpdate="0" field="class_Cki" expression=""/>
  </defaults>
  <constraints>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="id" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="q" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="a" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="b" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="c" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="d" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="n_a" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="n_b" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="n_c" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="n_d" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="C_ki" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="C_p_norm" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="C_norm_fdr" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="C_z_norm" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="C_p_sim" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="C_sim_fdr" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="C_z_sim" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="class_Cki" constraints="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" field="id" desc=""/>
    <constraint exp="" field="q" desc=""/>
    <constraint exp="" field="a" desc=""/>
    <constraint exp="" field="b" desc=""/>
    <constraint exp="" field="c" desc=""/>
    <constraint exp="" field="d" desc=""/>
    <constraint exp="" field="n_a" desc=""/>
    <constraint exp="" field="n_b" desc=""/>
    <constraint exp="" field="n_c" desc=""/>
    <constraint exp="" field="n_d" desc=""/>
    <constraint exp="" field="C_ki" desc=""/>
    <constraint exp="" field="C_p_norm" desc=""/>
    <constraint exp="" field="C_norm_fdr" desc=""/>
    <constraint exp="" field="C_z_norm" desc=""/>
    <constraint exp="" field="C_p_sim" desc=""/>
    <constraint exp="" field="C_sim_fdr" desc=""/>
    <constraint exp="" field="C_z_sim" desc=""/>
    <constraint exp="" field="class_Cki" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortExpression="&quot;C_sim_fdr&quot;" actionWidgetStyle="dropDown" sortOrder="0">
    <columns>
      <column name="id" width="-1" type="field" hidden="0"/>
      <column name="q" width="-1" type="field" hidden="0"/>
      <column name="a" width="-1" type="field" hidden="0"/>
      <column name="b" width="-1" type="field" hidden="0"/>
      <column name="c" width="-1" type="field" hidden="0"/>
      <column name="d" width="-1" type="field" hidden="0"/>
      <column name="n_a" width="-1" type="field" hidden="0"/>
      <column name="n_b" width="-1" type="field" hidden="0"/>
      <column name="n_c" width="-1" type="field" hidden="0"/>
      <column name="n_d" width="-1" type="field" hidden="0"/>
      <column name="C_ki" width="-1" type="field" hidden="0"/>
      <column name="class_Cki" width="-1" type="field" hidden="0"/>
      <column name="C_p_norm" width="-1" type="field" hidden="0"/>
      <column name="C_norm_fdr" width="-1" type="field" hidden="0"/>
      <column name="C_z_norm" width="-1" type="field" hidden="0"/>
      <column name="C_p_sim" width="-1" type="field" hidden="0"/>
      <column name="C_sim_fdr" width="-1" type="field" hidden="0"/>
      <column name="C_z_sim" width="-1" type="field" hidden="0"/>
      <column width="-1" type="actions" hidden="1"/>
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
    <field name="C_ki" editable="1"/>
    <field name="C_norm_fdr" editable="1"/>
    <field name="C_p_norm" editable="1"/>
    <field name="C_p_sim" editable="1"/>
    <field name="C_sim_fdr" editable="1"/>
    <field name="C_z_norm" editable="1"/>
    <field name="C_z_sim" editable="1"/>
    <field name="D_z_norm" editable="1"/>
    <field name="Di" editable="1"/>
    <field name="Di_norm_fd" editable="1"/>
    <field name="Di_p_norm" editable="1"/>
    <field name="Di_p_sim" editable="1"/>
    <field name="Di_sim_fdr" editable="1"/>
    <field name="Di_z_sim" editable="1"/>
    <field name="a" editable="1"/>
    <field name="b" editable="1"/>
    <field name="c" editable="1"/>
    <field name="class_Cki" editable="1"/>
    <field name="class_Di" editable="1"/>
    <field name="d" editable="1"/>
    <field name="id" editable="1"/>
    <field name="n_a" editable="1"/>
    <field name="n_b" editable="1"/>
    <field name="n_c" editable="1"/>
    <field name="n_d" editable="1"/>
    <field name="q" editable="1"/>
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
