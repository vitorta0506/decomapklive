.class public Lorg/light/lightAssetKit/components/TimeRange;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public duration:I

.field public startTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/TimeRange;->startTime:I

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/TimeRange;->duration:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lorg/light/lightAssetKit/components/TimeRange;->startTime:I

    .line 6
    iput p2, p0, Lorg/light/lightAssetKit/components/TimeRange;->duration:I

    return-void
.end method
