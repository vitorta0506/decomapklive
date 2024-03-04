.class public final Lcom/tencent/liteav/videoconsumer/renderer/i;
.super Lcom/tencent/liteav/videoconsumer/renderer/b;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/tencent/liteav/base/util/CustomHandler;

.field final c:Lcom/tencent/liteav/videoconsumer/renderer/b$a;

.field final d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

.field e:Landroid/view/TextureView;

.field f:Landroid/graphics/SurfaceTexture;

.field g:Z

.field final h:Landroid/view/TextureView$SurfaceTextureListener;

.field private final i:Lcom/tencent/liteav/base/util/q;

.field private j:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;


# direct methods
.method public constructor <init>(Landroid/view/TextureView;Lcom/tencent/liteav/videoconsumer/renderer/b$a;)V
    .locals 4

    .line 16
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/b;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TextureViewRenderHelper_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->a:Ljava/lang/String;

    .line 18
    new-instance v1, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->b:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 19
    new-instance v2, Lcom/tencent/liteav/base/util/q;

    invoke-direct {v2}, Lcom/tencent/liteav/base/util/q;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->i:Lcom/tencent/liteav/base/util/q;

    const/4 v2, 0x0

    .line 20
    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->j:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    .line 21
    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->f:Landroid/graphics/SurfaceTexture;

    const/4 v3, 0x0

    .line 22
    iput-boolean v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->g:Z

    .line 23
    new-instance v3, Lcom/tencent/liteav/videoconsumer/renderer/i$1;

    invoke-direct {v3, p0}, Lcom/tencent/liteav/videoconsumer/renderer/i$1;-><init>(Lcom/tencent/liteav/videoconsumer/renderer/i;)V

    iput-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->h:Landroid/view/TextureView$SurfaceTextureListener;

    .line 24
    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->c:Lcom/tencent/liteav/videoconsumer/renderer/b$a;

    .line 25
    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-nez p1, :cond_0

    const-string/jumbo p1, "textureView is null."

    .line 26
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 27
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "construct,textureView="

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->e:Landroid/view/TextureView;

    .line 29
    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/k;->a(Lcom/tencent/liteav/videoconsumer/renderer/i;Landroid/view/TextureView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public constructor <init>(Lcom/tencent/rtmp/ui/TXCloudVideoView;Lcom/tencent/liteav/videoconsumer/renderer/b$a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/b;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TextureViewRenderHelper_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->a:Ljava/lang/String;

    .line 3
    new-instance v1, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->b:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 4
    new-instance v2, Lcom/tencent/liteav/base/util/q;

    invoke-direct {v2}, Lcom/tencent/liteav/base/util/q;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->i:Lcom/tencent/liteav/base/util/q;

    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->j:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    .line 6
    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->f:Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x0

    .line 7
    iput-boolean v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->g:Z

    .line 8
    new-instance v2, Lcom/tencent/liteav/videoconsumer/renderer/i$1;

    invoke-direct {v2, p0}, Lcom/tencent/liteav/videoconsumer/renderer/i$1;-><init>(Lcom/tencent/liteav/videoconsumer/renderer/i;)V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->h:Landroid/view/TextureView$SurfaceTextureListener;

    .line 9
    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->c:Lcom/tencent/liteav/videoconsumer/renderer/b$a;

    .line 10
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-nez p1, :cond_0

    const-string/jumbo p1, "txCloudVideoView is null."

    .line 11
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "construct,txCloudVideoView="

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance p2, Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->e:Landroid/view/TextureView;

    .line 15
    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/j;->a(Lcom/tencent/liteav/videoconsumer/renderer/i;Lcom/tencent/rtmp/ui/TXCloudVideoView;Landroid/view/TextureView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->c:Lcom/tencent/liteav/videoconsumer/renderer/b$a;

    if-eqz v0, :cond_0

    .line 20
    invoke-interface {v0}, Lcom/tencent/liteav/videoconsumer/renderer/b$a;->a()V

    :cond_0
    return-void
.end method

.method final a(Landroid/view/Surface;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->c:Lcom/tencent/liteav/videoconsumer/renderer/b$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 18
    invoke-interface {v0, p1, v1}, Lcom/tencent/liteav/videoconsumer/renderer/b$a;->a(Landroid/view/Surface;Z)V

    :cond_0
    return-void
.end method

.method final a(Landroid/view/TextureView;)V
    .locals 4

    if-nez p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->a:Ljava/lang/String;

    const-string v0, "setup,textureView is null."

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    new-instance v0, Lcom/tencent/liteav/base/util/q;

    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/base/util/q;-><init>(II)V

    .line 12
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setup,textureView="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v0, Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoconsumer/renderer/i;->a(Landroid/view/Surface;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->a:Ljava/lang/String;

    const-string v1, "setup,textureView not available."

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->h:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 16
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/i;->b(Landroid/view/TextureView;)V

    return-void
.end method

.method public final declared-synchronized a(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;II)V
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->j:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->i:Lcom/tencent/liteav/base/util/q;

    iget v1, v0, Lcom/tencent/liteav/base/util/q;->a:I

    if-ne p2, v1, :cond_0

    iget v0, v0, Lcom/tencent/liteav/base/util/q;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p3, v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->j:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    .line 5
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->i:Lcom/tencent/liteav/base/util/q;

    invoke-virtual {p1, p2, p3}, Lcom/tencent/liteav/base/util/q;->a(II)V

    .line 6
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->b:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/renderer/m;->a(Lcom/tencent/liteav/videoconsumer/renderer/i;)Ljava/lang/Runnable;

    move-result-object p2

    const/4 p3, 0x0

    .line 7
    invoke-virtual {p1, p2, p3}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->b:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/l;->a(Lcom/tencent/liteav/videoconsumer/renderer/i;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final declared-synchronized b(Landroid/view/TextureView;)V
    .locals 11

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1
    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Lcom/tencent/liteav/base/util/q;

    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/base/util/q;-><init>(II)V

    .line 3
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->i:Lcom/tencent/liteav/base/util/q;

    invoke-virtual {v1}, Lcom/tencent/liteav/base/util/q;->d()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/q;->d()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/q;->c()D

    move-result-wide v1

    .line 5
    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->i:Lcom/tencent/liteav/base/util/q;

    invoke-virtual {v3}, Lcom/tencent/liteav/base/util/q;->c()D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double v7, v3, v1

    if-gez v7, :cond_3

    .line 6
    iget-object v7, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->j:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    sget-object v8, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    if-ne v7, v8, :cond_2

    :goto_0
    div-double/2addr v3, v1

    move-wide v1, v5

    move-wide v5, v3

    goto :goto_2

    .line 7
    :cond_2
    sget-object v8, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    if-ne v7, v8, :cond_5

    goto :goto_1

    .line 8
    :cond_3
    iget-object v7, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->j:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    sget-object v8, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    if-ne v7, v8, :cond_4

    :goto_1
    div-double/2addr v1, v3

    goto :goto_2

    .line 9
    :cond_4
    sget-object v8, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    if-ne v7, v8, :cond_5

    goto :goto_0

    :cond_5
    move-wide v1, v5

    .line 10
    :goto_2
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    double-to-float v4, v5

    double-to-float v7, v1

    .line 11
    iget v8, v0, Lcom/tencent/liteav/base/util/q;->a:I

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iget v10, v0, Lcom/tencent/liteav/base/util/q;->b:I

    int-to-float v10, v10

    div-float/2addr v10, v9

    invoke-virtual {v3, v4, v7, v8, v10}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 12
    invoke-virtual {p1, v3}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 13
    invoke-virtual {p1}, Landroid/view/TextureView;->requestLayout()V

    .line 14
    invoke-virtual {p1}, Landroid/view/TextureView;->invalidate()V

    .line 15
    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->a:Ljava/lang/String;

    const-string/jumbo v4, "view: %s, scaleX: %.2f, scaleY: %.2f, frame: %s, view: %s"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 p1, 0x1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v7, p1

    const/4 p1, 0x2

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v7, p1

    const/4 p1, 0x3

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->i:Lcom/tencent/liteav/base/util/q;

    aput-object v1, v7, p1

    const/4 p1, 0x4

    aput-object v0, v7, p1

    .line 17
    invoke-static {v3, v4, v7}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    .line 19
    :cond_6
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
