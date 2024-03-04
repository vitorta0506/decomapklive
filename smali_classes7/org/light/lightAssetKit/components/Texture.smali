.class public Lorg/light/lightAssetKit/components/Texture;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private sourceTextureId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Texture;->sourceTextureId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/Texture;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/Texture;

    .line 3
    iget-object v0, v0, Lorg/light/lightAssetKit/components/Texture;->sourceTextureId:Ljava/lang/String;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Texture;->sourceTextureId:Ljava/lang/String;

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getSourceTextureId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Texture;->sourceTextureId:Ljava/lang/String;

    return-object v0
.end method

.method public setSourceTextureId(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Texture;->sourceTextureId:Ljava/lang/String;

    const-string v0, "sourceTextureId"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "Texture"

    return-object v0
.end method
