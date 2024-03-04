.class public Lorg/light/lightAssetKit/components/Image;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private duration:I

.field private loop:Z

.field private scaleMode:Lorg/light/lightAssetKit/enums/PAGScaleMode;

.field private src:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 2
    sget-object v0, Lorg/light/lightAssetKit/enums/PAGScaleMode;->LetterBox:Lorg/light/lightAssetKit/enums/PAGScaleMode;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Image;->scaleMode:Lorg/light/lightAssetKit/enums/PAGScaleMode;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/Image;->duration:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/Image;->loop:Z

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Image;->src:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/Image;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/Image;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Image;->scaleMode:Lorg/light/lightAssetKit/enums/PAGScaleMode;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Image;->scaleMode:Lorg/light/lightAssetKit/enums/PAGScaleMode;

    .line 4
    iget v1, v0, Lorg/light/lightAssetKit/components/Image;->duration:I

    iput v1, p0, Lorg/light/lightAssetKit/components/Image;->duration:I

    .line 5
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/Image;->loop:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/Image;->loop:Z

    .line 6
    iget-object v0, v0, Lorg/light/lightAssetKit/components/Image;->src:Ljava/lang/String;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Image;->src:Ljava/lang/String;

    .line 7
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Image;->duration:I

    return v0
.end method

.method public getLoop()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/Image;->loop:Z

    return v0
.end method

.method public getScaleMode()Lorg/light/lightAssetKit/enums/PAGScaleMode;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Image;->scaleMode:Lorg/light/lightAssetKit/enums/PAGScaleMode;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Image;->src:Ljava/lang/String;

    return-object v0
.end method

.method public setDuration(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Image;->duration:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "duration"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLoop(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/Image;->loop:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "loop"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setScaleMode(Lorg/light/lightAssetKit/enums/PAGScaleMode;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Image;->scaleMode:Lorg/light/lightAssetKit/enums/PAGScaleMode;

    const-string v0, "scaleMode"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Image;->src:Ljava/lang/String;

    const-string v0, "src"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "Image"

    return-object v0
.end method
