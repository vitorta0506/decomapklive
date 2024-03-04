.class Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/media/AudioManager;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;Landroid/media/AudioManager;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h$a;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h$a;->a:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h$a;->a:Landroid/media/AudioManager;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h$a;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->h(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h$a;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->h(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h$a;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->h(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h$a;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->i(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h$a;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;->d:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$j;

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$j;->a()V

    :cond_1
    return-void
.end method
