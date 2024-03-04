.class final synthetic Lcom/tencent/liteav/videoconsumer/renderer/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/renderer/i;

.field private final b:Z


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoconsumer/renderer/i;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/l;->a:Lcom/tencent/liteav/videoconsumer/renderer/i;

    iput-boolean p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/l;->b:Z

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoconsumer/renderer/i;Z)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoconsumer/renderer/l;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/l;-><init>(Lcom/tencent/liteav/videoconsumer/renderer/i;Z)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/l;->a:Lcom/tencent/liteav/videoconsumer/renderer/i;

    iget-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/l;->b:Z

    .line 1
    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/renderer/i;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "release,mTextureView="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/tencent/liteav/videoconsumer/renderer/i;->e:Landroid/view/TextureView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/renderer/i;->e:Landroid/view/TextureView;

    if-eqz v2, :cond_3

    .line 3
    invoke-virtual {v0}, Lcom/tencent/liteav/videoconsumer/renderer/i;->a()V

    .line 4
    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/renderer/i;->e:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/liteav/videoconsumer/renderer/i;->h:Landroid/view/TextureView$SurfaceTextureListener;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    .line 5
    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/renderer/i;->e:Landroid/view/TextureView;

    invoke-virtual {v2, v4}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 6
    :cond_0
    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/renderer/i;->f:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    .line 8
    iput-object v4, v0, Lcom/tencent/liteav/videoconsumer/renderer/i;->f:Landroid/graphics/SurfaceTexture;

    .line 9
    :cond_1
    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/renderer/i;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz v2, :cond_2

    .line 10
    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/renderer/i;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "clearLastImage="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",mHasFirstFrameRendered="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/tencent/liteav/videoconsumer/renderer/i;->g:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-boolean v2, v0, Lcom/tencent/liteav/videoconsumer/renderer/i;->g:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 12
    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/renderer/i;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    iget-object v5, v0, Lcom/tencent/liteav/videoconsumer/renderer/i;->e:Landroid/view/TextureView;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    .line 13
    const-class v8, Landroid/view/TextureView;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v9

    .line 14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v3

    const-string v1, "removeViewInternal"

    invoke-static {v2, v1, v7, v6}, Lcom/tencent/liteav/videobase/videobase/g;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_2
    iput-object v4, v0, Lcom/tencent/liteav/videoconsumer/renderer/i;->e:Landroid/view/TextureView;

    :cond_3
    return-void
.end method
