package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class MakeupIrisV6 extends MakeupComponent {
    private String irisImage = "";
    private String eyeMask = "";
    private boolean enablePreMultiply = false;
    private float multRadius = 0.308f;
    private boolean enableRadiusScale = false;
    private float liquifyOffsetX = 0.0f;
    private float liquifyOffsetY = 0.0f;
    private float liquifyStrength = 0.0f;
    private float radiusScale = 1.0f;
    private float maxRadiusFactor = 0.5f;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.MakeupComponent, org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof MakeupIrisV6) {
            MakeupIrisV6 makeupIrisV6 = (MakeupIrisV6) componentBase;
            this.irisImage = makeupIrisV6.irisImage;
            this.eyeMask = makeupIrisV6.eyeMask;
            this.enablePreMultiply = makeupIrisV6.enablePreMultiply;
            this.multRadius = makeupIrisV6.multRadius;
            this.enableRadiusScale = makeupIrisV6.enableRadiusScale;
            this.liquifyOffsetX = makeupIrisV6.liquifyOffsetX;
            this.liquifyOffsetY = makeupIrisV6.liquifyOffsetY;
            this.liquifyStrength = makeupIrisV6.liquifyStrength;
            this.radiusScale = makeupIrisV6.radiusScale;
            this.maxRadiusFactor = makeupIrisV6.maxRadiusFactor;
        }
        super.doUpdate(componentBase);
    }

    public boolean getEnablePreMultiply() {
        return this.enablePreMultiply;
    }

    public boolean getEnableRadiusScale() {
        return this.enableRadiusScale;
    }

    public String getEyeMask() {
        return this.eyeMask;
    }

    public String getIrisImage() {
        return this.irisImage;
    }

    public float getLiquifyOffsetX() {
        return this.liquifyOffsetX;
    }

    public float getLiquifyOffsetY() {
        return this.liquifyOffsetY;
    }

    public float getLiquifyStrength() {
        return this.liquifyStrength;
    }

    public float getMaxRadiusFactor() {
        return this.maxRadiusFactor;
    }

    public float getMultRadius() {
        return this.multRadius;
    }

    public float getRadiusScale() {
        return this.radiusScale;
    }

    public void setEnablePreMultiply(boolean z10) {
        this.enablePreMultiply = z10;
        reportPropertyChange("enablePreMultiply", Boolean.valueOf(z10));
    }

    public void setEnableRadiusScale(boolean z10) {
        this.enableRadiusScale = z10;
        reportPropertyChange("enableRadiusScale", Boolean.valueOf(z10));
    }

    public void setEyeMask(String str) {
        this.eyeMask = str;
        reportPropertyChange("eyeMask", str);
    }

    public void setIrisImage(String str) {
        this.irisImage = str;
        reportPropertyChange("irisImage", str);
    }

    public void setLiquifyOffsetX(float f10) {
        this.liquifyOffsetX = f10;
        reportPropertyChange("liquifyOffsetX", Float.valueOf(f10));
    }

    public void setLiquifyOffsetY(float f10) {
        this.liquifyOffsetY = f10;
        reportPropertyChange("liquifyOffsetY", Float.valueOf(f10));
    }

    public void setLiquifyStrength(float f10) {
        this.liquifyStrength = f10;
        reportPropertyChange("liquifyStrength", Float.valueOf(f10));
    }

    public void setMaxRadiusFactor(float f10) {
        this.maxRadiusFactor = f10;
        reportPropertyChange("maxRadiusFactor", Float.valueOf(f10));
    }

    public void setMultRadius(float f10) {
        this.multRadius = f10;
        reportPropertyChange("multRadius", Float.valueOf(f10));
    }

    public void setRadiusScale(float f10) {
        this.radiusScale = f10;
        reportPropertyChange("radiusScale", Float.valueOf(f10));
    }

    @Override // org.light.lightAssetKit.components.MakeupComponent, org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "MakeupIrisV6";
    }
}
