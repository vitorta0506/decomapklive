.class public Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private URI:Ljava/lang/String;

.field private UUID:I

.field private attributeBufferView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/AtrributeBufferView;",
            ">;"
        }
    .end annotation
.end field

.field private enableStreamLoad:Z

.field private topologyConst:Z

.field private totalFrameCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;->URI:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;->UUID:I

    .line 4
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;->topologyConst:Z

    .line 5
    iput v0, p0, Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;->totalFrameCount:I

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;->enableStreamLoad:Z

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;->attributeBufferView:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;->URI:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;->URI:Ljava/lang/String;

    .line 4
    iget v1, v0, Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;->UUID:I

    iput v1, p0, Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;->UUID:I

    .line 5
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;->topologyConst:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;->topologyConst:Z

    .line 6
    iget v1, v0, Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;->totalFrameCount:I

    iput v1, p0, Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;->totalFrameCount:I

    .line 7
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;->enableStreamLoad:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;->enableStreamLoad:Z

    .line 8
    iget-object v0, v0, Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;->attributeBufferView:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;->attributeBufferView:Ljava/util/ArrayList;

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getAttributeBufferView()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/AtrributeBufferView;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;->attributeBufferView:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEnableStreamLoad()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;->enableStreamLoad:Z

    return v0
.end method

.method public getTopologyConst()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;->topologyConst:Z

    return v0
.end method

.method public getTotalFrameCount()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;->totalFrameCount:I

    return v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;->URI:Ljava/lang/String;

    return-object v0
.end method

.method public getUUID()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;->UUID:I

    return v0
.end method

.method public setAttributeBufferView(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/AtrributeBufferView;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;->attributeBufferView:Ljava/util/ArrayList;

    const-string v0, "attributeBufferView"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEnableStreamLoad(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;->enableStreamLoad:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "enableStreamLoad"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTopologyConst(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;->topologyConst:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "topologyConst"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTotalFrameCount(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;->totalFrameCount:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "totalFrameCount"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;->URI:Ljava/lang/String;

    const-string v0, "URI"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUUID(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/AlembicMeshDataComponent;->UUID:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "UUID"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "AlembicMeshDataComponent"

    return-object v0
.end method
