.class public Lorg/light/lightAssetKit/components/SkyBox;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private bgLut:Ljava/lang/String;

.field private cubeMap:Ljava/lang/String;

.field private maskType:Lorg/light/lightAssetKit/enums/SkyBoxMaskType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/SkyBox;->bgLut:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lorg/light/lightAssetKit/components/SkyBox;->cubeMap:Ljava/lang/String;

    .line 4
    sget-object v0, Lorg/light/lightAssetKit/enums/SkyBoxMaskType;->Background:Lorg/light/lightAssetKit/enums/SkyBoxMaskType;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/SkyBox;->maskType:Lorg/light/lightAssetKit/enums/SkyBoxMaskType;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/SkyBox;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/SkyBox;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/SkyBox;->bgLut:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/SkyBox;->bgLut:Ljava/lang/String;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/SkyBox;->cubeMap:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/SkyBox;->cubeMap:Ljava/lang/String;

    .line 5
    iget-object v0, v0, Lorg/light/lightAssetKit/components/SkyBox;->maskType:Lorg/light/lightAssetKit/enums/SkyBoxMaskType;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/SkyBox;->maskType:Lorg/light/lightAssetKit/enums/SkyBoxMaskType;

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getBgLut()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/SkyBox;->bgLut:Ljava/lang/String;

    return-object v0
.end method

.method public getCubeMap()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/SkyBox;->cubeMap:Ljava/lang/String;

    return-object v0
.end method

.method public getMaskType()Lorg/light/lightAssetKit/enums/SkyBoxMaskType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/SkyBox;->maskType:Lorg/light/lightAssetKit/enums/SkyBoxMaskType;

    return-object v0
.end method

.method public setBgLut(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/SkyBox;->bgLut:Ljava/lang/String;

    const-string v0, "bgLut"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCubeMap(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/SkyBox;->cubeMap:Ljava/lang/String;

    const-string v0, "cubeMap"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMaskType(Lorg/light/lightAssetKit/enums/SkyBoxMaskType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/SkyBox;->maskType:Lorg/light/lightAssetKit/enums/SkyBoxMaskType;

    const-string v0, "maskType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "SkyBox"

    return-object v0
.end method
