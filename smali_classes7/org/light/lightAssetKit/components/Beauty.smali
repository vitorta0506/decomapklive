.class public Lorg/light/lightAssetKit/components/Beauty;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private beautyExposure:F

.field private beautyMultiplyPath:Ljava/lang/String;

.field private beautySharpen:F

.field private beautySmooth:F

.field private beautyVersion:Ljava/lang/String;

.field private deepSmoothAlpha:F

.field private enableFaceFeature:Z

.field private eyeLightenAlpha:F

.field private eyePouchAlpha:F

.field private eyebrowContrastAlpha:F

.field private faceFeatureBlendFaceAlpha:F

.field private faceFeatureBlendFaceAlphaRedCheek:F

.field private faceFeatureBlendFaceAlphaSoftlight:F

.field private faceFeatureLipsLutAlpha:F

.field private faceFeatureTeethLutAlpha:F

.field private facialShadowEye:F

.field private facialShadowNose:F

.field private imageContrastAlpha:F

.field private lipsMaskPath:Ljava/lang/String;

.field private lipsType:I

.field private lutClearAlpha:F

.field private lutFoundationAlpha:F

.field private skinColorSlider:F

.field private softLightPath:Ljava/lang/String;

.field private wrinkleAlpha:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Beauty;->beautyVersion:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->lutClearAlpha:F

    .line 4
    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->lutFoundationAlpha:F

    .line 5
    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->faceFeatureBlendFaceAlphaSoftlight:F

    .line 6
    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->faceFeatureBlendFaceAlphaRedCheek:F

    .line 7
    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->faceFeatureBlendFaceAlpha:F

    .line 8
    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->faceFeatureTeethLutAlpha:F

    .line 9
    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->faceFeatureLipsLutAlpha:F

    .line 10
    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->deepSmoothAlpha:F

    .line 11
    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->wrinkleAlpha:F

    .line 12
    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->eyeLightenAlpha:F

    .line 13
    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->eyebrowContrastAlpha:F

    .line 14
    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->imageContrastAlpha:F

    .line 15
    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->skinColorSlider:F

    .line 16
    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->eyePouchAlpha:F

    const/4 v2, 0x1

    .line 17
    iput-boolean v2, p0, Lorg/light/lightAssetKit/components/Beauty;->enableFaceFeature:Z

    const/4 v2, 0x2

    .line 18
    iput v2, p0, Lorg/light/lightAssetKit/components/Beauty;->lipsType:I

    .line 19
    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->beautySmooth:F

    .line 20
    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->beautySharpen:F

    const/high16 v2, 0x42480000    # 50.0f

    .line 21
    iput v2, p0, Lorg/light/lightAssetKit/components/Beauty;->beautyExposure:F

    .line 22
    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->facialShadowEye:F

    .line 23
    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->facialShadowNose:F

    .line 24
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Beauty;->softLightPath:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Beauty;->beautyMultiplyPath:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Beauty;->lipsMaskPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/Beauty;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/Beauty;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Beauty;->beautyVersion:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Beauty;->beautyVersion:Ljava/lang/String;

    .line 4
    iget v1, v0, Lorg/light/lightAssetKit/components/Beauty;->lutClearAlpha:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->lutClearAlpha:F

    .line 5
    iget v1, v0, Lorg/light/lightAssetKit/components/Beauty;->lutFoundationAlpha:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->lutFoundationAlpha:F

    .line 6
    iget v1, v0, Lorg/light/lightAssetKit/components/Beauty;->faceFeatureBlendFaceAlphaSoftlight:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->faceFeatureBlendFaceAlphaSoftlight:F

    .line 7
    iget v1, v0, Lorg/light/lightAssetKit/components/Beauty;->faceFeatureBlendFaceAlphaRedCheek:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->faceFeatureBlendFaceAlphaRedCheek:F

    .line 8
    iget v1, v0, Lorg/light/lightAssetKit/components/Beauty;->faceFeatureBlendFaceAlpha:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->faceFeatureBlendFaceAlpha:F

    .line 9
    iget v1, v0, Lorg/light/lightAssetKit/components/Beauty;->faceFeatureTeethLutAlpha:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->faceFeatureTeethLutAlpha:F

    .line 10
    iget v1, v0, Lorg/light/lightAssetKit/components/Beauty;->faceFeatureLipsLutAlpha:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->faceFeatureLipsLutAlpha:F

    .line 11
    iget v1, v0, Lorg/light/lightAssetKit/components/Beauty;->deepSmoothAlpha:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->deepSmoothAlpha:F

    .line 12
    iget v1, v0, Lorg/light/lightAssetKit/components/Beauty;->wrinkleAlpha:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->wrinkleAlpha:F

    .line 13
    iget v1, v0, Lorg/light/lightAssetKit/components/Beauty;->eyeLightenAlpha:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->eyeLightenAlpha:F

    .line 14
    iget v1, v0, Lorg/light/lightAssetKit/components/Beauty;->eyebrowContrastAlpha:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->eyebrowContrastAlpha:F

    .line 15
    iget v1, v0, Lorg/light/lightAssetKit/components/Beauty;->imageContrastAlpha:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->imageContrastAlpha:F

    .line 16
    iget v1, v0, Lorg/light/lightAssetKit/components/Beauty;->skinColorSlider:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->skinColorSlider:F

    .line 17
    iget v1, v0, Lorg/light/lightAssetKit/components/Beauty;->eyePouchAlpha:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->eyePouchAlpha:F

    .line 18
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/Beauty;->enableFaceFeature:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/Beauty;->enableFaceFeature:Z

    .line 19
    iget v1, v0, Lorg/light/lightAssetKit/components/Beauty;->lipsType:I

    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->lipsType:I

    .line 20
    iget v1, v0, Lorg/light/lightAssetKit/components/Beauty;->beautySmooth:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->beautySmooth:F

    .line 21
    iget v1, v0, Lorg/light/lightAssetKit/components/Beauty;->beautySharpen:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->beautySharpen:F

    .line 22
    iget v1, v0, Lorg/light/lightAssetKit/components/Beauty;->beautyExposure:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->beautyExposure:F

    .line 23
    iget v1, v0, Lorg/light/lightAssetKit/components/Beauty;->facialShadowEye:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->facialShadowEye:F

    .line 24
    iget v1, v0, Lorg/light/lightAssetKit/components/Beauty;->facialShadowNose:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Beauty;->facialShadowNose:F

    .line 25
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Beauty;->softLightPath:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Beauty;->softLightPath:Ljava/lang/String;

    .line 26
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Beauty;->beautyMultiplyPath:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Beauty;->beautyMultiplyPath:Ljava/lang/String;

    .line 27
    iget-object v0, v0, Lorg/light/lightAssetKit/components/Beauty;->lipsMaskPath:Ljava/lang/String;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Beauty;->lipsMaskPath:Ljava/lang/String;

    .line 28
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getBeautyExposure()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Beauty;->beautyExposure:F

    return v0
