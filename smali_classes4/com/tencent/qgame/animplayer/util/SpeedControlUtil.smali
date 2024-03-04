.class public final Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/util/SpeedControlUtil$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0004J\u0006\u0010\r\u001a\u00020\u000bJ\u000e\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;",
        "",
        "()V",
        "ONE_MILLION",
        "",
        "fixedFrameDurationUsec",
        "loopReset",
        "",
        "prevMonoUsec",
        "prevPresentUsec",
        "preRender",
        "",
        "presentationTimeUsec",
        "reset",
        "setFixedPlaybackRate",
        "fps",
        "",
        "Companion",
        "animplayer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcom/tencent/qgame/animplayer/util/SpeedControlUtil$Companion;

.field private static final TAG:Ljava/lang/String; = "AnimPlayer.SpeedControlUtil"


# instance fields
.field private final ONE_MILLION:J

.field private fixedFrameDurationUsec:J

.field private loopReset:Z

.field private prevMonoUsec:J

.field private prevPresentUsec:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->Companion:Lcom/tencent/qgame/animplayer/util/SpeedControlUtil$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xf4240

    .line 2
    iput-wide v0, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->ONE_MILLION:J

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->loopReset:Z

    return-void
.end method


# virtual methods
.method public final preRender(J)V
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->prevMonoUsec:J

    const/16 v2, 0x3e8

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->prevMonoUsec:J

    .line 3
    iput-wide p1, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->prevPresentUsec:J

    goto/16 :goto_4

    .line 4
    :cond_0
    iget-boolean v5, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->loopReset:Z

    if-eqz v5, :cond_1

    .line 5
    iget-wide v5, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->ONE_MILLION:J

    const/16 v7, 0x1e

    int-to-long v7, v7

    div-long/2addr v5, v7

    sub-long v5, p1, v5

    iput-wide v5, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->prevPresentUsec:J

    const/4 v5, 0x0

    .line 6
    iput-boolean v5, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->loopReset:Z

    .line 7
    :cond_1
    iget-wide v5, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->fixedFrameDurationUsec:J

    cmp-long v7, v5, v3

    if-eqz v7, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-wide v5, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->prevPresentUsec:J

    sub-long v5, p1, v5

    :goto_0
    cmp-long p1, v5, v3

    if-gez p1, :cond_3

    goto :goto_1

    :cond_3
    const/16 p1, 0xa

    int-to-long p1, p1

    .line 9
    iget-wide v3, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->ONE_MILLION:J

    mul-long p1, p1, v3

    cmp-long v7, v5, p1

    if-lez v7, :cond_4

    const/4 p1, 0x5

    int-to-long p1, p1

    mul-long v3, v3, p1

    goto :goto_1

    :cond_4
    move-wide v3, v5

    :goto_1
    add-long/2addr v0, v3

    .line 10
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    int-to-long v5, v2

    div-long/2addr p1, v5

    :goto_2
    const/16 v7, 0x64

    int-to-long v7, v7

    sub-long v7, v0, v7

    cmp-long v9, p1, v7

    if-gez v9, :cond_6

    sub-long p1, v0, p1

    const v7, 0x7a120

    int-to-long v7, v7

    cmp-long v9, p1, v7

    if-lez v9, :cond_5

    const-wide/32 p1, 0x7a120

    .line 11
    :cond_5
    :try_start_0
    div-long v7, p1, v5

    rem-long/2addr p1, v5

    long-to-int p2, p1

    mul-int/lit16 p2, p2, 0x3e8

    invoke-static {v7, v8, p2}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 12
    sget-object p2, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AnimPlayer.SpeedControlUtil"

    invoke-virtual {p2, v8, v7, p1}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :goto_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    div-long/2addr p1, v5

    goto :goto_2

    .line 14
    :cond_6
    iget-wide p1, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->prevMonoUsec:J

    add-long/2addr p1, v3

    iput-wide p1, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->prevMonoUsec:J

    .line 15
    iget-wide p1, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->prevPresentUsec:J

    add-long/2addr p1, v3

    iput-wide p1, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->prevPresentUsec:J

    :goto_4
    return-void
.end method

.method public final reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->prevPresentUsec:J

    .line 2
    iput-wide v0, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->prevMonoUsec:J

    return-void
.end method

.method public final setFixedPlaybackRate(I)V
    .locals 4

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->ONE_MILLION:J

    int-to-long v2, p1

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->fixedFrameDurationUsec:J

    return-void
.end method
