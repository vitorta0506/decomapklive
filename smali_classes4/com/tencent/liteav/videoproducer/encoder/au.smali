.class final synthetic Lcom/tencent/liteav/videoproducer/encoder/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoproducer/encoder/ah;

.field private final b:Z

.field private final c:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoproducer/encoder/ah;ZLcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->a:Lcom/tencent/liteav/videoproducer/encoder/ah;

    iput-boolean p2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Z

    iput-object p3, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->c:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoproducer/encoder/ah;ZLcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/au;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/au;-><init>(Lcom/tencent/liteav/videoproducer/encoder/ah;ZLcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->a:Lcom/tencent/liteav/videoproducer/encoder/ah;

    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Z

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->c:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Lcom/tencent/liteav/videoproducer/encoder/ah;ZLcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    return-void
.end method
