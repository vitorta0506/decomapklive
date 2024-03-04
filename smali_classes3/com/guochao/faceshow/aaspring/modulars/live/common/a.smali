.class public Lcom/guochao/faceshow/aaspring/modulars/live/common/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/pusher/base/ILivePusher$PushEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/common/a$e;,
        Lcom/guochao/faceshow/aaspring/modulars/live/common/a$f;
    }
.end annotation


# static fields
.field private static n:Lcom/guochao/faceshow/aaspring/modulars/live/common/a;


# instance fields
.field public a:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field private d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/guochao/faceshow/aaspring/modulars/live/common/a$f;

.field private g:Ld9/g;

.field public h:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Landroid/widget/FrameLayout;

.field private j:Z

.field k:Lcom/guochao/faceshow/aaspring/modulars/live/common/a$e;

.field private l:Z

.field public m:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->e:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/a;Lcom/guochao/faceshow/aaspring/modulars/live/common/a$a;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->f:Lcom/guochao/faceshow/aaspring/modulars/live/common/a$f;

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$e;

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/a;Lcom/guochao/faceshow/aaspring/modulars/live/common/a$a;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->k:Lcom/guochao/faceshow/aaspring/modulars/live/common/a$e;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m:Z

    .line 6
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->i:Landroid/widget/FrameLayout;

    .line 7
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private D()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->f:Lcom/guochao/faceshow/aaspring/modulars/live/common/a$f;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y2(Z)Lcom/guochao/pusher/GCLivePusher;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/guochao/pusher/GCLivePusher;->isPushing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/guochao/pusher/GCLivePusher;->stopAll()V

    .line 6
    :cond_2
    invoke-virtual {v0, p0}, Lcom/guochao/pusher/GCLivePusher;->removePushEventListener(Lcom/guochao/pusher/base/ILivePusher$PushEventListener;)V

    return-void
.end method

