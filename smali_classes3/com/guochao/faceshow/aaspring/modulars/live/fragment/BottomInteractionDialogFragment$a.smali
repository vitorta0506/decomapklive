.class Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;

    .line 2
    iget v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 3
    :sswitch_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->W1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->X1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;Z)Z

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAnchorForceMatchType=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isAnchorForceMatchType()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnchorForceMatchTyp+Onclick"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isBroadCaster=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->b:Ld9/g;

    invoke-interface {v1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isBroadCaster+Onclick"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->c2()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isAnchorForceMatchType()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->b:Ld9/g;

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1204fd

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-static {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->X1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;Z)Z

    return-void

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->b:Ld9/g;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;->c()Z

    move-result v1

    xor-int/2addr v1, v2

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->V1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a$b;

    invoke-direct {v4, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;)V

    invoke-interface {v0, v1, v2, v3, v4}, Ld9/g;->p1(ZLjava/lang/String;Ljava/lang/String;Ld9/h;)V

    goto/16 :goto_0

    .line 11
    :sswitch_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLinkMicStreamId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->c0(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->k2(Z)V

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    goto/16 :goto_0

    .line 17
    :sswitch_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;Z)Z

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isAnchorForceVoiceStatus()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->b:Ld9/g;

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-nez v0, :cond_4

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1204ff

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-static {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;Z)Z

    return-void

    .line 22
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->b:Ld9/g;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;->c()Z

    move-result v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->V1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a$a;

    invoke-direct {v4, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;)V

    invoke-interface {v0, v1, v2, v3, v4}, Ld9/g;->L(ZLjava/lang/String;Ljava/lang/String;Ld9/h;)V

    goto :goto_0

    .line 23
    :sswitch_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-eqz p1, :cond_5

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->switchCamera()V

    goto :goto_0

    .line 25
    :sswitch_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    .line 26
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-eqz p1, :cond_5

    .line 27
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->C()V

    goto :goto_0

    .line 28
    :sswitch_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    .line 29
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->Y1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Y2(I)V

    :cond_5
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1203c3 -> :sswitch_5
        0x7f120481 -> :sswitch_4
        0x7f120492 -> :sswitch_3
        0x7f1204f3 -> :sswitch_2
        0x7f120803 -> :sswitch_1
        0x7f1209c5 -> :sswitch_0
    .end sparse-switch
.end method
