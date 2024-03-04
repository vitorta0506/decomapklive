.class public Lorg/light/lightAssetKit/components/PointItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public fixed:Z

.field public positionX:F

.field public positionY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/PointItem;->positionX:F

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/PointItem;->positionY:F

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/PointItem;->fixed:Z

    return-void
.end method

.method public constructor <init>(FFZ)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lorg/light/lightAssetKit/components/PointItem;->positionX:F

    .line 7
    iput p2, p0, Lorg/light/lightAssetKit/components/PointItem;->positionY:F

    .line 8
    iput-boolean p3, p0, Lorg/light/lightAssetKit/components/PointItem;->fixed:Z

    return-void
.end method
