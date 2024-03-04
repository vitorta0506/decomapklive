.class final synthetic Lcom/tencent/liteav/videoconsumer/decoder/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

.field private final b:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->b:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoconsumer/decoder/ad;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/ad;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->b:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;

    .line 1
    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->c:Lcom/tencent/liteav/videoconsumer/decoder/d;

    .line 2
    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->g:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;

    if-eq v2, v1, :cond_1

    .line 3
    iput-object v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->g:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;

    const/4 v2, 0x0

    .line 4
    iput-object v2, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->h:Lcom/tencent/liteav/videoconsumer/decoder/az$a;

    .line 5
    sget-object v2, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;->c:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    const/4 v2, 0x3

    .line 6
    iput v2, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->H:I

    goto :goto_0

    .line 7
    :cond_0
    iput v3, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->H:I

    .line 8
    :goto_0
    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->a:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "set decode strategy to %s"

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
