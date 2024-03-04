.class public final synthetic Lcom/tencent/liteav/videoconsumer/decoder/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

.field private final b:Lcom/tencent/liteav/videoconsumer/consumer/ServerVideoConsumerConfig;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;Lcom/tencent/liteav/videoconsumer/consumer/ServerVideoConsumerConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ar;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/ar;->b:Lcom/tencent/liteav/videoconsumer/consumer/ServerVideoConsumerConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ar;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ar;->b:Lcom/tencent/liteav/videoconsumer/consumer/ServerVideoConsumerConfig;

    .line 1
    iput-object v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->p:Lcom/tencent/liteav/videoconsumer/consumer/ServerVideoConsumerConfig;

    .line 2
    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->c:Lcom/tencent/liteav/videoconsumer/decoder/d;

    if-eqz v1, :cond_0

    .line 3
    iget v2, v1, Lcom/tencent/liteav/videoconsumer/consumer/ServerVideoConsumerConfig;->hwDecoderMaxCacheForHighRes:I

    iput v2, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->m:I

    .line 4
    iget v3, v1, Lcom/tencent/liteav/videoconsumer/consumer/ServerVideoConsumerConfig;->hwDecoderMaxCacheForLowRes:I

    iput v3, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->n:I

    .line 5
    iget-boolean v1, v1, Lcom/tencent/liteav/videoconsumer/consumer/ServerVideoConsumerConfig;->enableMediaCodecReusing:Z

    iput-boolean v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->o:Z

    .line 6
    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->a:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x1

    iget v4, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->n:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x2

    iget-boolean v0, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->o:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "set hardware decoder max cache to highResolution: %d, lowResolution: %d, enableMediaCodecReusing:%b"

    .line 8
    invoke-static {v1, v0, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
