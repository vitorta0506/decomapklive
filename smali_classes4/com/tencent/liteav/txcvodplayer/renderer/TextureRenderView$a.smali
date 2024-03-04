.class final Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/txcvodplayer/renderer/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;

.field private b:Landroid/graphics/SurfaceTexture;

.field private c:Lcom/tencent/liteav/txcplayer/c;

.field private d:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;Landroid/graphics/SurfaceTexture;Lcom/tencent/liteav/txcplayer/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;->a:Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;

    .line 3
    iput-object p2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;->b:Landroid/graphics/SurfaceTexture;

    .line 4
    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;->c:Lcom/tencent/liteav/txcplayer/c;

    return-void
.end method


# virtual methods
.method public final a()Lcom/tencent/liteav/txcvodplayer/renderer/a;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;->a:Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;

    return-object v0
.end method

.method public final a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_5

    instance-of v0, p1, Lcom/tencent/liteav/txcplayer/b;

    if-eqz v0, :cond_5

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/tencent/liteav/txcplayer/b;

    .line 3
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;->a:Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;->a(Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;)Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, v1, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->e:Z

    .line 5
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;->a:Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;->a:Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;->b:Landroid/graphics/SurfaceTexture;

    .line 7
    :cond_1
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/b;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 8
    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;->a:Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;

    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;->a(Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;)Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/tencent/liteav/txcplayer/b;->setSurfaceTextureHost(Lcom/tencent/liteav/txcplayer/c;)V

    .line 9
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;->a:Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eq v0, v1, :cond_2

    .line 10
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;->a:Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;->a:Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;->a(Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;)Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;

    move-result-object v0

    .line 12
    iput-object v1, v0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->a:Landroid/graphics/SurfaceTexture;

    goto :goto_0

    .line 13
    :cond_3
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;->d:Landroid/view/Surface;

    if-eqz v1, :cond_4

    .line 14
    invoke-interface {p1, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setSurface(Landroid/view/Surface;)V

    .line 15
    :cond_4
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;->b:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/b;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 16
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;->a:Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;->a(Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;)Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/b;->setSurfaceTextureHost(Lcom/tencent/liteav/txcplayer/c;)V

    .line 17
    :goto_0
    invoke-interface {p1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;->d:Landroid/view/Surface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    .line 19
    :cond_5
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;->b()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;->d:Landroid/view/Surface;

    .line 20
    invoke-interface {p1, v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public final b()Landroid/view/Surface;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;->b:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;->d:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;->b:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;->d:Landroid/view/Surface;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;->d:Landroid/view/Surface;

    return-object v0
.end method

.method public final c()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;->d:Landroid/view/Surface;

    return-object v0
.end method
