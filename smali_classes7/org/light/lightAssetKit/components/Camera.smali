.class public Lorg/light/lightAssetKit/components/Camera;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private duplicateInput:I

.field private renderTargetKey:Ljava/lang/String;

.field private sizeConfig:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/16 v0, 0x500

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/Camera;->sizeConfig:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Camera;->renderTargetKey:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/Camera;->duplicateInput:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 6
    iput p1, p0, Lorg/light/lightAssetKit/components/Camera;->sizeConfig:I

    .line 7
    iput-object p2, p0, Lorg/light/lightAssetKit/components/Camera;->renderTargetKey:Ljava/lang/String;

    .line 8
    iput p3, p0, Lorg/light/lightAssetKit/components/Camera;->duplicateInput:I

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/Camera;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/Camera;

    .line 3
    iget v1, v0, Lorg/light/lightAssetKit/components/Camera;->sizeConfig:I

    iput v1, p0, Lorg/light/lightAssetKit/components/Camera;->sizeConfig:I

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Camera;->renderTargetKey:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Camera;->renderTargetKey:Ljava/lang/String;

    .line 5
    iget v0, v0, Lorg/light/lightAssetKit/components/Camera;->duplicateInput:I

    iput v0, p0, Lorg/light/lightAssetKit/components/Camera;->duplicateInput:I

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getDuplicateInput()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Camera;->duplicateInput:I

    return v0
.end method

.method public getRenderTargetKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Camera;->renderTargetKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSizeConfig()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Camera;->sizeConfig:I

    return v0
.end method

.method public setDuplicateInput(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Camera;->duplicateInput:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "duplicateInput"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRenderTargetKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Camera;->renderTargetKey:Ljava/lang/String;

    const-string v0, "renderTargetKey"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSizeConfig(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Camera;->sizeConfig:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "sizeConfig"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "Camera"

    return-object v0
.end method
