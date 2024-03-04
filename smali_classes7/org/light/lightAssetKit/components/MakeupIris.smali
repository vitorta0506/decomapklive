.class public Lorg/light/lightAssetKit/components/MakeupIris;
.super Lorg/light/lightAssetKit/components/MakeupComponent;
.source "SourceFile"


# instance fields
.field private eyeMask:Ljava/lang/String;

.field private irisImage:Ljava/lang/String;

.field private multRadius:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/MakeupComponent;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/MakeupIris;->irisImage:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lorg/light/lightAssetKit/components/MakeupIris;->eyeMask:Ljava/lang/String;

    const v0, 0x3f3851ec    # 0.72f

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/MakeupIris;->multRadius:F

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/MakeupIris;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/MakeupIris;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MakeupIris;->irisImage:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupIris;->irisImage:Ljava/lang/String;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MakeupIris;->eyeMask:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupIris;->eyeMask:Ljava/lang/String;

    .line 5
    iget v0, v0, Lorg/light/lightAssetKit/components/MakeupIris;->multRadius:F

    iput v0, p0, Lorg/light/lightAssetKit/components/MakeupIris;->multRadius:F

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/MakeupComponent;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getEyeMask()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupIris;->eyeMask:Ljava/lang/String;

    return-object v0
.end method

.method public getIrisImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupIris;->irisImage:Ljava/lang/String;

    return-object v0
.end method

.method public getMultRadius()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/MakeupIris;->multRadius:F

    return v0
.end method

.method public setEyeMask(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupIris;->eyeMask:Ljava/lang/String;

    const-string v0, "eyeMask"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIrisImage(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupIris;->irisImage:Ljava/lang/String;

    const-string v0, "irisImage"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMultRadius(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/MakeupIris;->multRadius:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "multRadius"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "MakeupIris"

    return-object v0
.end method
