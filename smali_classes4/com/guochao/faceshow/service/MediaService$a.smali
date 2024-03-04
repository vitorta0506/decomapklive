.class public Lcom/guochao/faceshow/service/MediaService$a;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/service/MediaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field final synthetic b:Lcom/guochao/faceshow/service/MediaService;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/service/MediaService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/service/MediaService$a;->b:Lcom/guochao/faceshow/service/MediaService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/service/MediaService$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/service/MediaService$a;->b:Lcom/guochao/faceshow/service/MediaService;

    iget-object v0, v0, Lcom/guochao/faceshow/service/MediaService;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iget-object v0, p0, Lcom/guochao/faceshow/service/MediaService$a;->b:Lcom/guochao/faceshow/service/MediaService;

    iput-object v1, v0, Lcom/guochao/faceshow/service/MediaService;->b:Landroid/media/MediaPlayer;

    .line 4
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, v0, Lcom/guochao/faceshow/service/MediaService;->b:Landroid/media/MediaPlayer;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/service/MediaService$a;->b:Lcom/guochao/faceshow/service/MediaService;

    iget-object v0, v0, Lcom/guochao/faceshow/service/MediaService;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/service/MediaService$a;->b:Lcom/guochao/faceshow/service/MediaService;

    iget-object v0, v0, Lcom/guochao/faceshow/service/MediaService;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/service/MediaService$a;->b:Lcom/guochao/faceshow/service/MediaService;

    iput-object v1, v0, Lcom/guochao/faceshow/service/MediaService;->b:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/service/MediaService$a;->b:Lcom/guochao/faceshow/service/MediaService;

    iget-object v0, v0, Lcom/guochao/faceshow/service/MediaService;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/service/MediaService$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/service/MediaService$a;->b:Lcom/guochao/faceshow/service/MediaService;

    iget-object v0, v0, Lcom/guochao/faceshow/service/MediaService;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/service/MediaService$a;->b:Lcom/guochao/faceshow/service/MediaService;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/service/MediaService;->a(Lcom/guochao/faceshow/service/MediaService;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/service/MediaService$a;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/service/MediaService$a;->d()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/service/MediaService$a;->b:Lcom/guochao/faceshow/service/MediaService;

    iget-object v0, v0, Lcom/guochao/faceshow/service/MediaService;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/service/MediaService$a;->b:Lcom/guochao/faceshow/service/MediaService;

    iget-object v0, v0, Lcom/guochao/faceshow/service/MediaService;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/service/MediaService$a;->b:Lcom/guochao/faceshow/service/MediaService;

    iget-object v0, v0, Lcom/guochao/faceshow/service/MediaService;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/service/MediaService$a;->b:Lcom/guochao/faceshow/service/MediaService;

    iget-object v0, v0, Lcom/guochao/faceshow/service/MediaService;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/service/MediaService$a;->b:Lcom/guochao/faceshow/service/MediaService;

    iget-object v0, v0, Lcom/guochao/faceshow/service/MediaService;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/service/MediaService$a;->b:Lcom/guochao/faceshow/service/MediaService;

    iget-object v0, v0, Lcom/guochao/faceshow/service/MediaService;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :cond_0
    return-void
.end method
