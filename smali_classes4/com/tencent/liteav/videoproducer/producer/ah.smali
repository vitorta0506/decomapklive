.class final synthetic Lcom/tencent/liteav/videoproducer/producer/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoproducer/producer/f;

.field private final b:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

.field private final c:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

.field private final d:Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoproducer/producer/f;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/ah;->a:Lcom/tencent/liteav/videoproducer/producer/f;

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/ah;->b:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    iput-object p3, p0, Lcom/tencent/liteav/videoproducer/producer/ah;->c:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    iput-object p4, p0, Lcom/tencent/liteav/videoproducer/producer/ah;->d:Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoproducer/producer/f;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/producer/ah;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tencent/liteav/videoproducer/producer/ah;-><init>(Lcom/tencent/liteav/videoproducer/producer/f;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/ah;->a:Lcom/tencent/liteav/videoproducer/producer/f;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/ah;->b:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/ah;->c:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/producer/ah;->d:Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/liteav/videoproducer/producer/f;->a(Lcom/tencent/liteav/videoproducer/producer/f;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;)V

    return-void
.end method
