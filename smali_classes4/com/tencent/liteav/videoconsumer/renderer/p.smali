.class public final Lcom/tencent/liteav/videoconsumer/renderer/p;
.super Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videoconsumer/renderer/b$a;
.implements Lcom/tencent/rtmp/ui/a;
.implements Lcom/tencent/rtmp/ui/b;


# instance fields
.field private A:Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;

.field private B:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

.field private C:Z

.field private D:Landroid/graphics/Bitmap;

.field private E:Z

.field private F:Z

.field private final a:Ljava/lang/String;

.field private final b:Landroid/os/Handler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/tencent/liteav/base/util/CustomHandler;

.field private final d:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Lcom/tencent/liteav/base/util/j;

.field private final f:Lcom/tencent/liteav/base/util/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final g:Lcom/tencent/liteav/base/b/b;

.field private final h:Lcom/tencent/liteav/base/util/q;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private i:Landroid/view/Surface;

.field private j:Z

.field private k:Ljava/lang/Object;

.field private l:Lcom/tencent/liteav/videobase/b/e;

.field private final m:Lcom/tencent/liteav/videobase/frame/c;

.field private n:Lcom/tencent/liteav/videobase/frame/j;

.field private final o:Lcom/tencent/liteav/videobase/utils/j;

.field private p:Lcom/tencent/liteav/videobase/frame/e;

.field private q:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

.field private r:Lcom/tencent/liteav/videobase/utils/Rotation;

.field private s:Z

.field private t:Z

.field private u:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private v:Lcom/tencent/liteav/videoconsumer/renderer/b;

.field private final w:Lcom/tencent/liteav/base/util/q;

.field private x:Lcom/tencent/liteav/videobase/utils/Rotation;

.field private volatile y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V
    .locals 4
    .param p1    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoRenderer_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Landroid/os/Handler;

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->b:Landroid/os/Handler;

    .line 5
    new-instance v0, Lcom/tencent/liteav/base/util/j;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/tencent/liteav/base/util/j;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->f:Lcom/tencent/liteav/base/util/j;

    .line 6
    new-instance v0, Lcom/tencent/liteav/base/b/b;

    invoke-direct {v0}, Lcom/tencent/liteav/base/b/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->g:Lcom/tencent/liteav/base/b/b;

    .line 7
    new-instance v0, Lcom/tencent/liteav/base/util/q;

    invoke-direct {v0}, Lcom/tencent/liteav/base/util/q;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->h:Lcom/tencent/liteav/base/util/q;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->i:Landroid/view/Surface;

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->j:Z

    .line 10
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->l:Lcom/tencent/liteav/videobase/b/e;

    .line 11
    new-instance v2, Lcom/tencent/liteav/videobase/frame/c;

    invoke-direct {v2}, Lcom/tencent/liteav/videobase/frame/c;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->m:Lcom/tencent/liteav/videobase/frame/c;

    .line 12
    new-instance v2, Lcom/tencent/liteav/videobase/utils/j;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/tencent/liteav/videobase/utils/j;-><init>(I)V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->o:Lcom/tencent/liteav/videobase/utils/j;

    .line 13
    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->q:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    .line 14
    sget-object v2, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->r:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 15
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->s:Z

    .line 16
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->t:Z

    .line 17
    new-instance v3, Lcom/tencent/liteav/base/util/q;

    invoke-direct {v3}, Lcom/tencent/liteav/base/util/q;-><init>()V

    iput-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->w:Lcom/tencent/liteav/base/util/q;

    .line 18
    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->x:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 19
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->y:Z

    .line 20
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->z:Z

    .line 21
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->C:Z

    .line 22
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->E:Z

    .line 23
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->F:Z

    .line 24
    new-instance v1, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-direct {v1, p1}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 25
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->e:Lcom/tencent/liteav/base/util/j;

    .line 26
    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->d:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/liteav/base/util/j;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V
    .locals 4
    .param p1    # Lcom/tencent/liteav/base/util/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoRenderer_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->a:Ljava/lang/String;

    .line 29
    new-instance v0, Landroid/os/Handler;

    .line 30
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->b:Landroid/os/Handler;

    .line 31
    new-instance v0, Lcom/tencent/liteav/base/util/j;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/tencent/liteav/base/util/j;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->f:Lcom/tencent/liteav/base/util/j;

    .line 32
    new-instance v0, Lcom/tencent/liteav/base/b/b;

    invoke-direct {v0}, Lcom/tencent/liteav/base/b/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->g:Lcom/tencent/liteav/base/b/b;

    .line 33
    new-instance v0, Lcom/tencent/liteav/base/util/q;

    invoke-direct {v0}, Lcom/tencent/liteav/base/util/q;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->h:Lcom/tencent/liteav/base/util/q;

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->i:Landroid/view/Surface;

    const/4 v1, 0x0

    .line 35
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->j:Z

    .line 36
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->l:Lcom/tencent/liteav/videobase/b/e;

    .line 37
    new-instance v2, Lcom/tencent/liteav/videobase/frame/c;

    invoke-direct {v2}, Lcom/tencent/liteav/videobase/frame/c;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->m:Lcom/tencent/liteav/videobase/frame/c;

    .line 38
    new-instance v2, Lcom/tencent/liteav/videobase/utils/j;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/tencent/liteav/videobase/utils/j;-><init>(I)V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->o:Lcom/tencent/liteav/videobase/utils/j;

    .line 39
    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->q:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    .line 40
    sget-object v2, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->r:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 41
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->s:Z

    .line 42
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->t:Z

    .line 43
    new-instance v3, Lcom/tencent/liteav/base/util/q;

    invoke-direct {v3}, Lcom/tencent/liteav/base/util/q;-><init>()V

    iput-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->w:Lcom/tencent/liteav/base/util/q;

    .line 44
    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->x:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 45
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->y:Z

    .line 46
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->z:Z

    .line 47
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->C:Z

    .line 48
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->E:Z

    .line 49
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->F:Z

    .line 50
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 51
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->e:Lcom/tencent/liteav/base/util/j;

    .line 52
    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->d:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    return-void
