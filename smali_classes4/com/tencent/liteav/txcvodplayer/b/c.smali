.class public final Lcom/tencent/liteav/txcvodplayer/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/txcvodplayer/b/c$a;,
        Lcom/tencent/liteav/txcvodplayer/b/c$c;,
        Lcom/tencent/liteav/txcvodplayer/b/c$b;,
        Lcom/tencent/liteav/txcvodplayer/b/c$d;
    }
.end annotation


# instance fields
.field a:Lcom/tencent/rtmp/TXPlayInfoParams;

.field public b:Lcom/tencent/liteav/txcvodplayer/b/b;

.field public c:Lcom/tencent/liteav/txcvodplayer/b/f;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:Landroid/os/Handler;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/rtmp/TXPlayInfoParams;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://playvideo.qcloud.com/getplayinfo/v4"

    .line 2
    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/b/c;->f:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/b/c;->a:Lcom/tencent/rtmp/TXPlayInfoParams;

    .line 4
    invoke-static {}, Lcom/tencent/liteav/base/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/b/c;->g:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/b/c;->b:Lcom/tencent/liteav/txcvodplayer/b/b;

    if-eqz v0, :cond_1

    const-string v1, "SimpleAES"

    .line 24
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/b/c;->b:Lcom/tencent/liteav/txcvodplayer/b/b;

    const-string v1, "plain"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/b/c;->c:Lcom/tencent/liteav/txcvodplayer/b/f;

    if-eqz v0, :cond_2

    .line 28
    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/b/f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lcom/tencent/liteav/txcvodplayer/b/c$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/b/c;->a:Lcom/tencent/rtmp/TXPlayInfoParams;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/txcplayer/common/a;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/tencent/liteav/txcvodplayer/b/c$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/liteav/txcvodplayer/b/c$1;-><init>(Lcom/tencent/liteav/txcvodplayer/b/c;Lcom/tencent/liteav/txcvodplayer/b/c$a;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final a(Ljava/lang/Runnable;)V
    .locals 1

    .line 29
    invoke-static {}, Lcom/tencent/liteav/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/b/c;->g:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final a(Ljava/lang/String;Lcom/tencent/liteav/txcvodplayer/b/c$a;)Z
    .locals 7

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "TXCPlayInfoProtocolV4"

    if-eqz v0, :cond_0

    const-string p1, "parseJson err, content is empty!"

    .line 4
    invoke-static {v2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance p1, Lcom/tencent/liteav/txcvodplayer/b/c$2;

    invoke-direct {p1, p0, p2}, Lcom/tencent/liteav/txcvodplayer/b/c$2;-><init>(Lcom/tencent/liteav/txcvodplayer/b/c;Lcom/tencent/liteav/txcvodplayer/b/c$a;)V

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/txcvodplayer/b/c;->a(Ljava/lang/Runnable;)V

    return v1

    .line 6
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 7
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v3, "message"

    .line 8
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "warning"

    .line 9
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "context"

    .line 10
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/liteav/txcvodplayer/b/c;->h:Ljava/lang/String;

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "context : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tencent/liteav/txcvodplayer/b/c;->h:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "message: "

    .line 12
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "warning: "

    .line 13
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    const-string/jumbo p1, "version"

    .line 14
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string/jumbo p2, "version: "

    .line 15
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/b/c;->d:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/b/c;->e:Ljava/lang/String;

    .line 18
    new-instance p1, Lcom/tencent/liteav/txcvodplayer/b/f;

    invoke-direct {p1, v0}, Lcom/tencent/liteav/txcvodplayer/b/f;-><init>(Lorg/json/JSONObject;)V

    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/b/c;->c:Lcom/tencent/liteav/txcvodplayer/b/f;

    goto :goto_0

    :cond_1
    const/4 p2, 0x4

    if-ne p1, p2, :cond_3

    .line 19
    new-instance p1, Lcom/tencent/liteav/txcvodplayer/b/b;

    invoke-direct {p1, v0}, Lcom/tencent/liteav/txcvodplayer/b/b;-><init>(Lorg/json/JSONObject;)V

    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/b/c;->b:Lcom/tencent/liteav/txcvodplayer/b/b;

    goto :goto_0

    .line 20
    :cond_2
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/b/c$3;

    invoke-direct {v0, p0, p2, p1, v3}, Lcom/tencent/liteav/txcvodplayer/b/c$3;-><init>(Lcom/tencent/liteav/txcvodplayer/b/c;Lcom/tencent/liteav/txcvodplayer/b/c$a;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/b/c;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, "parseJson err"

    .line 22
    invoke-static {v2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/b/c;->b:Lcom/tencent/liteav/txcvodplayer/b/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/b/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/b/c;->b:Lcom/tencent/liteav/txcvodplayer/b/b;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Lcom/tencent/liteav/txcvodplayer/b/b;->d:I

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/b/c;->c:Lcom/tencent/liteav/txcvodplayer/b/f;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/b/f;->b()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/b/c;->b:Lcom/tencent/liteav/txcvodplayer/b/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/tencent/liteav/txcvodplayer/b/b;->g:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
