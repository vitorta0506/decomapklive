.class public Lorg/light/lightAssetKit/components/HandTracking;
.super Lorg/light/lightAssetKit/components/TrackingComponent;
.source "SourceFile"


# instance fields
.field private handIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isDetectSmooth:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/TrackingComponent;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/HandTracking;->isDetectSmooth:Z

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/HandTracking;->handIndex:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/HandTracking;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/HandTracking;

    .line 3
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/HandTracking;->isDetectSmooth:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/HandTracking;->isDetectSmooth:Z

    .line 4
    iget-object v0, v0, Lorg/light/lightAssetKit/components/HandTracking;->handIndex:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/HandTracking;->handIndex:Ljava/util/ArrayList;

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/TrackingComponent;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getHandIndex()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/HandTracking;->handIndex:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIsDetectSmooth()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/HandTracking;->isDetectSmooth:Z

    return v0
.end method

.method public setHandIndex(Ljava/util/ArrayList;)V
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
    iput-object p1, p0, Lorg/light/lightAssetKit/components/HandTracking;->handIndex:Ljava/util/ArrayList;

    const-string v0, "handIndex"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIsDetectSmooth(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/HandTracking;->isDetectSmooth:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isDetectSmooth"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "HandTracking"

    return-object v0
.end method
