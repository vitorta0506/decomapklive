package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
import org.light.lightAssetKit.enums.ControllerType;
/* loaded from: classes7.dex */
public class AssetInfo extends Component {
    private ControllerType controllerType;
    private int randomSeed;
    private int duration = 0;
    private String rootPath = "";
    private boolean inited = false;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof AssetInfo) {
            AssetInfo assetInfo = (AssetInfo) componentBase;
            this.randomSeed = assetInfo.randomSeed;
            this.duration = assetInfo.duration;
            this.rootPath = assetInfo.rootPath;
            this.inited = assetInfo.inited;
            this.controllerType = assetInfo.controllerType;
        }
        super.doUpdate(componentBase);
    }

    public ControllerType getControllerType() {
        return this.controllerType;
    }

    public int getDuration() {
        return this.duration;
    }

    public boolean getInited() {
        return this.inited;
    }

    public int getRandomSeed() {
        return this.randomSeed;
    }

    public String getRootPath() {
        return this.rootPath;
    }

    public void setControllerType(ControllerType controllerType) {
        this.controllerType = controllerType;
        reportPropertyChange("controllerType", controllerType);
    }

    public void setDuration(int i9) {
        this.duration = i9;
        reportPropertyChange("duration", Integer.valueOf(i9));
    }

    public void setInited(boolean z10) {
        this.inited = z10;
        reportPropertyChange("inited", Boolean.valueOf(z10));
    }

    public void setRandomSeed(int i9) {
        this.randomSeed = i9;
        reportPropertyChange("randomSeed", Integer.valueOf(i9));
    }

    public void setRootPath(String str) {
        this.rootPath = str;
        reportPropertyChange("rootPath", str);
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "AssetInfo";
    }
}
