.class final synthetic Lcom/tencent/liteav/videoproducer/encoder/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoproducer/encoder/o;

.field private final b:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

.field private final c:Z


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoproducer/encoder/o;Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/s;->a:Lcom/tencent/liteav/videoproducer/encoder/o;

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/s;->b:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    iput-boolean p3, p0, Lcom/tencent/liteav/videoproducer/encoder/s;->c:Z

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoproducer/encoder/o;Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Z)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/s;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/s;-><init>(Lcom/tencent/liteav/videoproducer/encoder/o;Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Z)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/s;->a:Lcom/tencent/liteav/videoproducer/encoder/o;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/s;->b:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    iget-boolean v2, p0, Lcom/tencent/liteav/videoproducer/encoder/s;->c:Z

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/o;->a(Lcom/tencent/liteav/videoproducer/encoder/o;Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Z)V

    return-void
.end method
