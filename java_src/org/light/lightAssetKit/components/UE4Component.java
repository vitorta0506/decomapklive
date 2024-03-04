package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
import org.light.lightAssetKit.enums.AnimojiType;
import org.light.lightAssetKit.enums.HeadRotationType;
import org.light.lightAssetKit.enums.WorkMode;
/* loaded from: classes7.dex */
public class UE4Component extends Component {
    private float horizontalFOV = 10.0f;
    private WorkMode workMode = WorkMode.kZPlan;
    private boolean visiableWithoutFace = false;
    private AnimojiType animojiType = AnimojiType.kAnimojiTypeBlendShape;
    private HeadRotationType headRotationType = HeadRotationType.kHeadRotationType3DMM;
    private int delayRenderFrames = 0;
    private boolean forceRender = false;
    private int loginTimeOut = 10;
    private String configPath = "";
    private String pakPath = "";
    private String exitPakPath = "";
    private boolean isAbilitySlamARNeeded = false;
    private boolean isAbilityFaceTrackNeeded = false;
    private boolean isAbilityExpressionNeeded = false;
    private boolean isAbilityBodyDriveNeeded = false;
    private String halfBodyMode = "FullBodyMode";
    private boolean enableHandMode = false;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof UE4Component) {
            UE4Component uE4Component = (UE4Component) componentBase;
            this.horizontalFOV = uE4Component.horizontalFOV;
            this.workMode = uE4Component.workMode;
            this.visiableWithoutFace = uE4Component.visiableWithoutFace;
            this.animojiType = uE4Component.animojiType;
            this.headRotationType = uE4Component.headRotationType;
            this.delayRenderFrames = uE4Component.delayRenderFrames;
            this.forceRender = uE4Component.forceRender;
            this.loginTimeOut = uE4Component.loginTimeOut;
            this.configPath = uE4Component.configPath;
            this.pakPath = uE4Component.pakPath;
            this.exitPakPath = uE4Component.exitPakPath;
            this.isAbilitySlamARNeeded = uE4Component.isAbilitySlamARNeeded;
            this.isAbilityFaceTrackNeeded = uE4Component.isAbilityFaceTrackNeeded;
            this.isAbilityExpressionNeeded = uE4Component.isAbilityExpressionNeeded;
            this.isAbilityBodyDriveNeeded = uE4Component.isAbilityBodyDriveNeeded;
            this.halfBodyMode = uE4Component.halfBodyMode;
            this.enableHandMode = uE4Component.enableHandMode;
        }
        super.doUpdate(componentBase);
    }

    public AnimojiType getAnimojiType() {
        return this.animojiType;
    }

    public String getConfigPath() {
        return this.configPath;
    }

    public int getDelayRenderFrames() {
        return this.delayRenderFrames;
    }

    public boolean getEnableHandMode() {
        return this.enableHandMode;
    }

    public String getExitPakPath() {
        return this.exitPakPath;
    }

    public boolean getForceRender() {
        return this.forceRender;
    }

    public String getHalfBodyMode() {
        return this.halfBodyMode;
    }

    public HeadRotationType getHeadRotationType() {
        return this.headRotationType;
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

    public boolean getIsAbilitySlamARNeeded() {
        return this.isAbilitySlamARNeeded;
    }

    public int getLoginTimeOut() {
        return this.loginTimeOut;
    }

    public String getPakPath() {
        return this.pakPath;
    }

    public boolean getVisiableWithoutFace() {
        return this.visiableWithoutFace;
    }

    public WorkMode getWorkMode() {
        return this.workMode;
    }

    public void setAnimojiType(AnimojiType animojiType) {
        this.animojiType = animojiType;
        reportPropertyChange("animojiType", animojiType);
    }

    public void setConfigPath(String str) {
        this.configPath = str;
        reportPropertyChange("configPath", str);
    }

    public void setDelayRenderFrames(int i9) {
        this.delayRenderFrames = i9;
        reportPropertyChange("delayRenderFrames", Integer.valueOf(i9));
    }

    public void setEnableHandMode(boolean z10) {
        this.enableHandMode = z10;
        reportPropertyChange("enableHandMode", Boolean.valueOf(z10));
    }

    public void setExitPakPath(String str) {
        this.exitPakPath = str;
        reportPropertyChange("exitPakPath", str);
    }

    public void setForceRender(boolean z10) {
        this.forceRender = z10;
        reportPropertyChange("forceRender", Boolean.valueOf(z10));
    }

    public void setHalfBodyMode(String str) {
        this.halfBodyMode = str;
        reportPropertyChange("halfBodyMode", str);
    }

    public void setHeadRotationType(HeadRotationType headRotationType) {
        this.headRotationType = headRotationType;
        reportPropertyChange("headRotationType", headRotationType);
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

    public void setIsAbilitySlamARNeeded(boolean z10) {
        this.isAbilitySlamARNeeded = z10;
        reportPropertyChange("isAbilitySlamARNeeded", Boolean.valueOf(z10));
    }

    public void setLoginTimeOut(int i9) {
        this.loginTimeOut = i9;
        reportPropertyChange("loginTimeOut", Integer.valueOf(i9));
    }

    public void setPakPath(String str) {
        this.pakPath = str;
        reportPropertyChange("pakPath", str);
    }

    public void setVisiableWithoutFace(boolean z10) {
        this.visiableWithoutFace = z10;
        reportPropertyChange("visiableWithoutFace", Boolean.valueOf(z10));
    }

    public void setWorkMode(WorkMode workMode) {
        this.workMode = workMode;
        reportPropertyChange("workMode", workMode);
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "UE4Component";
    }
}
