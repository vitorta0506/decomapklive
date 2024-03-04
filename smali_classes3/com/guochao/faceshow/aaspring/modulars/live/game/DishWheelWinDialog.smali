.class public Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;
.super Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog$b;
    }
.end annotation


# instance fields
.field private d:Z

.field private e:Lp7/h;

.field private f:Ld9/g;

.field g:Ljava/lang/Runnable;

.field private h:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;->g:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;->W1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;->V1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;->X1(Landroid/view/View;)V

    return-void
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;)Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog$b;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;->h:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog$b;

    return-object p0
.end method

.method private U1()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;->f:Ld9/g;

    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz v1, :cond_3

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
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewStub;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic V1(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;->e:Lp7/h;

    .line 2
    invoke-interface {v0}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;->e:Lp7/h;

    invoke-interface {v1}, Lp7/h;->getUserName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;->f:Ld9/g;

    .line 3
    invoke-static {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->showPeopleInfo(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ld9/g;)V

    return-void
.end method

.method private synthetic W1(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;->g:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;->b:Z

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;->h:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog$b;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog$b;->onDismiss()V

    :cond_0
    return-void
.end method

.method private synthetic X1(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;->U1()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;->b:Z

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;->h:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog$b;

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog$b;->onDismiss()V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;->h:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog$b;

    if-eqz p1, :cond_3

    .line 9
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog$b;->a()V

    :cond_3
    return-void
.end method

.method public static Y1(Landroidx/fragment/app/FragmentActivity;IIILp7/h;ZLd9/g;I)Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "diamondCount"

    .line 3
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "rewardCount"

    .line 4
    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "isBroadCaster"

    .line 5
    invoke-virtual {v1, p2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "flag"

    .line 6
    invoke-virtual {v1, p2, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-class p5, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;

    invoke-virtual {p5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "userAvatar"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-class p4, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "mILiveRoomManager"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p6}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-object v0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d011d

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 9

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/DialogFragment;->setShowsDialog(Z)V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;->b:Z

    const v2, 0x7f0a0e6a

    .line 3
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "userAvatar"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp7/h;

    iput-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;->e:Lp7/h;

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "mILiveRoomManager"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld9/g;

    iput-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;->f:Ld9/g;

    .line 6
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;->e:Lp7/h;

    if-nez v3, :cond_1

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 9
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;->b:Z

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;->h:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog$b;

    if-eqz p1, :cond_0

    .line 11
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog$b;->onDismiss()V

    :cond_0
    return-void

    .line 12
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v4, "diamondCount"

    .line 13
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const v5, 0x7f0a0e6b

    .line 14
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a02c1

    .line 15
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 16
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;->e:Lp7/h;

    invoke-interface {v7}, Lp7/h;->getUserName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setSelected(Z)V

    new-array v5, v1, [Ljava/lang/Object;

    .line 18
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v0

    const-string v4, "%s"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "rewardCount"

    .line 19
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const v6, 0x7f0a0988

    .line 20
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v0

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "isBroadCaster"

    .line 22
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;->d:Z

    const v1, 0x7f0a0e6c

    .line 23
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f1205d5

    .line 24
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    const-string v4, " : "

    .line 25
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    const-string v1, "flag"

    .line 26
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const v3, 0x7f0a08c0

    .line 27
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0a0a3f

    .line 28
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v6, 0x7f0f0272

    const v7, 0x7f0f0277

    if-nez v1, :cond_2

    const v8, 0x7f0f0272

    goto :goto_0

    :cond_2
    const v8, 0x7f0f0277

    .line 29
    :goto_0
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const v6, 0x7f0f0277

    .line 30
    :goto_1
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    .line 31
    :goto_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;->e:Lp7/h;

    if-eqz v1, :cond_5

    .line 32
    invoke-interface {v1}, Lp7/h;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lhc/a;->d(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 33
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/i;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    :cond_5
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/h;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0260

    .line 35
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 36
    iget-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;->d:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a0987

    .line 37
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;->d:Z

    if-eqz v2, :cond_7

    if-lez v5, :cond_7

    goto :goto_4

    :cond_7
    const/16 v0, 0x8

    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/j;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;->d:Z

    if-nez p1, :cond_8

    .line 40
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;->g:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setShowsDialog(Z)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;->b:Z

    return-void
.end method

.method public setOnContinueGameListener(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;->h:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog$b;

    return-void
.end method
