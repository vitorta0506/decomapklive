.class public Lorg/light/gles/SimpleGLThread;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/gles/SimpleGLThread$OnSurfaceCreatedListener;
    }
.end annotation


# static fields
.field private static final VIDEO_OUTPUT_HEIGHT:I = 0x3c0

.field private static final VIDEO_OUTPUT_WIDTH:I = 0x2d0


# instance fields
.field private mCore:Lorg/light/gles/EglCore;

.field private mHandler:Landroid/os/Handler;

.field private mOffscreenSurface:Lorg/light/gles/OffscreenSurface;

.field private mThreadName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/opengl/EGLContext;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/light/gles/SimpleGLThread;-><init>(Landroid/opengl/EGLContext;Ljava/lang/String;Lorg/light/gles/SimpleGLThread$OnSurfaceCreatedListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/opengl/EGLContext;Ljava/lang/String;Lorg/light/gles/SimpleGLThread$OnSurfaceCreatedListener;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lorg/light/gles/SimpleGLThread;->mThreadName:Ljava/lang/String;

    .line 4
    new-instance p2, Landroid/os/HandlerThread;

    iget-object v0, p0, Lorg/light/gles/SimpleGLThread;->mThreadName:Ljava/lang/String;

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/light/gles/SimpleGLThread;->mHandler:Landroid/os/Handler;

    .line 7
    new-instance p2, Lorg/light/gles/SimpleGLThread$1;

    invoke-direct {p2, p0, p1, p3}, Lorg/light/gles/SimpleGLThread$1;-><init>(Lorg/light/gles/SimpleGLThread;Landroid/opengl/EGLContext;Lorg/light/gles/SimpleGLThread$OnSurfaceCreatedListener;)V

    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lorg/light/gles/SimpleGLThread;)Lorg/light/gles/EglCore;
    .locals 0

    iget-object p0, p0, Lorg/light/gles/SimpleGLThread;->mCore:Lorg/light/gles/EglCore;

    return-object p0
.end method

.method static synthetic access$002(Lorg/light/gles/SimpleGLThread;Lorg/light/gles/EglCore;)Lorg/light/gles/EglCore;
    .locals 0

    iput-object p1, p0, Lorg/light/gles/SimpleGLThread;->mCore:Lorg/light/gles/EglCore;

    return-object p1
.end method

.method static synthetic access$100(Lorg/light/gles/SimpleGLThread;)Lorg/light/gles/OffscreenSurface;
    .locals 0

    iget-object p0, p0, Lorg/light/gles/SimpleGLThread;->mOffscreenSurface:Lorg/light/gles/OffscreenSurface;

    return-object p0
.end method

.method static synthetic access$102(Lorg/light/gles/SimpleGLThread;Lorg/light/gles/OffscreenSurface;)Lorg/light/gles/OffscreenSurface;
    .locals 0

    iput-object p1, p0, Lorg/light/gles/SimpleGLThread;->mOffscreenSurface:Lorg/light/gles/OffscreenSurface;

    return-object p1
.end method

.method static synthetic access$200(Lorg/light/gles/SimpleGLThread;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lorg/light/gles/SimpleGLThread;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/light/gles/SimpleGLThread;->destroy(Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroy(Ljava/lang/Runnable;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/light/gles/SimpleGLThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lorg/light/gles/SimpleGLThread$2;

    invoke-direct {v1, p0, p1}, Lorg/light/gles/SimpleGLThread$2;-><init>(Lorg/light/gles/SimpleGLThread;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lorg/light/gles/SimpleGLThread;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public makeCurrent()V
    .locals 1

    iget-object v0, p0, Lorg/light/gles/SimpleGLThread;->mOffscreenSurface:Lorg/light/gles/OffscreenSurface;

    invoke-virtual {v0}, Lorg/light/gles/OffscreenSurface;->makeCurrent()V

    return-void
.end method

.method public postJob(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/light/gles/SimpleGLThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public postJobSync(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/light/gles/SimpleGLThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    iget-object p1, p0, Lorg/light/gles/SimpleGLThread;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Lorg/light/utils/HandlerUtil;->waitDone(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/light/gles/SimpleGLThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public sendEmptyMessage(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/light/gles/SimpleGLThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public waitDone()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/light/gles/SimpleGLThread;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lorg/light/utils/HandlerUtil;->waitDone(Landroid/os/Handler;)V

    return-void
.end method

.method public waitDone(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/light/gles/SimpleGLThread;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p1}, Lorg/light/utils/HandlerUtil;->waitDone(Landroid/os/Handler;I)V

    return-void
.end method
