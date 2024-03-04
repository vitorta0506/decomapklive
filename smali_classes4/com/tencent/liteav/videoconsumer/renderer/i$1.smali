.class final Lcom/tencent/liteav/videoconsumer/renderer/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videoconsumer/renderer/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/videoconsumer/renderer/i;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videoconsumer/renderer/i;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/i$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/i$1;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/i$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/i;

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/i;->e:Landroid/view/TextureView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 3
    const-class v3, Landroid/view/TextureView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    const-string p0, "removeDeprecatedViews"

    .line 4
    invoke-static {v0, p0, v2, v1}, Lcom/tencent/liteav/videobase/videobase/g;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/i$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/i;

    .line 2
    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/renderer/i;->a:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    const-string p2, "onSurfaceTextureAvailable, size: %dx%d"

    invoke-static {v0, p2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/i$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/i;

    .line 5
    iget-object p3, p2, Lcom/tencent/liteav/videoconsumer/renderer/i;->f:Landroid/graphics/SurfaceTexture;

    if-eqz p3, :cond_1

    iget-object v0, p2, Lcom/tencent/liteav/videoconsumer/renderer/i;->e:Landroid/view/TextureView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1, p3}, Lcom/tencent/liteav/base/util/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 7
    iget-object p1, p2, Lcom/tencent/liteav/videoconsumer/renderer/i;->e:Landroid/view/TextureView;

    iget-object p3, p2, Lcom/tencent/liteav/videoconsumer/renderer/i;->f:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, p3}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 8
    iget-object p1, p2, Lcom/tencent/liteav/videoconsumer/renderer/i;->f:Landroid/graphics/SurfaceTexture;

    const/4 p3, 0x0

    .line 9
    iput-object p3, p2, Lcom/tencent/liteav/videoconsumer/renderer/i;->f:Landroid/graphics/SurfaceTexture;

    .line 10
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/i$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/i;

    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 11
    invoke-virtual {p2, p3}, Lcom/tencent/liteav/videoconsumer/renderer/i;->a(Landroid/view/Surface;)V

    .line 12
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/i$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/i;

    .line 13
    iget-object p2, p1, Lcom/tencent/liteav/videoconsumer/renderer/i;->e:Landroid/view/TextureView;

    .line 14
    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/i;->b(Landroid/view/TextureView;)V

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/i$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/i;

    .line 2
    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/renderer/i;->a:Ljava/lang/String;

    const-string v1, "onSurfaceTextureDestroyed"

    .line 3
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/i$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/i;

    .line 5
    invoke-virtual {v0}, Lcom/tencent/liteav/videoconsumer/renderer/i;->a()V

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/i$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/i;

    .line 7
    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/renderer/i;->e:Landroid/view/TextureView;

    if-eqz v1, :cond_0

    .line 8
    iput-object p1, v0, Lcom/tencent/liteav/videoconsumer/renderer/i;->f:Landroid/graphics/SurfaceTexture;

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/i$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/i;

    .line 2
    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/renderer/i;->a:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    const-string p2, "onSurfaceTextureSizeChanged, size: %dx%d"

    invoke-static {v0, p2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/i$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/i;

    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 5
    invoke-virtual {p2, p3}, Lcom/tencent/liteav/videoconsumer/renderer/i;->a(Landroid/view/Surface;)V

    .line 6
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/i$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/i;

    .line 7
    iget-object p2, p1, Lcom/tencent/liteav/videoconsumer/renderer/i;->e:Landroid/view/TextureView;

    .line 8
    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/i;->b(Landroid/view/TextureView;)V

    .line 9
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/i$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/i;

    .line 10
    iget-object p2, p1, Lcom/tencent/liteav/videoconsumer/renderer/i;->c:Lcom/tencent/liteav/videoconsumer/renderer/b$a;

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/tencent/liteav/videoconsumer/renderer/i;->e:Landroid/view/TextureView;

    if-nez p2, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 12
    iget-object p1, p1, Lcom/tencent/liteav/videoconsumer/renderer/i;->c:Lcom/tencent/liteav/videoconsumer/renderer/b$a;

    invoke-interface {p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/b$a;->a(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/i$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/i;

    .line 2
    iget-boolean v0, p1, Lcom/tencent/liteav/videoconsumer/renderer/i;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Lcom/tencent/liteav/videoconsumer/renderer/i;->g:Z

    .line 4
    iget-object p1, p1, Lcom/tencent/liteav/videoconsumer/renderer/i;->b:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 5
    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/renderer/n;->a(Lcom/tencent/liteav/videoconsumer/renderer/i$1;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
