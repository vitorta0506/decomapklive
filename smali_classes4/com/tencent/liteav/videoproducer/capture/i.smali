.class final synthetic Lcom/tencent/liteav/videoproducer/capture/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/i;->a:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/i;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/capture/i;-><init>(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/i;->a:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->pauseInternal()V

    return-void
.end method
