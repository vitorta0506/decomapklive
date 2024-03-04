package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class HeadInset extends Component {
    private float blurRadius;
    private boolean isCorrected;
    private String renderTarget;

    public HeadInset() {
        this.renderTarget = "";
        this.isCorrected = true;
        this.blurRadius = 3.0f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof HeadInset) {
            HeadInset headInset = (HeadInset) componentBase;
            this.renderTarget = headInset.renderTarget;
            this.isCorrected = headInset.isCorrected;
            this.blurRadius = headInset.blurRadius;
        }
        super.doUpdate(componentBase);
    }

    public float getBlurRadius() {
        return this.blurRadius;
    }

    public boolean getIsCorrected() {
        return this.isCorrected;
    }

    public String getRenderTarget() {
        return this.renderTarget;
    }

    public void setBlurRadius(float f10) {
        this.blurRadius = f10;
        reportPropertyChange("blurRadius", Float.valueOf(f10));
    }

    public void setIsCorrected(boolean z10) {
        this.isCorrected = z10;
        reportPropertyChange("isCorrected", Boolean.valueOf(z10));
    }

    public void setRenderTarget(String str) {
        this.renderTarget = str;
        reportPropertyChange("renderTarget", str);
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "HeadInset";
    }

    public HeadInset(String str, boolean z10, float f10) {
        this.renderTarget = str;
        this.isCorrected = z10;
        this.blurRadius = f10;
    }
}
