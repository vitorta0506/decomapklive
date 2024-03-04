.class public Lorg/light/lightAssetKit/components/Face3DComponent;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private custom3DHead:Ljava/lang/String;

.field private faceIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private motionFaceIndex_:I

.field private showUserHead:Z

.field private stopNormalUpdate:Z

.field private stopVertexUpdate:Z

.field private use3DMMHead:I

.field private useCustom3DHead:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Face3DComponent;->faceIndex:Ljava/util/ArrayList;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Face3DComponent;->custom3DHead:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/Face3DComponent;->motionFaceIndex_:I

    .line 5
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/Face3DComponent;->stopVertexUpdate:Z

    .line 6
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/Face3DComponent;->stopNormalUpdate:Z

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/Face3DComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/Face3DComponent;

    .line 3
    iget v1, v0, Lorg/light/lightAssetKit/components/Face3DComponent;->use3DMMHead:I

    iput v1, p0, Lorg/light/lightAssetKit/components/Face3DComponent;->use3DMMHead:I

    .line 4
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/Face3DComponent;->showUserHead:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/Face3DComponent;->showUserHead:Z

    .line 5
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Face3DComponent;->faceIndex:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Face3DComponent;->faceIndex:Ljava/util/ArrayList;

    .line 6
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/Face3DComponent;->useCustom3DHead:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/Face3DComponent;->useCustom3DHead:Z

    .line 7
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Face3DComponent;->custom3DHead:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Face3DComponent;->custom3DHead:Ljava/lang/String;

    .line 8
    iget v1, v0, Lorg/light/lightAssetKit/components/Face3DComponent;->motionFaceIndex_:I

    iput v1, p0, Lorg/light/lightAssetKit/components/Face3DComponent;->motionFaceIndex_:I

    .line 9
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/Face3DComponent;->stopVertexUpdate:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/Face3DComponent;->stopVertexUpdate:Z

    .line 10
    iget-boolean v0, v0, Lorg/light/lightAssetKit/components/Face3DComponent;->stopNormalUpdate:Z

    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/Face3DComponent;->stopNormalUpdate:Z

    .line 11
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getCustom3DHead()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Face3DComponent;->custom3DHead:Ljava/lang/String;

    return-object v0
.end method

.method public getFaceIndex()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Face3DComponent;->faceIndex:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMotionFaceIndex_()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Face3DComponent;->motionFaceIndex_:I

    return v0
.end method

.method public getShowUserHead()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/Face3DComponent;->showUserHead:Z

    return v0
.end method

.method public getStopNormalUpdate()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/Face3DComponent;->stopNormalUpdate:Z

    return v0
.end method

.method public getStopVertexUpdate()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/Face3DComponent;->stopVertexUpdate:Z

    return v0
.end method

.method public getUse3DMMHead()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Face3DComponent;->use3DMMHead:I

    return v0
.end method

.method public getUseCustom3DHead()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/Face3DComponent;->useCustom3DHead:Z

    return v0
.end method

.method public setCustom3DHead(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Face3DComponent;->custom3DHead:Ljava/lang/String;

    const-string v0, "custom3DHead"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFaceIndex(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Face3DComponent;->faceIndex:Ljava/util/ArrayList;

    const-string v0, "faceIndex"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMotionFaceIndex_(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Face3DComponent;->motionFaceIndex_:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "motionFaceIndex_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setShowUserHead(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/Face3DComponent;->showUserHead:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "showUserHead"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setStopNormalUpdate(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/Face3DComponent;->stopNormalUpdate:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "stopNormalUpdate"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setStopVertexUpdate(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/Face3DComponent;->stopVertexUpdate:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "stopVertexUpdate"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUse3DMMHead(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Face3DComponent;->use3DMMHead:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "use3DMMHead"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUseCustom3DHead(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/Face3DComponent;->useCustom3DHead:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "useCustom3DHead"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "Face3DComponent"

    return-object v0
.end method
