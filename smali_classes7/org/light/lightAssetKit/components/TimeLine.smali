.class public Lorg/light/lightAssetKit/components/TimeLine;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public entityID:I

.field public event:Ljava/lang/String;

.field public range:Lorg/light/lightAssetKit/components/TimeRange;

.field public time:I

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/TimeLine;->type:Ljava/lang/String;

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lorg/light/lightAssetKit/components/TimeLine;->entityID:I

    .line 4
    new-instance v1, Lorg/light/lightAssetKit/components/TimeRange;

    invoke-direct {v1}, Lorg/light/lightAssetKit/components/TimeRange;-><init>()V

    iput-object v1, p0, Lorg/light/lightAssetKit/components/TimeLine;->range:Lorg/light/lightAssetKit/components/TimeRange;

    const/high16 v1, -0x80000000

    .line 5
    iput v1, p0, Lorg/light/lightAssetKit/components/TimeLine;->time:I

    .line 6
    iput-object v0, p0, Lorg/light/lightAssetKit/components/TimeLine;->event:Ljava/lang/String;

    return-void
.end method
