.class public Lcom/tencent/liteav/videoproducer/capture/ay;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/tencent/liteav/videoproducer/capture/ay;


# instance fields
.field private b:Ljava/lang/Object;

.field private c:Lcom/tencent/liteav/videobase/b/e;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/ay;->d()V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    .line 5
    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/az;->a(Lcom/tencent/liteav/videoproducer/capture/ay;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a()Lcom/tencent/liteav/videoproducer/capture/ay;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/ay;->a:Lcom/tencent/liteav/videoproducer/capture/ay;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/tencent/liteav/videoproducer/capture/ay;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/ay;->a:Lcom/tencent/liteav/videoproducer/capture/ay;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/tencent/liteav/videoproducer/capture/ay;

    invoke-direct {v1}, Lcom/tencent/liteav/videoproducer/capture/ay;-><init>()V

    sput-object v1, Lcom/tencent/liteav/videoproducer/capture/ay;->a:Lcom/tencent/liteav/videoproducer/capture/ay;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/ay;->a:Lcom/tencent/liteav/videoproducer/capture/ay;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/ay;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/ay;->d()V

    return-void
.end method

.method private c()V
    .locals 4

    .line 1
    new-instance v0, Lcom/tencent/liteav/videobase/b/e;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/b/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ay;->c:Lcom/tencent/liteav/videobase/b/e;

    const/16 v1, 0x80

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0, v2, v2, v1, v1}, Lcom/tencent/liteav/videobase/b/e;->a(Ljava/lang/Object;Landroid/view/Surface;II)V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GlobalContextManager"

    const-string v3, "initializeEGL failed."

    .line 3
    invoke-static {v1, v3, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/ay;->c:Lcom/tencent/liteav/videobase/b/e;

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ay;->c:Lcom/tencent/liteav/videobase/b/e;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/b/e;->d()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ay;->b:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private d()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ay;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "context before creating: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlobalContextManager"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v0

    const/16 v2, 0x11

    const/16 v3, 0x3059

    const/16 v4, 0x305a

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    .line 5
    invoke-static {v4}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v2

    .line 6
    invoke-static {v3}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v3

    .line 7
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v4

    .line 8
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/ay;->c()V

    .line 9
    invoke-static {v0, v3, v2, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 11
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    .line 12
    invoke-interface {v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    .line 13
    invoke-interface {v0, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    .line 14
    invoke-interface {v0, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    .line 15
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v5

    .line 16
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/ay;->c()V

    .line 17
    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 18
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "context after creating: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", global context: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/ay;->b:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized b()Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ay;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
