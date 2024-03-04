.class public final Lcom/tencent/liteav/txcvodplayer/renderer/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/txcvodplayer/renderer/d$a;
    }
.end annotation


# instance fields
.field public a:Lcom/tencent/liteav/base/util/CustomHandler;

.field protected b:Lcom/tencent/liteav/videobase/b/e;

.field private c:Lcom/tencent/liteav/videoconsumer/renderer/p;

.field private d:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

.field private e:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

.field private f:Lcom/tencent/liteav/videobase/utils/Rotation;

.field private g:Landroid/graphics/SurfaceTexture;

.field private h:I

.field private i:Lcom/tencent/liteav/videobase/frame/PixelFrame;

.field private j:Lcom/tencent/liteav/videobase/frame/l;

.field private k:Lcom/tencent/liteav/videobase/frame/j;

.field private l:Lcom/tencent/liteav/videobase/frame/e;

.field private final m:[F

.field private n:I

.field private o:I

.field private final p:Lcom/tencent/liteav/txcvodplayer/renderer/d$a;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/txcvodplayer/renderer/d$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->e:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    .line 3
    sget-object v0, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->f:Lcom/tencent/liteav/videobase/utils/Rotation;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->h:I

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 5
    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->m:[F

    const/16 v0, 0x2d0

    .line 6
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->n:I

    const/16 v0, 0x500

    .line 7
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->o:I

    .line 8
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->p:Lcom/tencent/liteav/txcvodplayer/renderer/d$a;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/renderer/d;)V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->b:Lcom/tencent/liteav/videobase/b/e;

    if-nez v0, :cond_1

    .line 87
    new-instance v0, Lcom/tencent/liteav/videobase/b/e;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/b/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->b:Lcom/tencent/liteav/videobase/b/e;

    .line 88
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->j:Lcom/tencent/liteav/videobase/frame/l;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/tencent/liteav/videobase/frame/l;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/l;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->j:Lcom/tencent/liteav/videobase/frame/l;

    :cond_0
    const/4 v0, 0x0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->b:Lcom/tencent/liteav/videobase/b/e;

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v0, v2, v2}, Lcom/tencent/liteav/videobase/b/e;->a(Ljava/lang/Object;Landroid/view/Surface;II)V

    .line 91
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->b:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/b/e;->a()V

    .line 92
    invoke-static {}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->generateTextureOES()I

    move-result v1

    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->h:I

    .line 93
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->h:I

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->g:Landroid/graphics/SurfaceTexture;

    .line 94
    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->n:I

    iget v3, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->o:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 95
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->g:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 96
    new-instance v1, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->i:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 97
    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->n:I

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setWidth(I)V

    .line 98
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->i:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->o:I

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setHeight(I)V

    .line 99
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->i:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->c:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setPixelBufferType(Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;)V

    .line 100
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->i:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setPixelFormatType(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;)V

    .line 101
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->i:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    sget-object v2, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setRotation(Lcom/tencent/liteav/videobase/utils/Rotation;)V

    .line 102
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->i:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->b:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/b/e;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setGLContext(Ljava/lang/Object;)V

    .line 103
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->i:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->h:I

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTextureId(I)V

    .line 104
    new-instance v1, Lcom/tencent/liteav/videobase/frame/e;

    invoke-direct {v1}, Lcom/tencent/liteav/videobase/frame/e;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->l:Lcom/tencent/liteav/videobase/frame/e;

    .line 105
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->p:Lcom/tencent/liteav/txcvodplayer/renderer/d$a;

    if-eqz v1, :cond_1

    .line 106
    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->g:Landroid/graphics/SurfaceTexture;

    invoke-interface {v1, v2}, Lcom/tencent/liteav/txcvodplayer/renderer/d$a;->a(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "VodRenderer"

    const-string v3, "initializeEGL failed."

    .line 107
    invoke-static {v2, v3, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->b:Lcom/tencent/liteav/videobase/b/e;

    .line 109
    :cond_1
    :goto_0
    new-instance v0, Lcom/tencent/liteav/videoconsumer/renderer/p;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->a:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/tencent/liteav/videobase/videobase/e;

    invoke-direct {v2}, Lcom/tencent/liteav/videobase/videobase/e;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoconsumer/renderer/p;-><init>(Landroid/os/Looper;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->c:Lcom/tencent/liteav/videoconsumer/renderer/p;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/renderer/d;II)V
    .locals 3

    .line 9
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->n:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->o:I

    if-eq v0, p2, :cond_2

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "VodRenderer"

    const-string v2, "setVideoSize: %d*%d"

    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->n:I

    .line 12
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->o:I

    .line 13
    iget-object p2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->i:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {p2, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setWidth(I)V

    .line 14
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->i:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    iget p2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->o:I

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setHeight(I)V

    .line 15
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->k:Lcom/tencent/liteav/videobase/frame/j;

    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/j;->a()V

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->k:Lcom/tencent/liteav/videobase/frame/j;

    .line 18
    :cond_1
    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->l:Lcom/tencent/liteav/videobase/frame/e;

    if-eqz p0, :cond_2

    .line 19
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/frame/e;->a()V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/renderer/d;Landroid/graphics/SurfaceTexture;)V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->g:Landroid/graphics/SurfaceTexture;

    const-string v1, "VodRenderer"

    if-eqz v0, :cond_7

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/renderer/d;->b()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->l:Lcom/tencent/liteav/videobase/frame/e;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->j:Lcom/tencent/liteav/videobase/frame/l;

    if-nez p1, :cond_2

    goto/16 :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 60
    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/h;->a()Lcom/tencent/liteav/videobase/frame/k;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/videobase/frame/l$b;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    .line 61
    :catch_0
    :try_start_1
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->g:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 62
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->g:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->m:[F

    invoke-virtual {p1, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 63
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->i:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->m:[F

    invoke-virtual {p1, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMatrix([F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 64
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "updateTexImage exception: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const p1, 0x8d65

    .line 65
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->h:I

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->i:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 66
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->i:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v3

    .line 67
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/tencent/liteav/videobase/frame/l$b;->a(IIII)V

    .line 68
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->i:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/frame/l$b;->a(Ljava/lang/Object;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object p1

    .line 69
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->m:[F

    invoke-virtual {p1, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMatrix([F)V

    .line 70
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->k:Lcom/tencent/liteav/videobase/frame/j;

    if-nez v1, :cond_3

    .line 71
    new-instance v1, Lcom/tencent/liteav/videobase/frame/j;

    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->n:I

    iget v3, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->o:I

    invoke-direct {v1, v2, v3}, Lcom/tencent/liteav/videobase/frame/j;-><init>(II)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->k:Lcom/tencent/liteav/videobase/frame/j;

    .line 72
    :cond_3
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->n:I

    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->o:I

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->glViewport(IIII)V

    .line 73
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->l:Lcom/tencent/liteav/videobase/frame/e;

    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->n:I

    iget v3, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->o:I

    invoke-virtual {v1, v2, v3}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object v1

    .line 74
    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->k:Lcom/tencent/liteav/videobase/frame/j;

    sget-object v3, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    invoke-virtual {v2, p1, v3, v1}, Lcom/tencent/liteav/videobase/frame/j;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Lcom/tencent/liteav/videobase/frame/d;)V

    .line 75
    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->b:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/b/e;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videobase/frame/d;->a(Ljava/lang/Object;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v2

    .line 76
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    .line 77
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->p:Lcom/tencent/liteav/txcvodplayer/renderer/d$a;

    if-eqz v1, :cond_4

    .line 78
    invoke-interface {v1, v2}, Lcom/tencent/liteav/txcvodplayer/renderer/d$a;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    .line 79
    :cond_4
    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->c:Lcom/tencent/liteav/videoconsumer/renderer/p;

    if-eqz p0, :cond_5

    .line 80
    invoke-virtual {p0, v2}, Lcom/tencent/liteav/videoconsumer/renderer/p;->renderFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    .line 81
    :cond_5
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    .line 82
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    .line 83
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-void

    .line 84
    :cond_6
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onCaptureFrameAvailable mGLTexturePool:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->l:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mTextureHolderPool:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->j:Lcom/tencent/liteav/videobase/frame/l;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 85
    :cond_7
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mSurfaceTexture= "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->g:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " ,surfaceTexture= "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/renderer/d;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V
    .locals 2

    .line 21
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setScaleType "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VodRenderer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->e:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    .line 23
    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->c:Lcom/tencent/liteav/videoconsumer/renderer/p;

    if-eqz p0, :cond_0

    .line 24
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/p;->setScaleType(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/renderer/d;Lcom/tencent/liteav/videobase/utils/Rotation;)V
    .locals 2

    .line 26
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setRenderRotation "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VodRenderer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->f:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 28
    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->c:Lcom/tencent/liteav/videoconsumer/renderer/p;

    if-eqz p0, :cond_0

    .line 29
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/p;->setRenderRotation(Lcom/tencent/liteav/videobase/utils/Rotation;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/renderer/d;Lcom/tencent/liteav/videobase/videobase/DisplayTarget;)V
    .locals 2

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setDisplayTarget: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VodRenderer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->d:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    .line 7
    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->c:Lcom/tencent/liteav/videoconsumer/renderer/p;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/tencent/liteav/videoconsumer/renderer/p;->setDisplayView(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Z)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/renderer/d;Z)V
    .locals 2

    const-string v0, "VodRenderer"

    const-string v1, "Stop"

    .line 2
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->c:Lcom/tencent/liteav/videoconsumer/renderer/p;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/p;->stop(Z)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/txcvodplayer/renderer/d;)V
    .locals 3

    const-string v0, "VodRenderer"

    const-string v1, "Start"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->c:Lcom/tencent/liteav/videoconsumer/renderer/p;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->d:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videoconsumer/renderer/p;->setDisplayView(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Z)V

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->c:Lcom/tencent/liteav/videoconsumer/renderer/p;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->f:Lcom/tencent/liteav/videobase/utils/Rotation;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoconsumer/renderer/p;->setRenderRotation(Lcom/tencent/liteav/videobase/utils/Rotation;)V

    .line 5
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->c:Lcom/tencent/liteav/videoconsumer/renderer/p;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->e:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoconsumer/renderer/p;->setScaleType(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V

    .line 6
    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->c:Lcom/tencent/liteav/videoconsumer/renderer/p;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoconsumer/renderer/p;->start(Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;)V

    :cond_0
    return-void
.end method

.method private b()Z
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->b:Lcom/tencent/liteav/videobase/b/e;

    const/4 v1, 0x0

    const-string v2, "VodRenderer"

    if-nez v0, :cond_0

    const-string v0, "makeCurrent on mEGLCore is null"

    .line 8
    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/b/e;->a()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v3, "make current failed."

    .line 10
    invoke-static {v2, v3, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method static synthetic c(Lcom/tencent/liteav/txcvodplayer/renderer/d;)Lcom/tencent/liteav/videoconsumer/renderer/p;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->c:Lcom/tencent/liteav/videoconsumer/renderer/p;

    return-object p0
.end method

.method static synthetic d(Lcom/tencent/liteav/txcvodplayer/renderer/d;)Lcom/tencent/liteav/videoconsumer/renderer/p;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->c:Lcom/tencent/liteav/videoconsumer/renderer/p;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/liteav/txcvodplayer/renderer/d;)Lcom/tencent/liteav/videobase/videobase/DisplayTarget;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->d:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/liteav/txcvodplayer/renderer/d;)Lcom/tencent/liteav/base/util/CustomHandler;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->a:Lcom/tencent/liteav/base/util/CustomHandler;

    return-object p0
.end method

.method static synthetic g(Lcom/tencent/liteav/txcvodplayer/renderer/d;)Lcom/tencent/liteav/base/util/CustomHandler;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->a:Lcom/tencent/liteav/base/util/CustomHandler;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .line 30
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->b:Lcom/tencent/liteav/videobase/b/e;

    if-nez v0, :cond_0

    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->j:Lcom/tencent/liteav/videobase/frame/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/h;->b()V

    .line 33
    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->j:Lcom/tencent/liteav/videobase/frame/l;

    .line 34
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->b:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/b/e;->a()V

    .line 35
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->p:Lcom/tencent/liteav/txcvodplayer/renderer/d$a;

    if-eqz v0, :cond_2

    .line 36
    invoke-interface {v0}, Lcom/tencent/liteav/txcvodplayer/renderer/d$a;->f()V

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->g:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    .line 38
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 39
    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->g:Landroid/graphics/SurfaceTexture;

    .line 40
    :cond_3
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->h:I

    invoke-static {v0}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->deleteTexture(I)V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->h:I

    .line 42
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->k:Lcom/tencent/liteav/videobase/frame/j;

    if-eqz v0, :cond_4

    .line 43
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/j;->a()V

    .line 44
    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->k:Lcom/tencent/liteav/videobase/frame/j;

    .line 45
    :cond_4
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->l:Lcom/tencent/liteav/videobase/frame/e;

    if-eqz v0, :cond_5

    .line 46
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/e;->a()V

    .line 47
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->l:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/e;->b()V

    .line 48
    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->l:Lcom/tencent/liteav/videobase/frame/e;
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "VodRenderer"

    const-string v3, "EGLCore destroy failed."

    .line 49
    invoke-static {v2, v3, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->b:Lcom/tencent/liteav/videobase/b/e;

    invoke-static {v0}, Lcom/tencent/liteav/videobase/b/e;->a(Lcom/tencent/liteav/videobase/b/e;)V

    .line 51
    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->b:Lcom/tencent/liteav/videobase/b/e;

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V
    .locals 1

    .line 20
    invoke-static {p0, p1}, Lcom/tencent/liteav/txcvodplayer/renderer/i;->a(Lcom/tencent/liteav/txcvodplayer/renderer/d;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)Ljava/lang/Runnable;

    move-result-object p1

    const-string v0, "setScaleType"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/liteav/txcvodplayer/renderer/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/utils/Rotation;)V
    .locals 1

    .line 25
    invoke-static {p0, p1}, Lcom/tencent/liteav/txcvodplayer/renderer/j;->a(Lcom/tencent/liteav/txcvodplayer/renderer/d;Lcom/tencent/liteav/videobase/utils/Rotation;)Ljava/lang/Runnable;

    move-result-object p1

    const-string v0, "setRenderRotation"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/liteav/txcvodplayer/renderer/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/d;->a:Lcom/tencent/liteav/base/util/CustomHandler;

    if-nez v0, :cond_0

    .line 53
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ignore runnable: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "VodRenderer"

    invoke-static {p2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 54
    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq p2, v1, :cond_1

    .line 55
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 56
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/tencent/liteav/txcvodplayer/renderer/f;->a(Lcom/tencent/liteav/txcvodplayer/renderer/d;Z)Ljava/lang/Runnable;

    move-result-object p1

    const-string v0, "Stop"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/liteav/txcvodplayer/renderer/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/tencent/liteav/txcvodplayer/renderer/l;->a(Lcom/tencent/liteav/txcvodplayer/renderer/d;Landroid/graphics/SurfaceTexture;)Ljava/lang/Runnable;

    move-result-object p1

    const-string v0, "onFrameAvailable"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/liteav/txcvodplayer/renderer/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method
