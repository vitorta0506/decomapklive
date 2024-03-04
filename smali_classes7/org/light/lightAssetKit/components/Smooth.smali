.class public Lorg/light/lightAssetKit/components/Smooth;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private averageSkinDegree:F

.field private brightenEyeStrength:F

.field private exposureValue:F

.field private faceColorAlpha:F

.field private histogramMaxVal:I

.field private histogramMinVal:I

.field private overallSmooth:Z

.field private rosy:F

.field private saturation:F

.field private sharpenStrength:F

.field private sharpenType:Lorg/light/lightAssetKit/enums/SmoothSharpenType;

.field private smooth:F

.field private smoothVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const v0, 0x3f19999a    # 0.6f

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/Smooth;->smooth:F

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/Smooth;->faceColorAlpha:F

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/Smooth;->sharpenStrength:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    iput v1, p0, Lorg/light/lightAssetKit/components/Smooth;->brightenEyeStrength:F

    const/high16 v1, 0x42480000    # 50.0f

    .line 6
    iput v1, p0, Lorg/light/lightAssetKit/components/Smooth;->exposureValue:F

    .line 7
    iput v0, p0, Lorg/light/lightAssetKit/components/Smooth;->averageSkinDegree:F

    .line 8
    iput v0, p0, Lorg/light/lightAssetKit/components/Smooth;->rosy:F

    .line 9
    iput v0, p0, Lorg/light/lightAssetKit/components/Smooth;->saturation:F

    .line 10
    sget-object v0, Lorg/light/lightAssetKit/enums/SmoothSharpenType;->SharpenDefault:Lorg/light/lightAssetKit/enums/SmoothSharpenType;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Smooth;->sharpenType:Lorg/light/lightAssetKit/enums/SmoothSharpenType;

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lorg/light/lightAssetKit/components/Smooth;->histogramMinVal:I

    const/16 v0, 0xff

    .line 12
    iput v0, p0, Lorg/light/lightAssetKit/components/Smooth;->histogramMaxVal:I

    const-string v0, "v6"

    .line 13
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Smooth;->smoothVersion:Ljava/lang/String;

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/Smooth;->overallSmooth:Z

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/Smooth;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/Smooth;

    .line 3
    iget v1, v0, Lorg/light/lightAssetKit/components/Smooth;->smooth:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Smooth;->smooth:F

    .line 4
    iget v1, v0, Lorg/light/lightAssetKit/components/Smooth;->faceColorAlpha:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Smooth;->faceColorAlpha:F

    .line 5
    iget v1, v0, Lorg/light/lightAssetKit/components/Smooth;->sharpenStrength:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Smooth;->sharpenStrength:F

    .line 6
    iget v1, v0, Lorg/light/lightAssetKit/components/Smooth;->brightenEyeStrength:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Smooth;->brightenEyeStrength:F

    .line 7
    iget v1, v0, Lorg/light/lightAssetKit/components/Smooth;->exposureValue:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Smooth;->exposureValue:F

    .line 8
    iget v1, v0, Lorg/light/lightAssetKit/components/Smooth;->averageSkinDegree:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Smooth;->averageSkinDegree:F

    .line 9
    iget v1, v0, Lorg/light/lightAssetKit/components/Smooth;->rosy:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Smooth;->rosy:F

    .line 10
    iget v1, v0, Lorg/light/lightAssetKit/components/Smooth;->saturation:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Smooth;->saturation:F

    .line 11
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Smooth;->sharpenType:Lorg/light/lightAssetKit/enums/SmoothSharpenType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Smooth;->sharpenType:Lorg/light/lightAssetKit/enums/SmoothSharpenType;

    .line 12
    iget v1, v0, Lorg/light/lightAssetKit/components/Smooth;->histogramMinVal:I

    iput v1, p0, Lorg/light/lightAssetKit/components/Smooth;->histogramMinVal:I

    .line 13
    iget v1, v0, Lorg/light/lightAssetKit/components/Smooth;->histogramMaxVal:I

    iput v1, p0, Lorg/light/lightAssetKit/components/Smooth;->histogramMaxVal:I

    .line 14
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Smooth;->smoothVersion:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Smooth;->smoothVersion:Ljava/lang/String;

    .line 15
    iget-boolean v0, v0, Lorg/light/lightAssetKit/components/Smooth;->overallSmooth:Z

    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/Smooth;->overallSmooth:Z

    .line 16
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getAverageSkinDegree()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Smooth;->averageSkinDegree:F

    return v0
.end method

.method public getBrightenEyeStrength()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Smooth;->brightenEyeStrength:F

    return v0
.end method

.method public getExposureValue()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Smooth;->exposureValue:F

    return v0
.end method

.method public getFaceColorAlpha()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Smooth;->faceColorAlpha:F

    return v0
.end method

.method public getHistogramMaxVal()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Smooth;->histogramMaxVal:I

    return v0
.end method

.method public getHistogramMinVal()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Smooth;->histogramMinVal:I

    return v0
.end method

.method public getOverallSmooth()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/Smooth;->overallSmooth:Z

    return v0
.end method

.method public getRosy()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Smooth;->rosy:F

    return v0
.end method

.method public getSaturation()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Smooth;->saturation:F

    return v0
.end method

.method public getSharpenStrength()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Smooth;->sharpenStrength:F

    return v0
.end method

.method public getSharpenType()Lorg/light/lightAssetKit/enums/SmoothSharpenType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Smooth;->sharpenType:Lorg/light/lightAssetKit/enums/SmoothSharpenType;

    return-object v0
.end method

.method public getSmooth()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Smooth;->smooth:F

    return v0
.end method

.method public getSmoothVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Smooth;->smoothVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setAverageSkinDegree(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Smooth;->averageSkinDegree:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "averageSkinDegree"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setBrightenEyeStrength(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Smooth;->brightenEyeStrength:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "brightenEyeStrength"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setExposureValue(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Smooth;->exposureValue:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "exposureValue"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFaceColorAlpha(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Smooth;->faceColorAlpha:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "faceColorAlpha"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setHistogramMaxVal(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Smooth;->histogramMaxVal:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "histogramMaxVal"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setHistogramMinVal(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Smooth;->histogramMinVal:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "histogramMinVal"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setOverallSmooth(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/Smooth;->overallSmooth:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "overallSmooth"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRosy(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Smooth;->rosy:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "rosy"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSaturation(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Smooth;->saturation:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "saturation"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSharpenStrength(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Smooth;->sharpenStrength:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "sharpenStrength"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSharpenType(Lorg/light/lightAssetKit/enums/SmoothSharpenType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Smooth;->sharpenType:Lorg/light/lightAssetKit/enums/SmoothSharpenType;

    const-string v0, "sharpenType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSmooth(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Smooth;->smooth:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "smooth"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSmoothVersion(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Smooth;->smoothVersion:Ljava/lang/String;

    const-string v0, "smoothVersion"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "Smooth"

    return-object v0
.end method
