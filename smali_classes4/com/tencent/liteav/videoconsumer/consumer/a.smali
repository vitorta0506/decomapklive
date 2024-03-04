.class public final Lcom/tencent/liteav/videoconsumer/consumer/a;
.super Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videobase/videobase/c$a;


# instance fields
.field private final a:Lcom/tencent/liteav/base/util/CustomHandler;

.field private final b:Lcom/tencent/liteav/base/util/j;

.field private final c:Lcom/tencent/liteav/base/b/b;

.field private d:Lcom/tencent/liteav/videobase/b/e;

.field private volatile e:Z

.field private f:Z

.field private g:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

.field private h:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

.field private i:Lcom/tencent/liteav/videobase/videobase/c;

.field private j:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

.field private k:Lcom/tencent/liteav/videobase/frame/j;

.field private l:Lcom/tencent/liteav/videobase/frame/e;

.field private m:I

.field private n:I

.field private o:Ljava/lang/Object;

.field private p:Lcom/tencent/liteav/videobase/utils/Rotation;

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3
    .param p1    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/liteav/base/b/b;

    invoke-direct {v0}, Lcom/tencent/liteav/base/b/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->c:Lcom/tencent/liteav/base/b/b;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->d:Lcom/tencent/liteav/videobase/b/e;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->e:Z

    .line 5
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->f:Z

    .line 6
    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->g:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 7
    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->h:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    .line 8
    iput v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->m:I

    .line 9
    iput v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->n:I

    .line 10
    sget-object v2, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->p:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 11
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->q:Z

    .line 12
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->r:Z

    .line 13
    new-instance v1, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-direct {v1, p1}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->a:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 14
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->b:Lcom/tencent/liteav/base/util/j;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/liteav/base/util/j;)V
    .locals 3
    .param p1    # Lcom/tencent/liteav/base/util/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;-><init>()V

    .line 16
    new-instance v0, Lcom/tencent/liteav/base/b/b;

    invoke-direct {v0}, Lcom/tencent/liteav/base/b/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->c:Lcom/tencent/liteav/base/b/b;

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->d:Lcom/tencent/liteav/videobase/b/e;

    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->e:Z

    .line 19
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->f:Z

    .line 20
    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->g:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 21
    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->h:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    .line 22
    iput v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->m:I

    .line 23
    iput v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->n:I

    .line 24
    sget-object v2, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->p:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 25
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->q:Z

    .line 26
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->r:Z

    .line 27
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->b:Lcom/tencent/liteav/base/util/j;

    .line 28
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->a:Lcom/tencent/liteav/base/util/CustomHandler;

    return-void
.end method

.method private a()V
    .locals 5

    const-string v0, "CustomRenderProcess"

    .line 17
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->d:Lcom/tencent/liteav/videobase/b/e;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 18
    :try_start_0
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/b/e;->a()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 19
    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->c:Lcom/tencent/liteav/base/b/b;

    const-string v4, "make"

    invoke-virtual {v3, v4}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "uninitializedEGL makeCurrent error "

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    :goto_0
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->c:Lcom/tencent/liteav/base/b/b;

    const-string/jumbo v3, "uninitGL"

    invoke-virtual {v1, v3}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "egl uninitializedEGL"

    invoke-static {v1, v0, v4, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->k:Lcom/tencent/liteav/videobase/frame/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/j;->a()V

    .line 23
    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->k:Lcom/tencent/liteav/videobase/frame/j;

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->l:Lcom/tencent/liteav/videobase/frame/e;

    if-eqz v0, :cond_2

    .line 25
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/e;->a()V

    .line 26
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->l:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/e;->b()V

    .line 27
    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->l:Lcom/tencent/liteav/videobase/frame/e;

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->i:Lcom/tencent/liteav/videobase/videobase/c;

    if-eqz v0, :cond_3

    .line 29
    invoke-virtual {v0, v2, p0}, Lcom/tencent/liteav/videobase/videobase/c;->a(ILcom/tencent/liteav/videobase/videobase/c$a;)V

    .line 30
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->i:Lcom/tencent/liteav/videobase/videobase/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/videobase/c;->a()V

    .line 31
    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->i:Lcom/tencent/liteav/videobase/videobase/c;

    .line 32
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->d:Lcom/tencent/liteav/videobase/b/e;

    invoke-static {v0}, Lcom/tencent/liteav/videobase/b/e;->a(Lcom/tencent/liteav/videobase/b/e;)V

    .line 33
    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->d:Lcom/tencent/liteav/videobase/b/e;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/consumer/a;)V
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->e:Z

    if-nez v0, :cond_0

    const-string p0, "CustomRenderProcess"

    const-string v0, "renderer is not started!"

    .line 10
    invoke-static {p0, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->e:Z

    .line 12
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/consumer/a;->a()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/consumer/a;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->f:Z

    .line 3
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->g:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 4
    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->h:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/consumer/a;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->j:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    .line 43
    sget-object p1, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setRotation(Lcom/tencent/liteav/videobase/utils/Rotation;)V

    .line 44
    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->j:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    invoke-interface {p0, v0}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;->onRenderFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/consumer/a;Lcom/tencent/liteav/videobase/utils/Rotation;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->p:Lcom/tencent/liteav/videobase/utils/Rotation;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/consumer/a;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;)V
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->e:Z

    if-eqz v0, :cond_0

    const-string p0, "CustomRenderProcess"

    const-string p1, "renderer is started!"

    .line 6
    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->j:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/consumer/a;Z)V
    .locals 2

    .line 14
    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->r:Z

    if-eq v0, p1, :cond_0

    .line 15
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setVerticalMirror "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomRenderProcess"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_0
    iput-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->r:Z

    return-void
