.class public Lorg/light/lightAssetKit/components/MeshMorphComponent;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private blendShapeGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/BlendShapeItem;",
            ">;"
        }
    .end annotation
.end field

.field private meshMorphModel:Lorg/light/lightAssetKit/enums/MeshMorphModel;

.field private morphName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/MeshMorphComponent;->morphName:Ljava/lang/String;

    .line 3
    sget-object v0, Lorg/light/lightAssetKit/enums/MeshMorphModel;->POSITION:Lorg/light/lightAssetKit/enums/MeshMorphModel;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/MeshMorphComponent;->meshMorphModel:Lorg/light/lightAssetKit/enums/MeshMorphModel;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/MeshMorphComponent;->blendShapeGroup:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/MeshMorphComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/MeshMorphComponent;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MeshMorphComponent;->morphName:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MeshMorphComponent;->morphName:Ljava/lang/String;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MeshMorphComponent;->meshMorphModel:Lorg/light/lightAssetKit/enums/MeshMorphModel;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MeshMorphComponent;->meshMorphModel:Lorg/light/lightAssetKit/enums/MeshMorphModel;

    .line 5
    iget-object v0, v0, Lorg/light/lightAssetKit/components/MeshMorphComponent;->blendShapeGroup:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/MeshMorphComponent;->blendShapeGroup:Ljava/util/ArrayList;

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getBlendShapeGroup()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/BlendShapeItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MeshMorphComponent;->blendShapeGroup:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMeshMorphModel()Lorg/light/lightAssetKit/enums/MeshMorphModel;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MeshMorphComponent;->meshMorphModel:Lorg/light/lightAssetKit/enums/MeshMorphModel;

    return-object v0
.end method

.method public getMorphName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MeshMorphComponent;->morphName:Ljava/lang/String;

    return-object v0
.end method

.method public setBlendShapeGroup(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/BlendShapeItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MeshMorphComponent;->blendShapeGroup:Ljava/util/ArrayList;

    const-string v0, "blendShapeGroup"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMeshMorphModel(Lorg/light/lightAssetKit/enums/MeshMorphModel;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MeshMorphComponent;->meshMorphModel:Lorg/light/lightAssetKit/enums/MeshMorphModel;

    const-string v0, "meshMorphModel"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMorphName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MeshMorphComponent;->morphName:Ljava/lang/String;

    const-string v0, "morphName"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "MeshMorphComponent"

    return-object v0
.end method
