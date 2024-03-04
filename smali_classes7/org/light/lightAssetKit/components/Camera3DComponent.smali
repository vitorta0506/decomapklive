.class public Lorg/light/lightAssetKit/components/Camera3DComponent;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private clearColor:Ljava/lang/String;

.field private clearDepth:F

.field private clearStencil:I

.field private copyInput:Z

.field private far:F

.field private fov:F

.field private fovType:Lorg/light/lightAssetKit/enums/Camera3DFovType;

.field private frustumCulling:Z

.field private is_use_3d_rt_:Z

.field private layers:I

.field private near:F

.field private output_3d_rendertarget_:Ljava/lang/String;

.field private projectionType:Lorg/light/lightAssetKit/enums/Camera3DProjectionType;

.field private renderTargetKey:Ljava/lang/String;

.field private size:F

.field private targetBufferFlags:Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;

.field private viewportRect:Lorg/light/lightAssetKit/components/Rect;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->layers:I

    .line 3
    new-instance v1, Lorg/light/lightAssetKit/components/Rect;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v3, v3}, Lorg/light/lightAssetKit/components/Rect;-><init>(FFFF)V

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->viewportRect:Lorg/light/lightAssetKit/components/Rect;

    .line 4
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->copyInput:Z

    const-string v1, ""

    .line 5
    iput-object v1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->clearColor:Ljava/lang/String;

    .line 6
    iput v3, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->clearDepth:F

    const/4 v2, 0x0

    .line 7
    iput v2, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->clearStencil:I

    .line 8
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->frustumCulling:Z

    .line 9
    iput-object v1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->renderTargetKey:Ljava/lang/String;

    .line 10
    iput-boolean v2, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->is_use_3d_rt_:Z

    .line 11
    iput-object v1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->output_3d_rendertarget_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/Camera3DComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/Camera3DComponent;

    .line 3
    iget v1, v0, Lorg/light/lightAssetKit/components/Camera3DComponent;->layers:I

    iput v1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->layers:I

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Camera3DComponent;->projectionType:Lorg/light/lightAssetKit/enums/Camera3DProjectionType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->projectionType:Lorg/light/lightAssetKit/enums/Camera3DProjectionType;

    .line 5
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Camera3DComponent;->fovType:Lorg/light/lightAssetKit/enums/Camera3DFovType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->fovType:Lorg/light/lightAssetKit/enums/Camera3DFovType;

    .line 6
    iget v1, v0, Lorg/light/lightAssetKit/components/Camera3DComponent;->fov:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->fov:F

    .line 7
    iget v1, v0, Lorg/light/lightAssetKit/components/Camera3DComponent;->size:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->size:F

    .line 8
    iget v1, v0, Lorg/light/lightAssetKit/components/Camera3DComponent;->near:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->near:F

    .line 9
    iget v1, v0, Lorg/light/lightAssetKit/components/Camera3DComponent;->far:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->far:F

    .line 10
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Camera3DComponent;->viewportRect:Lorg/light/lightAssetKit/components/Rect;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->viewportRect:Lorg/light/lightAssetKit/components/Rect;

    .line 11
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/Camera3DComponent;->copyInput:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->copyInput:Z

    .line 12
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Camera3DComponent;->targetBufferFlags:Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->targetBufferFlags:Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;

    .line 13
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Camera3DComponent;->clearColor:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->clearColor:Ljava/lang/String;

    .line 14
    iget v1, v0, Lorg/light/lightAssetKit/components/Camera3DComponent;->clearDepth:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->clearDepth:F

    .line 15
    iget v1, v0, Lorg/light/lightAssetKit/components/Camera3DComponent;->clearStencil:I

    iput v1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->clearStencil:I

    .line 16
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/Camera3DComponent;->frustumCulling:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->frustumCulling:Z

    .line 17
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Camera3DComponent;->renderTargetKey:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->renderTargetKey:Ljava/lang/String;

    .line 18
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/Camera3DComponent;->is_use_3d_rt_:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->is_use_3d_rt_:Z

    .line 19
    iget-object v0, v0, Lorg/light/lightAssetKit/components/Camera3DComponent;->output_3d_rendertarget_:Ljava/lang/String;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->output_3d_rendertarget_:Ljava/lang/String;

    .line 20
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getClearColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->clearColor:Ljava/lang/String;

    return-object v0
.end method

.method public getClearDepth()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->clearDepth:F

    return v0
.end method

.method public getClearStencil()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->clearStencil:I

    return v0
.end method

.method public getCopyInput()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->copyInput:Z

    return v0
.end method

.method public getFar()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->far:F

    return v0
.end method

.method public getFov()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->fov:F

    return v0
.end method

.method public getFovType()Lorg/light/lightAssetKit/enums/Camera3DFovType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->fovType:Lorg/light/lightAssetKit/enums/Camera3DFovType;

    return-object v0
.end method

.method public getFrustumCulling()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->frustumCulling:Z

    return v0
.end method

.method public getIs_use_3d_rt_()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->is_use_3d_rt_:Z

    return v0
.end method

.method public getLayers()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->layers:I

    return v0
.end method

.method public getNear()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->near:F

    return v0
.end method

.method public getOutput_3d_rendertarget_()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->output_3d_rendertarget_:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectionType()Lorg/light/lightAssetKit/enums/Camera3DProjectionType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->projectionType:Lorg/light/lightAssetKit/enums/Camera3DProjectionType;

    return-object v0
.end method

.method public getRenderTargetKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->renderTargetKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->size:F

    return v0
.end method

.method public getTargetBufferFlags()Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->targetBufferFlags:Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;

    return-object v0
.end method

.method public getViewportRect()Lorg/light/lightAssetKit/components/Rect;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->viewportRect:Lorg/light/lightAssetKit/components/Rect;

    return-object v0
.end method

.method public setClearColor(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->clearColor:Ljava/lang/String;

    const-string v0, "clearColor"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setClearDepth(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->clearDepth:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "clearDepth"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setClearStencil(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->clearStencil:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "clearStencil"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCopyInput(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->copyInput:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "copyInput"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFar(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->far:F

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
    iput p1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->fov:F

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
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->fovType:Lorg/light/lightAssetKit/enums/Camera3DFovType;

    const-string v0, "fovType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFrustumCulling(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->frustumCulling:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "frustumCulling"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIs_use_3d_rt_(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->is_use_3d_rt_:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "is_use_3d_rt_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLayers(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->layers:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "layers"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNear(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->near:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "near"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setOutput_3d_rendertarget_(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->output_3d_rendertarget_:Ljava/lang/String;

    const-string v0, "output_3d_rendertarget_"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProjectionType(Lorg/light/lightAssetKit/enums/Camera3DProjectionType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->projectionType:Lorg/light/lightAssetKit/enums/Camera3DProjectionType;

    const-string v0, "projectionType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRenderTargetKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->renderTargetKey:Ljava/lang/String;

    const-string v0, "renderTargetKey"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSize(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->size:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "size"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTargetBufferFlags(Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->targetBufferFlags:Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;

    const-string v0, "targetBufferFlags"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setViewportRect(Lorg/light/lightAssetKit/components/Rect;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Camera3DComponent;->viewportRect:Lorg/light/lightAssetKit/components/Rect;

    const-string v0, "viewportRect"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "Camera3DComponent"

    return-object v0
.end method
