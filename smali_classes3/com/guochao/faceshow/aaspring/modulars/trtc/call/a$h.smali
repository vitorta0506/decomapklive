.class Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->A(Landroid/content/Context;ZZLcom/guochao/faceshow/aaspring/modulars/trtc/call/a$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$j;

.field final synthetic e:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;Landroid/content/Context;ZZLcom/guochao/faceshow/aaspring/modulars/trtc/call/a$j;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;->b:Z

    iput-boolean p4, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;->c:Z

    iput-object p5, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;->d:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$j;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;->a:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;->b:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, v4, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v0, v4, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 6
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;->c:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 7
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;->c:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 8
    :goto_1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;->c:Z

    if-eqz v2, :cond_2

    const/4 v4, 0x0

    :cond_2
    invoke-virtual {v1, v4}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 10
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f110006

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;->a:Landroid/content/Context;

    invoke-static {v4, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->i(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 12
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->h(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->h(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    :goto_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->h(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 16
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->h(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)Landroid/media/MediaPlayer;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h$a;

    invoke-direct {v2, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;Landroid/media/AudioManager;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method
