.class public Lorg/light/lightAssetKit/components/Sticker3D;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private cameraViewConfig:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/CameraViewConfig;",
            ">;"
        }
    .end annotation
.end field

.field private enableTessellation:Z

.field private externalInputKey:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private faceMeshModelType:I

.field private fit3DMM:Z

.field private fov:I

.field private initPosition:Lorg/light/lightAssetKit/components/Position;

.field private initRotation:Lorg/light/lightAssetKit/components/Position;

.field private initialCameraTransform:Lorg/light/lightAssetKit/components/CameraTransform;

.field private inputRenderTarget:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isKapuMaterial:Z

.field private kapuMaterialType:I

.field private materialPath:Ljava/lang/String;

.field private materialType:Lorg/light/lightAssetKit/enums/Sticker3DMaterialType;

.field private modelType:I

.field private needFaceMeshFacekit:Z

.field private projectionFar:F

.field private resourcePath:Ljava/lang/String;

.field private rotationFactor:Lorg/light/lightAssetKit/components/Position;

.field private triggerJson:Ljava/lang/String;

.field private use3DMMTransform:Z

.field private useMetal:Z

.field private useRealSizeHead:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 2
    sget-object v0, Lorg/light/lightAssetKit/enums/Sticker3DMaterialType;->Normal:Lorg/light/lightAssetKit/enums/Sticker3DMaterialType;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->materialType:Lorg/light/lightAssetKit/enums/Sticker3DMaterialType;

    const/16 v0, 0x3c

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->fov:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->use3DMMTransform:Z

    .line 5
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->fit3DMM:Z

    .line 6
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->isKapuMaterial:Z

    .line 7
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->needFaceMeshFacekit:Z

    .line 8
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->enableTessellation:Z

    .line 9
    iput v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->faceMeshModelType:I

    .line 10
    iput v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->modelType:I

    const/high16 v1, 0x447a0000    # 1000.0f

    .line 11
    iput v1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->projectionFar:F

    .line 12
    iput v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->kapuMaterialType:I

    .line 13
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->useMetal:Z

    .line 14
    new-instance v1, Lorg/light/lightAssetKit/components/Position;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Lorg/light/lightAssetKit/components/Position;-><init>(FFF)V

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->initPosition:Lorg/light/lightAssetKit/components/Position;

    .line 15
    new-instance v1, Lorg/light/lightAssetKit/components/Position;

    invoke-direct {v1, v2, v2, v2}, Lorg/light/lightAssetKit/components/Position;-><init>(FFF)V

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->initRotation:Lorg/light/lightAssetKit/components/Position;

    .line 16
    new-instance v1, Lorg/light/lightAssetKit/components/Position;

    invoke-direct {v1, v2, v2, v2}, Lorg/light/lightAssetKit/components/Position;-><init>(FFF)V

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->rotationFactor:Lorg/light/lightAssetKit/components/Position;

    .line 17
    new-instance v1, Lorg/light/lightAssetKit/components/CameraTransform;

    invoke-direct {v1}, Lorg/light/lightAssetKit/components/CameraTransform;-><init>()V

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->initialCameraTransform:Lorg/light/lightAssetKit/components/CameraTransform;

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->cameraViewConfig:Ljava/util/ArrayList;

    const-string v1, ""

    .line 19
    iput-object v1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->resourcePath:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->materialPath:Ljava/lang/String;

    .line 21
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/light/lightAssetKit/components/Sticker3D;->externalInputKey:Ljava/util/ArrayList;

    .line 22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/light/lightAssetKit/components/Sticker3D;->inputRenderTarget:Ljava/util/ArrayList;

    .line 23
    iput-object v1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->triggerJson:Ljava/lang/String;

    .line 24
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->useRealSizeHead:Z

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/Sticker3D;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/Sticker3D;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Sticker3D;->materialType:Lorg/light/lightAssetKit/enums/Sticker3DMaterialType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->materialType:Lorg/light/lightAssetKit/enums/Sticker3DMaterialType;

    .line 4
    iget v1, v0, Lorg/light/lightAssetKit/components/Sticker3D;->fov:I

    iput v1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->fov:I

    .line 5
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/Sticker3D;->use3DMMTransform:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->use3DMMTransform:Z

    .line 6
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/Sticker3D;->fit3DMM:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->fit3DMM:Z

    .line 7
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/Sticker3D;->isKapuMaterial:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->isKapuMaterial:Z

    .line 8
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/Sticker3D;->needFaceMeshFacekit:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->needFaceMeshFacekit:Z

    .line 9
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/Sticker3D;->enableTessellation:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->enableTessellation:Z

    .line 10
    iget v1, v0, Lorg/light/lightAssetKit/components/Sticker3D;->faceMeshModelType:I

    iput v1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->faceMeshModelType:I

    .line 11
    iget v1, v0, Lorg/light/lightAssetKit/components/Sticker3D;->modelType:I

    iput v1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->modelType:I

    .line 12
    iget v1, v0, Lorg/light/lightAssetKit/components/Sticker3D;->projectionFar:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->projectionFar:F

    .line 13
    iget v1, v0, Lorg/light/lightAssetKit/components/Sticker3D;->kapuMaterialType:I

    iput v1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->kapuMaterialType:I

    .line 14
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/Sticker3D;->useMetal:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->useMetal:Z

    .line 15
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Sticker3D;->initPosition:Lorg/light/lightAssetKit/components/Position;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->initPosition:Lorg/light/lightAssetKit/components/Position;

    .line 16
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Sticker3D;->initRotation:Lorg/light/lightAssetKit/components/Position;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->initRotation:Lorg/light/lightAssetKit/components/Position;

    .line 17
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Sticker3D;->rotationFactor:Lorg/light/lightAssetKit/components/Position;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->rotationFactor:Lorg/light/lightAssetKit/components/Position;

    .line 18
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Sticker3D;->initialCameraTransform:Lorg/light/lightAssetKit/components/CameraTransform;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->initialCameraTransform:Lorg/light/lightAssetKit/components/CameraTransform;

    .line 19
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Sticker3D;->cameraViewConfig:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->cameraViewConfig:Ljava/util/ArrayList;

    .line 20
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Sticker3D;->resourcePath:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->resourcePath:Ljava/lang/String;

    .line 21
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Sticker3D;->materialPath:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->materialPath:Ljava/lang/String;

    .line 22
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Sticker3D;->externalInputKey:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->externalInputKey:Ljava/util/ArrayList;

    .line 23
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Sticker3D;->inputRenderTarget:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->inputRenderTarget:Ljava/util/ArrayList;

    .line 24
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Sticker3D;->triggerJson:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->triggerJson:Ljava/lang/String;

    .line 25
    iget-boolean v0, v0, Lorg/light/lightAssetKit/components/Sticker3D;->useRealSizeHead:Z

    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->useRealSizeHead:Z

    .line 26
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getCameraViewConfig()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/CameraViewConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->cameraViewConfig:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEnableTessellation()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->enableTessellation:Z

    return v0
