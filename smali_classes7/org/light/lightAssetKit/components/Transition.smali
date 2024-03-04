.class public Lorg/light/lightAssetKit/components/Transition;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private duration:I

.field private firstIndex:I

.field private lastIndex:I

.field private renderType:Lorg/light/lightAssetKit/enums/TransitionType;

.field private scaleMode:Lorg/light/lightAssetKit/enums/PAGScaleMode;

.field private src:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/Transition;->firstIndex:I

    const/4 v1, 0x1

    .line 3
    iput v1, p0, Lorg/light/lightAssetKit/components/Transition;->lastIndex:I

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/Transition;->duration:I

    .line 5
    sget-object v0, Lorg/light/lightAssetKit/enums/PAGScaleMode;->Stretch:Lorg/light/lightAssetKit/enums/PAGScaleMode;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Transition;->scaleMode:Lorg/light/lightAssetKit/enums/PAGScaleMode;

    .line 6
    sget-object v0, Lorg/light/lightAssetKit/enums/TransitionType;->PAG:Lorg/light/lightAssetKit/enums/TransitionType;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Transition;->renderType:Lorg/light/lightAssetKit/enums/TransitionType;

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Transition;->src:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/Transition;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/Transition;

    .line 3
    iget v1, v0, Lorg/light/lightAssetKit/components/Transition;->firstIndex:I

    iput v1, p0, Lorg/light/lightAssetKit/components/Transition;->firstIndex:I

    .line 4
    iget v1, v0, Lorg/light/lightAssetKit/components/Transition;->lastIndex:I

    iput v1, p0, Lorg/light/lightAssetKit/components/Transition;->lastIndex:I

    .line 5
    iget v1, v0, Lorg/light/lightAssetKit/components/Transition;->duration:I

    iput v1, p0, Lorg/light/lightAssetKit/components/Transition;->duration:I

    .line 6
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Transition;->scaleMode:Lorg/light/lightAssetKit/enums/PAGScaleMode;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Transition;->scaleMode:Lorg/light/lightAssetKit/enums/PAGScaleMode;

    .line 7
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Transition;->renderType:Lorg/light/lightAssetKit/enums/TransitionType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Transition;->renderType:Lorg/light/lightAssetKit/enums/TransitionType;

    .line 8
    iget-object v0, v0, Lorg/light/lightAssetKit/components/Transition;->src:Ljava/lang/String;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Transition;->src:Ljava/lang/String;

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Transition;->duration:I

    return v0
.end method

.method public getFirstIndex()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Transition;->firstIndex:I

    return v0
.end method

.method public getLastIndex()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Transition;->lastIndex:I

    return v0
.end method

.method public getRenderType()Lorg/light/lightAssetKit/enums/TransitionType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Transition;->renderType:Lorg/light/lightAssetKit/enums/TransitionType;

    return-object v0
.end method

.method public getScaleMode()Lorg/light/lightAssetKit/enums/PAGScaleMode;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Transition;->scaleMode:Lorg/light/lightAssetKit/enums/PAGScaleMode;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Transition;->src:Ljava/lang/String;

    return-object v0
.end method

.method public setDuration(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Transition;->duration:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "duration"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFirstIndex(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Transition;->firstIndex:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "firstIndex"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLastIndex(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Transition;->lastIndex:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "lastIndex"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRenderType(Lorg/light/lightAssetKit/enums/TransitionType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Transition;->renderType:Lorg/light/lightAssetKit/enums/TransitionType;

    const-string v0, "renderType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setScaleMode(Lorg/light/lightAssetKit/enums/PAGScaleMode;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Transition;->scaleMode:Lorg/light/lightAssetKit/enums/PAGScaleMode;

    const-string v0, "scaleMode"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Transition;->src:Ljava/lang/String;

    const-string v0, "src"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "Transition"

    return-object v0
.end method
