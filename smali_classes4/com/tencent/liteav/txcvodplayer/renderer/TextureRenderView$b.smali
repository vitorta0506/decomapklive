.class final Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/tencent/liteav/txcplayer/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field a:Landroid/graphics/SurfaceTexture;

.field b:Z

.field c:I

.field d:I

.field e:Z

.field f:Z

.field g:Z

.field h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tencent/liteav/txcvodplayer/renderer/a$a;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->e:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->f:Z

    .line 4
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->g:Z

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->i:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->h:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->a:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    const-string v0, "TextureRenderView"

    if-nez p1, :cond_0

    const-string p1, "releaseSurfaceTexture: null"

    .line 2
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->g:Z

    if-eqz v1, :cond_3

    .line 4
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->a:Landroid/graphics/SurfaceTexture;

    if-eq p1, v1, :cond_1

    const-string v1, "releaseSurfaceTexture: didDetachFromWindow(): release different SurfaceTexture"

    .line 5
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    return-void

    .line 7
    :cond_1
    iget-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->e:Z

    if-nez v1, :cond_2

    const-string v1, "releaseSurfaceTexture: didDetachFromWindow(): release detached SurfaceTexture"

    .line 8
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    return-void

    :cond_2
    const-string p1, "releaseSurfaceTexture: didDetachFromWindow(): already released by TextureView"

    .line 10
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_3
    iget-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->f:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    .line 12
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->a:Landroid/graphics/SurfaceTexture;

    if-eq p1, v1, :cond_4

    const-string v1, "releaseSurfaceTexture: willDetachFromWindow(): release different SurfaceTexture"

    .line 13
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    return-void

    .line 15
    :cond_4
    iget-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->e:Z

    if-nez p1, :cond_5

    const-string p1, "releaseSurfaceTexture: willDetachFromWindow(): re-attach SurfaceTexture to TextureView"

    .line 16
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iput-boolean v2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->e:Z

    return-void

    :cond_5
    const-string p1, "releaseSurfaceTexture: willDetachFromWindow(): will released by TextureView"

    .line 18
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 19
    :cond_6
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->a:Landroid/graphics/SurfaceTexture;

    if-eq p1, v1, :cond_7

    const-string v1, "releaseSurfaceTexture: alive: release different SurfaceTexture"

    .line 20
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    return-void

    .line 22
    :cond_7
    iget-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->e:Z

    if-nez p1, :cond_8

    const-string p1, "releaseSurfaceTexture: alive: re-attach SurfaceTexture to TextureView"

    .line 23
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iput-boolean v2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->e:Z

    return-void

    :cond_8
    const-string p1, "releaseSurfaceTexture: alive: will released by TextureView"

    .line 25
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->a:Landroid/graphics/SurfaceTexture;

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->b:Z

    .line 3
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->c:I

    .line 4
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->d:I

    .line 5
    new-instance p2, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;

    iget-object p3, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;

    invoke-direct {p2, p3, p1, p0}, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;-><init>(Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;Landroid/graphics/SurfaceTexture;Lcom/tencent/liteav/txcplayer/c;)V

    .line 6
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->i:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/tencent/liteav/txcvodplayer/renderer/a$a;

    .line 7
    invoke-interface {p3, p2}, Lcom/tencent/liteav/txcvodplayer/renderer/a$a;->a(Lcom/tencent/liteav/txcvodplayer/renderer/a$b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->a:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->b:Z

    .line 3
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->c:I

    .line 4
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->d:I

    .line 5
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;

    invoke-direct {v0, v1, p1, p0}, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;-><init>(Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;Landroid/graphics/SurfaceTexture;Lcom/tencent/liteav/txcplayer/c;)V

    .line 6
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->i:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/txcvodplayer/renderer/a$a;

    .line 7
    invoke-interface {v1, v0}, Lcom/tencent/liteav/txcvodplayer/renderer/a$a;->b(Lcom/tencent/liteav/txcvodplayer/renderer/a$b;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onSurfaceTextureDestroyed: destroy: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->e:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextureRenderView"

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->e:Z

    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->a:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->b:Z

    .line 3
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->c:I

    .line 4
    iput p3, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->d:I

    .line 5
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;

    invoke-direct {v0, v1, p1, p0}, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;-><init>(Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;Landroid/graphics/SurfaceTexture;Lcom/tencent/liteav/txcplayer/c;)V

    .line 6
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->i:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/txcvodplayer/renderer/a$a;

    .line 7
    invoke-interface {v1, v0, p2, p3}, Lcom/tencent/liteav/txcvodplayer/renderer/a$a;->a(Lcom/tencent/liteav/txcvodplayer/renderer/a$b;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
