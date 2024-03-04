.class public Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;
.implements Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;
.implements Landroid/hardware/SensorEventListener;
.implements Lb8/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity$f;
    }
.end annotation


# instance fields
.field public a:Z

.field private b:I

.field bigVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field bigVideoViewImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private c:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;

.field private d:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;

.field private e:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

.field private f:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

.field private g:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

.field private h:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

.field private i:Landroid/hardware/Sensor;

.field private j:Landroid/os/PowerManager$WakeLock;

.field private k:Landroid/hardware/SensorManager;

.field private l:Landroid/os/PowerManager;

.field private m:Landroid/os/Handler;

.field n:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

.field private o:Landroid/content/Intent;

.field private p:Ljava/lang/Runnable;

.field private q:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

.field private r:Z

.field rootView:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private s:Z

.field smallBg:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field smallVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field smallVideoViewImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->m:Landroid/os/Handler;

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->p:Ljava/lang/Runnable;

    return-void
.end method

.method public static A0(Landroid/content/Context;ILcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->releaseAll()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    const-string v1, "userData"

    invoke-virtual {p1, v1, p2}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    const-string p2, "callModel"

    invoke-virtual {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const p1, 0x7f01000e

    const p2, 0x7f01004f

    .line 6
    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;II)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 7
    invoke-static {p0, v0, p1}, Landroidx/core/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;)Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    return-object p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;)Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    return-object p0
.end method

.method static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;)Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->g:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    return-object p0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;)Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->h:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    return-object p0
.end method

.method static synthetic i0(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;)Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->q:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    return-object p0
.end method

