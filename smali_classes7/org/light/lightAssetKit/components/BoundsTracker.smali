.class public Lorg/light/lightAssetKit/components/BoundsTracker;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private endPosition:Lorg/light/lightAssetKit/components/Vec3;

.field private endSize:Lorg/light/lightAssetKit/components/Size;

.field private key:Ljava/lang/String;

.field private pagLayerName:Ljava/lang/String;

.field private startPosition:Lorg/light/lightAssetKit/components/Vec3;

.field private startSize:Lorg/light/lightAssetKit/components/Size;

.field private timeRange:Lorg/light/lightAssetKit/components/TimeRange;

.field private zoom:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->key:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->pagLayerName:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->zoom:F

    .line 5
    new-instance v0, Lorg/light/lightAssetKit/components/Vec3;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Vec3;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->startPosition:Lorg/light/lightAssetKit/components/Vec3;

    .line 6
    new-instance v0, Lorg/light/lightAssetKit/components/Vec3;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Vec3;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->endPosition:Lorg/light/lightAssetKit/components/Vec3;

    .line 7
    new-instance v0, Lorg/light/lightAssetKit/components/Size;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Size;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->startSize:Lorg/light/lightAssetKit/components/Size;

    .line 8
    new-instance v0, Lorg/light/lightAssetKit/components/Size;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Size;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->endSize:Lorg/light/lightAssetKit/components/Size;

    .line 9
    new-instance v0, Lorg/light/lightAssetKit/components/TimeRange;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/TimeRange;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->timeRange:Lorg/light/lightAssetKit/components/TimeRange;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FLorg/light/lightAssetKit/components/Vec3;Lorg/light/lightAssetKit/components/Vec3;Lorg/light/lightAssetKit/components/Size;Lorg/light/lightAssetKit/components/Size;Lorg/light/lightAssetKit/components/TimeRange;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->key:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->pagLayerName:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    iput v0, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->zoom:F

    .line 14
    new-instance v0, Lorg/light/lightAssetKit/components/Vec3;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Vec3;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->startPosition:Lorg/light/lightAssetKit/components/Vec3;

    .line 15
    new-instance v0, Lorg/light/lightAssetKit/components/Vec3;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Vec3;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->endPosition:Lorg/light/lightAssetKit/components/Vec3;

    .line 16
    new-instance v0, Lorg/light/lightAssetKit/components/Size;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Size;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->startSize:Lorg/light/lightAssetKit/components/Size;

    .line 17
    new-instance v0, Lorg/light/lightAssetKit/components/Size;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Size;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->endSize:Lorg/light/lightAssetKit/components/Size;

    .line 18
    new-instance v0, Lorg/light/lightAssetKit/components/TimeRange;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/TimeRange;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->key:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->pagLayerName:Ljava/lang/String;

    .line 21
    iput p3, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->zoom:F

    .line 22
    iput-object p4, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->startPosition:Lorg/light/lightAssetKit/components/Vec3;

    .line 23
    iput-object p5, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->endPosition:Lorg/light/lightAssetKit/components/Vec3;

    .line 24
    iput-object p6, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->startSize:Lorg/light/lightAssetKit/components/Size;

    .line 25
    iput-object p7, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->endSize:Lorg/light/lightAssetKit/components/Size;

    .line 26
    iput-object p8, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->timeRange:Lorg/light/lightAssetKit/components/TimeRange;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/BoundsTracker;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/BoundsTracker;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/BoundsTracker;->key:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->key:Ljava/lang/String;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/BoundsTracker;->pagLayerName:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->pagLayerName:Ljava/lang/String;

    .line 5
    iget v1, v0, Lorg/light/lightAssetKit/components/BoundsTracker;->zoom:F

    iput v1, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->zoom:F

    .line 6
    iget-object v1, v0, Lorg/light/lightAssetKit/components/BoundsTracker;->startPosition:Lorg/light/lightAssetKit/components/Vec3;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->startPosition:Lorg/light/lightAssetKit/components/Vec3;

    .line 7
    iget-object v1, v0, Lorg/light/lightAssetKit/components/BoundsTracker;->endPosition:Lorg/light/lightAssetKit/components/Vec3;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->endPosition:Lorg/light/lightAssetKit/components/Vec3;

    .line 8
    iget-object v1, v0, Lorg/light/lightAssetKit/components/BoundsTracker;->startSize:Lorg/light/lightAssetKit/components/Size;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->startSize:Lorg/light/lightAssetKit/components/Size;

    .line 9
    iget-object v1, v0, Lorg/light/lightAssetKit/components/BoundsTracker;->endSize:Lorg/light/lightAssetKit/components/Size;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->endSize:Lorg/light/lightAssetKit/components/Size;

    .line 10
    iget-object v0, v0, Lorg/light/lightAssetKit/components/BoundsTracker;->timeRange:Lorg/light/lightAssetKit/components/TimeRange;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->timeRange:Lorg/light/lightAssetKit/components/TimeRange;

    .line 11
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getEndPosition()Lorg/light/lightAssetKit/components/Vec3;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->endPosition:Lorg/light/lightAssetKit/components/Vec3;

    return-object v0
.end method

.method public getEndSize()Lorg/light/lightAssetKit/components/Size;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->endSize:Lorg/light/lightAssetKit/components/Size;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getPagLayerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->pagLayerName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPosition()Lorg/light/lightAssetKit/components/Vec3;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->startPosition:Lorg/light/lightAssetKit/components/Vec3;

    return-object v0
.end method

.method public getStartSize()Lorg/light/lightAssetKit/components/Size;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->startSize:Lorg/light/lightAssetKit/components/Size;

    return-object v0
.end method

.method public getTimeRange()Lorg/light/lightAssetKit/components/TimeRange;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->timeRange:Lorg/light/lightAssetKit/components/TimeRange;

    return-object v0
.end method

.method public getZoom()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->zoom:F

    return v0
.end method

.method public setEndPosition(Lorg/light/lightAssetKit/components/Vec3;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->endPosition:Lorg/light/lightAssetKit/components/Vec3;

    const-string v0, "endPosition"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEndSize(Lorg/light/lightAssetKit/components/Size;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->endSize:Lorg/light/lightAssetKit/components/Size;

    const-string v0, "endSize"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->key:Ljava/lang/String;

    const-string v0, "key"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPagLayerName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->pagLayerName:Ljava/lang/String;

    const-string v0, "pagLayerName"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setStartPosition(Lorg/light/lightAssetKit/components/Vec3;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->startPosition:Lorg/light/lightAssetKit/components/Vec3;

    const-string v0, "startPosition"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setStartSize(Lorg/light/lightAssetKit/components/Size;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->startSize:Lorg/light/lightAssetKit/components/Size;

    const-string v0, "startSize"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTimeRange(Lorg/light/lightAssetKit/components/TimeRange;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->timeRange:Lorg/light/lightAssetKit/components/TimeRange;

    const-string v0, "timeRange"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setZoom(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/BoundsTracker;->zoom:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "zoom"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "BoundsTracker"

    return-object v0
.end method
