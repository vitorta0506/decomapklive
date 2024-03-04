.class public Lorg/light/lightAssetKit/components/BodyDriving3D;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private enableBlockByBody:Z

.field private enableContactGround:Z

.field private enableHandMode:Z

.field private enableTranslateXY:Z

.field private enableTranslateZ:Z

.field private groundPlaneEntityId:I

.field private halfBodyMode:Ljava/lang/String;

.field private modelMoveType:Lorg/light/lightAssetKit/enums/ModelMoveType;

.field private offsetXYZ:Lorg/light/lightAssetKit/components/Vec3;

.field private trackingBones:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, "FullBodyMode"

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->halfBodyMode:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->enableHandMode:Z

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->trackingBones:Ljava/util/HashMap;

    .line 5
    sget-object v1, Lorg/light/lightAssetKit/enums/ModelMoveType;->FollowUser:Lorg/light/lightAssetKit/enums/ModelMoveType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->modelMoveType:Lorg/light/lightAssetKit/enums/ModelMoveType;

    .line 6
    new-instance v1, Lorg/light/lightAssetKit/components/Vec3;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Lorg/light/lightAssetKit/components/Vec3;-><init>(FFF)V

    iput-object v1, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->offsetXYZ:Lorg/light/lightAssetKit/components/Vec3;

    .line 7
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->enableContactGround:Z

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/BodyDriving3D;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/BodyDriving3D;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/BodyDriving3D;->halfBodyMode:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->halfBodyMode:Ljava/lang/String;

    .line 4
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/BodyDriving3D;->enableHandMode:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->enableHandMode:Z

    .line 5
    iget-object v1, v0, Lorg/light/lightAssetKit/components/BodyDriving3D;->trackingBones:Ljava/util/HashMap;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->trackingBones:Ljava/util/HashMap;

    .line 6
    iget-object v1, v0, Lorg/light/lightAssetKit/components/BodyDriving3D;->modelMoveType:Lorg/light/lightAssetKit/enums/ModelMoveType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->modelMoveType:Lorg/light/lightAssetKit/enums/ModelMoveType;

    .line 7
    iget-object v1, v0, Lorg/light/lightAssetKit/components/BodyDriving3D;->offsetXYZ:Lorg/light/lightAssetKit/components/Vec3;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->offsetXYZ:Lorg/light/lightAssetKit/components/Vec3;

    .line 8
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/BodyDriving3D;->enableTranslateXY:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->enableTranslateXY:Z

    .line 9
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/BodyDriving3D;->enableTranslateZ:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->enableTranslateZ:Z

    .line 10
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/BodyDriving3D;->enableBlockByBody:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->enableBlockByBody:Z

    .line 11
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/BodyDriving3D;->enableContactGround:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->enableContactGround:Z

    .line 12
    iget v0, v0, Lorg/light/lightAssetKit/components/BodyDriving3D;->groundPlaneEntityId:I

    iput v0, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->groundPlaneEntityId:I

    .line 13
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getEnableBlockByBody()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->enableBlockByBody:Z

    return v0
.end method

.method public getEnableContactGround()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->enableContactGround:Z

    return v0
.end method

.method public getEnableHandMode()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->enableHandMode:Z

    return v0
.end method

.method public getEnableTranslateXY()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->enableTranslateXY:Z

    return v0
.end method

.method public getEnableTranslateZ()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->enableTranslateZ:Z

    return v0
.end method

.method public getGroundPlaneEntityId()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->groundPlaneEntityId:I

    return v0
.end method

.method public getHalfBodyMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->halfBodyMode:Ljava/lang/String;

    return-object v0
.end method

.method public getModelMoveType()Lorg/light/lightAssetKit/enums/ModelMoveType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->modelMoveType:Lorg/light/lightAssetKit/enums/ModelMoveType;

    return-object v0
.end method

.method public getOffsetXYZ()Lorg/light/lightAssetKit/components/Vec3;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->offsetXYZ:Lorg/light/lightAssetKit/components/Vec3;

    return-object v0
.end method

.method public getTrackingBones()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->trackingBones:Ljava/util/HashMap;

    return-object v0
.end method

.method public setEnableBlockByBody(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->enableBlockByBody:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "enableBlockByBody"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEnableContactGround(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->enableContactGround:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "enableContactGround"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEnableHandMode(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->enableHandMode:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "enableHandMode"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEnableTranslateXY(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->enableTranslateXY:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "enableTranslateXY"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEnableTranslateZ(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->enableTranslateZ:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "enableTranslateZ"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setGroundPlaneEntityId(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->groundPlaneEntityId:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "groundPlaneEntityId"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setHalfBodyMode(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->halfBodyMode:Ljava/lang/String;

    const-string v0, "halfBodyMode"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setModelMoveType(Lorg/light/lightAssetKit/enums/ModelMoveType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->modelMoveType:Lorg/light/lightAssetKit/enums/ModelMoveType;

    const-string v0, "modelMoveType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setOffsetXYZ(Lorg/light/lightAssetKit/components/Vec3;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->offsetXYZ:Lorg/light/lightAssetKit/components/Vec3;

    const-string v0, "offsetXYZ"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTrackingBones(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/BodyDriving3D;->trackingBones:Ljava/util/HashMap;

    const-string v0, "trackingBones"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "BodyDriving3D"

    return-object v0
.end method
