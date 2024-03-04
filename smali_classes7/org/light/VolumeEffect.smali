.class public Lorg/light/VolumeEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public duration:J

.field public end:F

.field public endOffset:J

.field public start:F

.field public startOffset:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lorg/light/VolumeEffect;->startOffset:J

    .line 3
    iput-wide v0, p0, Lorg/light/VolumeEffect;->endOffset:J

    .line 4
    iput-wide v0, p0, Lorg/light/VolumeEffect;->duration:J

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/light/VolumeEffect;->start:F

    .line 6
    iput v0, p0, Lorg/light/VolumeEffect;->end:F

    return-void
.end method