.end method

.method private a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->B:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;->onRenderFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/tencent/liteav/videobase/frame/PixelFrame;ZZLcom/tencent/liteav/videobase/utils/Rotation;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Z)V
    .locals 2

    .line 65
    new-instance v0, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    .line 66
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object p1

    .line 67
    iget p1, p1, Lcom/tencent/liteav/videobase/utils/Rotation;->mValue:I

    .line 68
    iget v1, p4, Lcom/tencent/liteav/videobase/utils/Rotation;->mValue:I

    add-int/2addr p1, v1

    .line 69
    rem-int/lit16 p1, p1, 0x168

    .line 70
    invoke-static {p1}, Lcom/tencent/liteav/videobase/utils/Rotation;->a(I)Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setRotation(Lcom/tencent/liteav/videobase/utils/Rotation;)V

    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorHorizontal()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorHorizontal(Z)V

    :cond_0
    if-eqz p3, :cond_1

    .line 72
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorVertical()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorVertical(Z)V

    .line 73
    :cond_1
    sget-object p1, Lcom/tencent/liteav/videobase/utils/Rotation;->b:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-eq p4, p1, :cond_2

    sget-object p1, Lcom/tencent/liteav/videobase/utils/Rotation;->d:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-ne p4, p1, :cond_3

    .line 74
    :cond_2
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result p1

    .line 75
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setWidth(I)V

    .line 76
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setHeight(I)V

    .line 77
    :cond_3
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorVertical()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorVertical(Z)V

    .line 78
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object p1

    sget-object p2, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-eq p1, p2, :cond_4

    .line 79
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object p1

    sget-object p2, Lcom/tencent/liteav/videobase/utils/Rotation;->c:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-eq p1, p2, :cond_4

    .line 80
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object p1

    .line 81
    iget p1, p1, Lcom/tencent/liteav/videobase/utils/Rotation;->mValue:I

    .line 82
    iget p2, p2, Lcom/tencent/liteav/videobase/utils/Rotation;->mValue:I

    add-int/2addr p1, p2

    .line 83
    rem-int/lit16 p1, p1, 0x168

    .line 84
    invoke-static {p1}, Lcom/tencent/liteav/videobase/utils/Rotation;->a(I)Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setRotation(Lcom/tencent/liteav/videobase/utils/Rotation;)V

    :cond_4
    if-eqz p6, :cond_5

    .line 85
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->v:Lcom/tencent/liteav/videoconsumer/renderer/b;

    if-eqz p1, :cond_5

    .line 86
    iget-object p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->q:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    .line 87
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result p3

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result p4

    .line 88
    invoke-virtual {p1, p2, p3, p4}, Lcom/tencent/liteav/videoconsumer/renderer/b;->a(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;II)V

    .line 89
    :cond_5
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->n:Lcom/tencent/liteav/videobase/frame/j;

    if-eqz p1, :cond_7

    .line 90
    iget-object p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->v:Lcom/tencent/liteav/videoconsumer/renderer/b;

    instance-of p2, p2, Lcom/tencent/liteav/videoconsumer/renderer/i;

    const/4 p3, 0x0

    if-eqz p2, :cond_6

    .line 91
    sget-object p2, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->c:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    invoke-virtual {p1, v0, p2, p3}, Lcom/tencent/liteav/videobase/frame/j;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Lcom/tencent/liteav/videobase/frame/d;)V

    return-void

    .line 92
    :cond_6
    invoke-virtual {p1, v0, p5, p3}, Lcom/tencent/liteav/videobase/frame/j;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Lcom/tencent/liteav/videobase/frame/d;)V

    :cond_7
    return-void
