.class public final Lcom/tencent/liteav/videoconsumer/renderer/c;
.super Lcom/tencent/liteav/videoconsumer/renderer/b;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/tencent/liteav/videoconsumer/renderer/b$a;

.field c:Landroid/view/Surface;

.field private final d:Lcom/tencent/liteav/base/util/CustomHandler;


# direct methods
.method public constructor <init>(Landroid/view/Surface;Lcom/tencent/liteav/videoconsumer/renderer/b$a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/b;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SurfaceRenderHelper_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/c;->a:Ljava/lang/String;

    .line 3
    new-instance v1, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/c;->d:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 4
    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/c;->b:Lcom/tencent/liteav/videoconsumer/renderer/b$a;

    if-nez p1, :cond_0

    const-string/jumbo p1, "surface is null."

    .line 5
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/c;->c:Landroid/view/Surface;

    .line 7
    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/d;->a(Lcom/tencent/liteav/videoconsumer/renderer/c;Landroid/view/Surface;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;II)V
    .locals 0

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/c;->d:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/renderer/e;->a(Lcom/tencent/liteav/videoconsumer/renderer/c;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
