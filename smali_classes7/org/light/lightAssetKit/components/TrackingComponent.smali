.class public Lorg/light/lightAssetKit/components/TrackingComponent;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private alignPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private scalePivotPoint1:I

.field private scalePivotPoint2:I

.field private xAxisRotateTrack:Z

.field private xAxisScale:Z

.field private xAxisTrack:Z

.field private yAxisRotateTrack:Z

.field private yAxisScale:Z

.field private yAxisTrack:Z

.field private zAxisRotateTrack:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Integer;

    const/16 v3, 0x40

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->alignPoints:Ljava/util/ArrayList;

    .line 3
    iput v4, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->scalePivotPoint1:I

    const/16 v0, 0x12

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->scalePivotPoint2:I

    .line 5
    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->xAxisTrack:Z

    .line 6
    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->yAxisTrack:Z

    .line 7
    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->xAxisRotateTrack:Z

    .line 8
    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->yAxisRotateTrack:Z

    .line 9
    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->zAxisRotateTrack:Z

    .line 10
    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->xAxisScale:Z

    .line 11
    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->yAxisScale:Z

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/TrackingComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/TrackingComponent;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/TrackingComponent;->alignPoints:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->alignPoints:Ljava/util/ArrayList;

    .line 4
    iget v1, v0, Lorg/light/lightAssetKit/components/TrackingComponent;->scalePivotPoint1:I

    iput v1, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->scalePivotPoint1:I

    .line 5
    iget v1, v0, Lorg/light/lightAssetKit/components/TrackingComponent;->scalePivotPoint2:I

    iput v1, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->scalePivotPoint2:I

    .line 6
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/TrackingComponent;->xAxisTrack:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->xAxisTrack:Z

    .line 7
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/TrackingComponent;->yAxisTrack:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->yAxisTrack:Z

    .line 8
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/TrackingComponent;->xAxisRotateTrack:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->xAxisRotateTrack:Z

    .line 9
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/TrackingComponent;->yAxisRotateTrack:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->yAxisRotateTrack:Z

    .line 10
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/TrackingComponent;->zAxisRotateTrack:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->zAxisRotateTrack:Z

    .line 11
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/TrackingComponent;->xAxisScale:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->xAxisScale:Z

    .line 12
    iget-boolean v0, v0, Lorg/light/lightAssetKit/components/TrackingComponent;->yAxisScale:Z

    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->yAxisScale:Z

    .line 13
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getAlignPoints()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->alignPoints:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getScalePivotPoint1()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->scalePivotPoint1:I

    return v0
.end method

.method public getScalePivotPoint2()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->scalePivotPoint2:I

    return v0
.end method

.method public getXAxisRotateTrack()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->xAxisRotateTrack:Z

    return v0
.end method

.method public getXAxisScale()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->xAxisScale:Z

    return v0
.end method

.method public getXAxisTrack()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->xAxisTrack:Z

    return v0
.end method

.method public getYAxisRotateTrack()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->yAxisRotateTrack:Z

    return v0
.end method

.method public getYAxisScale()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->yAxisScale:Z

    return v0
.end method

.method public getYAxisTrack()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->yAxisTrack:Z

    return v0
.end method

.method public getZAxisRotateTrack()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->zAxisRotateTrack:Z

    return v0
.end method

.method public setAlignPoints(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->alignPoints:Ljava/util/ArrayList;

    const-string v0, "alignPoints"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setScalePivotPoint1(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->scalePivotPoint1:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "scalePivotPoint1"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setScalePivotPoint2(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->scalePivotPoint2:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "scalePivotPoint2"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setXAxisRotateTrack(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->xAxisRotateTrack:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "xAxisRotateTrack"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setXAxisScale(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->xAxisScale:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "xAxisScale"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setXAxisTrack(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->xAxisTrack:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "xAxisTrack"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setYAxisRotateTrack(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->yAxisRotateTrack:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "yAxisRotateTrack"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setYAxisScale(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->yAxisScale:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "yAxisScale"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setYAxisTrack(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->yAxisTrack:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "yAxisTrack"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setZAxisRotateTrack(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/TrackingComponent;->zAxisRotateTrack:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "zAxisRotateTrack"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "TrackingComponent"

    return-object v0
.end method
