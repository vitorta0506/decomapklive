.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->initPkIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getApplyPkState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    invoke-interface {v0}, Ld9/g;->a()V

    :cond_0
    return-void
.end method

.method public c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 8

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    const/4 v1, 0x2

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v7}, Ld9/g;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public d(IZ)V
    .locals 1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    const/4 p2, 0x2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Ld9/g;->d(IZ)V

    return-void
.end method

.method public e(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->e4(J)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getApplyPkState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->L3()V

    :cond_0
    return-void
.end method

.method public sendC2CLiveMessage(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ld9/e$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "TT;>;",
            "Ld9/e$a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->sendC2CLiveMessage(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    return-void
.end method
