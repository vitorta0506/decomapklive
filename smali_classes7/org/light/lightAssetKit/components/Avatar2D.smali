.class public Lorg/light/lightAssetKit/components/Avatar2D;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private animationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private animationQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private animationTriggerJSONString:Ljava/lang/String;

.field private renderTargetKey:Ljava/lang/String;

.field private size:Lorg/light/lightAssetKit/components/Size;

.field private src:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Avatar2D;->renderTargetKey:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Avatar2D;->animationList:Ljava/util/ArrayList;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Avatar2D;->animationQueue:Ljava/util/ArrayList;

    .line 5
    new-instance v1, Lorg/light/lightAssetKit/components/Size;

    invoke-direct {v1}, Lorg/light/lightAssetKit/components/Size;-><init>()V

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Avatar2D;->size:Lorg/light/lightAssetKit/components/Size;

    .line 6
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Avatar2D;->animationTriggerJSONString:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Avatar2D;->src:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/Avatar2D;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/Avatar2D;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Avatar2D;->renderTargetKey:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Avatar2D;->renderTargetKey:Ljava/lang/String;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Avatar2D;->animationList:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Avatar2D;->animationList:Ljava/util/ArrayList;

    .line 5
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Avatar2D;->animationQueue:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Avatar2D;->animationQueue:Ljava/util/ArrayList;

    .line 6
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Avatar2D;->size:Lorg/light/lightAssetKit/components/Size;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Avatar2D;->size:Lorg/light/lightAssetKit/components/Size;

    .line 7
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Avatar2D;->animationTriggerJSONString:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Avatar2D;->animationTriggerJSONString:Ljava/lang/String;

    .line 8
    iget-object v0, v0, Lorg/light/lightAssetKit/components/Avatar2D;->src:Ljava/lang/String;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Avatar2D;->src:Ljava/lang/String;

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getAnimationList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Avatar2D;->animationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAnimationQueue()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Avatar2D;->animationQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAnimationTriggerJSONString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Avatar2D;->animationTriggerJSONString:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderTargetKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Avatar2D;->renderTargetKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Lorg/light/lightAssetKit/components/Size;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Avatar2D;->size:Lorg/light/lightAssetKit/components/Size;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Avatar2D;->src:Ljava/lang/String;

    return-object v0
.end method

.method public setAnimationList(Ljava/util/ArrayList;)V
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
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Avatar2D;->animationList:Ljava/util/ArrayList;

    const-string v0, "animationList"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAnimationQueue(Ljava/util/ArrayList;)V
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
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Avatar2D;->animationQueue:Ljava/util/ArrayList;

    const-string v0, "animationQueue"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAnimationTriggerJSONString(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Avatar2D;->animationTriggerJSONString:Ljava/lang/String;

    const-string v0, "animationTriggerJSONString"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRenderTargetKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Avatar2D;->renderTargetKey:Ljava/lang/String;

    const-string v0, "renderTargetKey"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSize(Lorg/light/lightAssetKit/components/Size;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Avatar2D;->size:Lorg/light/lightAssetKit/components/Size;

    const-string v0, "size"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Avatar2D;->src:Ljava/lang/String;

    const-string v0, "src"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "Avatar2D"

    return-object v0
.end method
