.class public Lcom/tencent/liteav/videoproducer2/preprocessor/VideoPreprocessorListenerProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videoproducer/preprocessor/ah;
.implements Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# instance fields
.field private mNativeVideoPreprocessorListener:J

.field private final mParams:Lcom/tencent/liteav/videoproducer2/preprocessor/CustomProcessParams;


# direct methods
.method private constructor <init>(JLcom/tencent/liteav/videoproducer2/preprocessor/CustomProcessParams;)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/tencent/liteav/videoproducer2/preprocessor/VideoPreprocessorListenerProxy;->mNativeVideoPreprocessorListener:J

    .line 3
    iput-object p3, p0, Lcom/tencent/liteav/videoproducer2/preprocessor/VideoPreprocessorListenerProxy;->mParams:Lcom/tencent/liteav/videoproducer2/preprocessor/CustomProcessParams;

    return-void
.end method

.method private static native nativeOnGLContextCreated(J)V
.end method

.method private static native nativeOnGLContextDestroy(J)V
.end method

.method private static native nativeOnProcessFrame(JILcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
.end method

.method private declared-synchronized reset()V
    .locals 2
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 1
    :try_start_0
    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer2/preprocessor/VideoPreprocessorListenerProxy;->mNativeVideoPreprocessorListener:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized didDetectFacePoints(ILcom/tencent/liteav/videobase/base/b;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized didProcessFrame(ILcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer2/preprocessor/VideoPreprocessorListenerProxy;->mNativeVideoPreprocessorListener:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object v0

    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 4
    :cond_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer2/preprocessor/VideoPreprocessorListenerProxy;->mNativeVideoPreprocessorListener:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Lcom/tencent/liteav/videoproducer2/preprocessor/VideoPreprocessorListenerProxy;->nativeOnProcessFrame(JILcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCustomProcessParams()Lcom/tencent/liteav/videoproducer2/preprocessor/CustomProcessParams;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/preprocessor/VideoPreprocessorListenerProxy;->mParams:Lcom/tencent/liteav/videoproducer2/preprocessor/CustomProcessParams;

    return-object v0
.end method

.method public declared-synchronized onGLContextCreated()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer2/preprocessor/VideoPreprocessorListenerProxy;->mNativeVideoPreprocessorListener:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {v0, v1}, Lcom/tencent/liteav/videoproducer2/preprocessor/VideoPreprocessorListenerProxy;->nativeOnGLContextCreated(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onGLContextDestroy()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer2/preprocessor/VideoPreprocessorListenerProxy;->mNativeVideoPreprocessorListener:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {v0, v1}, Lcom/tencent/liteav/videoproducer2/preprocessor/VideoPreprocessorListenerProxy;->nativeOnGLContextDestroy(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onProcessFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer2/preprocessor/VideoPreprocessorListenerProxy;->mNativeVideoPreprocessorListener:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2, p1, p2}, Lcom/tencent/liteav/videoproducer2/preprocessor/VideoPreprocessorListenerProxy;->nativeOnProcessFrame(JILcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
