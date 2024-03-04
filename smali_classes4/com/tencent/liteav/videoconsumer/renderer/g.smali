.class final synthetic Lcom/tencent/liteav/videoconsumer/renderer/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/renderer/f;

.field private final b:Landroid/view/SurfaceView;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoconsumer/renderer/f;Landroid/view/SurfaceView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/g;->a:Lcom/tencent/liteav/videoconsumer/renderer/f;

    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/g;->b:Landroid/view/SurfaceView;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoconsumer/renderer/f;Landroid/view/SurfaceView;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoconsumer/renderer/g;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/g;-><init>(Lcom/tencent/liteav/videoconsumer/renderer/f;Landroid/view/SurfaceView;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/g;->a:Lcom/tencent/liteav/videoconsumer/renderer/f;

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/g;->b:Landroid/view/SurfaceView;

    .line 1
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 2
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    .line 4
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    .line 5
    iget-object v4, v0, Lcom/tencent/liteav/videoconsumer/renderer/f;->a:Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 6
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    const-string v3, "construct,surface=%s,Size(%dx%d)"

    .line 7
    invoke-static {v4, v3, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v0, v2}, Lcom/tencent/liteav/videoconsumer/renderer/f;->a(Landroid/view/Surface;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/renderer/f;->a:Ljava/lang/String;

    const-string v3, "construct,surfaceView not valid."

    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :goto_0
    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/renderer/f;->c:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method
