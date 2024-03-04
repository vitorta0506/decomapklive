.class public Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$i;,
        Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$j;
    }
.end annotation


# static fields
.field private static final p:Landroid/os/HandlerThread;


# instance fields
.field private volatile a:I

.field private volatile b:I

.field private c:Landroid/net/Uri;

.field private d:Landroid/content/Context;

.field private e:Landroid/view/Surface;

.field private f:Landroid/media/MediaPlayer;

.field private g:Landroid/media/AudioManager;

.field private h:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$i;

.field private i:Landroid/os/Handler;

.field private j:Landroid/os/Handler;

.field private k:Z

.field private l:Lcom/guochao/faceshow/myPlayView/widget/ScaleType;

.field private m:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$j;

.field private n:Z

.field public o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VideoPlayThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->p:Landroid/os/HandlerThread;

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 4
    iput-boolean p3, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->n:Z

    const/4 p3, 0x0

    .line 5
    iput p3, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->a:I

    .line 6
    iput p3, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->b:I

    .line 7
    sget-object v0, Lcom/guochao/faceshow/myPlayView/widget/ScaleType;->NONE:Lcom/guochao/faceshow/myPlayView/widget/ScaleType;

    iput-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->l:Lcom/guochao/faceshow/myPlayView/widget/ScaleType;

    if-eqz p2, :cond_0

    .line 8
    sget-object v1, Lcom/guochao/faceshow/R$styleable;->scaleStyle:[I

    invoke-virtual {p1, p2, v1, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/myPlayView/widget/ScaleType;->values()[Lcom/guochao/faceshow/myPlayView/widget/ScaleType;

    move-result-object p1

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->l:Lcom/guochao/faceshow/myPlayView/widget/ScaleType;

    .line 12
    invoke-direct {p0}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->c()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;)Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$i;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->h:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$i;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->f:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/TextureView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->d:Landroid/content/Context;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->a:I

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->b:I

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->i:Landroid/os/Handler;

    .line 6
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->p:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->j:Landroid/os/Handler;

    .line 7
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_0
    return-void
.end method

.method private d()Z
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->f:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->a:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->a:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->a:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private f()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->c:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->e:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->d:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->g:Landroid/media/AudioManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->h(Z)V

    .line 5
    :try_start_0
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->f:Landroid/media/MediaPlayer;

    .line 6
    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 7
    iget-object v4, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 8
    iget-object v4, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 9
    iget-object v4, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 10
    iget-object v4, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 11
    iget-object v4, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 12
    iget-object v4, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->f:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->d:Landroid/content/Context;

    iget-object v6, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->c:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 13
    iget-object v4, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->f:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->e:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 14
    iget-object v4, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 15
    iget-object v1, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->f:Landroid/media/MediaPlayer;

    iget-boolean v4, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->n:Z

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 16
    iget-object v1, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 17
    iput v3, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->a:I

    .line 18
    iput v3, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->b:I

    .line 19
    iput-boolean v3, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->k:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :try_start_1
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    .line 21
    iget-object v4, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->d:Landroid/content/Context;

    iget-object v5, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->c:Landroid/net/Uri;

    invoke-virtual {v1, v4, v5, v2}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 22
    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 23
    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v4, "mime"

    .line 24
    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "audio/"

    .line 25
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    iput-boolean v3, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->k:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    nop

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->a:I

    .line 28
    iput v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->b:I

    .line 29
    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->h:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$i;

    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->i:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$b;-><init>(Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :catch_1
    :cond_1
    :goto_1
    return-void
.end method

.method private h(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->f:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->a:I

    if-eqz p1, :cond_0

    .line 6
    iput v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->b:I

    :cond_0
    return-void
.end method

.method private j(II)V
    .locals 3

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1
    new-instance v0, Lza/a;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lza/a;-><init>(II)V

    .line 2
    new-instance v1, Lza/a;

    invoke-direct {v1, p1, p2}, Lza/a;-><init>(II)V

    .line 3
    new-instance p1, Lcom/guochao/faceshow/myPlayView/widget/a;

    invoke-direct {p1, v0, v1}, Lcom/guochao/faceshow/myPlayView/widget/a;-><init>(Lza/a;Lza/a;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->l:Lcom/guochao/faceshow/myPlayView/widget/ScaleType;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/myPlayView/widget/a;->m(Lcom/guochao/faceshow/myPlayView/widget/ScaleType;)Landroid/graphics/Matrix;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->i:Landroid/os/Handler;

    new-instance v0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$a;-><init>(Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;Landroid/graphics/Matrix;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public e()Z
    .locals 1

    invoke-direct {p0}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()V
    .locals 2

    const/4 v0, 0x4

    .line 1
    iput v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->b:I

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    invoke-direct {p0}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDuration()I
    .locals 1

    invoke-direct {p0}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getScaleType()Lcom/guochao/faceshow/myPlayView/widget/ScaleType;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->l:Lcom/guochao/faceshow/myPlayView/widget/ScaleType;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->f:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public getVideoWidth()I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->f:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    const-class v0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;

    .line 2
    const-class v0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;

    monitor-enter v0

    .line 3
    :try_start_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    const/4 v2, 0x7

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->f:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 6
    :cond_1
    iput v2, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->a:I

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->h(Z)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->f:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 10
    :cond_4
    iput v2, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->a:I

    goto :goto_0

    .line 11
    :cond_5
    invoke-direct {p0}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->f()V

    .line 12
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public i()V
    .locals 2

    const/4 v0, 0x3

    .line 1
    iput v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->b:I

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->j:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 2

    const/4 v0, 0x3

    .line 1
    iput v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->b:I

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->j:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->c:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->e:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->j:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public l()V
    .locals 2

    const/4 v0, 0x5

    .line 1
    iput v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->b:I

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->j:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->h:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$i;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->i:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$g;

    invoke-direct {v1, p0, p1, p2}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$g;-><init>(Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;Landroid/media/MediaPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    const/4 v0, 0x5

    .line 1
    iput v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->a:I

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->b:I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->h:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$i;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->i:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$c;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$c;-><init>(Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;Landroid/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->a:I

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->b:I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->h:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$i;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->i:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$d;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$d;-><init>(Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;Landroid/media/MediaPlayer;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->h:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$i;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->i:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$h;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$h;-><init>(Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;Landroid/media/MediaPlayer;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->o:I

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->a:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->a:I

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x3

    .line 6
    iput v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->a:I

    .line 7
    iput v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->b:I

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->h:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$i;

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->i:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$e;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$e;-><init>(Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;Landroid/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->e:Landroid/view/Surface;

    .line 2
    iget p1, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->b:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->k()V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->e:Landroid/view/Surface;

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->l()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->j(II)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->h:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$i;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->i:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$f;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$f;-><init>(Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;Landroid/media/MediaPlayer;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setLoop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->n:Z

    return-void
.end method

.method public setMediaPlayerCallback(Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$i;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->h:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$i;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->i:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setProgressCallback(Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$j;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->m:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView$j;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->i:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setScaleType(Lcom/guochao/faceshow/myPlayView/widget/ScaleType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->l:Lcom/guochao/faceshow/myPlayView/widget/ScaleType;

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->getVideoWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->getVideoHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->j(II)V

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->c:Landroid/net/Uri;

    return-void
.end method
