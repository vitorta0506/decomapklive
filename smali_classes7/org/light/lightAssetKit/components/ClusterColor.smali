.class public Lorg/light/lightAssetKit/components/ClusterColor;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private clusterColorNum:I

.field private colorArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/ColorItem;",
            ">;"
        }
    .end annotation
.end field

.field private colorNum:I

.field private colorReady:Z

.field private colorRenderTargetID:Ljava/lang/String;

.field private isSync:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/ClusterColor;->colorRenderTargetID:Ljava/lang/String;

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/ClusterColor;->colorNum:I

    const/16 v0, 0x10

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/ClusterColor;->clusterColorNum:I

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/ClusterColor;->colorArray:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/ClusterColor;->isSync:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lorg/light/lightAssetKit/components/ClusterColor;->colorRenderTargetID:Ljava/lang/String;

    const/4 v0, 0x4

    .line 9
    iput v0, p0, Lorg/light/lightAssetKit/components/ClusterColor;->colorNum:I

    const/16 v0, 0x10

    .line 10
    iput v0, p0, Lorg/light/lightAssetKit/components/ClusterColor;->clusterColorNum:I

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/ClusterColor;->colorArray:Ljava/util/ArrayList;

    .line 12
    iput-object p1, p0, Lorg/light/lightAssetKit/components/ClusterColor;->colorRenderTargetID:Ljava/lang/String;

    .line 13
    iput p2, p0, Lorg/light/lightAssetKit/components/ClusterColor;->colorNum:I

    .line 14
    iput p3, p0, Lorg/light/lightAssetKit/components/ClusterColor;->clusterColorNum:I

    .line 15
    iput-boolean p4, p0, Lorg/light/lightAssetKit/components/ClusterColor;->isSync:Z

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/ClusterColor;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/ClusterColor;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/ClusterColor;->colorRenderTargetID:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/ClusterColor;->colorRenderTargetID:Ljava/lang/String;

    .line 4
    iget v1, v0, Lorg/light/lightAssetKit/components/ClusterColor;->colorNum:I

    iput v1, p0, Lorg/light/lightAssetKit/components/ClusterColor;->colorNum:I

    .line 5
    iget v1, v0, Lorg/light/lightAssetKit/components/ClusterColor;->clusterColorNum:I

    iput v1, p0, Lorg/light/lightAssetKit/components/ClusterColor;->clusterColorNum:I

    .line 6
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/ClusterColor;->colorReady:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/ClusterColor;->colorReady:Z

    .line 7
    iget-object v1, v0, Lorg/light/lightAssetKit/components/ClusterColor;->colorArray:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/ClusterColor;->colorArray:Ljava/util/ArrayList;

    .line 8
    iget-boolean v0, v0, Lorg/light/lightAssetKit/components/ClusterColor;->isSync:Z

    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/ClusterColor;->isSync:Z

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getClusterColorNum()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/ClusterColor;->clusterColorNum:I

    return v0
.end method

.method public getColorArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/ColorItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/ClusterColor;->colorArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getColorNum()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/ClusterColor;->colorNum:I

    return v0
.end method

.method public getColorReady()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/ClusterColor;->colorReady:Z

    return v0
.end method

.method public getColorRenderTargetID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/ClusterColor;->colorRenderTargetID:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSync()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/ClusterColor;->isSync:Z

    return v0
.end method

.method public setClusterColorNum(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/ClusterColor;->clusterColorNum:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "clusterColorNum"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setColorArray(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/ColorItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/ClusterColor;->colorArray:Ljava/util/ArrayList;

    const-string v0, "colorArray"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setColorNum(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/ClusterColor;->colorNum:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "colorNum"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setColorReady(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/ClusterColor;->colorReady:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "colorReady"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setColorRenderTargetID(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/ClusterColor;->colorRenderTargetID:Ljava/lang/String;

    const-string v0, "colorRenderTargetID"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIsSync(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/ClusterColor;->isSync:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isSync"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "ClusterColor"

    return-object v0
.end method