.end method

.method public getBeautyMultiplyPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Beauty;->beautyMultiplyPath:Ljava/lang/String;

    return-object v0
.end method

.method public getBeautySharpen()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Beauty;->beautySharpen:F

    return v0
.end method

.method public getBeautySmooth()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Beauty;->beautySmooth:F

    return v0
.end method

.method public getBeautyVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Beauty;->beautyVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDeepSmoothAlpha()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Beauty;->deepSmoothAlpha:F

    return v0
.end method

.method public getEnableFaceFeature()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/Beauty;->enableFaceFeature:Z

    return v0
.end method

.method public getEyeLightenAlpha()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Beauty;->eyeLightenAlpha:F

    return v0
.end method

.method public getEyePouchAlpha()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Beauty;->eyePouchAlpha:F

    return v0
.end method

.method public getEyebrowContrastAlpha()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Beauty;->eyebrowContrastAlpha:F

    return v0
.end method

.method public getFaceFeatureBlendFaceAlpha()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Beauty;->faceFeatureBlendFaceAlpha:F

    return v0
.end method

.method public getFaceFeatureBlendFaceAlphaRedCheek()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Beauty;->faceFeatureBlendFaceAlphaRedCheek:F

    return v0
.end method

.method public getFaceFeatureBlendFaceAlphaSoftlight()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Beauty;->faceFeatureBlendFaceAlphaSoftlight:F

    return v0
