.class public Lcom/twitter/sdk/android/tweetui/internal/VideoView;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$c;


# instance fields
.field A:Landroid/view/SurfaceHolder$Callback;

.field private a:Ljava/lang/String;

.field private b:Landroid/net/Uri;

.field private c:I

.field private d:I

.field private e:Landroid/view/SurfaceHolder;

.field private f:Landroid/media/MediaPlayer;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

.field private m:Landroid/media/MediaPlayer$OnCompletionListener;

.field private n:Landroid/media/MediaPlayer$OnPreparedListener;

.field private o:I

.field private p:Landroid/media/MediaPlayer$OnErrorListener;

.field private q:Landroid/media/MediaPlayer$OnInfoListener;

.field private r:I

.field private s:Z

.field t:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field u:Landroid/media/MediaPlayer$OnPreparedListener;

.field private v:Landroid/media/MediaPlayer$OnCompletionListener;

.field private w:Landroid/media/MediaPlayer$OnInfoListener;

.field private x:Landroid/media/MediaPlayer$OnErrorListener;

.field private y:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private z:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const-string p1, "VideoView"

    .line 2
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->c:I

    .line 4
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->d:I

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->e:Landroid/view/SurfaceHolder;

    .line 6
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    .line 7
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/VideoView$a;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView$a;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->t:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 8
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/VideoView$b;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView$b;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->u:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 9
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/VideoView$c;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView$c;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->v:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 10
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/VideoView$d;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView$d;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->w:Landroid/media/MediaPlayer$OnInfoListener;

    .line 11
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/VideoView$e;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView$e;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->x:Landroid/media/MediaPlayer$OnErrorListener;

    .line 12
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/VideoView$f;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView$f;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->y:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 13
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/tweetui/internal/VideoView$g;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView$g;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->z:Landroid/view/GestureDetector;

    .line 14
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/VideoView$h;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView$h;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->A:Landroid/view/SurfaceHolder$Callback;

    .line 15
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->A()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "VideoView"

    .line 18
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->c:I

    .line 20
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->d:I

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->e:Landroid/view/SurfaceHolder;

    .line 22
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    .line 23
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/VideoView$a;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView$a;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->t:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 24
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/VideoView$b;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView$b;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->u:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 25
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/VideoView$c;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView$c;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->v:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 26
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/VideoView$d;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView$d;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->w:Landroid/media/MediaPlayer$OnInfoListener;

    .line 27
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/VideoView$e;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView$e;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->x:Landroid/media/MediaPlayer$OnErrorListener;

    .line 28
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/VideoView$f;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView$f;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->y:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 29
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcom/twitter/sdk/android/tweetui/internal/VideoView$g;

    invoke-direct {p3, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView$g;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    invoke-direct {p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->z:Landroid/view/GestureDetector;

    .line 30
    new-instance p1, Lcom/twitter/sdk/android/tweetui/internal/VideoView$h;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView$h;-><init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->A:Landroid/view/SurfaceHolder$Callback;

    .line 31
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->A()V

    return-void
.end method

.method private A()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->h:I

    .line 2
    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->i:I

    .line 3
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->A:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    .line 7
    invoke-virtual {p0, v1}, Landroid/view/SurfaceView;->setClickable(Z)V

    .line 8
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestFocus()Z

    .line 9
    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->c:I

    .line 10
    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->d:I

    return-void
.end method

.method private B()Z
    .locals 3

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->c:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private C()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->b:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->e:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->D(Z)V

    const/4 v1, 0x1

    .line 3
    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    .line 4
    iget v3, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->g:I

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v2

    iput v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->g:I

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->u:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 8
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->t:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 9
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->v:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 10
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->x:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 11
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->w:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 12
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->y:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 13
    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->o:I

    .line 14
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    iget-boolean v3, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->s:Z

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 15
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 16
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->e:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 17
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 18
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 19
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 20
    iput v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->c:I

    .line 21
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->z()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 22
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to open content: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->b:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, -0x1

    .line 23
    iput v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->c:I

    .line 24
    iput v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->d:I

    .line 25
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->x:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v1, v0}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private D(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 3
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->c:I

    if-eqz p1, :cond_0

    .line 6
    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->d:I

    :cond_0
    return-void
.end method

.method private G()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->l:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->l:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->e()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->l:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->m()V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)I
    .locals 0

    iget p0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->h:I

    return p0
.end method

.method static synthetic b(Lcom/twitter/sdk/android/tweetui/internal/VideoView;I)I
    .locals 0

    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->h:I

    return p1
.end method

.method static synthetic c(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)I
    .locals 0

    iget p0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->i:I

    return p0
.end method

.method static synthetic d(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->m:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic e(Lcom/twitter/sdk/android/tweetui/internal/VideoView;I)I
    .locals 0

    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->i:I

    return p1
.end method

.method static synthetic f(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->q:Landroid/media/MediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static synthetic g(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->p:Landroid/media/MediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic i(Lcom/twitter/sdk/android/tweetui/internal/VideoView;I)I
    .locals 0

    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->o:I

    return p1
.end method

.method static synthetic j(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->B()Z

    move-result p0

    return p0
.end method

.method static synthetic k(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->G()V

    return-void
.end method

.method static synthetic l(Lcom/twitter/sdk/android/tweetui/internal/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->e:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic m(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->C()V

    return-void
.end method

.method static synthetic n(Lcom/twitter/sdk/android/tweetui/internal/VideoView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->D(Z)V

    return-void
.end method

.method static synthetic o(Lcom/twitter/sdk/android/tweetui/internal/VideoView;I)I
    .locals 0

    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->c:I

    return p1
.end method

.method static synthetic p(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 0

    iget-object p0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->n:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic q(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic r(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;
    .locals 0

    iget-object p0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->l:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    return-object p0
.end method

.method static synthetic s(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)I
    .locals 0

    iget p0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->r:I

    return p0
.end method

.method static synthetic t(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)I
    .locals 0

    iget p0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->j:I

    return p0
.end method

.method static synthetic u(Lcom/twitter/sdk/android/tweetui/internal/VideoView;I)I
    .locals 0

    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->j:I

    return p1
.end method

.method static synthetic v(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)I
    .locals 0

    iget p0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->k:I

    return p0
.end method

.method static synthetic w(Lcom/twitter/sdk/android/tweetui/internal/VideoView;I)I
    .locals 0

    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->k:I

    return p1
.end method

.method static synthetic x(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)I
    .locals 0

    iget p0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->d:I

    return p0
.end method

.method static synthetic y(Lcom/twitter/sdk/android/tweetui/internal/VideoView;I)I
    .locals 0

    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->d:I

    return p1
.end method

.method private z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->l:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->setMediaPlayer(Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$c;)V

    .line 3
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->l:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->B()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public E(Landroid/net/Uri;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->b:Landroid/net/Uri;

    .line 2
    iput-boolean p2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->s:Z

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->r:I

    .line 4
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->C()V

    .line 5
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 6
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    return-void
.end method

.method public F()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 3
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->c:I

    .line 6
    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->d:I

    :cond_0
    return-void
.end method

.method public getBufferPercentage()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->o:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

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

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->B()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->l:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    if-eqz v1, :cond_9

    const/16 v1, 0x4f

    if-eq p1, v1, :cond_7

    const/16 v1, 0x55

    if-ne p1, v1, :cond_1

    goto :goto_2

    :cond_1
    const/16 v1, 0x7e

    if-ne p1, v1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->start()V

    .line 4
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->l:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->e()V

    :cond_2
    return v0

    :cond_3
    const/16 v1, 0x56

    if-eq p1, v1, :cond_5

    const/16 v1, 0x7f

    if-ne p1, v1, :cond_4

    goto :goto_1

    .line 5
    :cond_4
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->G()V

    goto :goto_4

    .line 6
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 7
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->pause()V

    .line 8
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->l:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->m()V

    :cond_6
    return v0

    .line 9
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 10
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->pause()V

    .line 11
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->l:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->m()V

    goto :goto_3

    .line 12
    :cond_8
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->start()V

    .line 13
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->l:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->e()V

    :goto_3
    return v0

    .line 14
    :cond_9
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->h:I

    invoke-static {v0, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->i:I

    invoke-static {v1, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v1

    .line 3
    iget v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->h:I

    if-lez v2, :cond_8

    iget v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->i:I

    if-lez v2, :cond_8

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 6
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 7
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_1

    if-ne v1, v2, :cond_1

    .line 8
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->h:I

    mul-int v1, v0, p2

    iget v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->i:I

    mul-int v3, p1, v2

    if-ge v1, v3, :cond_0

    mul-int v0, v0, p2

    .line 9
    div-int/2addr v0, v2

    goto :goto_2

    :cond_0
    mul-int v1, v0, p2

    mul-int v3, p1, v2

    if-le v1, v3, :cond_4

    mul-int v2, v2, p1

    .line 10
    div-int v1, v2, v0

    goto :goto_0

    :cond_1
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_3

    .line 11
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->i:I

    mul-int v0, v0, p1

    iget v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->h:I

    div-int/2addr v0, v2

    if-ne v1, v3, :cond_2

    if-le v0, p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_0
    move v0, p1

    goto :goto_4

    :cond_3
    if-ne v1, v2, :cond_6

    .line 12
    iget v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->h:I

    mul-int v1, v1, p2

    iget v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->i:I

    div-int/2addr v1, v2

    if-ne v0, v3, :cond_5

    if-le v1, p1, :cond_5

    :cond_4
    :goto_1
    move v0, p1

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    move v1, p2

    goto :goto_4

    .line 13
    :cond_6
    iget v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->h:I

    .line 14
    iget v4, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->i:I

    if-ne v1, v3, :cond_7

    if-le v4, p2, :cond_7

    mul-int v1, p2, v2

    .line 15
    div-int/2addr v1, v4

    goto :goto_3

    :cond_7
    move v1, v2

    move p2, v4

    :goto_3
    if-ne v0, v3, :cond_5

    if-le v1, p1, :cond_5

    mul-int v4, v4, p1

    .line 16
    div-int v1, v4, v2

    goto :goto_0

    .line 17
    :cond_8
    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->z:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public pause()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->B()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 4
    iput v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->c:I

    .line 5
    :cond_0
    iput v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->d:I

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->r:I

    goto :goto_0

    .line 4
    :cond_0
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->r:I

    :goto_0
    return-void
.end method

.method public setMediaController(Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->l:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->e()V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->l:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    .line 4
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->z()V

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->m:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->p:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->q:Landroid/media/MediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->n:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->B()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 3
    iput v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->c:I

    .line 4
    :cond_0
    iput v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->d:I

    return-void
.end method
