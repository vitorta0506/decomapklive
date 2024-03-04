.class public abstract Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"

# interfaces
.implements Ld9/k;
.implements Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment$b;


# instance fields
.field protected a:Landroid/os/Handler;

.field protected b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

.field protected c:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

.field public d:Ld9/g;

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->a:Landroid/os/Handler;

    return-void
.end method

.method private Q1(ZLandroidx/fragment/app/FragmentManager;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p2

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 3
    instance-of v1, v0, Landroidx/fragment/app/DialogFragment;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Landroidx/fragment/app/DialogFragment;

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getShowsDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->hide()V

    const/4 p1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->Q1(ZLandroidx/fragment/app/FragmentManager;)Z

    goto :goto_0

    :cond_2
    return p1
.end method

.method private U1(Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 3
    instance-of v1, v0, Landroidx/fragment/app/DialogFragment;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Landroidx/fragment/app/DialogFragment;

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getShowsDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->U1(Landroidx/fragment/app/FragmentManager;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public B0(Ld9/g;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->d:Ld9/g;

    return-void
.end method

.method public synthetic F0(Ld9/g;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ld9/l;->a(Ld9/m;Ld9/g;ILjava/lang/String;)V

    return-void
.end method

.method public I0()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    new-instance v1, Lcom/guochao/faceshow/views/e;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;)V

    invoke-direct {v1, v0, v2}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getFlag()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const v2, 0x7f1205ad

    goto :goto_1

    :cond_2
    :goto_0
    const v2, 0x7f1205ac

    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/views/e;->b(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->show()V

    :cond_3
    :goto_2
    return-void
.end method

.method public synthetic J1(Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ld9/j;->d(Ld9/k;Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;J)V

    return-void
.end method

.method public synthetic N0(Ld9/g;ZZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ld9/l;->c(Ld9/m;Ld9/g;ZZ)V

    return-void
.end method

.method public P()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->d:Ld9/g;

    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->smallMiniGameLay:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->smallMiniGameLay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->d:Ld9/g;

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->i4()V

    :cond_1
    return-void
.end method

.method protected P1()V
    .locals 3

    const-string v0, "tokens/game/v2/round/cancelGame"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->P(Landroidx/lifecycle/LifecycleOwner;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->d:Ld9/g;

    .line 2
    invoke-interface {v1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "anchorId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    .line 3
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "roundId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    .line 4
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameInfoId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "gameInfoId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 5
    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object v0

    invoke-virtual {v0}, Lc9/a;->P()V

    return-void
.end method

.method protected R1()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->Q1(ZLandroidx/fragment/app/FragmentManager;)Z

    move-result v0

    return v0
.end method

.method public S1(Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameJoinMessage;)V
    .locals 0

    return-void
.end method

.method public T1(Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameSwitchSeatMessage;)V
    .locals 0

    return-void
.end method

.method protected V1()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->U1(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method public synthetic W()Z
    .locals 1

    invoke-static {p0}, Ld9/j;->b(Ld9/k;)Z

    move-result v0

    return v0
.end method

.method public synthetic Z0(Ld9/g;Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ld9/l;->b(Ld9/m;Ld9/g;Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;)V

    return-void
.end method

.method public synthetic e()Z
    .locals 1

    invoke-static {p0}, Ld9/j;->c(Ld9/k;)Z

    move-result v0

    return v0
.end method

.method public o1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public p0()Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    return-object v0
.end method

.method public y(Ld9/g;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld9/g;",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v0

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "LIVE_GAME_JOIN"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "LIVE_GAME_SWITCH_SEAT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "LIVE_GAME_SWITCH_SEAT_V_COIN"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "LIVE_GAME_JOIN_V_COIN"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    return v4

    .line 3
    :pswitch_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameSwitchSeatMessage;

    .line 4
    iget-wide v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->f:J

    cmp-long p2, v0, v5

    if-gez p2, :cond_4

    return v4

    .line 5
    :cond_4
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->f:J

    .line 6
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameSwitchSeatMessage;)V

    return v3

    .line 7
    :pswitch_1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameJoinMessage;

    .line 8
    iget-wide v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->e:J

    cmp-long p2, v0, v5

    if-gez p2, :cond_5

    return v4

    .line 9
    :cond_5
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->e:J

    .line 10
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameJoinMessage;)V

    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2b4b804b -> :sswitch_3
        -0xb79351d -> :sswitch_2
        0x41462a56 -> :sswitch_1
        0x534a5dc4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public y0(Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->d:Ld9/g;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    invoke-virtual {p1, p2, v0, v1}, Lc9/a;->l(Ld9/g;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;)V

    return-void
.end method
