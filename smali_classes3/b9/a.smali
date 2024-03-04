.class public Lb9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Lb9/a;


# instance fields
.field private a:Landroid/media/MediaPlayer;

.field private b:Z

.field private c:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lb9/a;
    .locals 2

    .line 1
    sget-object v0, Lb9/a;->d:Lb9/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lb9/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lb9/a;->d:Lb9/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lb9/a;

    invoke-direct {v1}, Lb9/a;-><init>()V

    sput-object v1, Lb9/a;->d:Lb9/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lb9/a;->d:Lb9/a;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lb9/a;->b:Z

    .line 2
    iput v0, p0, Lb9/a;->c:I

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget v0, p0, Lb9/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb9/a;->c:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lb9/a;->c:I

    .line 3
    iput-boolean v0, p0, Lb9/a;->b:Z

    .line 4
    iget-object v1, p0, Lb9/a;->a:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 6
    iget-object v1, p0, Lb9/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lb9/a;->b:Z

    .line 2
    iget-object v1, p0, Lb9/a;->a:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 4
    iget-object v1, p0, Lb9/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lb9/a;->a:Landroid/media/MediaPlayer;

    .line 6
    iput v0, p0, Lb9/a;->c:I

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getInstance()Lcom/guochao/faceshow/aaspring/utils/AppManager;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->containActivity(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lb9/a;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v1, 0x7f11001d

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lb9/a;->a:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 5
    :cond_1
    iget-boolean v0, p0, Lb9/a;->b:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lb9/a;->b:Z

    .line 7
    iget-object v0, p0, Lb9/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_2
    return-void
.end method
