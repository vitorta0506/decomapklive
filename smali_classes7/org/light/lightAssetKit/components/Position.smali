.class public Lorg/light/lightAssetKit/components/Position;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/Position;->x:F

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/Position;->y:F

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/Position;->z:F

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 6
    iput p1, p0, Lorg/light/lightAssetKit/components/Position;->x:F

    .line 7
    iput p2, p0, Lorg/light/lightAssetKit/components/Position;->y:F

    .line 8
    iput p3, p0, Lorg/light/lightAssetKit/components/Position;->z:F

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/Position;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/Position;

    .line 3
    iget v1, v0, Lorg/light/lightAssetKit/components/Position;->x:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Position;->x:F

    .line 4
    iget v1, v0, Lorg/light/lightAssetKit/components/Position;->y:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Position;->y:F

    .line 5
    iget v0, v0, Lorg/light/lightAssetKit/components/Position;->z:F

    iput v0, p0, Lorg/light/lightAssetKit/components/Position;->z:F

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Position;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Position;->y:F

    return v0
.end method

.method public getZ()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Position;->z:F

    return v0
.end method

.method public setX(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Position;->x:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "x"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setY(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Position;->y:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "y"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setZ(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Position;->z:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "z"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "Position"

    return-object v0
.end method
