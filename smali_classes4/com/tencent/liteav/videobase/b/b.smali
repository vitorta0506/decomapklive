.class public final Lcom/tencent/liteav/videobase/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videobase/b/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/liteav/videobase/b/h<",
        "Landroid/opengl/EGLContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final h:[I

.field private static final i:[I


# instance fields
.field a:Landroid/opengl/EGLDisplay;

.field b:Landroid/opengl/EGLSurface;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:I

.field private f:Landroid/opengl/EGLConfig;

.field private g:Landroid/opengl/EGLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/liteav/videobase/b/b;->h:[I

    const/16 v0, 0x13

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/tencent/liteav/videobase/b/b;->i:[I

    return-void

    nop

    :array_0
    .array-data 4
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
        0x3040
        0x4
        0x3142
        0x1
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3033
        0x1
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
        0x3040
        0x4
        0x3142
        0x1
        0x3038
    .end array-data
.end method

.method private constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/liteav/videobase/b/b;->f:Landroid/opengl/EGLConfig;

    .line 3
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/b/b;->a:Landroid/opengl/EGLDisplay;

    .line 4
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/b/b;->g:Landroid/opengl/EGLContext;

    .line 5
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/b/b;->b:Landroid/opengl/EGLSurface;

    .line 6
    iput p1, p0, Lcom/tencent/liteav/videobase/b/b;->d:I

    .line 7
    iput p2, p0, Lcom/tencent/liteav/videobase/b/b;->e:I

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "EGL14Helper@"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videobase/b/b;->c:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;ILandroid/opengl/EGLContext;)Landroid/opengl/EGLContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/liteav/videobase/b/g;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/16 v1, 0x3098

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 p2, 0x2

    const/16 v1, 0x3038

    aput v1, v0, p2

    if-nez p3, :cond_0

    .line 36
    sget-object p3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 37
    :cond_0
    invoke-static {p0, p1, p3, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p0

    .line 38
    invoke-static {}, Lcom/tencent/liteav/videobase/b/b;->g()V

    return-object p0
.end method

.method public static a(Landroid/opengl/EGLContext;Landroid/view/Surface;II)Lcom/tencent/liteav/videobase/b/b;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/liteav/videobase/b/g;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tencent/liteav/videobase/b/b;

    invoke-direct {v0, p2, p3}, Lcom/tencent/liteav/videobase/b/b;-><init>(II)V

    const/4 p2, 0x0

    .line 2
    :try_start_0
    invoke-static {p2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object p3

    iput-object p3, v0, Lcom/tencent/liteav/videobase/b/b;->a:Landroid/opengl/EGLDisplay;

    .line 3
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq p3, v1, :cond_6

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    .line 4
    invoke-static {p3, v2, p2, v2, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result p3

    if-eqz p3, :cond_5

    new-array p3, v3, [Landroid/opengl/EGLConfig;

    new-array v10, v3, [I

    if-nez p1, :cond_0

    .line 5
    sget-object v2, Lcom/tencent/liteav/videobase/b/b;->i:[I

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/tencent/liteav/videobase/b/b;->h:[I

    :goto_0
    move-object v5, v2

    .line 6
    iget-object v4, v0, Lcom/tencent/liteav/videobase/b/b;->a:Landroid/opengl/EGLDisplay;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x0

    move-object v7, p3

    invoke-static/range {v4 .. v11}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v2

    if-eqz v2, :cond_4

    aget-object p3, p3, p2

    .line 7
    iput-object p3, v0, Lcom/tencent/liteav/videobase/b/b;->f:Landroid/opengl/EGLConfig;

    .line 8
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result p3
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v2, 0x12

    const/4 v4, 0x3

    if-lt p3, v2, :cond_1

    .line 9
    :try_start_1
    iget-object p3, v0, Lcom/tencent/liteav/videobase/b/b;->a:Landroid/opengl/EGLDisplay;

    iget-object v2, v0, Lcom/tencent/liteav/videobase/b/b;->f:Landroid/opengl/EGLConfig;

    .line 10
    invoke-static {p3, v2, v1, p0}, Lcom/tencent/liteav/videobase/b/b;->a(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;ILandroid/opengl/EGLContext;)Landroid/opengl/EGLContext;

    move-result-object p3

    iput-object p3, v0, Lcom/tencent/liteav/videobase/b/b;->g:Landroid/opengl/EGLContext;
    :try_end_1
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 11
    :catch_0
    :try_start_2
    iget-object p3, v0, Lcom/tencent/liteav/videobase/b/b;->c:Ljava/lang/String;

    const-string v2, "failed to create EGLContext of OpenGL ES 2.0, try 3.0"

    invoke-static {p3, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p3, v0, Lcom/tencent/liteav/videobase/b/b;->a:Landroid/opengl/EGLDisplay;

    iget-object v2, v0, Lcom/tencent/liteav/videobase/b/b;->f:Landroid/opengl/EGLConfig;

    .line 13
    invoke-static {p3, v2, v4, p0}, Lcom/tencent/liteav/videobase/b/b;->a(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;ILandroid/opengl/EGLContext;)Landroid/opengl/EGLContext;

    move-result-object p3

    iput-object p3, v0, Lcom/tencent/liteav/videobase/b/b;->g:Landroid/opengl/EGLContext;

    const/4 p3, 0x3

    goto :goto_2

    .line 14
    :cond_1
    iget-object p3, v0, Lcom/tencent/liteav/videobase/b/b;->a:Landroid/opengl/EGLDisplay;

    iget-object v2, v0, Lcom/tencent/liteav/videobase/b/b;->f:Landroid/opengl/EGLConfig;

    invoke-static {p3, v2, v1, p0}, Lcom/tencent/liteav/videobase/b/b;->a(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;ILandroid/opengl/EGLContext;)Landroid/opengl/EGLContext;

    move-result-object p3

    iput-object p3, v0, Lcom/tencent/liteav/videobase/b/b;->g:Landroid/opengl/EGLContext;

    :goto_1
    const/4 p3, 0x2

    .line 15
    :goto_2
    iget-object v2, v0, Lcom/tencent/liteav/videobase/b/b;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "create eglContext "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/tencent/liteav/videobase/b/b;->g:Landroid/opengl/EGLContext;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " sharedContext: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " version:"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x3038

    if-nez p1, :cond_2

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 p3, 0x3057

    aput p3, p1, p2

    .line 16
    iget p3, v0, Lcom/tencent/liteav/videobase/b/b;->d:I

    aput p3, p1, v3

    const/16 p3, 0x3056

    aput p3, p1, v1

    iget p3, v0, Lcom/tencent/liteav/videobase/b/b;->e:I

    aput p3, p1, v4

    const/4 p3, 0x4

    aput p0, p1, p3

    .line 17
    iget-object p0, v0, Lcom/tencent/liteav/videobase/b/b;->a:Landroid/opengl/EGLDisplay;

    iget-object p3, v0, Lcom/tencent/liteav/videobase/b/b;->f:Landroid/opengl/EGLConfig;

    .line 18
    invoke-static {p0, p3, p1, p2}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/liteav/videobase/b/b;->b:Landroid/opengl/EGLSurface;

    goto :goto_3

    :cond_2
    new-array p3, v3, [I

    aput p0, p3, p2
    :try_end_2
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_2 .. :try_end_2} :catch_2

    .line 19
    :try_start_3
    iget-object p0, v0, Lcom/tencent/liteav/videobase/b/b;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, v0, Lcom/tencent/liteav/videobase/b/b;->f:Landroid/opengl/EGLConfig;

    invoke-static {p0, v1, p1, p3, p2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/liteav/videobase/b/b;->b:Landroid/opengl/EGLSurface;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 20
    :goto_3
    :try_start_4
    invoke-static {}, Lcom/tencent/liteav/videobase/b/b;->g()V

    .line 21
    iget-object p0, v0, Lcom/tencent/liteav/videobase/b/b;->a:Landroid/opengl/EGLDisplay;

    iget-object p1, v0, Lcom/tencent/liteav/videobase/b/b;->b:Landroid/opengl/EGLSurface;

    iget-object p2, v0, Lcom/tencent/liteav/videobase/b/b;->g:Landroid/opengl/EGLContext;

    invoke-static {p0, p1, p1, p2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 22
    invoke-static {}, Lcom/tencent/liteav/videobase/b/b;->g()V

    :cond_3
    return-object v0

    :catch_1
    move-exception p0

    .line 23
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p1

    .line 24
    new-instance p2, Lcom/tencent/liteav/videobase/b/g;

    const-string p3, ""

    invoke-direct {p2, p1, p3, p0}, Lcom/tencent/liteav/videobase/b/g;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 25
    :cond_4
    new-instance p0, Lcom/tencent/liteav/videobase/b/g;

    invoke-direct {p0, p2}, Lcom/tencent/liteav/videobase/b/g;-><init>(I)V

    throw p0

    :cond_5
    const/4 p0, 0x0

    .line 26
    iput-object p0, v0, Lcom/tencent/liteav/videobase/b/b;->a:Landroid/opengl/EGLDisplay;

    .line 27
    iget-object p0, v0, Lcom/tencent/liteav/videobase/b/b;->c:Ljava/lang/String;

    const-string/jumbo p1, "unable to initialize EGL14"

    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance p0, Lcom/tencent/liteav/videobase/b/g;

    invoke-direct {p0, p2}, Lcom/tencent/liteav/videobase/b/g;-><init>(I)V

    throw p0

    .line 29
    :cond_6
    iget-object p0, v0, Lcom/tencent/liteav/videobase/b/b;->c:Ljava/lang/String;

    const-string/jumbo p1, "unable to get EGL14 display"

    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance p0, Lcom/tencent/liteav/videobase/b/g;

    invoke-direct {p0, p2}, Lcom/tencent/liteav/videobase/b/g;-><init>(I)V

    throw p0
    :try_end_4
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    .line 31
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/b/b;->c()V

    .line 32
    throw p0
.end method

.method private static g()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/liteav/videobase/b/g;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lcom/tencent/liteav/videobase/b/g;

    invoke-direct {v1, v0}, Lcom/tencent/liteav/videobase/b/g;-><init>(I)V

    throw v1
.end method


# virtual methods
.method public final a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/liteav/videobase/b/g;
        }
    .end annotation

    .line 33
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 34
    iget-object v0, p0, Lcom/tencent/liteav/videobase/b/b;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/tencent/liteav/videobase/b/b;->b:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Lcom/tencent/liteav/videobase/b/b;->g()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/liteav/videobase/b/g;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/b/b;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/tencent/liteav/videobase/b/b;->b:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/tencent/liteav/videobase/b/b;->g:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/tencent/liteav/videobase/b/b;->g()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/b/b;->a:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_2

    .line 2
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/videobase/b/b;->b:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/tencent/liteav/videobase/b/b;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 5
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/b/b;->b:Landroid/opengl/EGLSurface;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videobase/b/b;->g:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/tencent/liteav/videobase/b/b;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "destroy eglContext "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/liteav/videobase/b/b;->g:Landroid/opengl/EGLContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/tencent/liteav/videobase/b/b;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/tencent/liteav/videobase/b/b;->g:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 9
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/b/b;->g:Landroid/opengl/EGLContext;

    .line 10
    :cond_1
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 11
    iget-object v0, p0, Lcom/tencent/liteav/videobase/b/b;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 12
    :cond_2
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/b/b;->a:Landroid/opengl/EGLDisplay;

    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/b/b;->a:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    :cond_0
    return-void
.end method

.method public final e()Lcom/tencent/liteav/base/util/q;
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    iget-object v1, p0, Lcom/tencent/liteav/videobase/b/b;->a:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/tencent/liteav/videobase/b/b;->b:Landroid/opengl/EGLSurface;

    const/16 v3, 0x3057

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    move-result v1

    .line 2
    iget-object v2, p0, Lcom/tencent/liteav/videobase/b/b;->a:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/tencent/liteav/videobase/b/b;->b:Landroid/opengl/EGLSurface;

    const/16 v5, 0x3056

    const/4 v6, 0x1

    invoke-static {v2, v3, v5, v0, v6}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 3
    new-instance v1, Lcom/tencent/liteav/base/util/q;

    aget v2, v0, v4

    aget v0, v0, v6

    invoke-direct {v1, v2, v0}, Lcom/tencent/liteav/base/util/q;-><init>(II)V

    return-object v1

    .line 4
    :cond_0
    new-instance v0, Lcom/tencent/liteav/base/util/q;

    invoke-direct {v0, v4, v4}, Lcom/tencent/liteav/base/util/q;-><init>(II)V

    return-object v0
.end method

.method public final bridge synthetic f()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/b/b;->g:Landroid/opengl/EGLContext;

    return-object v0
.end method
