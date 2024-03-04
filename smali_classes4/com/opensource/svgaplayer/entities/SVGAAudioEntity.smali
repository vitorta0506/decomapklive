.class public final Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0012\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u001e\u001a\u00020\u001fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\u0008\u0016\u0010\u0011\"\u0004\u0008\u0017\u0010\u0013R\u0011\u0010\u0018\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u000eR\u0011\u0010\u001a\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u000eR\u0011\u0010\u001c\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u000e\u00a8\u0006 "
    }
    d2 = {
        "Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;",
        "",
        "audioItem",
        "Lcom/opensource/svgaplayer/proto/AudioEntity;",
        "(Lcom/opensource/svgaplayer/proto/AudioEntity;)V",
        "getAudioItem",
        "()Lcom/opensource/svgaplayer/proto/AudioEntity;",
        "audioKey",
        "",
        "getAudioKey",
        "()Ljava/lang/String;",
        "endFrame",
        "",
        "getEndFrame",
        "()I",
        "playID",
        "getPlayID",
        "()Ljava/lang/Integer;",
        "setPlayID",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "soundID",
        "getSoundID",
        "setSoundID",
        "startFrame",
        "getStartFrame",
        "startTime",
        "getStartTime",
        "totalTime",
        "getTotalTime",
        "release",
        "",
        "com.opensource.svgaplayer"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final audioItem:Lcom/opensource/svgaplayer/proto/AudioEntity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final audioKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final endFrame:I

.field private playID:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private soundID:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final startFrame:I

.field private final startTime:I

.field private final totalTime:I


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/proto/AudioEntity;)V
    .locals 2
    .param p1    # Lcom/opensource/svgaplayer/proto/AudioEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "audioItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->audioItem:Lcom/opensource/svgaplayer/proto/AudioEntity;

    .line 2
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/AudioEntity;->audioKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->audioKey:Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/AudioEntity;->startFrame:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->startFrame:I

    .line 4
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/AudioEntity;->endFrame:Ljava/lang/Integer;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->endFrame:I

    .line 5
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/AudioEntity;->startTime:Ljava/lang/Integer;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->startTime:I

    .line 6
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/AudioEntity;->totalTime:Ljava/lang/Integer;

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_3
    iput v1, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->totalTime:I

    return-void
.end method


# virtual methods
.method public final getAudioItem()Lcom/opensource/svgaplayer/proto/AudioEntity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->audioItem:Lcom/opensource/svgaplayer/proto/AudioEntity;

    return-object v0
.end method

.method public final getAudioKey()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->audioKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getEndFrame()I
    .locals 1

    iget v0, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->endFrame:I

    return v0
.end method

.method public final getPlayID()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->playID:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSoundID()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->soundID:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getStartFrame()I
    .locals 1

    iget v0, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->startFrame:I

    return v0
.end method

.method public final getStartTime()I
    .locals 1

    iget v0, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->startTime:I

    return v0
.end method

.method public final getTotalTime()I
    .locals 1

    iget v0, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->totalTime:I

    return v0
.end method

.method public final release()V
    .locals 1

    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->audioItem:Lcom/opensource/svgaplayer/proto/AudioEntity;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/proto/AudioEntity;->release()V

    return-void
.end method

.method public final setPlayID(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->playID:Ljava/lang/Integer;

    return-void
.end method

.method public final setSoundID(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->soundID:Ljava/lang/Integer;

    return-void
.end method
