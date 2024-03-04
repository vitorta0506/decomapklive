.class public Lorg/light/lightAssetKit/components/MeshRenderer3DComponent;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private meshIndex:I

.field private meshName:Ljava/lang/String;

.field private primitiveConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/PrimitiveConfig;",
            ">;"
        }
    .end annotation
.end field

.field private skinned:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponent;->meshName:Ljava/lang/String;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponent;->meshIndex:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponent;->skinned:Z

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponent;->primitiveConfigs:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/MeshRenderer3DComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponent;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponent;->meshName:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponent;->meshName:Ljava/lang/String;

    .line 4
    iget v1, v0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponent;->meshIndex:I

    iput v1, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponent;->meshIndex:I

    .line 5
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponent;->skinned:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponent;->skinned:Z

    .line 6
    iget-object v0, v0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponent;->primitiveConfigs:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponent;->primitiveConfigs:Ljava/util/ArrayList;

    .line 7
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getMeshIndex()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponent;->meshIndex:I

    return v0
.end method

.method public getMeshName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponent;->meshName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimitiveConfigs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/PrimitiveConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponent;->primitiveConfigs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSkinned()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponent;->skinned:Z

    return v0
.end method

.method public setMeshIndex(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponent;->meshIndex:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "meshIndex"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMeshName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponent;->meshName:Ljava/lang/String;

    const-string v0, "meshName"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPrimitiveConfigs(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/PrimitiveConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponent;->primitiveConfigs:Ljava/util/ArrayList;

    const-string v0, "primitiveConfigs"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSkinned(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponent;->skinned:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "skinned"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "MeshRenderer3DComponent"

    return-object v0
.end method
