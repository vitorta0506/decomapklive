.class final Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0x3ee

    if-eq p1, v0, :cond_b

    const/16 v0, 0x7d3

    const-string v1, "TXCVodVideoView"

    if-eq p1, v0, :cond_a

    const/16 v0, 0x7d7

    if-eq p1, v0, :cond_9

    const/16 v0, 0x7db

    if-eq p1, v0, :cond_7

    const/16 v0, 0x7de

    if-eq p1, v0, :cond_5

    const/16 v0, 0x7e4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x7ea

    if-eq p1, v0, :cond_2

    const-string v0, ",error:"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const/4 p3, 0x0

    if-eqz p4, :cond_0

    .line 1
    instance-of v2, p4, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2
    move-object p3, p4

    check-cast p3, Ljava/lang/String;

    .line 3
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v2, "dns resolved url:"

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 4
    invoke-static {v1, p3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_c

    .line 5
    iget-object p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const-string p4, "dns resolved"

    invoke-static {p2, p1, p3, p4}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6
    :pswitch_1
    iget-object p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const-string p3, "Video data received"

    const-string p4, "first video packet"

    invoke-static {p2, p1, p3, p4}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    if-eqz p4, :cond_1

    .line 7
    instance-of v2, p4, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 8
    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    check-cast p4, Ljava/lang/String;

    invoke-static {v2, p4}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v2, "TCP Connect ServerIp:"

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->q(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",port:"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-static {v1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_c

    .line 11
    iget-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const-string/jumbo p4, "tcp open"

    invoke-static {p3, p1, p2, p4}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string p2, "EVT_AUDIO_JITTER_STATE_FIRST_PLAY"

    .line 12
    invoke-static {v1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const-string p3, "Audio first play"

    const-string p4, "audio start"

    invoke-static {p2, p1, p3, p4}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-wide/16 p1, -0x1

    if-eqz p4, :cond_4

    .line 14
    instance-of v0, p4, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 15
    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 16
    :cond_4
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    long-to-int v0, p1

    const-string v2, "EVT_KEY_SELECT_TRACK_INDEX"

    .line 17
    invoke-virtual {p4, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "EVT_KEY_SELECT_TRACK_ERROR_CODE"

    .line 18
    invoke-virtual {p4, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "description"

    const-string v2, "Select Track Complete"

    .line 19
    invoke-virtual {p4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "VOD_PLAY_EVT_SELECT_TRACK_COMPLETE, trackIndex="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ,errorCode="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1, p4}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 22
    :cond_5
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "EVT_VOD_PLAY_LOADING_END: eof "

    invoke-virtual {p4, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const-string p4, "Buffer ended"

    const-string v0, "loading end"

    invoke-static {p3, p1, p4, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_6

    .line 24
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/e;

    move-result-object p1

    .line 25
    iget-object p1, p1, Lcom/tencent/liteav/txcplayer/e;->q:Ljava/lang/String;

    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "m3u8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 27
    :cond_6
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_c

    .line 28
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const/16 p3, 0x7d4

    const-string p4, "Playback started"

    const-string v0, "playing"

    invoke-static {p1, p3, p4, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1, p2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->f(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I

    .line 30
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 31
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x67

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 32
    :cond_7
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "EVT_VIDEO_CHANGE_ROTATION: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1, p2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I

    .line 34
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/e;

    move-result-object p1

    .line 35
    iget-boolean p1, p1, Lcom/tencent/liteav/txcplayer/e;->y:Z

    if-eqz p1, :cond_8

    .line 36
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->o(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result p1

    if-lez p1, :cond_8

    .line 37
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->o(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I

    .line 38
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcvodplayer/renderer/a;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 39
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcvodplayer/renderer/a;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->p(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/tencent/liteav/txcvodplayer/renderer/a;->setVideoRotation(I)V

    .line 40
    :cond_8
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Video angle "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->o(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "rotation "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p4}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->o(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, v0, p2, p3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string p2, "EVT_VIDEO_PLAY_LOADING"

    .line 41
    invoke-static {v1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const-string p3, "Buffer started"

    const-string p4, "loading start"

    invoke-static {p2, p1, p3, p4}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    const-string p2, "EVT_RENDER_FIRST_I_FRAME"

    .line 43
    invoke-static {v1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const-string p3, "VOD displayed the first frame"

    const-string p4, "render start"

    invoke-static {p2, p1, p3, p4}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->m(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRate(F)V

    .line 46
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->n(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Z

    goto :goto_0

    .line 47
    :cond_b
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->q(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    if-eqz p4, :cond_c

    instance-of p1, p4, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPDownLoadProgressInfo;

    if-eqz p1, :cond_c

    .line 48
    check-cast p4, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPDownLoadProgressInfo;

    .line 49
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    iget-object p2, p4, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPDownLoadProgressInfo;->extraInfo:Ljava/lang/String;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    iget-object p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const-string p3, "cdnip"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x7e0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
