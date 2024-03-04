.class public Lorg/light/lightAssetKit/components/GridMesh3DComponent;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private center:Lorg/light/lightAssetKit/components/Vec3;

.field private eye:Lorg/light/lightAssetKit/components/Vec3;

.field private gridNum:I

.field private up:Lorg/light/lightAssetKit/components/Vec3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 2
    new-instance v0, Lorg/light/lightAssetKit/components/Vec3;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Vec3;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/GridMesh3DComponent;->eye:Lorg/light/lightAssetKit/components/Vec3;

    .line 3
    new-instance v0, Lorg/light/lightAssetKit/components/Vec3;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Vec3;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/GridMesh3DComponent;->center:Lorg/light/lightAssetKit/components/Vec3;

    .line 4
    new-instance v0, Lorg/light/lightAssetKit/components/Vec3;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Vec3;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/GridMesh3DComponent;->up:Lorg/light/lightAssetKit/components/Vec3;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/GridMesh3DComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/GridMesh3DComponent;

    .line 3
    iget v1, v0, Lorg/light/lightAssetKit/components/GridMesh3DComponent;->gridNum:I

    iput v1, p0, Lorg/light/lightAssetKit/components/GridMesh3DComponent;->gridNum:I

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/GridMesh3DComponent;->eye:Lorg/light/lightAssetKit/components/Vec3;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/GridMesh3DComponent;->eye:Lorg/light/lightAssetKit/components/Vec3;

    .line 5
    iget-object v1, v0, Lorg/light/lightAssetKit/components/GridMesh3DComponent;->center:Lorg/light/lightAssetKit/components/Vec3;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/GridMesh3DComponent;->center:Lorg/light/lightAssetKit/components/Vec3;

    .line 6
    iget-object v0, v0, Lorg/light/lightAssetKit/components/GridMesh3DComponent;->up:Lorg/light/lightAssetKit/components/Vec3;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/GridMesh3DComponent;->up:Lorg/light/lightAssetKit/components/Vec3;

    .line 7
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getCenter()Lorg/light/lightAssetKit/components/Vec3;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/GridMesh3DComponent;->center:Lorg/light/lightAssetKit/components/Vec3;

    return-object v0
.end method

.method public getEye()Lorg/light/lightAssetKit/components/Vec3;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/GridMesh3DComponent;->eye:Lorg/light/lightAssetKit/components/Vec3;

    return-object v0
.end method

.method public getGridNum()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/GridMesh3DComponent;->gridNum:I

    return v0
.end method

.method public getUp()Lorg/light/lightAssetKit/components/Vec3;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/GridMesh3DComponent;->up:Lorg/light/lightAssetKit/components/Vec3;

    return-object v0
.end method

.method public setCenter(Lorg/light/lightAssetKit/components/Vec3;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/GridMesh3DComponent;->center:Lorg/light/lightAssetKit/components/Vec3;

    const-string v0, "center"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEye(Lorg/light/lightAssetKit/components/Vec3;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/GridMesh3DComponent;->eye:Lorg/light/lightAssetKit/components/Vec3;

    const-string v0, "eye"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setGridNum(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/GridMesh3DComponent;->gridNum:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "gridNum"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUp(Lorg/light/lightAssetKit/components/Vec3;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/GridMesh3DComponent;->up:Lorg/light/lightAssetKit/components/Vec3;

    const-string v0, "up"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "GridMesh3DComponent"

    return-object v0
.end method
