.class final synthetic Lcom/tencent/liteav/videoconsumer/decoder/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/aj;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoconsumer/decoder/aj;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoconsumer/decoder/aj;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/aj;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    .line 1
    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->f()Lcom/tencent/liteav/videoconsumer/decoder/az$a;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "on decode failed, type: %s"

    invoke-static {v1, v4, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->c:Lcom/tencent/liteav/videoconsumer/decoder/d;

    .line 3
    iput-boolean v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->s:Z

    .line 4
    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->d:Lcom/tencent/liteav/videoconsumer/decoder/ax;

    .line 5
    iget-wide v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/ax;->j:J

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    iput-wide v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/ax;->j:J

    .line 6
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/ax;->b()V

    .line 7
    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$c;->r:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "decode error try restart"

    invoke-interface {v0, v1, v3, v2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyWarning(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
