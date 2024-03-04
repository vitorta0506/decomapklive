.class public Lcom/tencent/liteav/videoproducer/producer/NativeVideoContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeVideoContext"


# instance fields
.field private mCustomHandler:Lcom/tencent/liteav/base/util/CustomHandler;


# direct methods
.method private constructor <init>()V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/NativeVideoContext;->mCustomHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    return-void
.end method

.method private declared-synchronized getCustomHandler()Lcom/tencent/liteav/base/util/CustomHandler;
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/NativeVideoContext;->mCustomHandler:Lcom/tencent/liteav/base/util/CustomHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getGLContext()Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/ay;->a()Lcom/tencent/liteav/videoproducer/capture/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/ay;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized initialize()V
    .locals 2
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/NativeVideoContext;->mCustomHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz v0, :cond_0

    const-string v0, "NativeVideoContext"

    const-string v1, "NativeVideoContext is initialized"

    .line 2
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "producer-shared-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5
    new-instance v1, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/NativeVideoContext;->mCustomHandler:Lcom/tencent/liteav/base/util/CustomHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized uninitialize()V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/NativeVideoContext;->mCustomHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/CustomHandler;->a()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/NativeVideoContext;->mCustomHandler:Lcom/tencent/liteav/base/util/CustomHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
