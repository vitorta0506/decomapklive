package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class Beauty extends Component {
    private String beautyVersion = "";
    private float lutClearAlpha = 0.0f;
    private float lutFoundationAlpha = 0.0f;
    private float faceFeatureBlendFaceAlphaSoftlight = 0.0f;
    private float faceFeatureBlendFaceAlphaRedCheek = 0.0f;
    private float faceFeatureBlendFaceAlpha = 0.0f;
    private float faceFeatureTeethLutAlpha = 0.0f;
    private float faceFeatureLipsLutAlpha = 0.0f;
    private float deepSmoothAlpha = 0.0f;
    private float wrinkleAlpha = 0.0f;
    private float eyeLightenAlpha = 0.0f;
    private float eyebrowContrastAlpha = 0.0f;
    private float imageContrastAlpha = 0.0f;
    private float skinColorSlider = 0.0f;
    private float eyePouchAlpha = 0.0f;
    private boolean enableFaceFeature = true;
    private int lipsType = 2;
    private float beautySmooth = 0.0f;
    private float beautySharpen = 0.0f;
    private float beautyExposure = 50.0f;
    private float facialShadowEye = 0.0f;
    private float facialShadowNose = 0.0f;
    private String softLightPath = "";
    private String beautyMultiplyPath = "";
    private String lipsMaskPath = "";

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof Beauty) {
            Beauty beauty = (Beauty) componentBase;
            this.beautyVersion = beauty.beautyVersion;
            this.lutClearAlpha = beauty.lutClearAlpha;
            this.lutFoundationAlpha = beauty.lutFoundationAlpha;
            this.faceFeatureBlendFaceAlphaSoftlight = beauty.faceFeatureBlendFaceAlphaSoftlight;
            this.faceFeatureBlendFaceAlphaRedCheek = beauty.faceFeatureBlendFaceAlphaRedCheek;
            this.faceFeatureBlendFaceAlpha = beauty.faceFeatureBlendFaceAlpha;
            this.faceFeatureTeethLutAlpha = beauty.faceFeatureTeethLutAlpha;
            this.faceFeatureLipsLutAlpha = beauty.faceFeatureLipsLutAlpha;
            this.deepSmoothAlpha = beauty.deepSmoothAlpha;
            this.wrinkleAlpha = beauty.wrinkleAlpha;
            this.eyeLightenAlpha = beauty.eyeLightenAlpha;
            this.eyebrowContrastAlpha = beauty.eyebrowContrastAlpha;
            this.imageContrastAlpha = beauty.imageContrastAlpha;
            this.skinColorSlider = beauty.skinColorSlider;
            this.eyePouchAlpha = beauty.eyePouchAlpha;
            this.enableFaceFeature = beauty.enableFaceFeature;
            this.lipsType = beauty.lipsType;
            this.beautySmooth = beauty.beautySmooth;
            this.beautySharpen = beauty.beautySharpen;
            this.beautyExposure = beauty.beautyExposure;
            this.facialShadowEye = beauty.facialShadowEye;
            this.facialShadowNose = beauty.facialShadowNose;
            this.softLightPath = beauty.softLightPath;
            this.beautyMultiplyPath = beauty.beautyMultiplyPath;
            this.lipsMaskPath = beauty.lipsMaskPath;
        }
        super.doUpdate(componentBase);
    }

    public float getBeautyExposure() {
        return this.beautyExposure;
    }

    public String getBeautyMultiplyPath() {
        return this.beautyMultiplyPath;
    }

    public float getBeautySharpen() {
        return this.beautySharpen;
    }

    public float getBeautySmooth() {
        return this.beautySmooth;
    }

    public String getBeautyVersion() {
        return this.beautyVersion;
    }

    public float getDeepSmoothAlpha() {
        return this.deepSmoothAlpha;
    }

    public boolean getEnableFaceFeature() {
        return this.enableFaceFeature;
    }

    public float getEyeLightenAlpha() {
        return this.eyeLightenAlpha;
    }

    public float getEyePouchAlpha() {
        return this.eyePouchAlpha;
    }

    public float getEyebrowContrastAlpha() {
        return this.eyebrowContrastAlpha;
    }

    public float getFaceFeatureBlendFaceAlpha() {
        return this.faceFeatureBlendFaceAlpha;
    }

    public float getFaceFeatureBlendFaceAlphaRedCheek() {
        return this.faceFeatureBlendFaceAlphaRedCheek;
    }

    public float getFaceFeatureBlendFaceAlphaSoftlight() {
        return this.faceFeatureBlendFaceAlphaSoftlight;
    }

    public float getFaceFeatureLipsLutAlpha() {
        return this.faceFeatureLipsLutAlpha;
    }

    public float getFaceFeatureTeethLutAlpha() {
        return this.faceFeatureTeethLutAlpha;
    }

    public float getFacialShadowEye() {
        return this.facialShadowEye;
    }

    public float getFacialShadowNose() {
        return this.facialShadowNose;
    }

    public float getImageContrastAlpha() {
        return this.imageContrastAlpha;
    }

    public String getLipsMaskPath() {
        return this.lipsMaskPath;
    }

    public int getLipsType() {
        return this.lipsType;
    }

    public float getLutClearAlpha() {
        return this.lutClearAlpha;
    }

    public float getLutFoundationAlpha() {
        return this.lutFoundationAlpha;
    }

    public float getSkinColorSlider() {
        return this.skinColorSlider;
    }

    public String getSoftLightPath() {
        return this.softLightPath;
    }

    public float getWrinkleAlpha() {
        return this.wrinkleAlpha;
    }

    public void setBeautyExposure(float f10) {
        this.beautyExposure = f10;
        reportPropertyChange("beautyExposure", Float.valueOf(f10));
    }

    public void setBeautyMultiplyPath(String str) {
        this.beautyMultiplyPath = str;
        reportPropertyChange("beautyMultiplyPath", str);
    }

    public void setBeautySharpen(float f10) {
        this.beautySharpen = f10;
        reportPropertyChange("beautySharpen", Float.valueOf(f10));
    }

    public void setBeautySmooth(float f10) {
        this.beautySmooth = f10;
        reportPropertyChange("beautySmooth", Float.valueOf(f10));
    }

    public void setBeautyVersion(String str) {
        this.beautyVersion = str;
        reportPropertyChange("beautyVersion", str);
    }

    public void setDeepSmoothAlpha(float f10) {
        this.deepSmoothAlpha = f10;
        reportPropertyChange("deepSmoothAlpha", Float.valueOf(f10));
    }

    public void setEnableFaceFeature(boolean z10) {
        this.enableFaceFeature = z10;
        reportPropertyChange("enableFaceFeature", Boolean.valueOf(z10));
    }

    public void setEyeLightenAlpha(float f10) {
        this.eyeLightenAlpha = f10;
        reportPropertyChange("eyeLightenAlpha", Float.valueOf(f10));
    }

    public void setEyePouchAlpha(float f10) {
        this.eyePouchAlpha = f10;
        reportPropertyChange("eyePouchAlpha", Float.valueOf(f10));
    }

    public void setEyebrowContrastAlpha(float f10) {
        this.eyebrowContrastAlpha = f10;
        reportPropertyChange("eyebrowContrastAlpha", Float.valueOf(f10));
    }

    public void setFaceFeatureBlendFaceAlpha(float f10) {
        this.faceFeatureBlendFaceAlpha = f10;
        reportPropertyChange("faceFeatureBlendFaceAlpha", Float.valueOf(f10));
    }

    public void setFaceFeatureBlendFaceAlphaRedCheek(float f10) {
        this.faceFeatureBlendFaceAlphaRedCheek = f10;
        reportPropertyChange("faceFeatureBlendFaceAlphaRedCheek", Float.valueOf(f10));
    }

    public void setFaceFeatureBlendFaceAlphaSoftlight(float f10) {
        this.faceFeatureBlendFaceAlphaSoftlight = f10;
        reportPropertyChange("faceFeatureBlendFaceAlphaSoftlight", Float.valueOf(f10));
    }

    public void setFaceFeatureLipsLutAlpha(float f10) {
        this.faceFeatureLipsLutAlpha = f10;
        reportPropertyChange("faceFeatureLipsLutAlpha", Float.valueOf(f10));
    }

    public void setFaceFeatureTeethLutAlpha(float f10) {
        this.faceFeatureTeethLutAlpha = f10;
        reportPropertyChange("faceFeatureTeethLutAlpha", Float.valueOf(f10));
    }

    public void setFacialShadowEye(float f10) {
        this.facialShadowEye = f10;
        reportPropertyChange("facialShadowEye", Float.valueOf(f10));
    }

    public void setFacialShadowNose(float f10) {
        this.facialShadowNose = f10;
        reportPropertyChange("facialShadowNose", Float.valueOf(f10));
    }

    public void setImageContrastAlpha(float f10) {
        this.imageContrastAlpha = f10;
        reportPropertyChange("imageContrastAlpha", Float.valueOf(f10));
    }

    public void setLipsMaskPath(String str) {
        this.lipsMaskPath = str;
        reportPropertyChange("lipsMaskPath", str);
    }

    public void setLipsType(int i9) {
        this.lipsType = i9;
        reportPropertyChange("lipsType", Integer.valueOf(i9));
    }

    public void setLutClearAlpha(float f10) {
        this.lutClearAlpha = f10;
        reportPropertyChange("lutClearAlpha", Float.valueOf(f10));
    }

    public void setLutFoundationAlpha(float f10) {
        this.lutFoundationAlpha = f10;
        reportPropertyChange("lutFoundationAlpha", Float.valueOf(f10));
    }

    public void setSkinColorSlider(float f10) {
        this.skinColorSlider = f10;
        reportPropertyChange("skinColorSlider", Float.valueOf(f10));
    }

    public void setSoftLightPath(String str) {
        this.softLightPath = str;
        reportPropertyChange("softLightPath", str);
    }

    public void setWrinkleAlpha(float f10) {
        this.wrinkleAlpha = f10;
        reportPropertyChange("wrinkleAlpha", Float.valueOf(f10));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "Beauty";
    }
}
