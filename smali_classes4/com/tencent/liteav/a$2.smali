.class public final Lcom/tencent/liteav/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/txcvodplayer/b/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/a;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/a$2;->a:Lcom/tencent/liteav/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 6

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFail: errorCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodPlayer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "EVT_ID"

    const/16 v3, -0x902

    .line 92
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    invoke-static {}, Lcom/tencent/liteav/base/util/TimeUtil;->a()J

    move-result-wide v4

    const-string v2, "EVT_TIME"

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 94
    invoke-static {}, Lcom/tencent/liteav/base/util/TimeUtil;->b()J

    move-result-wide v4

    const-string v2, "EVT_UTC_TIME"

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "EVT_MSG"

    .line 95
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "EVT_PARAM1"

    .line 96
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    iget-object p1, p0, Lcom/tencent/liteav/a$2;->a:Lcom/tencent/liteav/a;

    invoke-static {p1, v3, v0}, Lcom/tencent/liteav/a;->a(Lcom/tencent/liteav/a;ILandroid/os/Bundle;)V

    .line 98
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onError: eventId: -2306 description:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/txcvodplayer/b/c;Lcom/tencent/rtmp/TXPlayInfoParams;)V
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSuccess: protocol params = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodPlayer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/a$2;->a:Lcom/tencent/liteav/a;

    invoke-static {v0}, Lcom/tencent/liteav/a;->b(Lcom/tencent/liteav/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/b/c;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SimpleAES"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/a$2;->a:Lcom/tencent/liteav/a;

    .line 5
    iget-object v3, p1, Lcom/tencent/liteav/txcvodplayer/b/c;->d:Ljava/lang/String;

    .line 6
    iget-object v4, p1, Lcom/tencent/liteav/txcvodplayer/b/c;->e:Ljava/lang/String;

    .line 7
    invoke-static {v0, v3, v4}, Lcom/tencent/liteav/a;->a(Lcom/tencent/liteav/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/tencent/liteav/txcvodplayer/c/a;->a()Lcom/tencent/liteav/txcvodplayer/c/a;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/tencent/liteav/txcplayer/common/b;->a()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "PlayInfoProtocolV4Storage"

    if-eqz v4, :cond_1

    const-string v0, "clean cacheDir is empty"

    .line 11
    invoke-static {v5, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x36ee80

    div-long/2addr v6, v8

    .line 13
    iget-wide v8, v0, Lcom/tencent/liteav/txcvodplayer/c/a;->c:J

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-lez v4, :cond_2

    iget-wide v8, v0, Lcom/tencent/liteav/txcvodplayer/c/a;->c:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0x18

    cmp-long v4, v8, v10

    if-gez v4, :cond_2

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clean mLastCacheCleanTime: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/tencent/liteav/txcvodplayer/c/a;->c:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " not more than 24h"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_2
    iput-wide v6, v0, Lcom/tencent/liteav/txcvodplayer/c/a;->c:J

    .line 16
    invoke-static {}, Lcom/tencent/liteav/txcplayer/common/a;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    invoke-static {v0, v3, v6, v7}, Lcom/tencent/liteav/txcvodplayer/c/d;->a(Lcom/tencent/liteav/txcvodplayer/c/a;Ljava/lang/String;J)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/a$2;->a:Lcom/tencent/liteav/a;

    invoke-static {v0, v2, v2}, Lcom/tencent/liteav/a;->a(Lcom/tencent/liteav/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :goto_0
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/b/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 19
    iget-object v3, p1, Lcom/tencent/liteav/txcvodplayer/b/c;->b:Lcom/tencent/liteav/txcvodplayer/b/b;

    if-eqz v3, :cond_4

    const-string v4, "Widevine"

    .line 20
    invoke-virtual {v3, v4}, Lcom/tencent/liteav/txcvodplayer/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto :goto_1

    :cond_4
    move-object v5, v2

    .line 21
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 22
    iget-object p2, p0, Lcom/tencent/liteav/a$2;->a:Lcom/tencent/liteav/a;

    .line 23
    iput-object v2, p2, Lcom/tencent/liteav/a;->n:Ljava/lang/String;

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 25
    iget-object p2, p1, Lcom/tencent/liteav/txcvodplayer/b/c;->d:Ljava/lang/String;

    .line 26
    iget-object v3, p1, Lcom/tencent/liteav/txcvodplayer/b/c;->e:Ljava/lang/String;

    move-object v8, p2

    move-object v9, v3

    goto :goto_2

    :cond_5
    move-object v8, v2

    move-object v9, v8

    .line 27
    :goto_2
    iget-object v4, p0, Lcom/tencent/liteav/a$2;->a:Lcom/tencent/liteav/a;

    .line 28
    iget-object p2, p1, Lcom/tencent/liteav/txcvodplayer/b/c;->b:Lcom/tencent/liteav/txcvodplayer/b/b;

    if-eqz p2, :cond_6

    .line 29
    iget-object v3, p2, Lcom/tencent/liteav/txcvodplayer/b/b;->h:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 30
    iget-object p2, p2, Lcom/tencent/liteav/txcvodplayer/b/b;->h:Ljava/lang/String;

    move-object v6, p2

    goto :goto_3

    :cond_6
    move-object v6, v2

    .line 31
    :goto_3
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/b/c;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/tencent/liteav/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v4 .. v9}, Lcom/tencent/liteav/a;->a(Lcom/tencent/liteav/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 32
    :cond_7
    iget-object v3, p0, Lcom/tencent/liteav/a$2;->a:Lcom/tencent/liteav/a;

    invoke-static {v3}, Lcom/tencent/liteav/a;->c(Lcom/tencent/liteav/a;)V

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 34
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/b/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/liteav/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    iget-object v3, p0, Lcom/tencent/liteav/a$2;->a:Lcom/tencent/liteav/a;

    .line 36
    iput-object v2, v3, Lcom/tencent/liteav/a;->n:Ljava/lang/String;

    .line 37
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 38
    invoke-virtual {v3}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v4

    .line 39
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v4, ""

    goto :goto_4

    .line 40
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 41
    :goto_4
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/b/c;->d()Ljava/lang/String;

    move-result-object v5

    .line 42
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v5, "plain"

    .line 43
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "spfileid="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/tencent/rtmp/TXPlayInfoParams;->getFileId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&spdrmtype="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&spappid="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/tencent/rtmp/TXPlayInfoParams;->getAppId()I

    move-result p2

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 44
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "playVodURL: newurl = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ;url= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/tencent/liteav/a$2;->a:Lcom/tencent/liteav/a;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/tencent/liteav/a;->a(Lcom/tencent/liteav/a;Ljava/lang/String;)I

    .line 47
    :cond_a
    :goto_5
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "EVT_ID"

    const/16 v3, 0x7da

    .line 48
    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    invoke-static {}, Lcom/tencent/liteav/base/util/TimeUtil;->a()J

    move-result-wide v4

    const-string v0, "EVT_TIME"

    invoke-virtual {p2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 50
    invoke-static {}, Lcom/tencent/liteav/base/util/TimeUtil;->b()J

    move-result-wide v4

    const-string v0, "EVT_UTC_TIME"

    invoke-virtual {p2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "EVT_MSG"

    const-string v4, "Requested file information successfully"

    .line 51
    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/tencent/liteav/a$2;->a:Lcom/tencent/liteav/a;

    invoke-static {v0}, Lcom/tencent/liteav/a;->d(Lcom/tencent/liteav/a;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "EVT_PLAY_URL"

    invoke-virtual {p2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p1, Lcom/tencent/liteav/txcvodplayer/b/c;->b:Lcom/tencent/liteav/txcvodplayer/b/b;

    if-eqz v0, :cond_b

    .line 54
    iget-object v0, v0, Lcom/tencent/liteav/txcvodplayer/b/b;->c:Ljava/lang/String;

    goto :goto_6

    .line 55
    :cond_b
    iget-object v0, p1, Lcom/tencent/liteav/txcvodplayer/b/c;->c:Lcom/tencent/liteav/txcvodplayer/b/f;

    if-eqz v0, :cond_c

    .line 56
    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/b/f;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_c
    move-object v0, v2

    :goto_6
    const-string v4, "EVT_PLAY_COVER_URL"

    .line 57
    invoke-virtual {p2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p1, Lcom/tencent/liteav/txcvodplayer/b/c;->b:Lcom/tencent/liteav/txcvodplayer/b/b;

    if-eqz v0, :cond_d

    .line 59
    iget-object v0, v0, Lcom/tencent/liteav/txcvodplayer/b/b;->a:Ljava/lang/String;

    goto :goto_7

    .line 60
    :cond_d
    iget-object v0, p1, Lcom/tencent/liteav/txcvodplayer/b/c;->c:Lcom/tencent/liteav/txcvodplayer/b/f;

    if-eqz v0, :cond_e

    .line 61
    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/b/f;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_e
    move-object v0, v2

    :goto_7
    const-string v4, "EVT_PLAY_NAME"

    .line 62
    invoke-virtual {p2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p1, Lcom/tencent/liteav/txcvodplayer/b/c;->b:Lcom/tencent/liteav/txcvodplayer/b/b;

    if-eqz v0, :cond_f

    .line 64
    iget-object v0, v0, Lcom/tencent/liteav/txcvodplayer/b/b;->b:Ljava/lang/String;

    goto :goto_8

    .line 65
    :cond_f
    iget-object v0, p1, Lcom/tencent/liteav/txcvodplayer/b/c;->c:Lcom/tencent/liteav/txcvodplayer/b/f;

    if-eqz v0, :cond_10

    .line 66
    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/b/f;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_10
    move-object v0, v2

    :goto_8
    const-string v4, "EVT_PLAY_DESCRIPTION"

    .line 67
    invoke-virtual {p2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/b/c;->c()I

    move-result v0

    const-string v4, "EVT_PLAY_DURATION"

    invoke-virtual {p2, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    iget-object v0, p1, Lcom/tencent/liteav/txcvodplayer/b/c;->b:Lcom/tencent/liteav/txcvodplayer/b/b;

    if-eqz v0, :cond_11

    .line 70
    iget-object v0, v0, Lcom/tencent/liteav/txcvodplayer/b/b;->i:Lcom/tencent/liteav/txcvodplayer/b/c$b;

    goto :goto_9

    .line 71
    :cond_11
    iget-object v0, p1, Lcom/tencent/liteav/txcvodplayer/b/c;->c:Lcom/tencent/liteav/txcvodplayer/b/f;

    if-eqz v0, :cond_12

    .line 72
    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/b/f;->i()Lcom/tencent/liteav/txcvodplayer/b/c$b;

    move-result-object v0

    goto :goto_9

    :cond_12
    move-object v0, v2

    :goto_9
    if-eqz v0, :cond_13

    .line 73
    iget-object v4, v0, Lcom/tencent/liteav/txcvodplayer/b/c$b;->b:Ljava/lang/String;

    const-string v5, "EVT_IMAGESPRIT_WEBVTTURL"

    invoke-virtual {p2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, v0, Lcom/tencent/liteav/txcvodplayer/b/c$b;->a:Ljava/util/ArrayList;

    const-string v4, "EVT_IMAGESPRIT_IMAGEURL_LIST"

    invoke-virtual {p2, v4, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 75
    :cond_13
    iget-object v0, p1, Lcom/tencent/liteav/txcvodplayer/b/c;->b:Lcom/tencent/liteav/txcvodplayer/b/b;

    if-eqz v0, :cond_14

    .line 76
    iget-object v2, v0, Lcom/tencent/liteav/txcvodplayer/b/b;->j:Ljava/util/List;

    goto :goto_a

    .line 77
    :cond_14
    iget-object v0, p1, Lcom/tencent/liteav/txcvodplayer/b/c;->c:Lcom/tencent/liteav/txcvodplayer/b/f;

    if-eqz v0, :cond_15

    .line 78
    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/b/f;->j()Ljava/util/List;

    move-result-object v2

    :cond_15
    :goto_a
    if-eqz v2, :cond_17

    .line 79
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [F

    const/4 v5, 0x0

    .line 82
    :goto_b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_16

    .line 83
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/liteav/txcvodplayer/b/c$c;

    iget-object v6, v6, Lcom/tencent/liteav/txcvodplayer/b/c$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/liteav/txcvodplayer/b/c$c;

    iget v6, v6, Lcom/tencent/liteav/txcvodplayer/b/c$c;->b:F

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_16
    const-string v2, "EVT_KEY_FRAME_CONTENT_LIST"

    .line 85
    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "EVT_KEY_FRAME_TIME_LIST"

    .line 86
    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 87
    :cond_17
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/b/c;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EVT_DRM_TYPE"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/tencent/liteav/a$2;->a:Lcom/tencent/liteav/a;

    invoke-static {p1, v3, p2}, Lcom/tencent/liteav/a;->a(Lcom/tencent/liteav/a;ILandroid/os/Bundle;)V

    const-string p1, "onSuccess: Requested file information successfully"

    .line 89
    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
