.class public Lorg/light/lightAssetKit/components/TransitionEventTrigger;
.super Lorg/light/lightAssetKit/components/EventTrigger;
.source "SourceFile"


# instance fields
.field private transitionEventInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/TransitionEventInfos;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/EventTrigger;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/TransitionEventTrigger;->transitionEventInfos:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/TransitionEventTrigger;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/TransitionEventTrigger;

    .line 3
    iget-object v0, v0, Lorg/light/lightAssetKit/components/TransitionEventTrigger;->transitionEventInfos:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/TransitionEventTrigger;->transitionEventInfos:Ljava/util/ArrayList;

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/EventTrigger;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getTransitionEventInfos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/TransitionEventInfos;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/TransitionEventTrigger;->transitionEventInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setTransitionEventInfos(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/TransitionEventInfos;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/TransitionEventTrigger;->transitionEventInfos:Ljava/util/ArrayList;

    const-string v0, "transitionEventInfos"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "TransitionEventTrigger"

    return-object v0
.end method