.end method

.method private a(Ljava/lang/Runnable;)Z
    .locals 4

    .line 34
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->b:Lcom/tencent/liteav/base/util/j;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 36
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->a:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 37
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 38
    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->a:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->a:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    goto :goto_0

    :cond_2
    const-string p1, "CustomRenderProcess"

    const-string v1, "runOnRenderThread: thread is dead!"

    .line 40
    invoke-static {p1, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic b(Lcom/tencent/liteav/videoconsumer/consumer/a;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 12

    .line 4
    new-instance v0, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    .line 5
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v1

    .line 6
    iget v1, v1, Lcom/tencent/liteav/videobase/utils/Rotation;->mValue:I

    .line 7
    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->p:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 8
    iget v2, v2, Lcom/tencent/liteav/videobase/utils/Rotation;->mValue:I

    add-int/2addr v1, v2

    .line 9
    rem-int/lit16 v1, v1, 0x168

    .line 10
    invoke-static {v1}, Lcom/tencent/liteav/videobase/utils/Rotation;->a(I)Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setRotation(Lcom/tencent/liteav/videobase/utils/Rotation;)V

    .line 11
    iget-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->q:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorHorizontal()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorHorizontal(Z)V

    .line 13
    :cond_0
    iget-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->r:Z

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorVertical()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorVertical(Z)V

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->p:Lcom/tencent/liteav/videobase/utils/Rotation;

    sget-object v3, Lcom/tencent/liteav/videobase/utils/Rotation;->b:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/tencent/liteav/videobase/utils/Rotation;->d:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-ne v1, v3, :cond_3

    .line 16
    :cond_2
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v1

    .line 17
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setWidth(I)V

    .line 18
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setHeight(I)V

    .line 19
    :cond_3
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 20
    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->o:Ljava/lang/Object;

    if-ne v1, v4, :cond_6

    :cond_4
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->d:Lcom/tencent/liteav/videobase/b/e;

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->n:I

    .line 21
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v4

    if-ne v1, v4, :cond_6

    iget v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->m:I

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v4

    if-eq v1, v4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v4, "CustomRenderProcess"

    if-eqz v1, :cond_a

    .line 22
    iget v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->m:I

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v5

    if-ne v1, v5, :cond_7

    iget v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->n:I

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v5

    if-eq v1, v5, :cond_8

    .line 23
    :cond_7
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->m:I

    .line 24
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->n:I

    .line 25
    :cond_8
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/consumer/a;->a()V

    .line 26
    iget v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->m:I

    iget v5, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->n:I

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v6

    .line 27
    iget-object v7, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->d:Lcom/tencent/liteav/videobase/b/e;

    if-nez v7, :cond_a

    const/4 v7, 0x0

    .line 28
    :try_start_0
    iget-object v8, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->c:Lcom/tencent/liteav/base/b/b;

    const-string v9, "initGL"

    invoke-virtual {v8, v9}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v8

    const-string v9, "egl init %d*%d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-static {v8, v4, v9, v10}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    new-instance v8, Lcom/tencent/liteav/videobase/b/e;

    invoke-direct {v8}, Lcom/tencent/liteav/videobase/b/e;-><init>()V

    iput-object v8, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->d:Lcom/tencent/liteav/videobase/b/e;

    .line 30
    invoke-virtual {v8, v6, v7, v1, v5}, Lcom/tencent/liteav/videobase/b/e;->a(Ljava/lang/Object;Landroid/view/Surface;II)V

    .line 31
    iget-object v8, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->d:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {v8}, Lcom/tencent/liteav/videobase/b/e;->a()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v8

    .line 32
    iget-object v9, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->c:Lcom/tencent/liteav/base/b/b;

    const-string v10, "initError"

    invoke-virtual {v9, v10}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    aput-object v8, v10, v3

    const-string v8, "egl initialize failed."

    invoke-static {v9, v4, v8, v10}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iput-object v7, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->d:Lcom/tencent/liteav/videobase/b/e;

    .line 34
    :goto_2
    iget-object v7, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->d:Lcom/tencent/liteav/videobase/b/e;

    if-eqz v7, :cond_a

    .line 35
    iput-object v6, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->o:Ljava/lang/Object;

    .line 36
    iget-object v6, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->k:Lcom/tencent/liteav/videobase/frame/j;

    if-nez v6, :cond_9

    .line 37
    new-instance v6, Lcom/tencent/liteav/videobase/frame/j;

    invoke-direct {v6, v1, v5}, Lcom/tencent/liteav/videobase/frame/j;-><init>(II)V

    iput-object v6, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->k:Lcom/tencent/liteav/videobase/frame/j;

    .line 38
    :cond_9
    new-instance v1, Lcom/tencent/liteav/videobase/frame/e;

    invoke-direct {v1}, Lcom/tencent/liteav/videobase/frame/e;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->l:Lcom/tencent/liteav/videobase/frame/e;

    .line 39
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->i:Lcom/tencent/liteav/videobase/videobase/c;

    if-nez v1, :cond_a

    .line 40
    new-instance v5, Lcom/tencent/liteav/videobase/videobase/c;

    invoke-direct {v5}, Lcom/tencent/liteav/videobase/videobase/c;-><init>()V

    iput-object v5, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->i:Lcom/tencent/liteav/videobase/videobase/c;

    .line 41
    new-instance v6, Lcom/tencent/liteav/videobase/videobase/a;

    iget v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->m:I

    iget v7, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->n:I

    invoke-direct {v6, v1, v7}, Lcom/tencent/liteav/videobase/videobase/a;-><init>(II)V

    iget-object v7, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->h:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    iget-object v8, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->g:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    const/4 v9, 0x0

    move-object v10, p0

    invoke-virtual/range {v5 .. v10}, Lcom/tencent/liteav/videobase/videobase/c;->a(Lcom/tencent/liteav/videobase/videobase/a;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;ILcom/tencent/liteav/videobase/videobase/c$a;)V

    .line 42
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->i:Lcom/tencent/liteav/videobase/videobase/c;

    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->l:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v1, v5}, Lcom/tencent/liteav/videobase/videobase/c;->a(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 43
    :cond_a
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->d:Lcom/tencent/liteav/videobase/b/e;

    if-eqz v1, :cond_f

    .line 44
    :try_start_1
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/b/e;->a()V
    :try_end_1
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 45
    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->c:Lcom/tencent/liteav/base/b/b;

    const-string v6, "makeCurrentError"

    invoke-virtual {v5, v6}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "customRenderFrame makeCurrent error "

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v5, v4, v1, v6}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :goto_3
    iget-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->f:Z

    if-eqz v1, :cond_b

    .line 47
    iput-boolean v3, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->f:Z

    .line 48
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->i:Lcom/tencent/liteav/videobase/videobase/c;

    invoke-virtual {v1, v3, p0}, Lcom/tencent/liteav/videobase/videobase/c;->a(ILcom/tencent/liteav/videobase/videobase/c$a;)V

    .line 49
    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->i:Lcom/tencent/liteav/videobase/videobase/c;

    new-instance v5, Lcom/tencent/liteav/videobase/videobase/a;

    iget v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->m:I

    iget v3, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->n:I

    invoke-direct {v5, v1, v3}, Lcom/tencent/liteav/videobase/videobase/a;-><init>(II)V

    iget-object v6, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->h:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    iget-object v7, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->g:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    const/4 v8, 0x0

    move-object v9, p0

    invoke-virtual/range {v4 .. v9}, Lcom/tencent/liteav/videobase/videobase/c;->a(Lcom/tencent/liteav/videobase/videobase/a;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;ILcom/tencent/liteav/videobase/videobase/c$a;)V

    .line 50
    :cond_b
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->l:Lcom/tencent/liteav/videobase/frame/e;

    iget v3, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->m:I

    iget v4, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->n:I

    invoke-virtual {v1, v3, v4}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object v1

    .line 51
    sget-object v3, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    .line 52
    new-instance v4, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v4, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    if-nez v1, :cond_c

    .line 53
    invoke-virtual {v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorVertical()Z

    move-result v5

    xor-int/2addr v2, v5

    invoke-virtual {v4, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorVertical(Z)V

    .line 54
    invoke-virtual {v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v2

    sget-object v5, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-eq v2, v5, :cond_c

    .line 55
    invoke-virtual {v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v2

    sget-object v5, Lcom/tencent/liteav/videobase/utils/Rotation;->c:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-eq v2, v5, :cond_c

    .line 56
    invoke-virtual {v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v2

    .line 57
    iget v2, v2, Lcom/tencent/liteav/videobase/utils/Rotation;->mValue:I

    .line 58
    iget v5, v5, Lcom/tencent/liteav/videobase/utils/Rotation;->mValue:I

    add-int/2addr v2, v5

    .line 59
    rem-int/lit16 v2, v2, 0x168

    .line 60
    invoke-static {v2}, Lcom/tencent/liteav/videobase/utils/Rotation;->a(I)Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setRotation(Lcom/tencent/liteav/videobase/utils/Rotation;)V

    .line 61
    :cond_c
    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->k:Lcom/tencent/liteav/videobase/frame/j;

    if-eqz v2, :cond_d

    .line 62
    invoke-virtual {v2, v4, v3, v1}, Lcom/tencent/liteav/videobase/frame/j;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Lcom/tencent/liteav/videobase/frame/d;)V

    .line 63
    :cond_d
    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->i:Lcom/tencent/liteav/videobase/videobase/c;

    if-eqz p0, :cond_e

    .line 64
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v1}, Lcom/tencent/liteav/videobase/videobase/c;->a(JLcom/tencent/liteav/videobase/frame/d;)V

    .line 65
    :cond_e
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    .line 66
    :cond_f
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoconsumer/consumer/a;Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->q:Z

    if-eq v0, p1, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setHorizontalMirror "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomRenderProcess"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iput-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->q:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoconsumer/consumer/b;->a(Lcom/tencent/liteav/videoconsumer/consumer/a;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/a;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final enableTapToFocusGesture(Z)V
    .locals 0

    return-void
.end method

.method public final enableZoomGesture(Z)V
    .locals 0

    return-void
.end method

.method public final onFrameConverted(ILcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 0

    invoke-static {p0, p2}, Lcom/tencent/liteav/videoconsumer/consumer/i;->a(Lcom/tencent/liteav/videoconsumer/consumer/a;Lcom/tencent/liteav/videobase/frame/PixelFrame;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/a;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final renderFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "CustomRenderProcess"

    const-string v0, "renderFrame: pixelFrame is null."

    .line 1
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->retain()I

    .line 3
    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/h;->a(Lcom/tencent/liteav/videoconsumer/consumer/a;Lcom/tencent/liteav/videobase/frame/PixelFrame;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/consumer/a;->a(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    :cond_1
    return-void
.end method

.method public final setDisplayView(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Z)V
    .locals 0

    const-string p1, "CustomRenderProcess"

    const-string p2, "setDisplayView not support"

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setHorizontalMirror(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/f;->a(Lcom/tencent/liteav/videoconsumer/consumer/a;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/a;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setRenderRotation(Lcom/tencent/liteav/videobase/utils/Rotation;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setRenderRotation "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomRenderProcess"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/e;->a(Lcom/tencent/liteav/videoconsumer/consumer/a;Lcom/tencent/liteav/videobase/utils/Rotation;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/a;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setScaleType(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setScaleType "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not support"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CustomRenderProcess"

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setVerticalMirror(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/g;->a(Lcom/tencent/liteav/videoconsumer/consumer/a;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/a;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final start(Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;)V
    .locals 2

    const-string v0, "CustomRenderProcess"

    const-string v1, "Start"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/c;->a(Lcom/tencent/liteav/videoconsumer/consumer/a;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/a;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final stop(Z)V
    .locals 1

    const-string p1, "CustomRenderProcess"

    const-string v0, "Stop"

    .line 1
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/consumer/d;->a(Lcom/tencent/liteav/videoconsumer/consumer/a;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/a;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final takeSnapshot(Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;->onComplete(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