.end method

.method private a(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Z)V
    .locals 5

    .line 37
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDisplayViewInternal="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",clearLastImage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->u:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->v:Lcom/tencent/liteav/videoconsumer/renderer/b;

    if-eqz v1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->a:Ljava/lang/String;

    const-string/jumbo p2, "view is equal and RenderViewHelper is created."

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 41
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->C:Z

    .line 42
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->u:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 43
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->hideAll()V

    .line 44
    :cond_1
    invoke-direct {p0, p2}, Lcom/tencent/liteav/videoconsumer/renderer/p;->a(Z)V

    .line 45
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->u:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    if-nez p1, :cond_2

    return-void

    .line 46
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->showAll()V

    .line 47
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->getType()Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;

    move-result-object p2

    const-string v0, "RenderViewHelperInterface"

    const/4 v2, 0x0

    if-nez p2, :cond_3

    .line 48
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "displayTarget or type is null. displayTarget="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 49
    :cond_3
    sget-object p2, Lcom/tencent/liteav/videoconsumer/renderer/b$1;->a:[I

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->getType()Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget p2, p2, v3

    if-eq p2, v1, :cond_8

    const/4 v1, 0x2

    if-eq p2, v1, :cond_7

    const/4 v1, 0x3

    if-eq p2, v1, :cond_6

    const/4 v1, 0x4

    if-eq p2, v1, :cond_4

    move-object p2, v2

    move-object v1, p2

    :goto_0
    move-object v3, v1

    :goto_1
    move-object v4, v3

    goto :goto_2

    .line 50
    :cond_4
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->getTXCloudVideoView()Lcom/tencent/rtmp/ui/TXCloudVideoView;

    move-result-object p2

    if-nez p2, :cond_5

    const-string/jumbo v1, "txCloudVideoView is null."

    .line 51
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p2

    move-object p2, v2

    move-object v3, p2

    goto :goto_1

    .line 52
    :cond_5
    invoke-virtual {p2}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v1

    .line 53
    invoke-static {p2}, Lcom/tencent/liteav/videobase/videobase/g;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;)Landroid/view/TextureView;

    move-result-object v3

    move-object v4, v3

    move-object v3, v1

    move-object v1, p2

    move-object p2, v2

    goto :goto_2

    .line 54
    :cond_6
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->getSurface()Landroid/view/Surface;

    move-result-object p2

    move-object v1, v2

    goto :goto_0

    .line 55
    :cond_7
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->getTextureView()Landroid/view/TextureView;

    move-result-object v3

    move-object p2, v2

    move-object v1, p2

    move-object v4, v3

    move-object v3, v1

    goto :goto_2

    .line 56
    :cond_8
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v1

    move-object v3, v1

    move-object p2, v2

    move-object v1, p2

    move-object v4, v1

    :goto_2
    if-eqz v3, :cond_9

    .line 57
    new-instance v2, Lcom/tencent/liteav/videoconsumer/renderer/f;

    invoke-direct {v2, v3, p0}, Lcom/tencent/liteav/videoconsumer/renderer/f;-><init>(Landroid/view/SurfaceView;Lcom/tencent/liteav/videoconsumer/renderer/b$a;)V

    goto :goto_3

    :cond_9
    if-eqz v4, :cond_a

    .line 58
    new-instance v2, Lcom/tencent/liteav/videoconsumer/renderer/i;

    invoke-direct {v2, v4, p0}, Lcom/tencent/liteav/videoconsumer/renderer/i;-><init>(Landroid/view/TextureView;Lcom/tencent/liteav/videoconsumer/renderer/b$a;)V

    goto :goto_3

    :cond_a
    if-eqz p2, :cond_b

    .line 59
    new-instance v2, Lcom/tencent/liteav/videoconsumer/renderer/c;

    invoke-direct {v2, p2, p0}, Lcom/tencent/liteav/videoconsumer/renderer/c;-><init>(Landroid/view/Surface;Lcom/tencent/liteav/videoconsumer/renderer/b$a;)V

    goto :goto_3

    :cond_b
    if-eqz v1, :cond_c

    .line 60
    new-instance v2, Lcom/tencent/liteav/videoconsumer/renderer/i;

    invoke-direct {v2, v1, p0}, Lcom/tencent/liteav/videoconsumer/renderer/i;-><init>(Lcom/tencent/rtmp/ui/TXCloudVideoView;Lcom/tencent/liteav/videoconsumer/renderer/b$a;)V

    goto :goto_3

    .line 61
    :cond_c
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "RenderViewHelper not created. displayTarget="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_3
    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->v:Lcom/tencent/liteav/videoconsumer/renderer/b;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/p;)V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSurfaceDestroy "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->i:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->j:Z

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/tencent/liteav/videoconsumer/renderer/p;->b(Landroid/view/Surface;Z)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/p;F)V
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->F:Z

    if-nez v0, :cond_0

    return-void

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->B:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    if-eqz p0, :cond_1

    .line 22
    invoke-interface {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;->onZoom(F)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/p;IIII)V
    .locals 5

    .line 12
    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->E:Z

    if-nez v0, :cond_0

    return-void

    .line 13
    :cond_0
    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->x:Lcom/tencent/liteav/videobase/utils/Rotation;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v3, Lcom/tencent/liteav/base/util/q;

    invoke-direct {v3, p3, p4}, Lcom/tencent/liteav/base/util/q;-><init>(II)V

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->w:Lcom/tencent/liteav/base/util/q;

    .line 14
    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->reverseMappingPoint(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Lcom/tencent/liteav/videobase/utils/Rotation;Landroid/graphics/Point;Lcom/tencent/liteav/base/util/q;Lcom/tencent/liteav/base/util/q;)Landroid/graphics/Point;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->B:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    if-eqz v1, :cond_1

    .line 16
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-interface {v1, v2, v0, p3, p4}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;->onFocusAtPoint(IIII)V

    .line 17
    :cond_1
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/p;->c()Lcom/tencent/rtmp/ui/TXCloudVideoView;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 18
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/liteav/videobase/videobase/g;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;IIII)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/p;Landroid/view/Surface;Z)V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->a:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->i:Landroid/view/Surface;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 103
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "onSurfaceChanged surface: %s, oldSurface: %s, isNeedRelease: %b"

    .line 104
    invoke-static {v0, v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/p;->b(Landroid/view/Surface;Z)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/p;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->q:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    if-eq v0, p1, :cond_0

    .line 24
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setScaleType "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->q:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/p;Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->a:Ljava/lang/String;

    const-string/jumbo v1, "takeSnapshot "

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->A:Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/p;Lcom/tencent/liteav/videobase/utils/Rotation;)V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->r:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-eq v0, p1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setRenderRotation "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->r:Lcom/tencent/liteav/videobase/utils/Rotation;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/p;Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Z)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/p;->a(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Z)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/p;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->a:Ljava/lang/String;

    const-string v1, "Start"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->y:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->a:Ljava/lang/String;

    const-string p1, "renderer is started!"

    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->y:Z

    .line 5
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->B:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    .line 6
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->u:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    if-eqz p1, :cond_1

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/videoconsumer/renderer/p;->a(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Z)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/p;Lcom/tencent/liteav/videoconsumer/renderer/b;Ljava/nio/ByteBuffer;IILcom/tencent/liteav/videobase/base/TakeSnapshotListener;)V
    .locals 8

    .line 93
    instance-of v0, p1, Lcom/tencent/liteav/videoconsumer/renderer/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 94
    check-cast p1, Lcom/tencent/liteav/videoconsumer/renderer/i;

    .line 95
    iget-object p1, p1, Lcom/tencent/liteav/videoconsumer/renderer/i;->e:Landroid/view/TextureView;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 96
    :cond_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v1

    :goto_1
    move-object v6, v1

    .line 97
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->f:Lcom/tencent/liteav/base/util/j;

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/tencent/liteav/videoconsumer/renderer/z;->a(Lcom/tencent/liteav/videoconsumer/renderer/p;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/p;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)V
    .locals 3

    const/4 v0, 0x0

    .line 120
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 121
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    if-nez p4, :cond_0

    .line 123
    new-instance p4, Landroid/graphics/Matrix;

    invoke-direct {p4}, Landroid/graphics/Matrix;-><init>()V

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    int-to-float p2, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    int-to-float p3, p3

    div-float/2addr p3, v2

    .line 124
    invoke-virtual {p4, p1, v1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 125
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 126
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 127
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 128
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    const/4 p3, 0x1

    .line 129
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 130
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 131
    invoke-virtual {p3, v0, p4, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 132
    invoke-interface {p5, p1}, Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;->onComplete(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 133
    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->a:Ljava/lang/String;

    const-string p2, "build snapshot bitmap failed."

    invoke-static {p0, p2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    .line 134
    invoke-interface {p5, p0}, Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;->onComplete(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/p;Z)V
    .locals 3

    .line 29
    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->t:Z

    if-eq v0, p1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setVerticalMirror "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_0
    iput-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->t:Z

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->e:Lcom/tencent/liteav/base/util/j;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void

    .line 34
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 35
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->v:Lcom/tencent/liteav/videoconsumer/renderer/b;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/b;->a(Z)V

    const/4 p1, 0x0

    .line 100
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->v:Lcom/tencent/liteav/videoconsumer/renderer/b;

    :cond_0
    return-void
.end method

.method private b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->D:Landroid/graphics/Bitmap;

    .line 55
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->D:Landroid/graphics/Bitmap;

    .line 56
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 57
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private b()V
    .locals 6

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->l:Lcom/tencent/liteav/videobase/b/e;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->g:Lcom/tencent/liteav/base/b/b;

    const-string/jumbo v1, "uninitGL"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->i:Landroid/view/Surface;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->h:Lcom/tencent/liteav/base/util/q;

    aput-object v5, v2, v3

    const-string/jumbo v3, "uninitializeEGL %d %s"

    .line 7
    invoke-static {v0, v1, v3, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->l:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/b/e;->a()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 9
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->g:Lcom/tencent/liteav/base/b/b;

    const-string v2, "makeCurrentError"

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "uninitializeEGL EGLCore makeCurrent failed."

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    :goto_1
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/p;->e()V

    .line 11
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->m:Lcom/tencent/liteav/videobase/frame/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/c;->d()V

    .line 12
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->p:Lcom/tencent/liteav/videobase/frame/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/e;->a()V

    .line 14
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->p:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/e;->b()V

    .line 15
    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->p:Lcom/tencent/liteav/videobase/frame/e;

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->l:Lcom/tencent/liteav/videobase/b/e;

    invoke-static {v0}, Lcom/tencent/liteav/videobase/b/e;->a(Lcom/tencent/liteav/videobase/b/e;)V

    .line 17
    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->l:Lcom/tencent/liteav/videobase/b/e;

    return-void
.end method

.method private b(Landroid/view/Surface;Z)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->i:Landroid/view/Surface;

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->a:Ljava/lang/String;

    const-string/jumbo p2, "updateSurface same surface!"

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 40
    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/p;->b()V

    .line 41
    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->i:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 43
    :cond_1
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->i:Landroid/view/Surface;

    if-nez p1, :cond_2

    .line 44
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->h:Lcom/tencent/liteav/base/util/q;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/tencent/liteav/base/util/q;->a(II)V

    .line 45
    :cond_2
    iput-boolean p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->j:Z

    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoconsumer/renderer/p;)V
    .locals 8

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/renderer/p;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-static {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->createFromBitmap(Landroid/graphics/Bitmap;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v2

    .line 48
    invoke-direct {p0, v2}, Lcom/tencent/liteav/videoconsumer/renderer/p;->b(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->h:Lcom/tencent/liteav/base/util/q;

    iget v1, v0, Lcom/tencent/liteav/base/util/q;->a:I

    iget v0, v0, Lcom/tencent/liteav/base/util/q;->b:I

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v0}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->glViewport(IIII)V

    const/4 v4, 0x0

    .line 51
    sget-object v5, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    iget-object v6, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->q:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/tencent/liteav/videoconsumer/renderer/p;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;ZZLcom/tencent/liteav/videobase/utils/Rotation;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Z)V

    .line 52
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/p;->d()V

    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoconsumer/renderer/p;Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->s:Z

    if-eq v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setHorizontalMirror "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iput-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->s:Z

    return-void
.end method

.method private b(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Z
    .locals 6
    .param p1    # Lcom/tencent/liteav/videobase/frame/PixelFrame;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->l:Lcom/tencent/liteav/videobase/b/e;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->k:Ljava/lang/Object;

    .line 20
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 21
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/p;->b()V

    .line 22
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->i:Landroid/view/Surface;

    if-eqz v0, :cond_3

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->g:Lcom/tencent/liteav/base/b/b;

    const-string v1, "initGL"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initializeEGL surface="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->i:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->h:Lcom/tencent/liteav/base/util/q;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    new-instance v0, Lcom/tencent/liteav/videobase/b/e;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/b/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->l:Lcom/tencent/liteav/videobase/b/e;

    .line 26
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->i:Landroid/view/Surface;

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->h:Lcom/tencent/liteav/base/util/q;

    iget v5, v4, Lcom/tencent/liteav/base/util/q;->a:I

    iget v4, v4, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-virtual {v0, p1, v1, v5, v4}, Lcom/tencent/liteav/videobase/b/e;->a(Ljava/lang/Object;Landroid/view/Surface;II)V

    .line 27
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->k:Ljava/lang/Object;

    .line 28
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->l:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/b/e;->a()V

    .line 29
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->p:Lcom/tencent/liteav/videobase/frame/e;

    if-nez p1, :cond_2

    .line 30
    new-instance p1, Lcom/tencent/liteav/videobase/frame/e;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/frame/e;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->p:Lcom/tencent/liteav/videobase/frame/e;

    .line 31
    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->m:Lcom/tencent/liteav/videobase/frame/c;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/c;->a()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 32
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->g:Lcom/tencent/liteav/base/b/b;

    const-string v1, "initGLError"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->a:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v3

    const-string v5, "initializeEGL failed."

    invoke-static {v0, v1, v5, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->l:Lcom/tencent/liteav/videobase/b/e;

    .line 34
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->d:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$c;->e:Lcom/tencent/liteav/videobase/videobase/h$c;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "VideoRender: create EGLCore fail:"

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v4}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyWarning(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->l:Lcom/tencent/liteav/videobase/b/e;

    if-nez p1, :cond_4

    return v3

    .line 36
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/b/e;->a()V
    :try_end_1
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    :catch_1
    move-exception p1

    .line 37
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->g:Lcom/tencent/liteav/base/b/b;

    const-string v1, "makeCurrentForFrameError"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "EGLCore makeCurrent failed."

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, p1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method private c()Lcom/tencent/rtmp/ui/TXCloudVideoView;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->u:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->getTXCloudVideoView()Lcom/tencent/rtmp/ui/TXCloudVideoView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/liteav/videoconsumer/renderer/p;)V
    .locals 17

    move-object/from16 v7, p0

    .line 6
    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->o:Lcom/tencent/liteav/videobase/utils/j;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/utils/j;->a()Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v8

    if-nez v8, :cond_0

    .line 7
    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->a:Ljava/lang/String;

    const-string v1, "renderFrameInternal pixelFrame is null!"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->w:Lcom/tencent/liteav/base/util/q;

    invoke-virtual {v8}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v1

    invoke-virtual {v8}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/util/q;->a(II)V

    .line 9
    invoke-virtual {v8}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMetaData()Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->getRenderRotation()Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v1

    iput-object v1, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->r:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 11
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->isRenderMirrorHorizontal()Z

    move-result v1

    iput-boolean v1, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->s:Z

    .line 12
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->isRenderMirrorVertical()Z

    move-result v1

    iput-boolean v1, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->t:Z

    .line 13
    iget-object v1, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->w:Lcom/tencent/liteav/base/util/q;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->getCaptureRealSize()Lcom/tencent/liteav/base/util/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/base/util/q;->a(Lcom/tencent/liteav/base/util/q;)V

    .line 14
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->getCaptureRotation()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/liteav/videobase/utils/Rotation;->a(I)Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v0

    iput-object v0, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->x:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 15
    :cond_1
    invoke-direct {v7, v8}, Lcom/tencent/liteav/videoconsumer/renderer/p;->b(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 16
    invoke-direct {v7, v8}, Lcom/tencent/liteav/videoconsumer/renderer/p;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    .line 17
    invoke-virtual {v8}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-void

    .line 18
    :cond_2
    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->l:Lcom/tencent/liteav/videobase/b/e;

    const/4 v9, 0x0

    if-eqz v0, :cond_5

    .line 19
    iget-object v0, v0, Lcom/tencent/liteav/videobase/b/e;->a:Lcom/tencent/liteav/videobase/b/h;

    if-nez v0, :cond_3

    new-instance v0, Lcom/tencent/liteav/base/util/q;

    invoke-direct {v0, v9, v9}, Lcom/tencent/liteav/base/util/q;-><init>(II)V

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lcom/tencent/liteav/videobase/b/h;->e()Lcom/tencent/liteav/base/util/q;

    move-result-object v0

    .line 20
    :goto_0
    iget-object v1, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->h:Lcom/tencent/liteav/base/util/q;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/base/util/q;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 21
    iget-object v1, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "surface size changed,old size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->h:Lcom/tencent/liteav/base/util/q;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",new size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v1, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->h:Lcom/tencent/liteav/base/util/q;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/base/util/q;->a(Lcom/tencent/liteav/base/util/q;)V

    .line 23
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/videoconsumer/renderer/p;->e()V

    .line 24
    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->i:Landroid/view/Surface;

    if-eqz v0, :cond_4

    .line 25
    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->d:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/i;->u:Lcom/tencent/liteav/videobase/videobase/i;

    iget-object v2, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->h:Lcom/tencent/liteav/base/util/q;

    iget v3, v2, Lcom/tencent/liteav/base/util/q;->a:I

    shl-int/lit8 v3, v3, 0x10

    iget v2, v2, Lcom/tencent/liteav/base/util/q;->b:I

    or-int/2addr v2, v3

    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 27
    invoke-interface {v0, v1, v2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    .line 28
    :cond_4
    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->B:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    if-eqz v0, :cond_5

    .line 29
    iget-object v1, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->h:Lcom/tencent/liteav/base/util/q;

    iget v2, v1, Lcom/tencent/liteav/base/util/q;->a:I

    iget v1, v1, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-interface {v0, v2, v1}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;->onRenderTargetSizeChanged(II)V

    .line 30
    :cond_5
    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->n:Lcom/tencent/liteav/videobase/frame/j;

    if-nez v0, :cond_6

    .line 31
    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "create PixelFrameRenderer,surfaceSize="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->h:Lcom/tencent/liteav/base/util/q;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/tencent/liteav/videobase/frame/j;

    iget-object v1, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->h:Lcom/tencent/liteav/base/util/q;

    iget v2, v1, Lcom/tencent/liteav/base/util/q;->a:I

    iget v1, v1, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-direct {v0, v2, v1}, Lcom/tencent/liteav/videobase/frame/j;-><init>(II)V

    iput-object v0, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->n:Lcom/tencent/liteav/videobase/frame/j;

    .line 33
    :cond_6
    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->h:Lcom/tencent/liteav/base/util/q;

    iget v1, v0, Lcom/tencent/liteav/base/util/q;->a:I

    iget v0, v0, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-static {v9, v9, v1, v0}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->glViewport(IIII)V

    .line 34
    iget-boolean v2, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->s:Z

    iget-boolean v3, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->t:Z

    iget-object v4, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->r:Lcom/tencent/liteav/videobase/utils/Rotation;

    iget-object v5, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->q:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct/range {v0 .. v6}, Lcom/tencent/liteav/videoconsumer/renderer/p;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;ZZLcom/tencent/liteav/videobase/utils/Rotation;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Z)V

    .line 35
    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->A:Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;

    const/4 v6, 0x0

    if-eqz v0, :cond_7

    const v0, 0x8d40

    .line 36
    invoke-static {v0, v9}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->bindFramebuffer(II)V

    .line 37
    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->h:Lcom/tencent/liteav/base/util/q;

    iget v3, v0, Lcom/tencent/liteav/base/util/q;->a:I

    iget v4, v0, Lcom/tencent/liteav/base/util/q;->b:I

    .line 38
    iget-object v5, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->A:Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;

    if-eqz v5, :cond_7

    .line 39
    iput-object v6, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->A:Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;

    mul-int v0, v3, v4

    mul-int/lit8 v0, v0, 0x4

    .line 40
    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 41
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v14, 0x1908

    const/16 v15, 0x1401

    move v12, v3

    move v13, v4

    move-object/from16 v16, v2

    .line 42
    invoke-static/range {v10 .. v16}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 43
    iget-object v1, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->v:Lcom/tencent/liteav/videoconsumer/renderer/b;

    .line 44
    iget-object v10, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->b:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/tencent/liteav/videoconsumer/renderer/v;->a(Lcom/tencent/liteav/videoconsumer/renderer/p;Lcom/tencent/liteav/videoconsumer/renderer/b;Ljava/nio/ByteBuffer;IILcom/tencent/liteav/videobase/base/TakeSnapshotListener;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 45
    :catchall_0
    iget-object v1, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "can\'t alloc buffer, size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-interface {v5, v6}, Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;->onComplete(Landroid/graphics/Bitmap;)V

    .line 47
    :cond_7
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/videoconsumer/renderer/p;->d()V

    .line 48
    invoke-direct {v7, v8}, Lcom/tencent/liteav/videoconsumer/renderer/p;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    .line 49
    iget-boolean v0, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->C:Z

    if-eqz v0, :cond_9

    .line 50
    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->d:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$b;->i:Lcom/tencent/liteav/videobase/videobase/h$b;

    new-array v2, v9, [Ljava/lang/Object;

    invoke-interface {v0, v1, v6, v2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->B:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    if-eqz v0, :cond_8

    .line 52
    iget-object v1, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->h:Lcom/tencent/liteav/base/util/q;

    iget v2, v1, Lcom/tencent/liteav/base/util/q;->a:I

    iget v1, v1, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-interface {v0, v2, v1}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;->onRenderFirstFrameOnView(II)V

    .line 53
    :cond_8
    iput-boolean v9, v7, Lcom/tencent/liteav/videoconsumer/renderer/p;->C:Z

    .line 54
    :cond_9
    invoke-virtual {v8}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-void
.end method

.method static synthetic c(Lcom/tencent/liteav/videoconsumer/renderer/p;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "enableZoomGesture enable:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/p;->c()Lcom/tencent/rtmp/ui/TXCloudVideoView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-static {v0, p1, v1}, Lcom/tencent/liteav/videobase/videobase/g;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;ZLcom/tencent/rtmp/ui/b;)V

    .line 4
    :cond_1
    iput-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->F:Z

    return-void
.end method

.method private d()V
    .locals 6

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->l:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/b/e;->c()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 6
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->g:Lcom/tencent/liteav/base/b/b;

    const-string/jumbo v2, "swapBuffers"

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "EGLCore swapBuffers failed."

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->d:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v2, Lcom/tencent/liteav/videobase/videobase/h$c;->g:Lcom/tencent/liteav/videobase/videobase/h$c;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "VideoRender: swapBuffer error:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0, v3}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyWarning(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic d(Lcom/tencent/liteav/videoconsumer/renderer/p;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "enableTapToFocusGesture enable:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/p;->c()Lcom/tencent/rtmp/ui/TXCloudVideoView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-static {v0, p1, v1}, Lcom/tencent/liteav/videobase/videobase/g;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;ZLcom/tencent/rtmp/ui/a;)V

    .line 4
    :cond_1
    iput-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->E:Z

    return-void
.end method

.method private e()V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->n:Lcom/tencent/liteav/videobase/frame/j;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/j;->a()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->n:Lcom/tencent/liteav/videobase/frame/j;

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/tencent/liteav/videoconsumer/renderer/p;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Stop,clearLastImage="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->y:Z

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->a:Ljava/lang/String;

    const-string p1, "renderer is not started!"

    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->y:Z

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->A:Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;

    .line 6
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/p;->a(Z)V

    .line 7
    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->u:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->hideAll()V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->o:Lcom/tencent/liteav/videobase/utils/j;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/utils/j;->b()V

    .line 10
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/p;->b()V

    .line 11
    iget-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->j:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->i:Landroid/view/Surface;

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 13
    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->j:Z

    .line 14
    :cond_2
    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->i:Landroid/view/Surface;

    .line 15
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->h:Lcom/tencent/liteav/base/util/q;

    invoke-virtual {p1, v0, v0}, Lcom/tencent/liteav/base/util/q;->a(II)V

    .line 16
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->w:Lcom/tencent/liteav/base/util/q;

    invoke-virtual {p1, v0, v0}, Lcom/tencent/liteav/base/util/q;->a(II)V

    .line 17
    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->z:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 108
    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/renderer/y;->a(Lcom/tencent/liteav/videoconsumer/renderer/p;)Ljava/lang/Runnable;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->e:Lcom/tencent/liteav/base/util/j;

    const-wide/16 v2, 0x7d0

    if-eqz v1, :cond_0

    .line 110
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 111
    invoke-static {v0, v4}, Lcom/tencent/liteav/base/util/m;->a(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Runnable;

    move-result-object v0

    .line 112
    iget-object v1, v1, Lcom/tencent/liteav/base/util/j;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 113
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 114
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    .line 115
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v1, v4, :cond_1

    .line 116
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v1, v0, v2, v3}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final a(F)V
    .locals 0

    .line 19
    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/ae;->a(Lcom/tencent/liteav/videoconsumer/renderer/p;F)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/p;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(IIII)V
    .locals 0

    .line 11
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/liteav/videoconsumer/renderer/ad;->a(Lcom/tencent/liteav/videoconsumer/renderer/p;IIII)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/p;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 106
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/p;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 107
    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/renderer/x;->a(Lcom/tencent/liteav/videoconsumer/renderer/p;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/p;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Landroid/view/Surface;Z)V
    .locals 0

    .line 101
    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/w;->a(Lcom/tencent/liteav/videoconsumer/renderer/p;Landroid/view/Surface;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/p;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final enableTapToFocusGesture(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/af;->a(Lcom/tencent/liteav/videoconsumer/renderer/p;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/p;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final enableZoomGesture(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/ag;->a(Lcom/tencent/liteav/videoconsumer/renderer/p;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/p;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final renderFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->y:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->a:Ljava/lang/String;

    const-string v0, "renderFrame pixelFrame is null!"

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->z:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->z:Z

    .line 5
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->a:Ljava/lang/String;

    const-string v1, "VideoRender receive first frame!"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/p;->o:Lcom/tencent/liteav/videobase/utils/j;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/utils/j;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    .line 8
    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/renderer/u;->a(Lcom/tencent/liteav/videoconsumer/renderer/p;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/p;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setDisplayView(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/ab;->a(Lcom/tencent/liteav/videoconsumer/renderer/p;Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/p;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setHorizontalMirror(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/s;->a(Lcom/tencent/liteav/videoconsumer/renderer/p;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/p;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setRenderRotation(Lcom/tencent/liteav/videobase/utils/Rotation;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/r;->a(Lcom/tencent/liteav/videoconsumer/renderer/p;Lcom/tencent/liteav/videobase/utils/Rotation;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/p;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setScaleType(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/ah;->a(Lcom/tencent/liteav/videoconsumer/renderer/p;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/p;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setVerticalMirror(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/t;->a(Lcom/tencent/liteav/videoconsumer/renderer/p;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/p;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final start(Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/q;->a(Lcom/tencent/liteav/videoconsumer/renderer/p;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/p;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final stop(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/aa;->a(Lcom/tencent/liteav/videoconsumer/renderer/p;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/p;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final takeSnapshot(Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/ac;->a(Lcom/tencent/liteav/videoconsumer/renderer/p;Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/p;->a(Ljava/lang/Runnable;)V

    return-void
.end method
