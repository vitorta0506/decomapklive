.class public Lorg/light/lightAssetKit/components/MockingCamera3DComponent;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private far:F

.field private fov:F

.field private fovType:Lorg/light/lightAssetKit/enums/Camera3DFovType;

.field private near:F

.field private orthographicSize:F

.field private projectionType:Lorg/light/lightAssetKit/enums/Camera3DProjectionType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/MockingCamera3DComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/MockingCamera3DComponent;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MockingCamera3DComponent;->projectionType:Lorg/light/lightAssetKit/enums/Camera3DProjectionType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MockingCamera3DComponent;->projectionType:Lorg/light/lightAssetKit/enums/Camera3DProjectionType;

    .line 4
    iget v1, v0, Lorg/light/lightAssetKit/components/MockingCamera3DComponent;->near:F

    iput v1, p0, Lorg/light/lightAssetKit/components/MockingCamera3DComponent;->near:F

    .line 5
    iget v1, v0, Lorg/light/lightAssetKit/components/MockingCamera3DComponent;->far:F

    iput v1, p0, Lorg/light/lightAssetKit/components/MockingCamera3DComponent;->far:F

    .line 6
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MockingCamera3DComponent;->fovType:Lorg/light/lightAssetKit/enums/Camera3DFovType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MockingCamera3DComponent;->fovType:Lorg/light/lightAssetKit/enums/Camera3DFovType;

    .line 7
    iget v1, v0, Lorg/light/lightAssetKit/components/MockingCamera3DComponent;->fov:F

    iput v1, p0, Lorg/light/lightAssetKit/components/MockingCamera3DComponent;->fov:F

    .line 8
    iget v0, v0, Lorg/light/lightAssetKit/components/MockingCamera3DComponent;->orthographicSize:F

    iput v0, p0, Lorg/light/lightAssetKit/components/MockingCamera3DComponent;->orthographicSize:F

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getFar()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/MockingCamera3DComponent;->far:F

    return v0
.end method

.method public getFov()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/MockingCamera3DComponent;->fov:F

    return v0
.end method

.method public getFovType()Lorg/light/lightAssetKit/enums/Camera3DFovType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MockingCamera3DComponent;->fovType:Lorg/light/lightAssetKit/enums/Camera3DFovType;

    return-object v0
.end method

.method public getNear()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/MockingCamera3DComponent;->near:F

    return v0
.end method

.method public getOrthographicSize()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/MockingCamera3DComponent;->orthographicSize:F

    return v0
.end method

.method public getProjectionType()Lorg/light/lightAssetKit/enums/Camera3DProjectionType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MockingCamera3DComponent;->projectionType:Lorg/light/lightAssetKit/enums/Camera3DProjectionType;

    return-object v0
.end method

.method public setFar(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/MockingCamera3DComponent;->far:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "far"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFov(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/MockingCamera3DComponent;->fov:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "fov"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFovType(Lorg/light/lightAssetKit/enums/Camera3DFovType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MockingCamera3DComponent;->fovType:Lorg/light/lightAssetKit/enums/Camera3DFovType;

    const-string v0, "fovType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNear(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/MockingCamera3DComponent;->near:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "near"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setOrthographicSize(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/MockingCamera3DComponent;->orthographicSize:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "orthographicSize"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProjectionType(Lorg/light/lightAssetKit/enums/Camera3DProjectionType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MockingCamera3DComponent;->projectionType:Lorg/light/lightAssetKit/enums/Camera3DProjectionType;

    const-string v0, "projectionType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "MockingCamera3DComponent"

    return-object v0
.end method