.method private E(Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->l()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v0, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    .line 6
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->Z4(Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;)V

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-eqz v0, :cond_3

    .line 8
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    .line 9
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->i5(Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;)V

    :cond_3
    return-void

    .line 10
    :cond_4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->player()Lcom/guochao/player/GCLivePlayer;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getStreamId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/player/GCLivePlayer;->isPlaying(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    .line 12
    :cond_5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->k()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->k()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 13
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getStreamId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getJsUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->i:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->B(Lcom/guochao/player/GCLivePlayer;Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 14
    :cond_6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->k()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isFreeLinkMic()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->k()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 15
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->k:Lcom/guochao/faceshow/aaspring/modulars/live/common/a$e;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->k:Lcom/guochao/faceshow/aaspring/modulars/live/common/a$e;

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/live/common/a;)Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/live/common/a;Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->E(Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;)V

    return-void
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/live/common/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->j:Z

    return p1
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/live/common/a;)Ld9/g;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->g:Ld9/g;

    return-object p0
.end method

.method public static h()V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->n:Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->i:Landroid/widget/FrameLayout;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->g:Ld9/g;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    .line 5
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    sput-object v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->n:Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    return-void
.end method

.method private k()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    return-object v0
.end method

.method private l()Lcom/guochao/faceshow/bean/UserBean;
    .locals 1

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean;

    return-object v0
.end method

.method public static m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->n:Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->n:Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    .line 3
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->n:Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    return-object v0
.end method

.method private n()Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    return-object v0
.end method


# virtual methods
.method public A()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->f()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    const-string v1, "tokens/live/microphone/heartBeat"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->g:Ld9/g;

    invoke-interface {v1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "liveId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->g:Ld9/g;

    .line 3
    invoke-interface {v1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "anchorId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/a;)V

    const/16 v2, 0x1388

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->G(ILcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->a:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    return-void
.end method

.method public B(Lcom/guochao/player/GCLivePlayer;Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-virtual {p4}, Landroid/view/ViewGroup;->bringToFront()V

    .line 2
    invoke-virtual {p1, p3, p2, p4}, Lcom/guochao/player/GCLivePlayer;->startPlayAcc(Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;)V

    const/4 p3, 0x1

    .line 3
    invoke-virtual {p1, p3, p2}, Lcom/guochao/player/GCLivePlayer;->setMute(ZLjava/lang/String;)V

    return-void
.end method

.method public C(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;Z)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y2(Z)Lcom/guochao/pusher/GCLivePusher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->getPushUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0}, Lcom/guochao/pusher/GCLivePusher;->getBeautyManager()Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->setBeauty(ILcom/guochao/pusher/base/ILivePusher$BeautyManager;)V

    .line 5
    invoke-virtual {v0, p0}, Lcom/guochao/pusher/GCLivePusher;->addPushEventListener(Lcom/guochao/pusher/base/ILivePusher$PushEventListener;)V

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m:Z

    .line 7
    invoke-virtual {v0, v1}, Lcom/guochao/pusher/GCLivePusher;->enableThirdBeauty(Z)V

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->getPushUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->getStreamId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->c:Ljava/lang/String;

    .line 10
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lcom/guochao/pusher/GCLivePusher;->startPreview(Landroid/view/ViewGroup;)V

    if-nez p2, :cond_2

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p2

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->f:Lcom/guochao/faceshow/aaspring/modulars/live/common/a$f;

    const-wide/16 v3, 0x7530

    invoke-virtual {p2, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->l:Z

    :cond_2
    const/16 p2, 0xa

    .line 13
    invoke-virtual {v0, p2}, Lcom/guochao/pusher/GCLivePusher;->setLiveResolution(I)V

    .line 14
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->getStreamId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/guochao/pusher/GCLivePusher;->startPushToRtc(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public e(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->k()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    const-string v1, "tokens/live/microphone/apply"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->k()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "anchorId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->k()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "liveId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "streamType"

    const-string v2, "1"

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$c;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/a;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_1
    :goto_0
    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->g(Z)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->l:Z

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m:Z

    return-void
.end method

.method public g(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->a:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->cancel()V

    .line 3
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->a:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->D()V

    :cond_1
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->w(Z)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->k2(Z)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->a2(ILcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;)V

    :cond_2
    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->e:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz v1, :cond_3

    .line 5
    :goto_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->J:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->J:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->J:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    return-object p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->j:Z

    return v0
.end method

.method public onGetPushIp(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->g:Ld9/g;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->g:Ld9/g;

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setLivePushIP(Ljava/lang/String;)V

    return-void
.end method

.method public onPushSuccess(Lcom/guochao/pusher/base/ILivePusher;)V
    .locals 3
    .param p1    # Lcom/guochao/pusher/base/ILivePusher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->l:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->g:Ld9/g;

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->l:Z

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->h:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createPushSuccessModel(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Ld9/e;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->g:Ld9/g;

    invoke-interface {p1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->g:Ld9/g;

    invoke-interface {p1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isFreeLinkMic()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->p(ILjava/lang/String;)V

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->u()V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    const-string v0, "tokens/live/microphone/audiencePushStreamSuccess"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->g:Ld9/g;

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "liveId"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 9
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->l()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audienceId"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->h:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;

    if-nez v0, :cond_3

    const-string v0, ""

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->getStreamId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "streamId"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/a;)V

    .line 10
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public p(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    const-string v1, "tokens/live/microphone/roundRobin"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "liveId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    .line 3
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "anchorId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->I(I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/a;ILjava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_1
    :goto_0
    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->a:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->cancel()V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 2

    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->k:Lcom/guochao/faceshow/aaspring/modulars/live/common/a$e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->l()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->f()V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->i()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->t(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public u()V
    .locals 2

    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->f:Lcom/guochao/faceshow/aaspring/modulars/live/common/a$f;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public v(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->g:Ld9/g;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->b:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->j:Z

    .line 7
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m:Z

    return-void
.end method

.method public w(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->j:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->l:Z

    :cond_0
    return-void
.end method

.method public x(Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->i:Landroid/widget/FrameLayout;

    return-void
.end method

.method public y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->g:Ld9/g;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->g:Ld9/g;

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isFreeLinkMic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->z()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->A()V

    :cond_2
    :goto_0
    return-void
.end method

.method public z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->a:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->a:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->g:Ld9/g;

    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->W3()V

    :cond_1
    return-void
.end method
