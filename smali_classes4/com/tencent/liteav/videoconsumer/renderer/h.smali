.class final synthetic Lcom/tencent/liteav/videoconsumer/renderer/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/renderer/f;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoconsumer/renderer/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/h;->a:Lcom/tencent/liteav/videoconsumer/renderer/f;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoconsumer/renderer/f;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoconsumer/renderer/h;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoconsumer/renderer/h;-><init>(Lcom/tencent/liteav/videoconsumer/renderer/f;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/h;->a:Lcom/tencent/liteav/videoconsumer/renderer/f;

    .line 1
    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/renderer/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "release,mSurfaceView="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/tencent/liteav/videoconsumer/renderer/f;->b:Landroid/view/SurfaceView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/renderer/f;->b:Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/tencent/liteav/videoconsumer/renderer/f;->a()V

    .line 4
    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/renderer/f;->b:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/renderer/f;->c:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, Lcom/tencent/liteav/videoconsumer/renderer/f;->b:Landroid/view/SurfaceView;

    :cond_0
    return-void
.end method
