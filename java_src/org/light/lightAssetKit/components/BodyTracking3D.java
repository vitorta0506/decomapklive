package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class BodyTracking3D extends Component {
    private boolean directionalScale;
    private String firstKeyPointName;
    private int followEntityId;
    private boolean followSpin;
    private String secondKeyPointName;
    private float smoothLevel;
    private boolean syncSpin;

    public BodyTracking3D() {
        this.followEntityId = -1;
        this.firstKeyPointName = "";
        this.secondKeyPointName = "";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof BodyTracking3D) {
            BodyTracking3D bodyTracking3D = (BodyTracking3D) componentBase;
            this.followEntityId = bodyTracking3D.followEntityId;
            this.firstKeyPointName = bodyTracking3D.firstKeyPointName;
            this.secondKeyPointName = bodyTracking3D.secondKeyPointName;
            this.smoothLevel = bodyTracking3D.smoothLevel;
            this.followSpin = bodyTracking3D.followSpin;
            this.syncSpin = bodyTracking3D.syncSpin;
            this.directionalScale = bodyTracking3D.directionalScale;
        }
        super.doUpdate(componentBase);
    }

    public boolean getDirectionalScale() {
        return this.directionalScale;
    }

    public String getFirstKeyPointName() {
        return this.firstKeyPointName;
    }

    public int getFollowEntityId() {
        return this.followEntityId;
    }

    public boolean getFollowSpin() {
        return this.followSpin;
    }

    public String getSecondKeyPointName() {
        return this.secondKeyPointName;
    }

    public float getSmoothLevel() {
        return this.smoothLevel;
    }

    public boolean getSyncSpin() {
        return this.syncSpin;
    }

    public void setDirectionalScale(boolean z10) {
        this.directionalScale = z10;
        reportPropertyChange("directionalScale", Boolean.valueOf(z10));
    }

    public void setFirstKeyPointName(String str) {
        this.firstKeyPointName = str;
        reportPropertyChange("firstKeyPointName", str);
    }

    public void setFollowEntityId(int i9) {
        this.followEntityId = i9;
        reportPropertyChange("followEntityId", Integer.valueOf(i9));
    }

    public void setFollowSpin(boolean z10) {
        this.followSpin = z10;
        reportPropertyChange("followSpin", Boolean.valueOf(z10));
    }

    public void setSecondKeyPointName(String str) {
        this.secondKeyPointName = str;
        reportPropertyChange("secondKeyPointName", str);
    }

    public void setSmoothLevel(float f10) {
        this.smoothLevel = f10;
        reportPropertyChange("smoothLevel", Float.valueOf(f10));
    }

    public void setSyncSpin(boolean z10) {
        this.syncSpin = z10;
        reportPropertyChange("syncSpin", Boolean.valueOf(z10));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "BodyTracking3D";
    }

    public BodyTracking3D(int i9, String str, String str2, float f10, boolean z10, boolean z11, boolean z12) {
        this.followEntityId = i9;
        this.firstKeyPointName = str;
        this.secondKeyPointName = str2;
        this.smoothLevel = f10;
        this.followSpin = z10;
        this.syncSpin = z11;
        this.directionalScale = z12;
    }
}
