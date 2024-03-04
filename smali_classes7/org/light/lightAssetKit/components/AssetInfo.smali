.class public Lorg/light/lightAssetKit/components/AssetInfo;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private controllerType:Lorg/light/lightAssetKit/enums/ControllerType;

.field private duration:I

.field private inited:Z

.field private randomSeed:I

.field private rootPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/AssetInfo;->duration:I

    const-string v1, ""

    .line 3
    iput-object v1, p0, Lorg/light/lightAssetKit/components/AssetInfo;->rootPath:Ljava/lang/String;

    .line 4
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/AssetInfo;->inited:Z

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/AssetInfo;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/AssetInfo;

    .line 3
    iget v1, v0, Lorg/light/lightAssetKit/components/AssetInfo;->randomSeed:I

    iput v1, p0, Lorg/light/lightAssetKit/components/AssetInfo;->randomSeed:I

    .line 4
    iget v1, v0, Lorg/light/lightAssetKit/components/AssetInfo;->duration:I

    iput v1, p0, Lorg/light/lightAssetKit/components/AssetInfo;->duration:I

    .line 5
    iget-object v1, v0, Lorg/light/lightAssetKit/components/AssetInfo;->rootPath:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/AssetInfo;->rootPath:Ljava/lang/String;

    .line 6
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/AssetInfo;->inited:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/AssetInfo;->inited:Z

    .line 7
    iget-object v0, v0, Lorg/light/lightAssetKit/components/AssetInfo;->controllerType:Lorg/light/lightAssetKit/enums/ControllerType;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/AssetInfo;->controllerType:Lorg/light/lightAssetKit/enums/ControllerType;

    .line 8
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getControllerType()Lorg/light/lightAssetKit/enums/ControllerType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/AssetInfo;->controllerType:Lorg/light/lightAssetKit/enums/ControllerType;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/AssetInfo;->duration:I

    return v0
.end method

.method public getInited()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/AssetInfo;->inited:Z

    return v0
.end method

.method public getRandomSeed()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/AssetInfo;->randomSeed:I

    return v0
.end method

.method public getRootPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/AssetInfo;->rootPath:Ljava/lang/String;

    return-object v0
.end method

.method public setControllerType(Lorg/light/lightAssetKit/enums/ControllerType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/AssetInfo;->controllerType:Lorg/light/lightAssetKit/enums/ControllerType;

    const-string v0, "controllerType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setDuration(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/AssetInfo;->duration:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "duration"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setInited(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/AssetInfo;->inited:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "inited"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRandomSeed(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/AssetInfo;->randomSeed:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "randomSeed"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRootPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/AssetInfo;->rootPath:Ljava/lang/String;

    const-string v0, "rootPath"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "AssetInfo"

    return-object v0
.end method
