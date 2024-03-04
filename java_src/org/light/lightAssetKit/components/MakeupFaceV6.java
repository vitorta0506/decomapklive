package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class MakeupFaceV6 extends MakeupComponent {
    private boolean faceExchangeImageDisableFaceCrop = false;
    private boolean faceExchangeImageEnableOpacity = true;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.MakeupComponent, org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof MakeupFaceV6) {
            MakeupFaceV6 makeupFaceV6 = (MakeupFaceV6) componentBase;
            this.faceExchangeImageDisableFaceCrop = makeupFaceV6.faceExchangeImageDisableFaceCrop;
            this.faceExchangeImageEnableOpacity = makeupFaceV6.faceExchangeImageEnableOpacity;
        }
        super.doUpdate(componentBase);
    }

    public boolean getFaceExchangeImageDisableFaceCrop() {
        return this.faceExchangeImageDisableFaceCrop;
    }

    public boolean getFaceExchangeImageEnableOpacity() {
        return this.faceExchangeImageEnableOpacity;
    }

    public void setFaceExchangeImageDisableFaceCrop(boolean z10) {
        this.faceExchangeImageDisableFaceCrop = z10;
        reportPropertyChange("faceExchangeImageDisableFaceCrop", Boolean.valueOf(z10));
    }

    public void setFaceExchangeImageEnableOpacity(boolean z10) {
        this.faceExchangeImageEnableOpacity = z10;
        reportPropertyChange("faceExchangeImageEnableOpacity", Boolean.valueOf(z10));
    }

    @Override // org.light.lightAssetKit.components.MakeupComponent, org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "MakeupFaceV6";
    }
}
