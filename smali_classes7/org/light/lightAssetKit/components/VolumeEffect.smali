.class public Lorg/light/lightAssetKit/components/VolumeEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public duration:I

.field public end:F

.field public endOffset:I

.field public start:F

.field public startOffset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/VolumeEffect;->startOffset:I

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/VolumeEffect;->endOffset:I

    return-void
.end method
