.class Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$i;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->b5(Lcom/guochao/faceshow/aaspring/beans/IM_User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/ArenaBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/IM_User;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;Lcom/guochao/faceshow/aaspring/beans/IM_User;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$i;->a:Lcom/guochao/faceshow/aaspring/beans/IM_User;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/ArenaBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ArenaBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/ArenaBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/ArenaBean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->V1:Z

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ArenaBean;->getSelectTime()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->c4(J)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$i;->a:Lcom/guochao/faceshow/aaspring/beans/IM_User;

    invoke-interface {p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setPkUserInfo(Lcom/guochao/faceshow/aaspring/beans/IM_User;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setApplyPkState(Z)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object v1, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v1, "\u53d1\u9001\u9080\u6210\u529fPK\u6309\u94ae\u9080\u8bf7\u4e2d"

    invoke-static {p2, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->refreshPkBtn()V

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->O4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;Z)Z

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object p2

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p2, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->s(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->A(Z)V

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$i;->a:Lcom/guochao/faceshow/aaspring/beans/IM_User;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->F(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setInPkPunishmentTime(Z)V

    .line 13
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->D(I)V

    .line 14
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ArenaBean;->getAdmitDefeatNum()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setAdmitDefeatNum(I)V

    .line 15
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ArenaBean;->getIntroductionToPlay()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setIntroductionToPlay(Ljava/util/List;)V

    .line 16
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ArenaBean;->getArenaDurationTime()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setArenaDurationTime(J)V

    .line 17
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ArenaBean;->getArenaPunishmentDurationTime()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setArenaPunishmentDurationTime(J)V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B:Landroid/os/Handler;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->P4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/32 v0, 0x2bf20

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 2
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/ArenaBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->O4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;Z)Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->p3()V

    .line 3
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->setIsPKPrepare(Z)V

    .line 4
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    const v1, 0x1388d

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lg7/a;->a()I

    move-result p1

    const v0, 0x1388e

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v1, 0x7f120707

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/ArenaBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$i;->a(Lcom/guochao/faceshow/aaspring/beans/ArenaBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
