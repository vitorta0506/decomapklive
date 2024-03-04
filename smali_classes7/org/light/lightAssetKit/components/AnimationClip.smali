.class public Lorg/light/lightAssetKit/components/AnimationClip;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public clipIndex:I

.field public duration:I

.field public name:Ljava/lang/String;

.field public progress:I

.field public resourceKey:Ljava/lang/String;

.field public resourceVersion:I

.field public startTime:I

.field public state:Lorg/light/lightAssetKit/enums/AnimationClipState;

.field public type:Lorg/light/lightAssetKit/enums/AnimationClipType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lorg/light/lightAssetKit/enums/AnimationClipType;->Component:Lorg/light/lightAssetKit/enums/AnimationClipType;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/AnimationClip;->type:Lorg/light/lightAssetKit/enums/AnimationClipType;

    .line 3
    sget-object v0, Lorg/light/lightAssetKit/enums/AnimationClipState;->Stopped:Lorg/light/lightAssetKit/enums/AnimationClipState;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/AnimationClip;->state:Lorg/light/lightAssetKit/enums/AnimationClipState;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/AnimationClip;->duration:I

    .line 5
    iput v0, p0, Lorg/light/lightAssetKit/components/AnimationClip;->progress:I

    .line 6
    iput v0, p0, Lorg/light/lightAssetKit/components/AnimationClip;->startTime:I

    const-string v1, ""

    .line 7
    iput-object v1, p0, Lorg/light/lightAssetKit/components/AnimationClip;->name:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lorg/light/lightAssetKit/components/AnimationClip;->resourceKey:Ljava/lang/String;

    .line 9
    iput v0, p0, Lorg/light/lightAssetKit/components/AnimationClip;->resourceVersion:I

    .line 10
    iput v0, p0, Lorg/light/lightAssetKit/components/AnimationClip;->clipIndex:I

    return-void
.end method
