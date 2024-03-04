.class final Lcom/tencent/liteav/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/txcplayer/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/a;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;)V
    .locals 12

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string v1, "EVT_MSG"

    const-string v2, ""

    const/16 v3, -0x17d5

    const-string v4, "description"

    if-eq p1, v3, :cond_14

    const/16 v3, -0x8fd

    if-eq p1, v3, :cond_13

    const/16 v3, 0x7db

    const-string v5, "EVT_PARAM1"

    if-eq p1, v3, :cond_12

    const/16 v3, 0x7ea

    if-eq p1, v3, :cond_15

    const/16 v3, 0x837

    if-eq p1, v3, :cond_15

    const/16 v3, 0x83a

    if-eq p1, v3, :cond_11

    const/16 v3, 0x7dd

    const-string v6, "TXCVodPlayer"

    if-eq p1, v3, :cond_10

    const/16 v3, 0x7de

    const-string v7, "TXCVodPlayCollection"

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq p1, v3, :cond_c

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "miss match event "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string/jumbo p1, "util play dns resolved"

    .line 3
    invoke-static {v6, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {p1}, Lcom/tencent/liteav/a;->e(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/a/a;

    move-result-object p1

    .line 5
    iget p2, p1, Lcom/tencent/liteav/txcvodplayer/a/a;->w:I

    if-nez p2, :cond_0

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/tencent/liteav/txcvodplayer/a/a;->c:J

    sub-long/2addr v0, v2

    long-to-int p2, v0

    iput p2, p1, Lcom/tencent/liteav/txcvodplayer/a/a;->w:I

    :cond_0
    return-void

    :pswitch_1
    const-string/jumbo p1, "util play first video packet"

    .line 7
    invoke-static {v6, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {p1}, Lcom/tencent/liteav/a;->e(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/a/a;

    move-result-object p1

    .line 9
    iget p2, p1, Lcom/tencent/liteav/txcvodplayer/a/a;->x:I

    if-nez p2, :cond_1

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/tencent/liteav/txcvodplayer/a/a;->d:J

    sub-long/2addr v0, v2

    long-to-int p2, v0

    iput p2, p1, Lcom/tencent/liteav/txcvodplayer/a/a;->x:I

    :cond_1
    return-void

    :pswitch_2
    const-string/jumbo p1, "util play tcp connect success"

    .line 11
    invoke-static {v6, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {p1}, Lcom/tencent/liteav/a;->e(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/a/a;

    move-result-object p1

    .line 13
    iget p2, p1, Lcom/tencent/liteav/txcvodplayer/a/a;->v:I

    if-nez p2, :cond_2

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/tencent/liteav/txcvodplayer/a/a;->c:J

    sub-long/2addr v0, v2

    long-to-int p2, v0

    iput p2, p1, Lcom/tencent/liteav/txcvodplayer/a/a;->v:I

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mTcpConnectTS = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p1, Lcom/tencent/liteav/txcvodplayer/a/a;->v:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mOriginBeginPlayTS = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p1, Lcom/tencent/liteav/txcvodplayer/a/a;->c:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 16
    :pswitch_3
    iget-object v3, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v3}, Lcom/tencent/liteav/a;->g(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/renderer/d;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 17
    iget-object v3, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v3}, Lcom/tencent/liteav/a;->g(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/renderer/d;

    move-result-object v3

    iget-object v5, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v5}, Lcom/tencent/liteav/a;->h(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getVideoWidth()I

    move-result v5

    iget-object v6, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v6}, Lcom/tencent/liteav/a;->h(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getVideoHeight()I

    move-result v6

    .line 18
    invoke-static {v3, v5, v6}, Lcom/tencent/liteav/txcvodplayer/renderer/h;->a(Lcom/tencent/liteav/txcvodplayer/renderer/d;II)Ljava/lang/Runnable;

    move-result-object v5

    const-string v6, "setVideoSize"

    invoke-virtual {v3, v5, v6}, Lcom/tencent/liteav/txcvodplayer/renderer/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 19
    :pswitch_4
    iget-object v3, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v3}, Lcom/tencent/liteav/a;->e(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/a/a;

    move-result-object v3

    .line 20
    iget-boolean v5, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->p:Z

    if-nez v5, :cond_15

    iget v5, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->l:I

    if-eqz v5, :cond_15

    iget-boolean v5, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->h:Z

    if-nez v5, :cond_15

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->e:J

    .line 22
    iput-boolean v8, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->q:Z

    .line 23
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setLoadBegin mBeginLoadTS= "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->e:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 24
    :pswitch_5
    iget-object v3, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v3}, Lcom/tencent/liteav/a;->e(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/liteav/txcvodplayer/a/a;->c()V

    .line 25
    iget-object v3, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v3}, Lcom/tencent/liteav/a;->f(Lcom/tencent/liteav/a;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 26
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "loop once playback complete"

    .line 27
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object p2, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    const/16 v0, 0x1771

    invoke-static {p2, v0, p1}, Lcom/tencent/liteav/a;->a(Lcom/tencent/liteav/a;ILandroid/os/Bundle;)V

    .line 29
    iget-object p1, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {p1}, Lcom/tencent/liteav/a;->h(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a()V

    .line 30
    iget-object p1, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {p1}, Lcom/tencent/liteav/a;->e(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/a/a;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/tencent/liteav/txcvodplayer/a/a;->a(Z)V

    const-string p1, "loop play"

    .line 31
    invoke-static {v6, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 32
    :pswitch_6
    iget-object v3, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v3}, Lcom/tencent/liteav/a;->e(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/a/a;

    move-result-object v3

    const-string v5, "EVT_PLAY_DURATION"

    invoke-virtual {p2, v5, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "EVT_PLAY_PROGRESS"

    .line 33
    invoke-virtual {p2, v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 34
    iput v5, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->i:I

    .line 35
    iget-object v5, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/liteav/txcvodplayer/a/b;->a(Landroid/content/Context;)Lcom/tencent/liteav/txcvodplayer/a/b;

    move-result-object v5

    iget-object v7, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->A:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/tencent/liteav/txcvodplayer/a/b;->a(Ljava/lang/String;)I

    move-result v5

    div-int/2addr v6, v5

    .line 36
    iget v5, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->j:I

    if-eq v6, v5, :cond_15

    .line 37
    iput v6, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->j:I

    .line 38
    iget-boolean v5, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->f:Z

    if-nez v5, :cond_15

    .line 39
    invoke-virtual {v3}, Lcom/tencent/liteav/txcvodplayer/a/a;->b()V

    goto/16 :goto_7

    :pswitch_7
    const-string/jumbo v3, "util onPlayEvent VOD_PLAY_EVT_PLAY_BEGIN"

    .line 40
    invoke-static {v6, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_8
    const-string/jumbo v3, "util onPlayEvent VOD_PLAY_EVT_RCV_FIRST_I_FRAME"

    .line 41
    invoke-static {v6, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v3, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v3}, Lcom/tencent/liteav/a;->e(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/liteav/txcvodplayer/a/a;->d()V

    .line 43
    iget-object v3, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v3}, Lcom/tencent/liteav/a;->i(Lcom/tencent/liteav/a;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v8, 0x0

    goto/16 :goto_6

    .line 44
    :cond_3
    iget-object v3, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v3}, Lcom/tencent/liteav/a;->l(Lcom/tencent/liteav/a;)Z

    .line 45
    iget-object v3, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v3}, Lcom/tencent/liteav/a;->e(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/a/a;

    move-result-object v3

    const-string v6, "renderStart"

    .line 46
    invoke-static {v7, v6}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget v6, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->l:I

    if-nez v6, :cond_4

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v10, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->d:J

    sub-long/2addr v6, v10

    long-to-int v7, v6

    iput v7, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->l:I

    .line 49
    :cond_4
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v6, "EVT_ID"

    const/16 v7, 0x7d8

    .line 50
    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    invoke-static {}, Lcom/tencent/liteav/base/util/TimeUtil;->a()J

    move-result-wide v10

    const-string v6, "EVT_TIME"

    invoke-virtual {v3, v6, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 52
    invoke-static {}, Lcom/tencent/liteav/base/util/TimeUtil;->b()J

    move-result-wide v10

    const-string v6, "EVT_UTC_TIME"

    invoke-virtual {v3, v6, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 53
    iget-object v6, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v6}, Lcom/tencent/liteav/a;->h(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getMediaInfo()Lcom/tencent/liteav/txcplayer/model/b;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 54
    iget-object v6, v6, Lcom/tencent/liteav/txcplayer/model/b;->c:Ljava/lang/String;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v10, "hevc"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 55
    iget-object v6, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v6}, Lcom/tencent/liteav/a;->m(Lcom/tencent/liteav/a;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "Enables hardware decoding H265"

    goto :goto_0

    :cond_5
    const-string v6, "Enables software decoding h265"

    :goto_0
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    goto :goto_2

    .line 56
    :cond_6
    iget-object v6, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v6}, Lcom/tencent/liteav/a;->m(Lcom/tencent/liteav/a;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "Enables hardware decoding"

    goto :goto_1

    :cond_7
    const-string v6, "Enables software decoding"

    :goto_1
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    .line 57
    :goto_2
    iget-object v10, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v10}, Lcom/tencent/liteav/a;->m(Lcom/tencent/liteav/a;)Z

    move-result v10

    const/4 v11, 0x2

    if-eqz v10, :cond_8

    const/4 v10, 0x1

    goto :goto_3

    :cond_8
    const/4 v10, 0x2

    :goto_3
    invoke-virtual {v3, v5, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "EVT_CODEC_TYPE"

    .line 58
    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    iget-object v5, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v5}, Lcom/tencent/liteav/a;->m(Lcom/tencent/liteav/a;)Z

    move-result v5

    if-eqz v5, :cond_a

    if-nez v6, :cond_9

    const/4 v5, 0x1

    goto :goto_5

    :cond_9
    const/4 v5, 0x3

    goto :goto_5

    :cond_a
    if-nez v6, :cond_b

    goto :goto_4

    :cond_b
    const/4 v9, 0x2

    :goto_4
    move v5, v9

    .line 60
    :goto_5
    iget-object v6, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v6}, Lcom/tencent/liteav/a;->e(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/a/a;

    move-result-object v6

    .line 61
    iput v5, v6, Lcom/tencent/liteav/txcvodplayer/a/a;->u:I

    .line 62
    invoke-virtual {p0, v7, v3}, Lcom/tencent/liteav/a$3;->a(ILandroid/os/Bundle;)V

    :goto_6
    if-nez v8, :cond_15

    return-void

    .line 63
    :pswitch_9
    iget-object v3, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v3}, Lcom/tencent/liteav/a;->e(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/a/a;

    move-result-object v3

    const/16 v5, -0x8ff

    const-string v6, "file not found"

    invoke-virtual {v3, v5, v6}, Lcom/tencent/liteav/txcvodplayer/a/a;->a(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 64
    :pswitch_a
    iget-object v3, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v3}, Lcom/tencent/liteav/a;->e(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/a/a;

    move-result-object v3

    const/16 v5, -0x900

    const-string v6, "h265 decode failed"

    invoke-virtual {v3, v5, v6}, Lcom/tencent/liteav/txcvodplayer/a/a;->a(ILjava/lang/String;)V

    .line 65
    iget-object v3, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v3}, Lcom/tencent/liteav/a;->i(Lcom/tencent/liteav/a;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 66
    iget-object v3, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v3}, Lcom/tencent/liteav/a;->j(Lcom/tencent/liteav/a;)Z

    .line 67
    iget-object v3, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v3}, Lcom/tencent/liteav/a;->k(Lcom/tencent/liteav/a;)Lcom/tencent/rtmp/TXVodPlayConfig;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tencent/liteav/a;->a(Lcom/tencent/rtmp/TXVodPlayConfig;)V

    goto/16 :goto_7

    .line 68
    :pswitch_b
    iget-object v3, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v3}, Lcom/tencent/liteav/a;->e(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/a/a;

    move-result-object v3

    const/16 v5, -0x901

    const-string v6, "HLS decrypt key error"

    invoke-virtual {v3, v5, v6}, Lcom/tencent/liteav/txcvodplayer/a/a;->a(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 69
    :cond_c
    iget-object v3, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v3}, Lcom/tencent/liteav/a;->e(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/a/a;

    move-result-object v3

    .line 70
    iget-boolean v5, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->p:Z

    if-nez v5, :cond_e

    iget v5, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->l:I

    if-eqz v5, :cond_e

    iget-boolean v5, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->h:Z

    if-nez v5, :cond_e

    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setLoadEnd mFirstFrame="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->l:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , mIsLoading = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->q:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",mBeginLoadTS = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->e:J

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-boolean v5, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->q:Z

    if-eqz v5, :cond_e

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v10, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->e:J

    sub-long/2addr v5, v10

    long-to-int v6, v5

    .line 74
    iget v5, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->n:I

    add-int/2addr v5, v6

    iput v5, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->n:I

    .line 75
    iget v5, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->m:I

    add-int/2addr v5, v8

    iput v5, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->m:I

    .line 76
    iget v5, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->o:I

    if-ge v5, v6, :cond_d

    .line 77
    iput v6, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->o:I

    .line 78
    :cond_d
    iput-boolean v9, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->q:Z

    .line 79
    :cond_e
    iget-boolean v5, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->p:Z

    if-eqz v5, :cond_f

    .line 80
    iput-boolean v9, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->p:Z

    .line 81
    :cond_f
    iget-object v3, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v3}, Lcom/tencent/liteav/a;->e(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/liteav/txcvodplayer/a/a;->d()V

    goto :goto_7

    :cond_10
    const-string/jumbo v3, "util onPlayEvent VOD_PLAY_EVT_VOD_PLAY_PREPARED"

    .line 82
    invoke-static {v6, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 83
    :cond_11
    iget-object v3, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v3}, Lcom/tencent/liteav/a;->i(Lcom/tencent/liteav/a;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 84
    iget-object v3, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v3}, Lcom/tencent/liteav/a;->j(Lcom/tencent/liteav/a;)Z

    .line 85
    iget-object v3, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v3}, Lcom/tencent/liteav/a;->k(Lcom/tencent/liteav/a;)Lcom/tencent/rtmp/TXVodPlayConfig;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tencent/liteav/a;->a(Lcom/tencent/rtmp/TXVodPlayConfig;)V

    goto :goto_7

    .line 86
    :cond_12
    iget-object v3, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v3}, Lcom/tencent/liteav/a;->h(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getMetaRotationDegree()I

    move-result v3

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_7

    .line 87
    :cond_13
    iget-object v5, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v5}, Lcom/tencent/liteav/a;->e(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/a/a;

    move-result-object v5

    const-string v6, "network disconnect, has retry reconnect, but still failed!"

    invoke-virtual {v5, v3, v6}, Lcom/tencent/liteav/txcvodplayer/a/a;->a(ILjava/lang/String;)V

    goto :goto_7

    .line 88
    :cond_14
    iget-object v5, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v5}, Lcom/tencent/liteav/a;->e(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/a/a;

    move-result-object v5

    invoke-virtual {p2, v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/tencent/liteav/txcvodplayer/a/a;->a(ILjava/lang/String;)V

    .line 89
    :cond_15
    :goto_7
    :pswitch_c
    invoke-virtual {p2, v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object p2, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {p2, p1, v0}, Lcom/tencent/liteav/a;->a(Lcom/tencent/liteav/a;ILandroid/os/Bundle;)V

    return-void

    :pswitch_data_0
    .packed-switch -0x901
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d3
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_c
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7e0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4

    .line 91
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 92
    invoke-static {}, Lcom/tencent/liteav/base/util/t;->a()[I

    move-result-object v1

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CPU_USAGE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "fps"

    .line 94
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    const-string v2, "VIDEO_FPS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "dps"

    .line 95
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    const-string v2, "VIDEO_DPS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "tcpSpeed"

    .line 96
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    long-to-int v2, v1

    div-int/lit16 v2, v2, 0x3e8

    const-string v1, "NET_SPEED"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "cachedBytes"

    .line 97
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    long-to-int p1, v1

    div-int/lit16 p1, p1, 0x3e8

    const-string v1, "VIDEO_CACHE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    iget-object p1, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {p1}, Lcom/tencent/liteav/a;->h(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getVideoWidth()I

    move-result p1

    const-string v1, "VIDEO_WIDTH"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    iget-object p1, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {p1}, Lcom/tencent/liteav/a;->h(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getVideoHeight()I

    move-result p1

    const-string v1, "VIDEO_HEIGHT"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    iget-object p1, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {p1}, Lcom/tencent/liteav/a;->h(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getServerIp()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SERVER_IP"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {p1}, Lcom/tencent/liteav/a;->e(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/a/a;

    move-result-object p1

    iget-object v1, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    invoke-static {v1}, Lcom/tencent/liteav/a;->h(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getServerIp()Ljava/lang/String;

    move-result-object v1

    .line 102
    iput-object v1, p1, Lcom/tencent/liteav/txcvodplayer/a/a;->y:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    .line 103
    iput-object v1, p1, Lcom/tencent/liteav/txcvodplayer/a/a;->y:Ljava/lang/String;

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/a$3;->a:Lcom/tencent/liteav/a;

    const/16 v1, 0x3a99

    invoke-static {p1, v1, v0}, Lcom/tencent/liteav/a;->a(Lcom/tencent/liteav/a;ILandroid/os/Bundle;)V

    return-void
.end method