.method static synthetic k0(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->o:Landroid/content/Intent;

    return-object p0
.end method

.method private n0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->f2()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->f2()V

    :cond_1
    return-void
.end method

.method private release()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->E()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->d:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->T1()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->c:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->U1()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->n2()V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->n2()V

    .line 10
    :cond_3
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lb8/d;->unregisterOnUserChangedListener(Lb8/d$a;)V

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->o()V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->n:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->close()V

    :cond_4
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->bigVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->onDestroy()V

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->smallVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz v0, :cond_6

    .line 18
    invoke-virtual {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->onDestroy()V

    .line 19
    :cond_6
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->k:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_7

    .line 21
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->j:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_8
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->j:Landroid/os/PowerManager$WakeLock;

    .line 25
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->l:Landroid/os/PowerManager;

    .line 26
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->a()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->d(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;)V

    .line 27
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->player()Lcom/guochao/player/GCLivePlayer;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/guochao/player/GCLivePlayer;->isPlayerFrozen()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 29
    invoke-virtual {v0}, Lcom/guochao/player/GCLivePlayer;->unfreezeAllPlayers()V

    .line 30
    :cond_9
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private t0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->k2()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->k2()V

    :cond_1
    return-void
.end method

.method private u0()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->r:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->s:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->b:I

    const/4 v1, 0x6

    const v2, 0x7f0a043f

    if-ne v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->g:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->h2(Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;I)Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->d:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->U1()V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->d:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 9
    :cond_2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->g:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->h2(Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;I)Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->c:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->V1()V

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->c:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 15
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_4
    :goto_0
    return-void
.end method

.method private v0(Landroid/view/View;Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity$f;

    if-eqz p2, :cond_0

    const/high16 v1, 0x41000000    # 8.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity$f;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method


# virtual methods
.method public A1(I)V
    .locals 0

    return-void
.end method

.method public E1(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public I(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->b:I

    const/4 p2, 0x6

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->d:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;

    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    .line 3
    :cond_0
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->b:I

    const/4 p2, 0x5

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->c:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;

    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    :cond_1
    return-void
.end method

.method public K0(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->h:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const p1, 0x7f12090d

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->h:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->invitedList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->h:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iget v0, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callType:I

    const/4 v1, 0x2

    invoke-virtual {p1, p2, v0, v1, p3}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->H(Ljava/lang/String;IILcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->finish()V

    return-void
.end method

.method public synthetic L0(Ljava/lang/String;III)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lx9/a;->a(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;Ljava/lang/String;III)V

    return-void
.end method

.method public O0(Ljava/lang/String;Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->h:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 2
    iget-object p2, p3, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->matchLogId:Ljava/lang/String;

    if-eqz p2, :cond_1

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->matchLogId:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->finish()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->q:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    :goto_0
    return-void
.end method

.method public R(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public R0(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->r:Z

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->b:I

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->r:Z

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->u0()V

    :cond_0
    return-void
.end method

.method public f1(J)V
    .locals 0

    return-void
.end method

.method public finish()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->release()V

    return-void
.end method

.method public getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->f(I)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->a()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d002a

    return v0
.end method

.method public initView()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->b:I

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    const-string v1, "userData"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->g:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    const-string v1, "callModel"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->h:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->g:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    if-eqz v1, :cond_6

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x5

    if-eq v1, v5, :cond_1

    if-ne v1, v4, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->isFromLiveRoom()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 6
    :goto_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->b:I

    if-eq v0, v5, :cond_3

    if-ne v0, v4, :cond_4

    .line 7
    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget v4, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->b:I

    invoke-virtual {v0, v1, v4}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->n(II)V

    .line 8
    :cond_4
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->b:I

    const-wide/32 v4, 0xea60

    const v1, 0x7f0a0445

    const v6, 0x7f0a043f

    const/16 v7, 0x8

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 9
    :pswitch_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->g:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->Q1(Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;)Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->d:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->d:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;

    invoke-virtual {v0, v1, v6}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->d:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 12
    invoke-virtual {p0, v7}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->y0(I)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 14
    :pswitch_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->g:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->Q1(Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;)Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->c:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->c:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;

    invoke-virtual {v0, v1, v6}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->c:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 17
    invoke-virtual {p0, v7}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->y0(I)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 19
    :pswitch_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->g:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->h2(Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;I)Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    invoke-virtual {v0, v6, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 22
    invoke-virtual {p0, v7}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->y0(I)V

    goto :goto_1

    .line 23
    :pswitch_3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->g:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->h2(Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;I)Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    invoke-virtual {v0, v6, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 26
    :goto_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->a()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->c(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;)V

    .line 27
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 28
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lb8/d;->registerOnUserChangedListener(Lb8/d$a;)V

    if-eqz v2, :cond_5

    .line 29
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->p()Lcom/tencent/trtc/TRTCCloud;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->g:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->q0()Lcom/tencent/rtmp/ui/TXCloudVideoView;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/tencent/trtc/TRTCCloud;->startRemoteView(Ljava/lang/String;ILcom/tencent/rtmp/ui/TXCloudVideoView;)V

    :cond_5
    return-void

    .line 30
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public j1(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    return-void
.end method

.method public l0()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->p()Lcom/tencent/trtc/TRTCCloud;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/trtc/DeprecatedTRTCCloud;->muteLocalVideo(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->finish()V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    iget-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->a:Z

    .line 4
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v3

    invoke-interface {v3}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->h:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->A(Landroid/content/Context;ZZLcom/guochao/faceshow/aaspring/modulars/trtc/call/a$j;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public m0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->smallBg:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    :cond_0
    return-void
.end method

.method public n1(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->m:Landroid/os/Handler;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->p:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->b:I

    const/4 p2, 0x6

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->d:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->W1()V

    .line 4
    :cond_0
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->b:I

    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->c:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->S1()V

    .line 7
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->p()Lcom/tencent/trtc/TRTCCloud;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->g:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->q0()Lcom/tencent/rtmp/ui/TXCloudVideoView;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/tencent/trtc/TRTCCloud;->startRemoteView(Ljava/lang/String;ILcom/tencent/rtmp/ui/TXCloudVideoView;)V

    :cond_2
    return-void
.end method

.method public o(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    return-void
.end method

.method public o0()Lcom/tencent/rtmp/ui/TXCloudVideoView;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->bigVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->C(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->finish()V

    return-void

    .line 5
    :cond_0
    new-instance p1, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->n:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const p1, 0x7f0a0aaa

    .line 7
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const p1, 0x7f0a0aab

    .line 8
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->k:Landroid/hardware/SensorManager;

    const/16 v0, 0x8

    .line 10
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->i:Landroid/hardware/Sensor;

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->l:Landroid/os/PowerManager;

    const/16 v0, 0x20

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->j:Landroid/os/PowerManager$WakeLock;

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->smallVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->v0(Landroid/view/View;Z)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->smallVideoViewImg:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->v0(Landroid/view/View;Z)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->bigVideoViewImg:Landroid/widget/ImageView;

    invoke-static {p1}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object p1

    invoke-virtual {p1}, Lic/d;->C()Lic/c;

    move-result-object p1

    const v0, 0x7f0f05eb

    invoke-virtual {p1, v0}, Lic/c;->I1(I)Lic/c;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lic/c;->B1(Ljava/lang/String;)Lic/c;

    move-result-object p1

    new-instance v1, Ljc/a;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljc/a;-><init>(I)V

    invoke-virtual {p1, v1}, Lic/c;->Q1(Le0/h;)Lic/c;

    move-result-object p1

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;)V

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/g;->M0(Ls0/k;)Ls0/k;

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->g:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    if-eqz p1, :cond_1

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->smallVideoViewImg:Landroid/widget/ImageView;

    invoke-static {p1}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object p1

    invoke-virtual {p1}, Lic/d;->C()Lic/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lic/c;->I1(I)Lic/c;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->g:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lic/c;->B1(Ljava/lang/String;)Lic/c;

    move-result-object p1

    new-instance v0, Ljc/a;

    invoke-direct {v0, v2}, Ljc/a;-><init>(I)V

    invoke-virtual {p1, v0}, Lic/c;->Q1(Le0/h;)Lic/c;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->M0(Ls0/k;)Ls0/k;

    :cond_1
    return-void
.end method

.method public onEndPushEvent(Ly7/d;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const v0, 0x7f1208f9

    .line 1
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->i2()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->i2()V

    .line 6
    :cond_1
    iget-object p1, p1, Ly7/d;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    if-eqz p1, :cond_2

    .line 7
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->q:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyboardHeightChanged(II)V
    .locals 0

    return-void
.end method

.method public synthetic onKeyboardHeightChanged(III)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/e;->a(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;III)V

    return-void
.end method

.method public onLogout()V
    .locals 0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->finish()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->o:Landroid/content/Intent;

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->i:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->k:Landroid/hardware/SensorManager;

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->j:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->j:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v0, 0x7fffffff

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->n0()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->t0()V

    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->n:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->k:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->n:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;)V

    return-void
.end method

.method public onUserChanged(Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/bean/UserBean;)V
    .locals 0

    return-void
.end method

.method public synthetic onUserChanged(Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/bean/UserBean;ZZZ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lb8/c;->a(Lb8/d$a;Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/bean/UserBean;ZZZ)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0aab

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-wide/16 v0, 0x190

    .line 2
    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;J)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->rootView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->rootView:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 7
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v1

    const v4, 0x7f0a0aa8

    if-ne v1, v4, :cond_2

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 14
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->v0(Landroid/view/View;Z)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->v0(Landroid/view/View;Z)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->v0(Landroid/view/View;Z)V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->v0(Landroid/view/View;Z)V

    :goto_1
    return-void
.end method

.method public p0()Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->h:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    return-object v0
.end method

.method public q0()Lcom/tencent/rtmp/ui/TXCloudVideoView;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->smallVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    return-object v0
.end method

.method public r0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->d:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->c:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public s0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public s1(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->s:Z

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->u0()V

    return-void
.end method

.method public shouldShowLiveFloatWindow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->h:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 2
    iget-object p2, p3, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->matchLogId:Ljava/lang/String;

    if-eqz p2, :cond_1

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->matchLogId:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->finish()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->q:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    :goto_0
    return-void
.end method

.method public v1(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public w1(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->r:Z

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->b:I

    const/4 p2, 0x6

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->r:Z

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->u0()V

    :cond_0
    return-void
.end method

.method public y0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->smallVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x43320000    # 178.0f

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->smallBg:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