.end method

.method public getExternalInputKey()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->externalInputKey:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFaceMeshModelType()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->faceMeshModelType:I

    return v0
.end method

.method public getFit3DMM()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->fit3DMM:Z

    return v0
.end method

.method public getFov()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->fov:I

    return v0
.end method

.method public getInitPosition()Lorg/light/lightAssetKit/components/Position;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->initPosition:Lorg/light/lightAssetKit/components/Position;

    return-object v0
.end method

.method public getInitRotation()Lorg/light/lightAssetKit/components/Position;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->initRotation:Lorg/light/lightAssetKit/components/Position;

    return-object v0
.end method

.method public getInitialCameraTransform()Lorg/light/lightAssetKit/components/CameraTransform;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->initialCameraTransform:Lorg/light/lightAssetKit/components/CameraTransform;

    return-object v0
.end method

.method public getInputRenderTarget()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->inputRenderTarget:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIsKapuMaterial()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->isKapuMaterial:Z

    return v0
.end method

.method public getKapuMaterialType()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->kapuMaterialType:I

    return v0
.end method

.method public getMaterialPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->materialPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMaterialType()Lorg/light/lightAssetKit/enums/Sticker3DMaterialType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->materialType:Lorg/light/lightAssetKit/enums/Sticker3DMaterialType;

    return-object v0
