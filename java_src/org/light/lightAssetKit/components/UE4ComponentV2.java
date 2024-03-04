package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
import org.light.lightAssetKit.enums.AnimojiMode;
import org.light.lightAssetKit.enums.BodyMode;
/* loaded from: classes7.dex */
public class UE4ComponentV2 extends Component {
    private String pakPath = "";
    private String openMapName = "";
    private boolean checkVersion = false;
    private float horizontalFOV = 10.0f;
    private int delayRenderFrames = 0;
    private boolean isAbilitySlamARNeeded = false;
    private boolean isAbilityFaceTrackNeeded = false;
    private boolean isAbilityExpressionNeeded = false;
    private boolean isAbilityBodyDriveNeeded = false;
    private boolean isAbilityHandDriveNeeded = false;
    private AnimojiMode animojiType = AnimojiMode.kBlendShape;
    private BodyMode bodyDriveMode = BodyMode.kFullBody;
    private int loginTimeOut = 10;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof UE4ComponentV2) {
            UE4ComponentV2 uE4ComponentV2 = (UE4ComponentV2) componentBase;
            this.pakPath = uE4ComponentV2.pakPath;
            this.openMapName = uE4ComponentV2.openMapName;
            this.checkVersion = uE4ComponentV2.checkVersion;
            this.horizontalFOV = uE4ComponentV2.horizontalFOV;
            this.delayRenderFrames = uE4ComponentV2.delayRenderFrames;
            this.isAbilitySlamARNeeded = uE4ComponentV2.isAbilitySlamARNeeded;
            this.isAbilityFaceTrackNeeded = uE4ComponentV2.isAbilityFaceTrackNeeded;
            this.isAbilityExpressionNeeded = uE4ComponentV2.isAbilityExpressionNeeded;
            this.isAbilityBodyDriveNeeded = uE4ComponentV2.isAbilityBodyDriveNeeded;
            this.isAbilityHandDriveNeeded = uE4ComponentV2.isAbilityHandDriveNeeded;
            this.animojiType = uE4ComponentV2.animojiType;
            this.bodyDriveMode = uE4ComponentV2.bodyDriveMode;
            this.loginTimeOut = uE4ComponentV2.loginTimeOut;
        }
        super.doUpdate(componentBase);
    }

    public AnimojiMode getAnimojiType() {
        return this.animojiType;
    }

    public BodyMode getBodyDriveMode() {
        return this.bodyDriveMode;
    }

    public boolean getCheckVersion() {
        return this.checkVersion;
    }

    public int getDelayRenderFrames() {
        return this.delayRenderFrames;
    }

    public float getHorizontalFOV() {
        return this.horizontalFOV;
    }

    public boolean getIsAbilityBodyDriveNeeded() {
        return this.isAbilityBodyDriveNeeded;
    }

    public boolean getIsAbilityExpressionNeeded() {
        return this.isAbilityExpressionNeeded;
    }

    public boolean getIsAbilityFaceTrackNeeded() {
        return this.isAbilityFaceTrackNeeded;
    }

    public boolean getIsAbilityHandDriveNeeded() {
        return this.isAbilityHandDriveNeeded;
    }

    public boolean getIsAbilitySlamARNeeded() {
        return this.isAbilitySlamARNeeded;
    }

    public int getLoginTimeOut() {
        return this.loginTimeOut;
    }

    public String getOpenMapName() {
        return this.openMapName;
    }

    public String getPakPath() {
        return this.pakPath;
    }

    public void setAnimojiType(AnimojiMode animojiMode) {
        this.animojiType = animojiMode;
        reportPropertyChange("animojiType", animojiMode);
    }

    public void setBodyDriveMode(BodyMode bodyMode) {
        this.bodyDriveMode = bodyMode;
        reportPropertyChange("bodyDriveMode", bodyMode);
    }

    public void setCheckVersion(boolean z10) {
        this.checkVersion = z10;
        reportPropertyChange("checkVersion", Boolean.valueOf(z10));
    }

    public void setDelayRenderFrames(int i9) {
        this.delayRenderFrames = i9;
        reportPropertyChange("delayRenderFrames", Integer.valueOf(i9));
    }

    public void setHorizontalFOV(float f10) {
        this.horizontalFOV = f10;
        reportPropertyChange("horizontalFOV", Float.valueOf(f10));
    }

    public void setIsAbilityBodyDriveNeeded(boolean z10) {
        this.isAbilityBodyDriveNeeded = z10;
        reportPropertyChange("isAbilityBodyDriveNeeded", Boolean.valueOf(z10));
    }

    public void setIsAbilityExpressionNeeded(boolean z10) {
        this.isAbilityExpressionNeeded = z10;
        reportPropertyChange("isAbilityExpressionNeeded", Boolean.valueOf(z10));
    }

    public void setIsAbilityFaceTrackNeeded(boolean z10) {
        this.isAbilityFaceTrackNeeded = z10;
        reportPropertyChange("isAbilityFaceTrackNeeded", Boolean.valueOf(z10));
    }

    public void setIsAbilityHandDriveNeeded(boolean z10) {
        this.isAbilityHandDriveNeeded = z10;
        reportPropertyChange("isAbilityHandDriveNeeded", Boolean.valueOf(z10));
    }

    public void setIsAbilitySlamARNeeded(boolean z10) {
        this.isAbilitySlamARNeeded = z10;
        reportPropertyChange("isAbilitySlamARNeeded", Boolean.valueOf(z10));
    }

    public void setLoginTimeOut(int i9) {
        this.loginTimeOut = i9;
        reportPropertyChange("loginTimeOut", Integer.valueOf(i9));
    }

    public void setOpenMapName(String str) {
        this.openMapName = str;
        reportPropertyChange("openMapName", str);
    }

    public void setPakPath(String str) {
        this.pakPath = str;
        reportPropertyChange("pakPath", str);
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "UE4ComponentV2";
    }
}
