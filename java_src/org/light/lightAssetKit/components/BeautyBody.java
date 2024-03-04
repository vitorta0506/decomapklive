package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class BeautyBody extends Component {
    private float autothinBodyStrength;
    private float longLegStrength;
    private float slimHeadStrength;
    private float slimLegStrength;
    private float slimWaistStrength;
    private float thinBodyParamMax;
    private float thinBodyParamMin;
    private float thinBodyParamOver;
    private float thinBodyStrength;
    private float thinShoulderStrength;

    public BeautyBody() {
        this.longLegStrength = 0.0f;
        this.thinBodyStrength = 0.0f;
        this.autothinBodyStrength = 0.0f;
        this.thinShoulderStrength = 0.0f;
        this.slimWaistStrength = 0.0f;
        this.slimHeadStrength = 0.0f;
        this.slimLegStrength = 0.0f;
        this.thinBodyParamMin = 1.05f;
        this.thinBodyParamMax = 1.2f;
        this.thinBodyParamOver = 1.3f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof BeautyBody) {
            BeautyBody beautyBody = (BeautyBody) componentBase;
            this.longLegStrength = beautyBody.longLegStrength;
            this.thinBodyStrength = beautyBody.thinBodyStrength;
            this.autothinBodyStrength = beautyBody.autothinBodyStrength;
            this.thinShoulderStrength = beautyBody.thinShoulderStrength;
            this.slimWaistStrength = beautyBody.slimWaistStrength;
            this.slimHeadStrength = beautyBody.slimHeadStrength;
            this.slimLegStrength = beautyBody.slimLegStrength;
            this.thinBodyParamMin = beautyBody.thinBodyParamMin;
            this.thinBodyParamMax = beautyBody.thinBodyParamMax;
            this.thinBodyParamOver = beautyBody.thinBodyParamOver;
        }
        super.doUpdate(componentBase);
    }

    public float getAutothinBodyStrength() {
        return this.autothinBodyStrength;
    }

    public float getLongLegStrength() {
        return this.longLegStrength;
    }

    public float getSlimHeadStrength() {
        return this.slimHeadStrength;
    }

    public float getSlimLegStrength() {
        return this.slimLegStrength;
    }

    public float getSlimWaistStrength() {
        return this.slimWaistStrength;
    }

    public float getThinBodyParamMax() {
        return this.thinBodyParamMax;
    }

    public float getThinBodyParamMin() {
        return this.thinBodyParamMin;
    }

    public float getThinBodyParamOver() {
        return this.thinBodyParamOver;
    }

    public float getThinBodyStrength() {
        return this.thinBodyStrength;
    }

    public float getThinShoulderStrength() {
        return this.thinShoulderStrength;
    }

    public void setAutothinBodyStrength(float f10) {
        this.autothinBodyStrength = f10;
        reportPropertyChange("autothinBodyStrength", Float.valueOf(f10));
    }

    public void setLongLegStrength(float f10) {
        this.longLegStrength = f10;
        reportPropertyChange("longLegStrength", Float.valueOf(f10));
    }

    public void setSlimHeadStrength(float f10) {
        this.slimHeadStrength = f10;
        reportPropertyChange("slimHeadStrength", Float.valueOf(f10));
    }

    public void setSlimLegStrength(float f10) {
        this.slimLegStrength = f10;
        reportPropertyChange("slimLegStrength", Float.valueOf(f10));
    }

    public void setSlimWaistStrength(float f10) {
        this.slimWaistStrength = f10;
        reportPropertyChange("slimWaistStrength", Float.valueOf(f10));
    }

    public void setThinBodyParamMax(float f10) {
        this.thinBodyParamMax = f10;
        reportPropertyChange("thinBodyParamMax", Float.valueOf(f10));
    }

    public void setThinBodyParamMin(float f10) {
        this.thinBodyParamMin = f10;
        reportPropertyChange("thinBodyParamMin", Float.valueOf(f10));
    }

    public void setThinBodyParamOver(float f10) {
        this.thinBodyParamOver = f10;
        reportPropertyChange("thinBodyParamOver", Float.valueOf(f10));
    }

    public void setThinBodyStrength(float f10) {
        this.thinBodyStrength = f10;
        reportPropertyChange("thinBodyStrength", Float.valueOf(f10));
    }

    public void setThinShoulderStrength(float f10) {
        this.thinShoulderStrength = f10;
        reportPropertyChange("thinShoulderStrength", Float.valueOf(f10));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "BeautyBody";
    }

    public BeautyBody(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19) {
        this.longLegStrength = f10;
        this.autothinBodyStrength = f11;
        this.thinBodyStrength = f12;
        this.thinShoulderStrength = f13;
        this.slimWaistStrength = f14;
        this.slimHeadStrength = f15;
        this.slimLegStrength = f16;
        this.thinBodyParamMin = f17;
        this.thinBodyParamMax = f18;
        this.thinBodyParamOver = f19;
    }
}
