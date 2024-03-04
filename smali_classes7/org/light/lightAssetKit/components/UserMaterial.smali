.class public Lorg/light/lightAssetKit/components/UserMaterial;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private defaultResourceSrc:Ljava/lang/String;

.field private faceMaskPath:Ljava/lang/String;

.field private renderToTargetType:Lorg/light/lightAssetKit/enums/MaterialSupportRenderToTargetType;

.field private src:Ljava/lang/String;

.field private trackerTargetKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private trackerType:Lorg/light/lightAssetKit/enums/UserMaterialTrackerType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/UserMaterial;->defaultResourceSrc:Ljava/lang/String;

    .line 3
    sget-object v1, Lorg/light/lightAssetKit/enums/MaterialSupportRenderToTargetType;->RenderTarget:Lorg/light/lightAssetKit/enums/MaterialSupportRenderToTargetType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/UserMaterial;->renderToTargetType:Lorg/light/lightAssetKit/enums/MaterialSupportRenderToTargetType;

    .line 4
    sget-object v1, Lorg/light/lightAssetKit/enums/UserMaterialTrackerType;->NONE:Lorg/light/lightAssetKit/enums/UserMaterialTrackerType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/UserMaterial;->trackerType:Lorg/light/lightAssetKit/enums/UserMaterialTrackerType;

    .line 5
    iput-object v0, p0, Lorg/light/lightAssetKit/components/UserMaterial;->faceMaskPath:Ljava/lang/String;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/light/lightAssetKit/components/UserMaterial;->trackerTargetKeys:Ljava/util/ArrayList;

    .line 7
    iput-object v0, p0, Lorg/light/lightAssetKit/components/UserMaterial;->src:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/UserMaterial;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/UserMaterial;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/UserMaterial;->defaultResourceSrc:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/UserMaterial;->defaultResourceSrc:Ljava/lang/String;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/UserMaterial;->renderToTargetType:Lorg/light/lightAssetKit/enums/MaterialSupportRenderToTargetType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/UserMaterial;->renderToTargetType:Lorg/light/lightAssetKit/enums/MaterialSupportRenderToTargetType;

    .line 5
    iget-object v1, v0, Lorg/light/lightAssetKit/components/UserMaterial;->trackerType:Lorg/light/lightAssetKit/enums/UserMaterialTrackerType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/UserMaterial;->trackerType:Lorg/light/lightAssetKit/enums/UserMaterialTrackerType;

    .line 6
    iget-object v1, v0, Lorg/light/lightAssetKit/components/UserMaterial;->faceMaskPath:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/UserMaterial;->faceMaskPath:Ljava/lang/String;

    .line 7
    iget-object v1, v0, Lorg/light/lightAssetKit/components/UserMaterial;->trackerTargetKeys:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/UserMaterial;->trackerTargetKeys:Ljava/util/ArrayList;

    .line 8
    iget-object v0, v0, Lorg/light/lightAssetKit/components/UserMaterial;->src:Ljava/lang/String;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/UserMaterial;->src:Ljava/lang/String;

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getDefaultResourceSrc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/UserMaterial;->defaultResourceSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getFaceMaskPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/UserMaterial;->faceMaskPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderToTargetType()Lorg/light/lightAssetKit/enums/MaterialSupportRenderToTargetType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/UserMaterial;->renderToTargetType:Lorg/light/lightAssetKit/enums/MaterialSupportRenderToTargetType;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/UserMaterial;->src:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackerTargetKeys()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/UserMaterial;->trackerTargetKeys:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTrackerType()Lorg/light/lightAssetKit/enums/UserMaterialTrackerType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/UserMaterial;->trackerType:Lorg/light/lightAssetKit/enums/UserMaterialTrackerType;

    return-object v0
.end method

.method public setDefaultResourceSrc(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/UserMaterial;->defaultResourceSrc:Ljava/lang/String;

    const-string v0, "defaultResourceSrc"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFaceMaskPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/UserMaterial;->faceMaskPath:Ljava/lang/String;

    const-string v0, "faceMaskPath"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRenderToTargetType(Lorg/light/lightAssetKit/enums/MaterialSupportRenderToTargetType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/UserMaterial;->renderToTargetType:Lorg/light/lightAssetKit/enums/MaterialSupportRenderToTargetType;

    const-string v0, "renderToTargetType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/UserMaterial;->src:Ljava/lang/String;

    const-string v0, "src"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTrackerTargetKeys(Ljava/util/ArrayList;)V
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
    iput-object p1, p0, Lorg/light/lightAssetKit/components/UserMaterial;->trackerTargetKeys:Ljava/util/ArrayList;

    const-string v0, "trackerTargetKeys"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTrackerType(Lorg/light/lightAssetKit/enums/UserMaterialTrackerType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/UserMaterial;->trackerType:Lorg/light/lightAssetKit/enums/UserMaterialTrackerType;

    const-string v0, "trackerType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "UserMaterial"

    return-object v0
.end method
