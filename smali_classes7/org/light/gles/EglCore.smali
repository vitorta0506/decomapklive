.class public final Lorg/light/gles/EglCore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EGL_RECORDABLE_ANDROID:I = 0x3142

.field public static final FLAG_RECORDABLE:I = 0x1

.field public static final FLAG_TRY_GLES3:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EglCore"


# instance fields
.field private mEGLConfig:Landroid/opengl/EGLConfig;

.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mGlVersion:I

.field private final throwableForStackTrace:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lorg/light/gles/EglCore;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/opengl/EGLContext;I)V
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0, p1, p2}, Lorg/light/gles/EglCore;-><init>(ZLandroid/opengl/EGLContext;I)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lorg/light/gles/EglCore;-><init>(ZLandroid/opengl/EGLContext;I)V

    return-void
.end method

.method public constructor <init>(ZLandroid/opengl/EGLContext;I)V
    .locals 7

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lorg/light/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 6
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lorg/light/gles/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lorg/light/gles/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lorg/light/gles/EglCore;->mGlVersion:I

    .line 9
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    iput-object v1, p0, Lorg/light/gles/EglCore;->throwableForStackTrace:Ljava/lang/Throwable;

    .line 10
    iget-object v1, p0, Lorg/light/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v1, v2, :cond_8

    if-nez p2, :cond_0

    .line 11
    sget-object p2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    :cond_0
    const/4 v1, 0x0

    .line 12
    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v2

    iput-object v2, p0, Lorg/light/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 13
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v2, v3, :cond_7

    const/4 v3, 0x3

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    new-array v4, p1, [I

    const/4 v5, 0x1

    .line 14
    invoke-static {v2, v4, v1, v4, v5}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v2

    if-eqz v2, :cond_4

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    .line 15
    invoke-direct {p0, p3, v3}, Lorg/light/gles/EglCore;->getConfig(II)Landroid/opengl/EGLConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    new-array v2, v3, [I

    .line 16
    fill-array-data v2, :array_0

    .line 17
    iget-object v4, p0, Lorg/light/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v4, v0, p2, v2, v1}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v2

    .line 18
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v4

    const/16 v6, 0x3000

    if-ne v4, v6, :cond_1

    .line 19
    iput-object v0, p0, Lorg/light/gles/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 20
    iput-object v2, p0, Lorg/light/gles/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 21
    iput v3, p0, Lorg/light/gles/EglCore;->mGlVersion:I

    .line 22
    :cond_1
    iget-object v0, p0, Lorg/light/gles/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v2, :cond_3

    .line 23
    invoke-direct {p0, p3, p1}, Lorg/light/gles/EglCore;->getConfig(II)Landroid/opengl/EGLConfig;

    move-result-object p3

    if-eqz p3, :cond_2

    new-array v0, v3, [I

    .line 24
    fill-array-data v0, :array_1

    .line 25
    iget-object v2, p0, Lorg/light/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v2, p3, p2, v0, v1}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p2

    const-string v0, "eglCreateContext"

    .line 26
    invoke-direct {p0, v0}, Lorg/light/gles/EglCore;->checkEglError(Ljava/lang/String;)V

    .line 27
    iput-object p3, p0, Lorg/light/gles/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 28
    iput-object p2, p0, Lorg/light/gles/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 29
    iput p1, p0, Lorg/light/gles/EglCore;->mGlVersion:I

    goto :goto_0

    .line 30
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unable to find a suitable EGLConfig"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    new-array p1, v5, [I

    .line 31
    iget-object p2, p0, Lorg/light/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object p3, p0, Lorg/light/gles/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    const/16 v0, 0x3098

    invoke-static {p2, p3, v0, p1, v1}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    goto :goto_1

    .line 32
    :cond_4
    iput-object v0, p0, Lorg/light/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 33
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to initialize EGL14"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_5
    invoke-direct {p0, p3, v3}, Lorg/light/gles/EglCore;->getConfig(II)Landroid/opengl/EGLConfig;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 35
    iput-object p1, p0, Lorg/light/gles/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 36
    iput v3, p0, Lorg/light/gles/EglCore;->mGlVersion:I

    :cond_6
    :goto_1
    return-void

    .line 37
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to get EGL14 display"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "EGL already set up"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 4
        0x3098
        0x3
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    return-void
.end method

.method private getConfig(II)Landroid/opengl/EGLConfig;
    .locals 12

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-lt p2, v0, :cond_0

    const/16 p2, 0x44

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    const/16 v2, 0xd

    new-array v4, v2, [I

    const/16 v2, 0x3024

    const/4 v11, 0x0

    aput v2, v4, v11

    const/4 v2, 0x1

    const/16 v3, 0x8

    aput v3, v4, v2

    const/4 v5, 0x2

    const/16 v6, 0x3023

    aput v6, v4, v5

    aput v3, v4, v0

    const/16 v0, 0x3022

    aput v0, v4, v1

    const/4 v0, 0x5

    aput v3, v4, v0

    const/4 v0, 0x6

    const/16 v1, 0x3021

    aput v1, v4, v0

    const/4 v0, 0x7

    aput v3, v4, v0

    const/16 v0, 0x3040

    aput v0, v4, v3

    const/16 v0, 0x9

    aput p2, v4, v0

    const/16 p2, 0xa

    const/16 v0, 0x3038

    aput v0, v4, p2

    const/16 v1, 0xb

    aput v11, v4, v1

    const/16 v3, 0xc

    aput v0, v4, v3

    and-int/2addr p1, v2

    if-eqz p1, :cond_1

    const/16 p1, 0x3142

    aput p1, v4, p2

    aput v2, v4, v1

    :cond_1
    new-array p1, v2, [Landroid/opengl/EGLConfig;

    new-array v9, v2, [I

    iget-object v3, p0, Lorg/light/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x1

    move-object v6, p1

    invoke-static/range {v3 .. v10}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    aget-object p1, p1, v11

    return-object p1
.end method

.method public static logCurrent(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    .line 2
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    const/16 p0, 0x3059

    .line 3
    invoke-static {p0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    return-void
.end method


# virtual methods
.method public createOffscreenSurface(II)Landroid/opengl/EGLSurface;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0x3057

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x2

    const/16 v1, 0x3056

    aput v1, v0, p1

    const/4 p1, 0x3

    aput p2, v0, p1

    const/4 p1, 0x4

    const/16 p2, 0x3038

    aput p2, v0, p1

    .line 1
    iget-object p1, p0, Lorg/light/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object p2, p0, Lorg/light/gles/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    invoke-static {p1, p2, v0, v2}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    const-string p2, "eglCreatePbufferSurface"

    .line 2
    invoke-direct {p0, p2}, Lorg/light/gles/EglCore;->checkEglError(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "surface was null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;
    .locals 4

    .line 6
    instance-of v0, p1, Landroid/view/Surface;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3038

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 8
    iget-object v1, p0, Lorg/light/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lorg/light/gles/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    invoke-static {v1, v3, p1, v0, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    const-string v0, "eglCreateWindowSurface"

    .line 9
    invoke-direct {p0, v0}, Lorg/light/gles/EglCore;->checkEglError(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    return-object p1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "surface was null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createWindowSurface(Ljava/lang/Object;Landroid/opengl/EGLConfig;)Landroid/opengl/EGLSurface;
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/view/Surface;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid surface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3038

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 3
    iget-object v1, p0, Lorg/light/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v1, p2, p1, v0, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    const-string p2, "eglCreateWindowSurface"

    .line 4
    invoke-direct {p0, p2}, Lorg/light/gles/EglCore;->checkEglError(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    return-object p1

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "surface was null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/light/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/light/gles/EglCore;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 4
    throw v0
.end method

.method public getEGLContext()Landroid/opengl/EGLContext;
    .locals 1

    iget-object v0, p0, Lorg/light/gles/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    return-object v0
.end method

.method public getGlVersion()I
    .locals 1

    iget v0, p0, Lorg/light/gles/EglCore;->mGlVersion:I

    return v0
.end method

.method public isCurrent(Landroid/opengl/EGLSurface;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/light/gles/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3059

    .line 2
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public makeCurrent(Landroid/opengl/EGLSurface;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lorg/light/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 4
    iget-object v1, p0, Lorg/light/gles/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, p1, p1, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    return-void
.end method

.method public makeCurrent(Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/light/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 2
    invoke-static {v0, p1, p1, p2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    return-void
.end method

.method public makeCurrent(Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lorg/light/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 6
    iget-object v1, p0, Lorg/light/gles/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, p1, p2, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "eglMakeCurrent(draw,read) failed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public makeNothingCurrent()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/light/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public queryString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public querySurface(Landroid/opengl/EGLSurface;I)I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/light/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v0, v2}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    aget p1, v0, v2

    return p1
.end method

.method public release()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/light/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_1

    .line 2
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 3
    iget-object v0, p0, Lorg/light/gles/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lorg/light/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 5
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 6
    iget-object v0, p0, Lorg/light/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 7
    :cond_1
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lorg/light/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 8
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lorg/light/gles/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/light/gles/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    return-void
.end method

.method public releaseSurface(Landroid/opengl/EGLSurface;)V
    .locals 1

    iget-object v0, p0, Lorg/light/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    return-void
.end method

.method public setPresentationTime(Landroid/opengl/EGLSurface;J)V
    .locals 1

    iget-object v0, p0, Lorg/light/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1, p2, p3}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    return-void
.end method

.method public swapBuffers(Landroid/opengl/EGLSurface;)Z
    .locals 1

    iget-object v0, p0, Lorg/light/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result p1

    return p1
.end method
