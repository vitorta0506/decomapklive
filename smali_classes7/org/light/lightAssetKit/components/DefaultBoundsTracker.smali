.class public Lorg/light/lightAssetKit/components/DefaultBoundsTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public endPosition:Lorg/light/lightAssetKit/components/Vec3;

.field public endSize:Lorg/light/lightAssetKit/components/Size;

.field public startPosition:Lorg/light/lightAssetKit/components/Vec3;

.field public startSize:Lorg/light/lightAssetKit/components/Size;

.field public timeRange:Lorg/light/lightAssetKit/components/TimeRange;

.field public zoom:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/DefaultBoundsTracker;->zoom:F

    .line 3
    new-instance v0, Lorg/light/lightAssetKit/components/Vec3;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Vec3;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/DefaultBoundsTracker;->startPosition:Lorg/light/lightAssetKit/components/Vec3;

    .line 4
    new-instance v0, Lorg/light/lightAssetKit/components/Vec3;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Vec3;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/DefaultBoundsTracker;->endPosition:Lorg/light/lightAssetKit/components/Vec3;

    .line 5
    new-instance v0, Lorg/light/lightAssetKit/components/Size;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Size;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/DefaultBoundsTracker;->startSize:Lorg/light/lightAssetKit/components/Size;

    .line 6
    new-instance v0, Lorg/light/lightAssetKit/components/Size;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Size;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/DefaultBoundsTracker;->endSize:Lorg/light/lightAssetKit/components/Size;

    .line 7
    new-instance v0, Lorg/light/lightAssetKit/components/TimeRange;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/TimeRange;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/DefaultBoundsTracker;->timeRange:Lorg/light/lightAssetKit/components/TimeRange;

    return-void
.end method
