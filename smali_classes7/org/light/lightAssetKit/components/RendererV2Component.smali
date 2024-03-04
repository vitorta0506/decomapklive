.class public Lorg/light/lightAssetKit/components/RendererV2Component;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private materialResourceKey:Ljava/lang/String;

.field private special_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/RendererV2Component;->materialResourceKey:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lorg/light/lightAssetKit/components/RendererV2Component;->special_type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/RendererV2Component;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/RendererV2Component;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/RendererV2Component;->materialResourceKey:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/RendererV2Component;->materialResourceKey:Ljava/lang/String;

    .line 4
    iget-object v0, v0, Lorg/light/lightAssetKit/components/RendererV2Component;->special_type:Ljava/lang/String;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/RendererV2Component;->special_type:Ljava/lang/String;

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getMaterialResourceKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/RendererV2Component;->materialResourceKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecial_type()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/RendererV2Component;->special_type:Ljava/lang/String;

    return-object v0
.end method

.method public setMaterialResourceKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/RendererV2Component;->materialResourceKey:Ljava/lang/String;

    const-string v0, "materialResourceKey"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSpecial_type(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/RendererV2Component;->special_type:Ljava/lang/String;

    const-string v0, "special_type"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "RendererV2Component"

    return-object v0
.end method