.end method

.method public getFaceFeatureLipsLutAlpha()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Beauty;->faceFeatureLipsLutAlpha:F

    return v0
.end method

.method public getFaceFeatureTeethLutAlpha()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Beauty;->faceFeatureTeethLutAlpha:F

    return v0
.end method

.method public getFacialShadowEye()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Beauty;->facialShadowEye:F

    return v0
.end method

.method public getFacialShadowNose()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Beauty;->facialShadowNose:F

    return v0
.end method

.method public getImageContrastAlpha()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Beauty;->imageContrastAlpha:F

    return v0
.end method

.method public getLipsMaskPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Beauty;->lipsMaskPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLipsType()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Beauty;->lipsType:I

    return v0
.end method

.method public getLutClearAlpha()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Beauty;->lutClearAlpha:F

    return v0
.end method

.method public getLutFoundationAlpha()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Beauty;->lutFoundationAlpha:F

    return v0
.end method

.method public getSkinColorSlider()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Beauty;->skinColorSlider:F

    return v0
.end method

.method public getSoftLightPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Beauty;->softLightPath:Ljava/lang/String;

    return-object v0
.end method

.method public getWrinkleAlpha()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Beauty;->wrinkleAlpha:F

    return v0
.end method

.method public setBeautyExposure(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Beauty;->beautyExposure:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "beautyExposure"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setBeautyMultiplyPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Beauty;->beautyMultiplyPath:Ljava/lang/String;

    const-string v0, "beautyMultiplyPath"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setBeautySharpen(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Beauty;->beautySharpen:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "beautySharpen"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setBeautySmooth(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Beauty;->beautySmooth:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "beautySmooth"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setBeautyVersion(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Beauty;->beautyVersion:Ljava/lang/String;

    const-string v0, "beautyVersion"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setDeepSmoothAlpha(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Beauty;->deepSmoothAlpha:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "deepSmoothAlpha"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEnableFaceFeature(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/Beauty;->enableFaceFeature:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "enableFaceFeature"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEyeLightenAlpha(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Beauty;->eyeLightenAlpha:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "eyeLightenAlpha"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEyePouchAlpha(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Beauty;->eyePouchAlpha:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "eyePouchAlpha"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEyebrowContrastAlpha(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Beauty;->eyebrowContrastAlpha:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "eyebrowContrastAlpha"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFaceFeatureBlendFaceAlpha(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Beauty;->faceFeatureBlendFaceAlpha:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "faceFeatureBlendFaceAlpha"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFaceFeatureBlendFaceAlphaRedCheek(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Beauty;->faceFeatureBlendFaceAlphaRedCheek:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "faceFeatureBlendFaceAlphaRedCheek"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFaceFeatureBlendFaceAlphaSoftlight(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Beauty;->faceFeatureBlendFaceAlphaSoftlight:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "faceFeatureBlendFaceAlphaSoftlight"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFaceFeatureLipsLutAlpha(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Beauty;->faceFeatureLipsLutAlpha:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "faceFeatureLipsLutAlpha"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFaceFeatureTeethLutAlpha(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Beauty;->faceFeatureTeethLutAlpha:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "faceFeatureTeethLutAlpha"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFacialShadowEye(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Beauty;->facialShadowEye:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "facialShadowEye"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFacialShadowNose(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Beauty;->facialShadowNose:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "facialShadowNose"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setImageContrastAlpha(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Beauty;->imageContrastAlpha:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "imageContrastAlpha"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLipsMaskPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Beauty;->lipsMaskPath:Ljava/lang/String;

    const-string v0, "lipsMaskPath"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLipsType(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Beauty;->lipsType:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "lipsType"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLutClearAlpha(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Beauty;->lutClearAlpha:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "lutClearAlpha"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLutFoundationAlpha(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Beauty;->lutFoundationAlpha:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "lutFoundationAlpha"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSkinColorSlider(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Beauty;->skinColorSlider:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "skinColorSlider"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSoftLightPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Beauty;->softLightPath:Ljava/lang/String;

    const-string v0, "softLightPath"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setWrinkleAlpha(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Beauty;->wrinkleAlpha:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "wrinkleAlpha"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "Beauty"

    return-object v0
.end method
