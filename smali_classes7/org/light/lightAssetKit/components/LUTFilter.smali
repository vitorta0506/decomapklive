.class public Lorg/light/lightAssetKit/components/LUTFilter;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private intensity:F

.field private src:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/LUTFilter;->intensity:F

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lorg/light/lightAssetKit/components/LUTFilter;->src:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/LUTFilter;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/LUTFilter;

    .line 3
    iget v1, v0, Lorg/light/lightAssetKit/components/LUTFilter;->intensity:F

    iput v1, p0, Lorg/light/lightAssetKit/components/LUTFilter;->intensity:F

    .line 4
    iget-object v0, v0, Lorg/light/lightAssetKit/components/LUTFilter;->src:Ljava/lang/String;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/LUTFilter;->src:Ljava/lang/String;

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getIntensity()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/LUTFilter;->intensity:F

    return v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/LUTFilter;->src:Ljava/lang/String;

    return-object v0
.end method

.method public setIntensity(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/LUTFilter;->intensity:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "intensity"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/LUTFilter;->src:Ljava/lang/String;

    const-string v0, "src"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "LUTFilter"

    return-object v0
.end method
