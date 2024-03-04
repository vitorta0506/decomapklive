.class public Lorg/light/lightAssetKit/components/BeautyBody;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private autothinBodyStrength:F

.field private longLegStrength:F

.field private slimHeadStrength:F

.field private slimLegStrength:F

.field private slimWaistStrength:F

.field private thinBodyParamMax:F

.field private thinBodyParamMin:F

.field private thinBodyParamOver:F

.field private thinBodyStrength:F

.field private thinShoulderStrength:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/BeautyBody;->longLegStrength:F

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/BeautyBody;->thinBodyStrength:F

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/BeautyBody;->autothinBodyStrength:F

    .line 5
    iput v0, p0, Lorg/light/lightAssetKit/components/BeautyBody;->thinShoulderStrength:F

    .line 6
    iput v0, p0, Lorg/light/lightAssetKit/components/BeautyBody;->slimWaistStrength:F

    .line 7
    iput v0, p0, Lorg/light/lightAssetKit/components/BeautyBody;->slimHeadStrength:F

    .line 8
    iput v0, p0, Lorg/light/lightAssetKit/components/BeautyBody;->slimLegStrength:F

    const v0, 0x3f866666    # 1.05f

    .line 9
    iput v0, p0, Lorg/light/lightAssetKit/components/BeautyBody;->thinBodyParamMin:F

    const v0, 0x3f99999a    # 1.2f

    .line 10
    iput v0, p0, Lorg/light/lightAssetKit/components/BeautyBody;->thinBodyParamMax:F

    const v0, 0x3fa66666    # 1.3f

    .line 11
    iput v0, p0, Lorg/light/lightAssetKit/components/BeautyBody;->thinBodyParamOver:F

    return-void
.end method

.method public constructor <init>(FFFFFFFFFF)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 13
    iput p1, p0, Lorg/light/lightAssetKit/components/BeautyBody;->longLegStrength:F

    .line 14
    iput p2, p0, Lorg/light/lightAssetKit/components/BeautyBody;->autothinBodyStrength:F

    .line 15
    iput p3, p0, Lorg/light/lightAssetKit/components/BeautyBody;->thinBodyStrength:F

    .line 16
    iput p4, p0, Lorg/light/lightAssetKit/components/BeautyBody;->thinShoulderStrength:F

    .line 17
    iput p5, p0, Lorg/light/lightAssetKit/components/BeautyBody;->slimWaistStrength:F

    .line 18
    iput p6, p0, Lorg/light/lightAssetKit/components/BeautyBody;->slimHeadStrength:F

    .line 19
    iput p7, p0, Lorg/light/lightAssetKit/components/BeautyBody;->slimLegStrength:F

    .line 20
    iput p8, p0, Lorg/light/lightAssetKit/components/BeautyBody;->thinBodyParamMin:F

    .line 21
    iput p9, p0, Lorg/light/lightAssetKit/components/BeautyBody;->thinBodyParamMax:F

    .line 22
    iput p10, p0, Lorg/light/lightAssetKit/components/BeautyBody;->thinBodyParamOver:F

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/BeautyBody;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/BeautyBody;

    .line 3
    iget v1, v0, Lorg/light/lightAssetKit/components/BeautyBody;->longLegStrength:F

    iput v1, p0, Lorg/light/lightAssetKit/components/BeautyBody;->longLegStrength:F

    .line 4
    iget v1, v0, Lorg/light/lightAssetKit/components/BeautyBody;->thinBodyStrength:F

    iput v1, p0, Lorg/light/lightAssetKit/components/BeautyBody;->thinBodyStrength:F

    .line 5
    iget v1, v0, Lorg/light/lightAssetKit/components/BeautyBody;->autothinBodyStrength:F

    iput v1, p0, Lorg/light/lightAssetKit/components/BeautyBody;->autothinBodyStrength:F

    .line 6
    iget v1, v0, Lorg/light/lightAssetKit/components/BeautyBody;->thinShoulderStrength:F

    iput v1, p0, Lorg/light/lightAssetKit/components/BeautyBody;->thinShoulderStrength:F

    .line 7
    iget v1, v0, Lorg/light/lightAssetKit/components/BeautyBody;->slimWaistStrength:F

    iput v1, p0, Lorg/light/lightAssetKit/components/BeautyBody;->slimWaistStrength:F

    .line 8
    iget v1, v0, Lorg/light/lightAssetKit/components/BeautyBody;->slimHeadStrength:F

    iput v1, p0, Lorg/light/lightAssetKit/components/BeautyBody;->slimHeadStrength:F

    .line 9
    iget v1, v0, Lorg/light/lightAssetKit/components/BeautyBody;->slimLegStrength:F

    iput v1, p0, Lorg/light/lightAssetKit/components/BeautyBody;->slimLegStrength:F

    .line 10
    iget v1, v0, Lorg/light/lightAssetKit/components/BeautyBody;->thinBodyParamMin:F

    iput v1, p0, Lorg/light/lightAssetKit/components/BeautyBody;->thinBodyParamMin:F

    .line 11
    iget v1, v0, Lorg/light/lightAssetKit/components/BeautyBody;->thinBodyParamMax:F

    iput v1, p0, Lorg/light/lightAssetKit/components/BeautyBody;->thinBodyParamMax:F

    .line 12
    iget v0, v0, Lorg/light/lightAssetKit/components/BeautyBody;->thinBodyParamOver:F

    iput v0, p0, Lorg/light/lightAssetKit/components/BeautyBody;->thinBodyParamOver:F

    .line 13
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getAutothinBodyStrength()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/BeautyBody;->autothinBodyStrength:F

    return v0