.end method

.method public getModelType()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->modelType:I

    return v0
.end method

.method public getNeedFaceMeshFacekit()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->needFaceMeshFacekit:Z

    return v0
.end method

.method public getProjectionFar()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->projectionFar:F

    return v0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->resourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public getRotationFactor()Lorg/light/lightAssetKit/components/Position;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->rotationFactor:Lorg/light/lightAssetKit/components/Position;

    return-object v0
.end method

.method public getTriggerJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->triggerJson:Ljava/lang/String;

    return-object v0
.end method

.method public getUse3DMMTransform()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->use3DMMTransform:Z

    return v0
.end method

.method public getUseMetal()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->useMetal:Z

    return v0
.end method

.method public getUseRealSizeHead()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/Sticker3D;->useRealSizeHead:Z

    return v0
.end method

.method public setCameraViewConfig(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/CameraViewConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->cameraViewConfig:Ljava/util/ArrayList;

    const-string v0, "cameraViewConfig"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEnableTessellation(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->enableTessellation:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "enableTessellation"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setExternalInputKey(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->externalInputKey:Ljava/util/ArrayList;

    const-string v0, "externalInputKey"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFaceMeshModelType(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->faceMeshModelType:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "faceMeshModelType"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFit3DMM(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->fit3DMM:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "fit3DMM"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFov(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->fov:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "fov"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setInitPosition(Lorg/light/lightAssetKit/components/Position;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->initPosition:Lorg/light/lightAssetKit/components/Position;

    const-string v0, "initPosition"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setInitRotation(Lorg/light/lightAssetKit/components/Position;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->initRotation:Lorg/light/lightAssetKit/components/Position;

    const-string v0, "initRotation"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setInitialCameraTransform(Lorg/light/lightAssetKit/components/CameraTransform;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->initialCameraTransform:Lorg/light/lightAssetKit/components/CameraTransform;

    const-string v0, "initialCameraTransform"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setInputRenderTarget(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->inputRenderTarget:Ljava/util/ArrayList;

    const-string v0, "inputRenderTarget"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIsKapuMaterial(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->isKapuMaterial:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isKapuMaterial"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setKapuMaterialType(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->kapuMaterialType:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "kapuMaterialType"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMaterialPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->materialPath:Ljava/lang/String;

    const-string v0, "materialPath"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMaterialType(Lorg/light/lightAssetKit/enums/Sticker3DMaterialType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->materialType:Lorg/light/lightAssetKit/enums/Sticker3DMaterialType;

    const-string v0, "materialType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setModelType(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->modelType:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "modelType"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNeedFaceMeshFacekit(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->needFaceMeshFacekit:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "needFaceMeshFacekit"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProjectionFar(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->projectionFar:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "projectionFar"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setResourcePath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->resourcePath:Ljava/lang/String;

    const-string v0, "resourcePath"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRotationFactor(Lorg/light/lightAssetKit/components/Position;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->rotationFactor:Lorg/light/lightAssetKit/components/Position;

    const-string v0, "rotationFactor"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTriggerJson(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->triggerJson:Ljava/lang/String;

    const-string v0, "triggerJson"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUse3DMMTransform(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->use3DMMTransform:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "use3DMMTransform"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUseMetal(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->useMetal:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "useMetal"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUseRealSizeHead(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/Sticker3D;->useRealSizeHead:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "useRealSizeHead"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "Sticker3D"

    return-object v0
.end method
