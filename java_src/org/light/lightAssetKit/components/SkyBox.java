package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
import org.light.lightAssetKit.enums.SkyBoxMaskType;
/* loaded from: classes7.dex */
public class SkyBox extends Component {
    private String bgLut = "";
    private String cubeMap = "";
    private SkyBoxMaskType maskType = SkyBoxMaskType.Background;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof SkyBox) {
            SkyBox skyBox = (SkyBox) componentBase;
            this.bgLut = skyBox.bgLut;
            this.cubeMap = skyBox.cubeMap;
            this.maskType = skyBox.maskType;
        }
        super.doUpdate(componentBase);
    }

    public String getBgLut() {
        return this.bgLut;
    }

    public String getCubeMap() {
        return this.cubeMap;
    }

    public SkyBoxMaskType getMaskType() {
        return this.maskType;
    }

    public void setBgLut(String str) {
        this.bgLut = str;
        reportPropertyChange("bgLut", str);
    }

    public void setCubeMap(String str) {
        this.cubeMap = str;
        reportPropertyChange("cubeMap", str);
    }

    public void setMaskType(SkyBoxMaskType skyBoxMaskType) {
        this.maskType = skyBoxMaskType;
        reportPropertyChange("maskType", skyBoxMaskType);
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "SkyBox";
    }
}
