.class public Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

.field private b:Z

.field private c:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ld9/g;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->e:Ljava/util/List;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->a2(Landroid/view/View;)V

    return-void
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->b2(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V

    return-void
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->d2(Landroid/view/View;)V

    return-void
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;Landroid/view/View;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->X1(Landroid/view/View;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V

    return-void
.end method

.method static synthetic U1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    return-object p0
.end method

.method static synthetic V1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;)Ld9/g;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->f:Ld9/g;

    return-object p0
.end method

.method static synthetic W1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;Landroid/view/View;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->c2(Landroid/view/View;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V

    return-void
.end method

.method private X1(Landroid/view/View;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V
    .locals 2

    const v0, 0x7f0a045d

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0460

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getName()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private Y1()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->f:Ld9/g;

    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz v1, :cond_5

    .line 2
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    .line 3
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->smallMiniGameLay:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 5
    instance-of v4, v3, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    .line 6
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 8
    instance-of v4, v3, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;

    if-eqz v4, :cond_3

    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;->P1()Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    .line 9
    :cond_4
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/ViewStub;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    return v2

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic a2(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->showDialog(Landroidx/fragment/app/FragmentActivity;)Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->dismissAllowingStateLoss()V

    :cond_2
    :goto_0
    return-void
.end method

.method private b2(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->d:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$b;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private c2(Landroid/view/View;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->f:Ld9/g;

    invoke-interface {p1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result p1

    .line 3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getIsH5Page()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 4
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getOpenRoleType()I

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getOpenRoleType()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const-string p2, "\u6ca1\u6709\u6743\u9650\u73a9\u8fd9\u4e2a\u6e38\u620f"

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->f:Ld9/g;

    invoke-interface {p1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->f:Ld9/g;

    invoke-virtual {p1, v0, p2}, Lc9/a;->s(Ld9/g;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->dismissAllowingStateLoss()V

    :goto_1
    return-void

    .line 9
    :cond_4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->Y1()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 10
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->f:Ld9/g;

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    const v2, 0x7f12049f

    const v3, 0x7f1205d1

    if-eqz v0, :cond_c

    .line 11
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m()I

    move-result v4

    if-ltz v4, :cond_c

    .line 12
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameCode()I

    move-result v4

    if-ne v4, v1, :cond_6

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->j()I

    move-result v4

    if-eqz v4, :cond_7

    .line 13
    :cond_6
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameCode()I

    move-result p2

    const/4 v4, 0x4

    if-ne p2, v4, :cond_9

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->j()I

    move-result p2

    if-ne p2, v1, :cond_9

    .line 14
    :cond_7
    iget-object p1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->b:Landroid/view/View;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8

    .line 15
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->Z()V

    goto :goto_2

    .line 16
    :cond_8
    iget-object p1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->I:Landroid/view/View;

    if-eqz p1, :cond_b

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    goto :goto_2

    :cond_9
    if-eqz p1, :cond_a

    .line 18
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    goto :goto_2

    .line 19
    :cond_a
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(Ljava/lang/CharSequence;)V

    .line 20
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->dismissAllowingStateLoss()V

    return-void

    .line 21
    :cond_c
    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object v0

    invoke-virtual {v0}, Lc9/a;->g()Ld9/k;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object v0

    invoke-virtual {v0}, Lc9/a;->g()Ld9/k;

    move-result-object v0

    invoke-interface {v0}, Ld9/k;->p0()Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 22
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameInfoId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object v0

    invoke-virtual {v0}, Lc9/a;->g()Ld9/k;

    move-result-object v0

    invoke-interface {v0}, Ld9/k;->p0()Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameInfoId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 23
    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object p1

    invoke-virtual {p1}, Lc9/a;->t()V

    goto :goto_3

    :cond_d
    if-eqz p1, :cond_e

    .line 24
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    goto :goto_3

    .line 25
    :cond_e
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(Ljava/lang/CharSequence;)V

    .line 26
    :goto_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->dismissAllowingStateLoss()V

    return-void

    .line 27
    :cond_f
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->f:Ld9/g;

    invoke-interface {p1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-static {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->l2(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    move-result-object p1

    .line 29
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->f:Ld9/g;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->k2(Ld9/g;)V

    .line 30
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$c;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;)V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->setStartListener(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$h;)V

    goto :goto_4

    .line 31
    :cond_10
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(Ljava/lang/CharSequence;)V

    :goto_4
    return-void
.end method

.method private d2(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0a0894

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a089a

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x42380000    # 46.0f

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    invoke-direct {v1, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;-><init>(Landroid/view/View;Landroid/widget/TextView;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->p(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->b:Z

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->s(Z)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->i()Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$d;

    move-result-object p1

    if-nez p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->setOnResultListener(Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$d;)V

    :cond_1
    return-void
.end method

.method public static e2(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Ld9/g;ZZ)Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "mLiveRoomModel"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "PKstate"

    .line 4
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "pkHide"

    .line 5
    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    const-string p3, "ILiveRoomManager"

    invoke-virtual {p1, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 8
    const-class p1, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public Z1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->g:Z

    return v0
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->g:Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->m()V

    :cond_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0139

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "mLiveRoomModel"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "PKstate"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->b:Z

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "pkHide"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->d:Z

    .line 5
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    const-string v2, "ILiveRoomManager"

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld9/g;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->f:Ld9/g;

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-eqz v2, :cond_3

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x7f0a095c

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getGameLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$a;

    invoke-direct {v2, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    const v0, 0x7f0a0a8b

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Le9/a;

    invoke-direct {v1, p0}, Le9/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0a03f2

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0a38

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0a2b

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void

    .line 15
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->createBottomDialog()Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public refreshPkBtn()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->l()V

    :cond_0
    return-void
.end method

.method public setPkBtnVisibility(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->q(Z)V

    :cond_0
    return-void
.end method

.method public setPkLoadingState(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->r(Z)V

    :cond_0
    return-void
.end method

.method public setPkState(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->s(Z)V

    :cond_0
    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->g:Z

    return-void
.end method
