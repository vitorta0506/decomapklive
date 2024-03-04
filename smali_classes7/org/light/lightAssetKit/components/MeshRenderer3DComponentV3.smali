.class public Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private castShadow:Z

.field private frustumCulling:Z

.field private meshResourceKey:Ljava/lang/String;

.field private priority:I

.field private receiveShadow:Z

.field private skinInfoResourceKey:Ljava/lang/String;

.field private subMeshConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/SubMeshConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->receiveShadow:Z

    .line 3
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->castShadow:Z

    const/4 v1, 0x4

    .line 4
    iput v1, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->priority:I

    .line 5
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->frustumCulling:Z

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->meshResourceKey:Ljava/lang/String;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->subMeshConfigs:Ljava/util/ArrayList;

    .line 8
    iput-object v0, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->skinInfoResourceKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;

    .line 3
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->receiveShadow:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->receiveShadow:Z

    .line 4
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->castShadow:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->castShadow:Z

    .line 5
    iget v1, v0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->priority:I

    iput v1, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->priority:I

    .line 6
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->frustumCulling:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->frustumCulling:Z

    .line 7
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->meshResourceKey:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->meshResourceKey:Ljava/lang/String;

    .line 8
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->subMeshConfigs:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->subMeshConfigs:Ljava/util/ArrayList;

    .line 9
    iget-object v0, v0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->skinInfoResourceKey:Ljava/lang/String;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->skinInfoResourceKey:Ljava/lang/String;

    .line 10
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getCastShadow()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->castShadow:Z

    return v0
.end method

.method public getFrustumCulling()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->frustumCulling:Z

    return v0
.end method

.method public getMeshResourceKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->meshResourceKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->priority:I

    return v0
.end method

.method public getReceiveShadow()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->receiveShadow:Z

    return v0
.end method

.method public getSkinInfoResourceKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->skinInfoResourceKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMeshConfigs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/SubMeshConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->subMeshConfigs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCastShadow(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->castShadow:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "castShadow"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFrustumCulling(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->frustumCulling:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "frustumCulling"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMeshResourceKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->meshResourceKey:Ljava/lang/String;

    const-string v0, "meshResourceKey"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPriority(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->priority:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "priority"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setReceiveShadow(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->receiveShadow:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "receiveShadow"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSkinInfoResourceKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->skinInfoResourceKey:Ljava/lang/String;

    const-string v0, "skinInfoResourceKey"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSubMeshConfigs(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/SubMeshConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MeshRenderer3DComponentV3;->subMeshConfigs:Ljava/util/ArrayList;

    const-string v0, "subMeshConfigs"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "MeshRenderer3DComponentV3"

    return-object v0
.end method
