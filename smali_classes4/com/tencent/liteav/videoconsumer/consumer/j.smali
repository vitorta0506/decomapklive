.class public final Lcom/tencent/liteav/videoconsumer/consumer/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videoconsumer/consumer/j$b;,
        Lcom/tencent/liteav/videoconsumer/consumer/j$a;
    }
.end annotation


# instance fields
.field private A:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

.field private B:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

.field a:Ljava/lang/String;

.field final b:Lcom/tencent/liteav/base/util/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final c:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field d:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

.field e:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

.field f:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

.field g:Lcom/tencent/liteav/videoconsumer/consumer/j$b;

.field h:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

.field i:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

.field j:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

.field k:Lcom/tencent/liteav/videobase/utils/Rotation;

.field l:Z

.field final m:Lcom/tencent/liteav/videobase/utils/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field n:Z

.field final o:Lcom/tencent/liteav/videobase/utils/f;

.field p:Lcom/tencent/liteav/videoconsumer/consumer/j$a;

.field q:Z

.field r:I

.field s:I

.field t:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

.field u:Ljava/lang/Object;

.field final v:Ljava/util/concurrent/atomic/AtomicLong;

.field final w:Lcom/tencent/liteav/videoconsumer/renderer/o;

.field final x:Lcom/tencent/liteav/videobase/utils/j;

.field final y:Ljava/lang/Runnable;

.field final z:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$a;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V
    .locals 4
    .param p1    # Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VideoConsumer"

    .line 2
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->a:Ljava/lang/String;

    .line 3
    new-instance v1, Lcom/tencent/liteav/videoconsumer/consumer/j$1;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/videoconsumer/consumer/j$1;-><init>(Lcom/tencent/liteav/videoconsumer/consumer/j;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->A:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    .line 4
    new-instance v1, Lcom/tencent/liteav/videoconsumer/consumer/j$2;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/videoconsumer/consumer/j$2;-><init>(Lcom/tencent/liteav/videoconsumer/consumer/j;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->B:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    .line 5
    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->j:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    .line 6
    sget-object v1, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->k:Lcom/tencent/liteav/videobase/utils/Rotation;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->l:Z

    .line 8
    new-instance v2, Lcom/tencent/liteav/videobase/utils/d;

    invoke-direct {v2}, Lcom/tencent/liteav/videobase/utils/d;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->m:Lcom/tencent/liteav/videobase/utils/d;

    .line 9
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->n:Z

    .line 10
    sget-object v2, Lcom/tencent/liteav/videoconsumer/consumer/j$a;->a:Lcom/tencent/liteav/videoconsumer/consumer/j$a;

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->p:Lcom/tencent/liteav/videoconsumer/consumer/j$a;

    .line 11
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->q:Z

    .line 12
    iput v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->r:I

    .line 13
    iput v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->s:I

    .line 14
    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->t:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->u:Ljava/lang/Object;

    .line 16
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->v:Ljava/util/concurrent/atomic/AtomicLong;

    .line 17
    new-instance v1, Lcom/tencent/liteav/videobase/utils/j;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/tencent/liteav/videobase/utils/j;-><init>(I)V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->x:Lcom/tencent/liteav/videobase/utils/j;

    .line 18
    new-instance v1, Lcom/tencent/liteav/videoconsumer/consumer/j$3;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/videoconsumer/consumer/j$3;-><init>(Lcom/tencent/liteav/videoconsumer/consumer/j;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->y:Ljava/lang/Runnable;

    .line 19
    new-instance v1, Lcom/tencent/liteav/videoconsumer/consumer/j$4;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/videoconsumer/consumer/j$4;-><init>(Lcom/tencent/liteav/videoconsumer/consumer/j;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->z:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$a;

    .line 20
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->c:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->a:Ljava/lang/String;

    .line 22
    new-instance v1, Lcom/tencent/liteav/videobase/utils/f;

    .line 23
    new-instance v2, Lcom/tencent/liteav/videoconsumer/consumer/k;

    invoke-direct {v2, p0}, Lcom/tencent/liteav/videoconsumer/consumer/k;-><init>(Lcom/tencent/liteav/videoconsumer/consumer/j;)V

    const/16 v3, 0x3e8

    .line 24
    invoke-direct {v1, v0, v3, v2}, Lcom/tencent/liteav/videobase/utils/f;-><init>(Ljava/lang/String;ILcom/tencent/liteav/videobase/utils/f$a;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->o:Lcom/tencent/liteav/videobase/utils/f;

    .line 25
    new-instance v0, Lcom/tencent/liteav/videoconsumer/renderer/o;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/o;-><init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->w:Lcom/tencent/liteav/videoconsumer/renderer/o;

    .line 26
    new-instance p1, Lcom/tencent/liteav/base/util/j;

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->a:Ljava/lang/String;

    const/16 v1, 0xf

    invoke-direct {p1, v1, v0}, Lcom/tencent/liteav/base/util/j;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->b:Lcom/tencent/liteav/base/util/j;

    return-void
.end method


# virtual methods
.method final a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;",
            ">;"
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->d:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

    if-eqz v1, :cond_0

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->e:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

    if-eqz v1, :cond_1

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method final a(Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 3
    instance-of v0, p1, Lcom/tencent/liteav/videoconsumer/consumer/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->A:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->B:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    :goto_0
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;->start(Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;)V

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->i:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;->setDisplayView(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Z)V

    .line 5
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->k:Lcom/tencent/liteav/videobase/utils/Rotation;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;->setRenderRotation(Lcom/tencent/liteav/videobase/utils/Rotation;)V

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->j:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;->setScaleType(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V

    .line 7
    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->l:Z

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;->setHorizontalMirror(Z)V

    :cond_1
    return-void
.end method

.method final a(Ljava/lang/Runnable;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 8
    iget-object p2, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->b:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/v;->a(Lcom/tencent/liteav/videoconsumer/consumer/j;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/tencent/liteav/videoconsumer/consumer/j;->b:Lcom/tencent/liteav/base/util/j;

    invoke-virtual {p2, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/x;->a(Lcom/tencent/liteav/videoconsumer/consumer/j;Z)Ljava/lang/Runnable;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/tencent/liteav/videoconsumer/consumer/j;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method
