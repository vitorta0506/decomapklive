package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
import org.light.lightAssetKit.enums.GlobalSubAssetSizeType;
/* loaded from: classes7.dex */
public class GlobalSubAssetComponent extends Component {
    private GlobalSubAssetSizeType globalSubAssetSizeType;
    private int height;
    private int width;

    public GlobalSubAssetComponent() {
        this.width = 0;
        this.height = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof GlobalSubAssetComponent) {
            GlobalSubAssetComponent globalSubAssetComponent = (GlobalSubAssetComponent) componentBase;
            this.globalSubAssetSizeType = globalSubAssetComponent.globalSubAssetSizeType;
            this.width = globalSubAssetComponent.width;
            this.height = globalSubAssetComponent.height;
        }
        super.doUpdate(componentBase);
    }

    public GlobalSubAssetSizeType getGlobalSubAssetSizeType() {
        return this.globalSubAssetSizeType;
    }

    public int getHeight() {
        return this.height;
    }

    public int getWidth() {
        return this.width;
    }

    public void setGlobalSubAssetSizeType(GlobalSubAssetSizeType globalSubAssetSizeType) {
        this.globalSubAssetSizeType = globalSubAssetSizeType;
        reportPropertyChange("globalSubAssetSizeType", globalSubAssetSizeType);
    }

    public void setHeight(int i9) {
        this.height = i9;
        reportPropertyChange("height", Integer.valueOf(i9));
    }

    public void setWidth(int i9) {
        this.width = i9;
        reportPropertyChange("width", Integer.valueOf(i9));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "GlobalSubAssetComponent";
    }

    public GlobalSubAssetComponent(GlobalSubAssetSizeType globalSubAssetSizeType, int i9, int i10) {
        this.globalSubAssetSizeType = globalSubAssetSizeType;
        this.width = i9;
        this.height = i10;
    }
}
