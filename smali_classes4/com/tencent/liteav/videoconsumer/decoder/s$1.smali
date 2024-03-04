.class final Lcom/tencent/liteav/videoconsumer/decoder/s$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/tmediacodec/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videoconsumer/decoder/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/videoconsumer/decoder/s;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videoconsumer/decoder/s;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s$1;->a:Lcom/tencent/liteav/videoconsumer/decoder/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s$1;->a:Lcom/tencent/liteav/videoconsumer/decoder/s;

    invoke-static {v0}, Lcom/tencent/liteav/videoconsumer/decoder/s;->a(Lcom/tencent/liteav/videoconsumer/decoder/s;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tmediacodec onStarted, isReUse:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p2, "totalCodec"

    .line 3
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 4
    iget-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/s$1;->a:Lcom/tencent/liteav/videoconsumer/decoder/s;

    invoke-static {p2}, Lcom/tencent/liteav/videoconsumer/decoder/s;->b(Lcom/tencent/liteav/videoconsumer/decoder/s;)Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    move-result-object p2

    sget-object v0, Lcom/tencent/liteav/videobase/videobase/i;->S:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    iget-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/s$1;->a:Lcom/tencent/liteav/videoconsumer/decoder/s;

    invoke-static {p2}, Lcom/tencent/liteav/videoconsumer/decoder/s;->a(Lcom/tencent/liteav/videoconsumer/decoder/s;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "json get object error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s$1;->a:Lcom/tencent/liteav/videoconsumer/decoder/s;

    invoke-static {v0}, Lcom/tencent/liteav/videoconsumer/decoder/s;->a(Lcom/tencent/liteav/videoconsumer/decoder/s;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onReuseCodecAPIException:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s$1;->a:Lcom/tencent/liteav/videoconsumer/decoder/s;

    invoke-static {v0}, Lcom/tencent/liteav/videoconsumer/decoder/s;->b(Lcom/tencent/liteav/videoconsumer/decoder/s;)Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    move-result-object v0

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$c;->t:Lcom/tencent/liteav/videobase/videobase/h$c;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyWarning(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
