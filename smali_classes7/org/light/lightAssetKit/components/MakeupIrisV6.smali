.class public Lorg/light/lightAssetKit/components/MakeupIrisV6;
.super Lorg/light/lightAssetKit/components/MakeupComponent;
.source "SourceFile"


# instance fields
.field private enablePreMultiply:Z

.field private enableRadiusScale:Z

.field private eyeMask:Ljava/lang/String;

.field private irisImage:Ljava/lang/String;

.field private liquifyOffsetX:F

.field private liquifyOffsetY:F

.field private liquifyStrength:F

.field private maxRadiusFactor:F

.field private multRadius:F

.field private radiusScale:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/MakeupComponent;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->irisImage:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->eyeMask:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->enablePreMultiply:Z

    const v1, 0x3e9db22d    # 0.308f

    .line 5
    iput v1, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->multRadius:F

    .line 6
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->enableRadiusScale:Z

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->liquifyOffsetX:F

    .line 8
    iput v0, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->liquifyOffsetY:F

    .line 9
    iput v0, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->liquifyStrength:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    iput v0, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->radiusScale:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 11
    iput v0, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->maxRadiusFactor:F

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/MakeupIrisV6;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/MakeupIrisV6;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->irisImage:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->irisImage:Ljava/lang/String;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->eyeMask:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->eyeMask:Ljava/lang/String;

    .line 5
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->enablePreMultiply:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->enablePreMultiply:Z

    .line 6
    iget v1, v0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->multRadius:F

    iput v1, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->multRadius:F

    .line 7
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->enableRadiusScale:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->enableRadiusScale:Z

    .line 8
    iget v1, v0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->liquifyOffsetX:F

    iput v1, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->liquifyOffsetX:F

    .line 9
    iget v1, v0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->liquifyOffsetY:F

    iput v1, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->liquifyOffsetY:F

    .line 10
    iget v1, v0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->liquifyStrength:F

    iput v1, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->liquifyStrength:F

    .line 11
    iget v1, v0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->radiusScale:F

    iput v1, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->radiusScale:F

    .line 12
    iget v0, v0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->maxRadiusFactor:F

    iput v0, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->maxRadiusFactor:F

    .line 13
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/MakeupComponent;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getEnablePreMultiply()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->enablePreMultiply:Z

    return v0
.end method

.method public getEnableRadiusScale()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->enableRadiusScale:Z

    return v0
.end method

.method public getEyeMask()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->eyeMask:Ljava/lang/String;

    return-object v0
.end method

.method public getIrisImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->irisImage:Ljava/lang/String;

    return-object v0
.end method

.method public getLiquifyOffsetX()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->liquifyOffsetX:F

    return v0
.end method

.method public getLiquifyOffsetY()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->liquifyOffsetY:F

    return v0
.end method

.method public getLiquifyStrength()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->liquifyStrength:F

    return v0
.end method

.method public getMaxRadiusFactor()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->maxRadiusFactor:F

    return v0
.end method

.method public getMultRadius()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->multRadius:F

    return v0
.end method

.method public getRadiusScale()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->radiusScale:F

    return v0
.end method

.method public setEnablePreMultiply(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->enablePreMultiply:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "enablePreMultiply"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEnableRadiusScale(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->enableRadiusScale:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "enableRadiusScale"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEyeMask(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->eyeMask:Ljava/lang/String;

    const-string v0, "eyeMask"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIrisImage(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->irisImage:Ljava/lang/String;

    const-string v0, "irisImage"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLiquifyOffsetX(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->liquifyOffsetX:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "liquifyOffsetX"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLiquifyOffsetY(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->liquifyOffsetY:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "liquifyOffsetY"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLiquifyStrength(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->liquifyStrength:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "liquifyStrength"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMaxRadiusFactor(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->maxRadiusFactor:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "maxRadiusFactor"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMultRadius(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->multRadius:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "multRadius"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRadiusScale(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/MakeupIrisV6;->radiusScale:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "radiusScale"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "MakeupIrisV6"

    return-object v0
.end method