.end method

.method public getLongLegStrength()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/BeautyBody;->longLegStrength:F

    return v0
.end method

.method public getSlimHeadStrength()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/BeautyBody;->slimHeadStrength:F

    return v0
.end method

.method public getSlimLegStrength()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/BeautyBody;->slimLegStrength:F

    return v0
.end method

.method public getSlimWaistStrength()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/BeautyBody;->slimWaistStrength:F

    return v0
.end method

.method public getThinBodyParamMax()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/BeautyBody;->thinBodyParamMax:F

    return v0
.end method

.method public getThinBodyParamMin()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/BeautyBody;->thinBodyParamMin:F

    return v0
.end method

.method public getThinBodyParamOver()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/BeautyBody;->thinBodyParamOver:F

    return v0
.end method

.method public getThinBodyStrength()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/BeautyBody;->thinBodyStrength:F

    return v0
.end method

.method public getThinShoulderStrength()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/BeautyBody;->thinShoulderStrength:F

    return v0
.end method

.method public setAutothinBodyStrength(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/BeautyBody;->autothinBodyStrength:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "autothinBodyStrength"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLongLegStrength(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/BeautyBody;->longLegStrength:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "longLegStrength"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSlimHeadStrength(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/BeautyBody;->slimHeadStrength:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "slimHeadStrength"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSlimLegStrength(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/BeautyBody;->slimLegStrength:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "slimLegStrength"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSlimWaistStrength(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/BeautyBody;->slimWaistStrength:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "slimWaistStrength"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setThinBodyParamMax(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/BeautyBody;->thinBodyParamMax:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "thinBodyParamMax"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setThinBodyParamMin(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/BeautyBody;->thinBodyParamMin:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "thinBodyParamMin"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setThinBodyParamOver(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/BeautyBody;->thinBodyParamOver:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "thinBodyParamOver"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setThinBodyStrength(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/BeautyBody;->thinBodyStrength:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "thinBodyStrength"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setThinShoulderStrength(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/BeautyBody;->thinShoulderStrength:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "thinShoulderStrength"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "BeautyBody"

    return-object v0
.end method
