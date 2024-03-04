.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;)Lcom/guochao/faceshow/service/MediaService$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/service/MediaService$a;->d()V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    iput v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;->k:I

    goto :goto_0

    .line 4
    :pswitch_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;)Lcom/guochao/faceshow/service/MediaService$a;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/service/MediaService$a;->b(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    iput v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;->k:I

    goto :goto_0

    .line 6
    :pswitch_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;)Lcom/guochao/faceshow/service/MediaService$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/service/MediaService$a;->c()V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    const/4 v0, 0x2

    iput v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;->k:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
