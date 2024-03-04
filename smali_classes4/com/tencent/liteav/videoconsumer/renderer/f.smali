.class public final Lcom/tencent/liteav/videoconsumer/renderer/f;
.super Lcom/tencent/liteav/videoconsumer/renderer/b;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field b:Landroid/view/SurfaceView;

.field final c:Landroid/view/SurfaceHolder$Callback;

.field private final d:Lcom/tencent/liteav/base/util/CustomHandler;

.field private final e:Lcom/tencent/liteav/videoconsumer/renderer/b$a;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;Lcom/tencent/liteav/videoconsumer/renderer/b$a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/b;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SurfaceViewRenderHelper_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->a:Ljava/lang/String;

    .line 3
    new-instance v1, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->d:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 4
    new-instance v2, Lcom/tencent/liteav/videoconsumer/renderer/f$1;

    invoke-direct {v2, p0}, Lcom/tencent/liteav/videoconsumer/renderer/f$1;-><init>(Lcom/tencent/liteav/videoconsumer/renderer/f;)V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->c:Landroid/view/SurfaceHolder$Callback;

    .line 5
    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->e:Lcom/tencent/liteav/videoconsumer/renderer/b$a;

    if-nez p1, :cond_0

    const-string/jumbo p1, "surfaceView is null."

    .line 6
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->b:Landroid/view/SurfaceView;

    .line 8
    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/g;->a(Lcom/tencent/liteav/videoconsumer/renderer/f;Landroid/view/SurfaceView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->e:Lcom/tencent/liteav/videoconsumer/renderer/b$a;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/tencent/liteav/videoconsumer/renderer/b$a;->a()V

    :cond_0
    return-void
.end method

.method final a(Landroid/view/Surface;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->e:Lcom/tencent/liteav/videoconsumer/renderer/b$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, p1, v1}, Lcom/tencent/liteav/videoconsumer/renderer/b$a;->a(Landroid/view/Surface;Z)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;II)V
    .locals 0

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->d:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/renderer/h;->a(Lcom/tencent/liteav/videoconsumer/renderer/f;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
