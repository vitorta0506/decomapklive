.class Lcom/guochao/faceshow/activity/MusicActivity$j;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/activity/MusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/MusicActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/MusicActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$j;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$j;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->b0(Lcom/guochao/faceshow/activity/MusicActivity;)Lcom/guochao/faceshow/service/MediaService$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/service/MediaService$a;->e()V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$j;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1, v1}, Lcom/guochao/faceshow/activity/MusicActivity;->k0(Lcom/guochao/faceshow/activity/MusicActivity;Z)Z

    goto :goto_0

    .line 4
    :pswitch_1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$j;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->b0(Lcom/guochao/faceshow/activity/MusicActivity;)Lcom/guochao/faceshow/service/MediaService$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/service/MediaService$a;->d()V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$j;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/MusicActivity;->k0(Lcom/guochao/faceshow/activity/MusicActivity;Z)Z

    goto :goto_0

    .line 6
    :pswitch_2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$j;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->b0(Lcom/guochao/faceshow/activity/MusicActivity;)Lcom/guochao/faceshow/service/MediaService$a;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/activity/MusicActivity$j;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/activity/MusicActivity;->B0(Lcom/guochao/faceshow/activity/MusicActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/service/MediaService$a;->b(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$j;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/MusicActivity;->k0(Lcom/guochao/faceshow/activity/MusicActivity;Z)Z

    goto :goto_0

    .line 8
    :pswitch_3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$j;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->b0(Lcom/guochao/faceshow/activity/MusicActivity;)Lcom/guochao/faceshow/service/MediaService$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/service/MediaService$a;->c()V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$j;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1, v1}, Lcom/guochao/faceshow/activity/MusicActivity;->k0(Lcom/guochao/faceshow/activity/MusicActivity;Z)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
