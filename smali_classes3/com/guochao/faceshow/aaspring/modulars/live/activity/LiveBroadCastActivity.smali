.class public Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;
.super Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;
.source "SourceFile"


# instance fields
.field public j:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

.field private k:Z

.field private l:Lcom/guochao/faceshow/aaspring/beans/LiveOverResult;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;->m:Z

    return-void
.end method

.method static synthetic v0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;)V
    .locals 0

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public A0(Lcom/guochao/faceshow/aaspring/beans/LiveOverResult;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/LiveOverResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;->l:Lcom/guochao/faceshow/aaspring/beans/LiveOverResult;

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;->j:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->g5(Landroid/view/MotionEvent;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public e0()Ld9/g;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;->j:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    return-object v0
.end method

.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->finish()V

    const v0, 0x7f010025

    const v1, 0x7f01004d

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d006e

    return v0
.end method

.method public initView()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public n0(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;->k:Z

    return-void
.end method

.method public o0(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->o0(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;->j:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onNetworkLose(I)V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;->j:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->r0()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    return-void

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;->m:Z

    if-eqz v0, :cond_2

    .line 6
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;->j:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->k5()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;->j:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->t5()V

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1204f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;Z)Lcom/guochao/faceshow/views/e;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2
    invoke-static {}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->releaseAll()V

    .line 3
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a0255

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 5
    instance-of v1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;->j:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-nez p1, :cond_1

    .line 8
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;->j:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;->j:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 10
    :cond_1
    sget-object p1, Lcom/guochao/faceshow/mine/view/PIPSettingsActivity;->Companion:Lcom/guochao/faceshow/mine/view/PIPSettingsActivity$Companion;

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/view/PIPSettingsActivity$Companion;->finishWatcherActivity()V

    const/4 p1, 0x0

    .line 11
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;->checkShouldShow(I)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 12
    :cond_2
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "live_show"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->setLiving(Z)V

    return-void
.end method

.method public onEnterBackground()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;->j:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onEnterBackground()V

    :cond_0
    return-void
.end method

.method public onEnterForeground()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;->j:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onEnterForeground()V

    :cond_0
    return-void
.end method

.method public onEventBus(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "finishActivity"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;->j:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->m5(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public p0(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->p0(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;->j:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->onNetworkResume(I)V

    :cond_0
    return-void
.end method

.method protected q0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;->k:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->q0()V

    return-void
.end method

.method public release(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->release(Z)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->v(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->b2()V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->beautyManager()Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/pusher/base/ILivePusher$BeautyManager;->destroyOnMainThread()V

    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;->j:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 8
    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->onQuitLiveRoom(ZZ)V

    .line 9
    :cond_1
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->setLiving(Z)V

    .line 10
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->setIsLivingInMic(Z)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;->l:Lcom/guochao/faceshow/aaspring/beans/LiveOverResult;

    if-eqz p1, :cond_2

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveOverResult;->getFcoin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_2

    .line 13
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Ly7/q;

    invoke-direct {v0}, Ly7/q;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public y0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;->k:Z

    return v0
.end method
