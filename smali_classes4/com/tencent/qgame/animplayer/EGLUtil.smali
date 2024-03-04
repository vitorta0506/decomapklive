.class public final Lcom/tencent/qgame/animplayer/EGLUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/EGLUtil$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0005\u00a2\u0006\u0002\u0010\u0002J\n\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0002J(\u0010\u000e\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0002J\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0012R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/EGLUtil;",
        "",
        "()V",
        "egl",
        "Ljavax/microedition/khronos/egl/EGL10;",
        "eglConfig",
        "Ljavax/microedition/khronos/egl/EGLConfig;",
        "eglContext",
        "Ljavax/microedition/khronos/egl/EGLContext;",
        "eglDisplay",
        "Ljavax/microedition/khronos/egl/EGLDisplay;",
        "eglSurface",
        "Ljavax/microedition/khronos/egl/EGLSurface;",
        "chooseConfig",
        "createContext",
        "getAttributes",
        "",
        "release",
        "",
        "start",
        "surfaceTexture",
        "Landroid/graphics/SurfaceTexture;",
        "swapBuffers",
        "Companion",
        "animplayer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcom/tencent/qgame/animplayer/EGLUtil$Companion;

.field private static final TAG:Ljava/lang/String; = "AnimPlayer.EGLUtil"


# instance fields
.field private egl:Ljavax/microedition/khronos/egl/EGL10;

.field private eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/qgame/animplayer/EGLUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/EGLUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tencent/qgame/animplayer/EGLUtil;->Companion:Lcom/tencent/qgame/animplayer/EGLUtil$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 3
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 4
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-void
.end method

.method private final chooseConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 8

    const/4 v0, 0x1

    new-array v6, v0, [I

    new-array v7, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/EGLUtil;->getAttributes()[I

    move-result-object v3

    .line 2
    iget-object v1, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->egl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v5, 0x1

    move-object v4, v7

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, v7, v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    if-eqz p1, :cond_0

    .line 2
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1

    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private final getAttributes()[I
    .locals 1

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data
.end method


# virtual methods
.method public final release()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->egl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 3
    iget-object v1, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 4
    iget-object v1, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 5
    iget-object v1, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    :cond_0
    return-void
.end method

.method public final start(Landroid/graphics/SurfaceTexture;)V
    .locals 7
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "error:"

    const-string v1, "AnimPlayer.EGLUtil"

    .line 1
    :try_start_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    if-eqz v2, :cond_6

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v2, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 2
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 3
    iget-object v4, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->egl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v4, :cond_0

    invoke-interface {v4, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/EGLUtil;->chooseConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 5
    iget-object v3, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->egl:Ljavax/microedition/khronos/egl/EGL10;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    new-instance v6, Landroid/view/Surface;

    invoke-direct {v6, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-interface {v3, v5, v2, v6, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    :cond_1
    iput-object v4, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 6
    iget-object p1, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-direct {p0, p1, v2, v3}, Lcom/tencent/qgame/animplayer/EGLUtil;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 7
    iget-object p1, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->egl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz p1, :cond_7

    iget-object v3, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, v3, v4, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 9
    sget-object p1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "make current error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->egl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_4
    :goto_0
    sget-object p1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->egl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type javax.microedition.khronos.egl.EGL10"

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 12
    sget-object v2, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0, p1}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final swapBuffers()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/tencent/qgame/animplayer/EGLUtil;->egl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v2, :cond_1

    invoke-interface {v2, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    :cond_1
    :goto_0
    return-void
.end method
