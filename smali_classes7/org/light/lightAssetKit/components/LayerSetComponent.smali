.class public Lorg/light/lightAssetKit/components/LayerSetComponent;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private layers:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/LayerSetComponent;->layers:I

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/LayerSetComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/LayerSetComponent;

    .line 3
    iget v0, v0, Lorg/light/lightAssetKit/components/LayerSetComponent;->layers:I

    iput v0, p0, Lorg/light/lightAssetKit/components/LayerSetComponent;->layers:I

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getLayers()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/LayerSetComponent;->layers:I

    return v0
.end method

.method public setLayers(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/LayerSetComponent;->layers:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "layers"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "LayerSetComponent"

    return-object v0
.end method
