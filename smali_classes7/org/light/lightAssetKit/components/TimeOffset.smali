.class public Lorg/light/lightAssetKit/components/TimeOffset;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private duration:I

.field private endOffset:I

.field private loopCount:I

.field private startOffset:I

.field private visibleWhileOverTime:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/high16 v0, -0x80000000

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/TimeOffset;->startOffset:I

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/TimeOffset;->endOffset:I

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/TimeOffset;->duration:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/light/lightAssetKit/components/TimeOffset;->loopCount:I

    .line 6
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/TimeOffset;->visibleWhileOverTime:Z

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/TimeOffset;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/TimeOffset;

    .line 3
    iget v1, v0, Lorg/light/lightAssetKit/components/TimeOffset;->startOffset:I

    iput v1, p0, Lorg/light/lightAssetKit/components/TimeOffset;->startOffset:I

    .line 4
    iget v1, v0, Lorg/light/lightAssetKit/components/TimeOffset;->endOffset:I

    iput v1, p0, Lorg/light/lightAssetKit/components/TimeOffset;->endOffset:I

    .line 5
    iget v1, v0, Lorg/light/lightAssetKit/components/TimeOffset;->duration:I

    iput v1, p0, Lorg/light/lightAssetKit/components/TimeOffset;->duration:I

    .line 6
    iget v1, v0, Lorg/light/lightAssetKit/components/TimeOffset;->loopCount:I

    iput v1, p0, Lorg/light/lightAssetKit/components/TimeOffset;->loopCount:I

    .line 7
    iget-boolean v0, v0, Lorg/light/lightAssetKit/components/TimeOffset;->visibleWhileOverTime:Z

    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/TimeOffset;->visibleWhileOverTime:Z

    .line 8
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/TimeOffset;->duration:I

    return v0
.end method

.method public getEndOffset()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/TimeOffset;->endOffset:I

    return v0
.end method

.method public getLoopCount()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/TimeOffset;->loopCount:I

    return v0
.end method

.method public getStartOffset()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/TimeOffset;->startOffset:I

    return v0
.end method

.method public getVisibleWhileOverTime()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/TimeOffset;->visibleWhileOverTime:Z

    return v0
.end method

.method public setDuration(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/TimeOffset;->duration:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "duration"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEndOffset(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/TimeOffset;->endOffset:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "endOffset"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLoopCount(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/TimeOffset;->loopCount:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "loopCount"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setStartOffset(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/TimeOffset;->startOffset:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "startOffset"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setVisibleWhileOverTime(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/TimeOffset;->visibleWhileOverTime:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "visibleWhileOverTime"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "TimeOffset"

    return-object v0
.end method
