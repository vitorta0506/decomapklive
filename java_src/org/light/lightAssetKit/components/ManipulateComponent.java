package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class ManipulateComponent extends Component {
    private boolean enableDrag;
    private boolean enableRotation;
    private boolean enableScale;
    private float maxDistance;
    private float maxScale;
    private float minDistance;
    private float minScale;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof ManipulateComponent) {
            ManipulateComponent manipulateComponent = (ManipulateComponent) componentBase;
            this.enableScale = manipulateComponent.enableScale;
            this.enableRotation = manipulateComponent.enableRotation;
            this.enableDrag = manipulateComponent.enableDrag;
            this.minDistance = manipulateComponent.minDistance;
            this.maxDistance = manipulateComponent.maxDistance;
            this.minScale = manipulateComponent.minScale;
            this.maxScale = manipulateComponent.maxScale;
        }
        super.doUpdate(componentBase);
    }

    public boolean getEnableDrag() {
        return this.enableDrag;
    }

    public boolean getEnableRotation() {
        return this.enableRotation;
    }

    public boolean getEnableScale() {
        return this.enableScale;
    }

    public float getMaxDistance() {
        return this.maxDistance;
    }

    public float getMaxScale() {
        return this.maxScale;
    }

    public float getMinDistance() {
        return this.minDistance;
    }

    public float getMinScale() {
        return this.minScale;
    }

    public void setEnableDrag(boolean z10) {
        this.enableDrag = z10;
        reportPropertyChange("enableDrag", Boolean.valueOf(z10));
    }

    public void setEnableRotation(boolean z10) {
        this.enableRotation = z10;
        reportPropertyChange("enableRotation", Boolean.valueOf(z10));
    }

    public void setEnableScale(boolean z10) {
        this.enableScale = z10;
        reportPropertyChange("enableScale", Boolean.valueOf(z10));
    }

    public void setMaxDistance(float f10) {
        this.maxDistance = f10;
        reportPropertyChange("maxDistance", Float.valueOf(f10));
    }

    public void setMaxScale(float f10) {
        this.maxScale = f10;
        reportPropertyChange("maxScale", Float.valueOf(f10));
    }

    public void setMinDistance(float f10) {
        this.minDistance = f10;
        reportPropertyChange("minDistance", Float.valueOf(f10));
    }

    public void setMinScale(float f10) {
        this.minScale = f10;
        reportPropertyChange("minScale", Float.valueOf(f10));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "ManipulateComponent";
    }
}
