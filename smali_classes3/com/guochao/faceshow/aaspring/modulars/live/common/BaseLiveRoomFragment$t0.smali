.class Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->N3(Ljava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$t0;->c:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$t0;->a:I

    iput-boolean p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$t0;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$t0;->c:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_5

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 3
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$t0;->a:I

    const/16 p2, 0xa

    if-ne p1, p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$t0;->c:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->p0(Landroid/content/Context;I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$t0;->c:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLiving()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$t0;->c:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$t0;->c:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    const/4 p2, -0x1

    const-string v0, "close"

    invoke-virtual {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onLiveFinish(ILjava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$t0;->c:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$t0;->c:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A2()Lcom/guochao/pusher/GCLivePusher;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/guochao/pusher/GCLivePusher;->stopAll()V

    .line 11
    :cond_4
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$t0;->b:Z

    if-nez p1, :cond_5

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$t0;->c:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_5
    :goto_0
    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
