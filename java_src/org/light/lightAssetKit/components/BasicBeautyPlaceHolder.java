package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class BasicBeautyPlaceHolder extends Component {
    private int smoothStatus = 0;
    private int beautyStatus = 0;
    private int makeupStatus = 0;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof BasicBeautyPlaceHolder) {
            BasicBeautyPlaceHolder basicBeautyPlaceHolder = (BasicBeautyPlaceHolder) componentBase;
            this.smoothStatus = basicBeautyPlaceHolder.smoothStatus;
            this.beautyStatus = basicBeautyPlaceHolder.beautyStatus;
            this.makeupStatus = basicBeautyPlaceHolder.makeupStatus;
        }
        super.doUpdate(componentBase);
    }

    public int getBeautyStatus() {
        return this.beautyStatus;
    }

    public int getMakeupStatus() {
        return this.makeupStatus;
    }

    public int getSmoothStatus() {
        return this.smoothStatus;
    }

    public void setBeautyStatus(int i9) {
        this.beautyStatus = i9;
        reportPropertyChange("beautyStatus", Integer.valueOf(i9));
    }

    public void setMakeupStatus(int i9) {
        this.makeupStatus = i9;
        reportPropertyChange("makeupStatus", Integer.valueOf(i9));
    }

    public void setSmoothStatus(int i9) {
        this.smoothStatus = i9;
        reportPropertyChange("smoothStatus", Integer.valueOf(i9));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "BasicBeautyPlaceHolder";
    }
}
