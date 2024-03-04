package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class DynamicBone extends Component {
    private Position gravity = new Position(0.0f, -0.2f, 0.0f);
    private int resetType = 0;
    private boolean noRotationUpdate = false;
    private boolean disableAnimationReset = false;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof DynamicBone) {
            DynamicBone dynamicBone = (DynamicBone) componentBase;
            this.gravity = dynamicBone.gravity;
            this.resetType = dynamicBone.resetType;
            this.noRotationUpdate = dynamicBone.noRotationUpdate;
            this.disableAnimationReset = dynamicBone.disableAnimationReset;
        }
        super.doUpdate(componentBase);
    }

    public boolean getDisableAnimationReset() {
        return this.disableAnimationReset;
    }

    public Position getGravity() {
        return this.gravity;
    }

    public boolean getNoRotationUpdate() {
        return this.noRotationUpdate;
    }

    public int getResetType() {
        return this.resetType;
    }

    public void setDisableAnimationReset(boolean z10) {
        this.disableAnimationReset = z10;
        reportPropertyChange("disableAnimationReset", Boolean.valueOf(z10));
    }

    public void setGravity(Position position) {
        this.gravity = position;
        reportPropertyChange("gravity", position);
    }

    public void setNoRotationUpdate(boolean z10) {
        this.noRotationUpdate = z10;
        reportPropertyChange("noRotationUpdate", Boolean.valueOf(z10));
    }

    public void setResetType(int i9) {
        this.resetType = i9;
        reportPropertyChange("resetType", Integer.valueOf(i9));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "DynamicBone";
    }
}
