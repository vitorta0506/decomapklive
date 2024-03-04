.class public final Lcom/tencent/liteav/videobase/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Lcom/tencent/liteav/base/util/j;

.field private static final d:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public a:Lcom/tencent/liteav/videobase/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/liteav/videobase/b/h<",
            "*>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/liteav/base/util/j;

    invoke-direct {v0}, Lcom/tencent/liteav/base/util/j;-><init>()V

    sput-object v0, Lcom/tencent/liteav/videobase/b/e;->c:Lcom/tencent/liteav/base/util/j;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/tencent/liteav/videobase/b/e;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/b/e;->e:Z

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videobase/b/e;)V
    .locals 3
    .param p0    # Lcom/tencent/liteav/videobase/b/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/b/e;->b()V

    .line 2
    invoke-static {p0}, Lcom/tencent/liteav/videobase/b/f;->a(Lcom/tencent/liteav/videobase/b/e;)Ljava/lang/Runnable;

    move-result-object v0

    .line 3
    iget-boolean p0, p0, Lcom/tencent/liteav/videobase/b/e;->e:Z

    if-nez p0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 5
    :cond_1
    sget-object p0, Lcom/tencent/liteav/videobase/b/e;->c:Lcom/tencent/liteav/base/util/j;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videobase/b/e;)V
    .locals 3
    .param p0    # Lcom/tencent/liteav/videobase/b/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "EGLCore"

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/videobase/b/e;->a:Lcom/tencent/liteav/videobase/b/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Lcom/tencent/liteav/videobase/b/h;->c()V

    .line 5
    iput-object v2, p0, Lcom/tencent/liteav/videobase/b/e;->a:Lcom/tencent/liteav/videobase/b/h;

    .line 6
    :cond_0
    iput-object v2, p0, Lcom/tencent/liteav/videobase/b/e;->b:Ljava/lang/Object;

    .line 7
    sget-object v1, Lcom/tencent/liteav/videobase/b/e;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    const-string v1, "EGLCore destroy success. "

    .line 8
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v1, "EGLCore destroy failed."

    .line 9
    invoke-static {v0, v1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/liteav/videobase/b/g;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/tencent/liteav/videobase/b/e;->a:Lcom/tencent/liteav/videobase/b/h;

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {v0}, Lcom/tencent/liteav/videobase/b/h;->b()V

    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/tencent/liteav/videobase/b/e;->a:Lcom/tencent/liteav/videobase/b/h;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/tencent/liteav/videobase/b/b;

    if-eqz v1, :cond_0

    .line 23
    check-cast v0, Lcom/tencent/liteav/videobase/b/b;

    .line 24
    iget-object v1, v0, Lcom/tencent/liteav/videobase/b/b;->a:Landroid/opengl/EGLDisplay;

    iget-object v0, v0, Lcom/tencent/liteav/videobase/b/b;->b:Landroid/opengl/EGLSurface;

    invoke-static {v1, v0, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;Landroid/view/Surface;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/liteav/videobase/b/g;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    iput-boolean v1, p0, Lcom/tencent/liteav/videobase/b/e;->e:Z

    const/16 v1, 0x11

    if-nez p1, :cond_2

    .line 7
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v0

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 8
    invoke-static {v2, p2, p3, p4}, Lcom/tencent/liteav/videobase/b/b;->a(Landroid/opengl/EGLContext;Landroid/view/Surface;II)Lcom/tencent/liteav/videobase/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videobase/b/e;->a:Lcom/tencent/liteav/videobase/b/h;

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {v2, p2, p3, p4}, Lcom/tencent/liteav/videobase/b/a;->a(Ljavax/microedition/khronos/egl/EGLContext;Landroid/view/Surface;II)Lcom/tencent/liteav/videobase/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videobase/b/e;->a:Lcom/tencent/liteav/videobase/b/h;

    goto :goto_1

    .line 10
    :cond_2
    instance-of v2, p1, Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v2, :cond_3

    .line 11
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/egl/EGLContext;

    invoke-static {v0, p2, p3, p4}, Lcom/tencent/liteav/videobase/b/a;->a(Ljavax/microedition/khronos/egl/EGLContext;Landroid/view/Surface;II)Lcom/tencent/liteav/videobase/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videobase/b/e;->a:Lcom/tencent/liteav/videobase/b/h;

    goto :goto_1

    .line 12
    :cond_3
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v2

    if-lt v2, v1, :cond_4

    instance-of v1, p1, Landroid/opengl/EGLContext;

    if-eqz v1, :cond_4

    .line 13
    move-object v0, p1

    check-cast v0, Landroid/opengl/EGLContext;

    invoke-static {v0, p2, p3, p4}, Lcom/tencent/liteav/videobase/b/b;->a(Landroid/opengl/EGLContext;Landroid/view/Surface;II)Lcom/tencent/liteav/videobase/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videobase/b/e;->a:Lcom/tencent/liteav/videobase/b/h;

    .line 14
    :goto_1
    iput-object p1, p0, Lcom/tencent/liteav/videobase/b/e;->b:Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/tencent/liteav/videobase/b/e;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EGLCore created in thread "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sharedContext: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", Surface: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", width: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EGLCore"

    .line 18
    invoke-static {p2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 19
    :cond_4
    new-instance p1, Lcom/tencent/liteav/videobase/b/g;

    const-string p2, "sharedContext isn\'t EGLContext"

    invoke-direct {p1, v0, p2}, Lcom/tencent/liteav/videobase/b/g;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/b/e;->a:Lcom/tencent/liteav/videobase/b/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/tencent/liteav/videobase/b/h;->d()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/liteav/videobase/b/g;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/b/e;->a:Lcom/tencent/liteav/videobase/b/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/tencent/liteav/videobase/b/h;->a()V

    :cond_0
    return-void
.end method

.method public final d()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/b/e;->a:Lcom/tencent/liteav/videobase/b/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/tencent/liteav/videobase/b/h;->f()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
