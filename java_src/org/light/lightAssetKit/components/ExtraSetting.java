package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class ExtraSetting extends Component {
    private int defaultCameraPosition;
    private boolean enableDowngradeAsset;
    private boolean enableRotation;
    private boolean needAutoBeauty;
    private boolean needVoiceDecibel;
    private boolean resetWhenStartRecord;
    private int supportCameraPosition;
    private boolean sync3dRenderEnable;
    private boolean useMetal;

    public ExtraSetting() {
        this.enableRotation = true;
        this.resetWhenStartRecord = true;
        this.useMetal = false;
        this.supportCameraPosition = 0;
        this.sync3dRenderEnable = false;
        this.defaultCameraPosition = 0;
        this.needVoiceDecibel = false;
        this.needAutoBeauty = false;
        this.enableDowngradeAsset = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof ExtraSetting) {
            ExtraSetting extraSetting = (ExtraSetting) componentBase;
            this.enableRotation = extraSetting.enableRotation;
            this.resetWhenStartRecord = extraSetting.resetWhenStartRecord;
            this.useMetal = extraSetting.useMetal;
            this.supportCameraPosition = extraSetting.supportCameraPosition;
            this.sync3dRenderEnable = extraSetting.sync3dRenderEnable;
            this.defaultCameraPosition = extraSetting.defaultCameraPosition;
            this.needVoiceDecibel = extraSetting.needVoiceDecibel;
            this.needAutoBeauty = extraSetting.needAutoBeauty;
            this.enableDowngradeAsset = extraSetting.enableDowngradeAsset;
        }
        super.doUpdate(componentBase);
    }

    public int getDefaultCameraPosition() {
        return this.defaultCameraPosition;
    }

    public boolean getEnableDowngradeAsset() {
        return this.enableDowngradeAsset;
    }

    public boolean getEnableRotation() {
        return this.enableRotation;
    }

    public boolean getNeedAutoBeauty() {
        return this.needAutoBeauty;
    }

    public boolean getNeedVoiceDecibel() {
        return this.needVoiceDecibel;
    }

    public boolean getResetWhenStartRecord() {
        return this.resetWhenStartRecord;
    }

    public int getSupportCameraPosition() {
        return this.supportCameraPosition;
    }

    public boolean getSync3dRenderEnable() {
        return this.sync3dRenderEnable;
    }

    public boolean getUseMetal() {
        return this.useMetal;
    }

    public void setDefaultCameraPosition(int i9) {
        this.defaultCameraPosition = i9;
        reportPropertyChange("defaultCameraPosition", Integer.valueOf(i9));
    }

    public void setEnableDowngradeAsset(boolean z10) {
        this.enableDowngradeAsset = z10;
        reportPropertyChange("enableDowngradeAsset", Boolean.valueOf(z10));
    }

    public void setEnableRotation(boolean z10) {
        this.enableRotation = z10;
        reportPropertyChange("enableRotation", Boolean.valueOf(z10));
    }

    public void setNeedAutoBeauty(boolean z10) {
        this.needAutoBeauty = z10;
        reportPropertyChange("needAutoBeauty", Boolean.valueOf(z10));
    }

    public void setNeedVoiceDecibel(boolean z10) {
        this.needVoiceDecibel = z10;
        reportPropertyChange("needVoiceDecibel", Boolean.valueOf(z10));
    }

    public void setResetWhenStartRecord(boolean z10) {
        this.resetWhenStartRecord = z10;
        reportPropertyChange("resetWhenStartRecord", Boolean.valueOf(z10));
    }

    public void setSupportCameraPosition(int i9) {
        this.supportCameraPosition = i9;
        reportPropertyChange("supportCameraPosition", Integer.valueOf(i9));
    }

    public void setSync3dRenderEnable(boolean z10) {
        this.sync3dRenderEnable = z10;
        reportPropertyChange("sync3dRenderEnable", Boolean.valueOf(z10));
    }

    public void setUseMetal(boolean z10) {
        this.useMetal = z10;
        reportPropertyChange("useMetal", Boolean.valueOf(z10));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "ExtraSetting";
    }

    public ExtraSetting(boolean z10, boolean z11, boolean z12, int i9, int i10, boolean z13, boolean z14, boolean z15, boolean z16) {
        this.enableRotation = z10;
        this.resetWhenStartRecord = z11;
        this.sync3dRenderEnable = z12;
        this.defaultCameraPosition = i9;
        this.supportCameraPosition = i10;
        this.needVoiceDecibel = z13;
        this.needAutoBeauty = z14;
        this.enableDowngradeAsset = z15;
        this.useMetal = z16;
    }
}
