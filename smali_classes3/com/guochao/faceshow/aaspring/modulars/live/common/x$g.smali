.class Lcom/guochao/faceshow/aaspring/modulars/live/common/x$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/x;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->d:Lcom/guochao/player/GCLivePlayer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->m()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->m()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "PkHelper$TimeoutRunnable.run()"

    .line 2
    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->u0(Ljava/lang/String;Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->d:Lcom/guochao/player/GCLivePlayer;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->m()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getStreamId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/guochao/player/GCLivePlayer;->stopPlay(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->v:Ljava/lang/String;

    .line 5
    iput-boolean v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->i:Z

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v2, "TimeoutRunnable\uff1a\u8d85\u65f6"

    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->y(Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->e()V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->d()V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->t2()V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v1, :cond_3

    .line 13
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->b(Lcom/guochao/faceshow/aaspring/modulars/live/common/x;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "30\u79d2\u62c9\u5bf9\u65b9\u6d41\u672a\u6210\u529fPK\u6062\u590d\u6309\u94ae"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->c(Lcom/guochao/faceshow/aaspring/modulars/live/common/x;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->t2()V

    goto :goto_0

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->p3()V

    :cond_3
    :goto_0
    return-void
.end method
