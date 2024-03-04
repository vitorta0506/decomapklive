.class public abstract Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Lcom/tencent/liteav/base/util/CustomHandler;)Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;
    .locals 2
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    new-instance v0, Lcom/tencent/liteav/videoconsumer/renderer/p;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    new-instance v1, Lcom/tencent/liteav/videobase/videobase/e;

    invoke-direct {v1}, Lcom/tencent/liteav/videobase/videobase/e;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/tencent/liteav/videoconsumer/renderer/p;-><init>(Landroid/os/Looper;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    return-object v0
.end method

.method static createRotation(I)Lcom/tencent/liteav/videobase/utils/Rotation;
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    invoke-static {p0}, Lcom/tencent/liteav/videobase/utils/Rotation;->a(I)Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object p0

    return-object p0
.end method

.method static createScaleType(I)Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    invoke-static {p0}, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a(I)Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract enableTapToFocusGesture(Z)V
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation
.end method

.method public abstract enableZoomGesture(Z)V
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation
.end method

.method public abstract renderFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation
.end method

.method public abstract setDisplayView(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Z)V
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation
.end method

.method public abstract setHorizontalMirror(Z)V
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation
.end method

.method public abstract setRenderRotation(Lcom/tencent/liteav/videobase/utils/Rotation;)V
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation
.end method

.method public abstract setScaleType(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation
.end method

.method public abstract setVerticalMirror(Z)V
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation
.end method

.method public abstract start(Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;)V
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation
.end method

.method public abstract stop(Z)V
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation
.end method

.method public abstract takeSnapshot(Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)V
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation
.end method
