package org.light.lightAssetKit.components;

import org.light.LightConstants;
import org.light.lightAssetKit.ComponentBase;
import org.light.lightAssetKit.enums.SmoothSharpenType;
/* loaded from: classes7.dex */
public class Smooth extends Component {
    private float smooth = 0.6f;
    private float faceColorAlpha = 0.0f;
    private float sharpenStrength = 0.0f;
    private float brightenEyeStrength = 1.0f;
    private float exposureValue = 50.0f;
    private float averageSkinDegree = 0.0f;
    private float rosy = 0.0f;
    private float saturation = 0.0f;
    private SmoothSharpenType sharpenType = SmoothSharpenType.SharpenDefault;
    private int histogramMinVal = 0;
    private int histogramMaxVal = 255;
    private String smoothVersion = LightConstants.BeautyConfigKey.SMOOTH_VERSION_V6;
    private boolean overallSmooth = true;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof Smooth) {
            Smooth smooth = (Smooth) componentBase;
            this.smooth = smooth.smooth;
            this.faceColorAlpha = smooth.faceColorAlpha;
            this.sharpenStrength = smooth.sharpenStrength;
            this.brightenEyeStrength = smooth.brightenEyeStrength;
            this.exposureValue = smooth.exposureValue;
            this.averageSkinDegree = smooth.averageSkinDegree;
            this.rosy = smooth.rosy;
            this.saturation = smooth.saturation;
            this.sharpenType = smooth.sharpenType;
            this.histogramMinVal = smooth.histogramMinVal;
            this.histogramMaxVal = smooth.histogramMaxVal;
            this.smoothVersion = smooth.smoothVersion;
            this.overallSmooth = smooth.overallSmooth;
        }
        super.doUpdate(componentBase);
    }

    public float getAverageSkinDegree() {
        return this.averageSkinDegree;
    }

    public float getBrightenEyeStrength() {
        return this.brightenEyeStrength;
    }

    public float getExposureValue() {
        return this.exposureValue;
    }

    public float getFaceColorAlpha() {
        return this.faceColorAlpha;
    }

    public int getHistogramMaxVal() {
        return this.histogramMaxVal;
    }

    public int getHistogramMinVal() {
        return this.histogramMinVal;
    }

    public boolean getOverallSmooth() {
        return this.overallSmooth;
    }

    public float getRosy() {
        return this.rosy;
    }

    public float getSaturation() {
        return this.saturation;
    }

    public float getSharpenStrength() {
        return this.sharpenStrength;
    }

    public SmoothSharpenType getSharpenType() {
        return this.sharpenType;
    }

    public float getSmooth() {
        return this.smooth;
    }

    public String getSmoothVersion() {
        return this.smoothVersion;
    }

    public void setAverageSkinDegree(float f10) {
        this.averageSkinDegree = f10;
        reportPropertyChange("averageSkinDegree", Float.valueOf(f10));
    }

    public void setBrightenEyeStrength(float f10) {
        this.brightenEyeStrength = f10;
        reportPropertyChange("brightenEyeStrength", Float.valueOf(f10));
    }

    public void setExposureValue(float f10) {
        this.exposureValue = f10;
        reportPropertyChange("exposureValue", Float.valueOf(f10));
    }

    public void setFaceColorAlpha(float f10) {
        this.faceColorAlpha = f10;
        reportPropertyChange("faceColorAlpha", Float.valueOf(f10));
    }

    public void setHistogramMaxVal(int i9) {
        this.histogramMaxVal = i9;
        reportPropertyChange("histogramMaxVal", Integer.valueOf(i9));
    }

    public void setHistogramMinVal(int i9) {
        this.histogramMinVal = i9;
        reportPropertyChange("histogramMinVal", Integer.valueOf(i9));
    }

    public void setOverallSmooth(boolean z10) {
        this.overallSmooth = z10;
        reportPropertyChange("overallSmooth", Boolean.valueOf(z10));
    }

    public void setRosy(float f10) {
        this.rosy = f10;
        reportPropertyChange("rosy", Float.valueOf(f10));
    }

    public void setSaturation(float f10) {
        this.saturation = f10;
        reportPropertyChange("saturation", Float.valueOf(f10));
    }

    public void setSharpenStrength(float f10) {
        this.sharpenStrength = f10;
        reportPropertyChange("sharpenStrength", Float.valueOf(f10));
    }

    public void setSharpenType(SmoothSharpenType smoothSharpenType) {
        this.sharpenType = smoothSharpenType;
        reportPropertyChange("sharpenType", smoothSharpenType);
    }

    public void setSmooth(float f10) {
        this.smooth = f10;
        reportPropertyChange("smooth", Float.valueOf(f10));
    }

    public void setSmoothVersion(String str) {
        this.smoothVersion = str;
        reportPropertyChange("smoothVersion", str);
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "Smooth";
    }
}
