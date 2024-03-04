.class public Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;
.super Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;
.source "SourceFile"

# interfaces
.implements Ld9/c;
.implements Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$o;
.implements Lcom/guochao/faceshow/utils/PushUtils$OnPushCustomMessageHandler;
.implements Lcom/guochao/pusher/base/ILivePusher$PushEventListener;
.implements Lcom/guochao/player/base/ILivePlayer$PlayEventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;",
        "Ld9/c;",
        "Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$o;",
        "Lcom/guochao/faceshow/utils/PushUtils$OnPushCustomMessageHandler<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/guochao/pusher/base/ILivePusher$PushEventListener;",
        "Lcom/guochao/player/base/ILivePlayer$PlayEventListener;"
    }
.end annotation


# instance fields
.field private O5:Lcom/guochao/pusher/GCLivePusher;

.field P5:Landroid/view/animation/Animation;

.field private Q5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;

.field private R5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

.field S5:Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

.field T5:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

.field private U5:J

.field private V5:Z

.field public W5:Ljava/lang/String;

.field public X5:Ljava/lang/String;

.field private Y5:Ljava/lang/String;

.field private Z5:Ljava/lang/String;

.field public a6:Ljava/lang/String;

.field private b6:Z

.field btnInvite:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private c6:I

.field closeLL:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private d6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field dividerView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private e6:Z

.field f6:Lcom/guochao/faceshow/aaspring/base/http/callback/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;",
            ">;"
        }
    .end annotation
.end field

.field private final g6:Ljava/lang/Runnable;

.field private h6:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

.field private i6:Ljava/lang/String;

.field private j6:I

.field private k6:I

.field public l6:Z

.field mCountDownTips:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mLaunchLiveView:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mLiveBroadCastScrollDownView:Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mLiveInfoViewContainer:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mLiveShareBtn:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewLinkMicTip:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field touchView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;-><init>()V

    const-wide/16 v0, 0x1

    .line 2
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->U5:J

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->e6:Z

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->f6:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    .line 5
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->g6:Ljava/lang/Runnable;

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->j6:I

    .line 7
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->l6:Z

    return-void
.end method

.method static synthetic A4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->c6:I

    return p1
.end method

.method static synthetic B4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->h:I

    return p0
.end method

.method static synthetic C4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->Z5:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic D4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->r5(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic E4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->Z5:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic F4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->b6:Z

    return p0
.end method

.method static synthetic G4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->b6:Z

    return p1
.end method

.method static synthetic H4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->h:I

    return p0
.end method

.method static synthetic I4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->u5(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic J4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->V5:Z

    return p0
.end method

.method static synthetic K4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->V5:Z

    return p1
.end method

.method static synthetic L4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->i6:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic M4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->e5:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic N4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)Lcom/guochao/pusher/GCLivePusher;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->O5:Lcom/guochao/pusher/GCLivePusher;

    return-object p0
.end method

.method static synthetic O4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->e6:Z

    return p1
.end method

.method static synthetic P4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->m5:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic Q4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->h:I

    return p0
.end method

.method static synthetic R4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->O:J

    return-wide p1
.end method

.method static synthetic S4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->f5()V

    return-void
.end method

.method static synthetic T4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C4:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    return-object p0
.end method

.method static synthetic U4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C4:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    return-object p0
.end method

.method static synthetic V4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;

    return-object p0
.end method

.method static synthetic W4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A3(Z)V

    return-void
.end method

.method static synthetic X4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->d5(Ljava/util/List;)V

    return-void
.end method

.method static synthetic Y4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->S4:Ljava/util/List;

    return-object p0
.end method

.method private a5()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->I:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    const-string v2, "IDENTITY_TYPE_KEY"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->W5:Ljava/lang/String;

    const-string v2, "withPkUserId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->X5:Ljava/lang/String;

    const-string v2, "withPkLiveId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->a6:Ljava/lang/String;

    const-string v2, "withPkUserName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->W5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->X5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "tokens/live/invite/agree/arena"

    .line 10
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->W5:Ljava/lang/String;

    const-string v2, "agreeUserId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "streamType"

    const-string v2, "1"

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->X5:Ljava/lang/String;

    const-string v2, "agreeLiveId"

    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->I(I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_1
    return-void
.end method

.method private c5()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->d()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getPkUserInfo()Lcom/guochao/faceshow/aaspring/beans/IM_User;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getPkUserInfo()Lcom/guochao/faceshow/aaspring/beans/IM_User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getPkUserInfo()Lcom/guochao/faceshow/aaspring/beans/IM_User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getPkUserInfo()Lcom/guochao/faceshow/aaspring/beans/IM_User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getPkUserInfo()Lcom/guochao/faceshow/aaspring/beans/IM_User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getUserNickName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v0, v4, v5}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createCancelPkMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendC2CLiveMessage(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    :cond_0
    return-void
.end method

.method private d5(Ljava/util/List;)V
    .locals 18
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->isGameEnable()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object v1

    invoke-virtual {v1}, Lc9/a;->g()Ld9/k;

    move-result-object v1

    if-eqz v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getLiveGameData()Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    if-eqz v5, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;

    if-eqz v5, :cond_2

    .line 5
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getGameCode()I

    move-result v10

    if-eq v10, v7, :cond_3

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getGameCode()I

    move-result v7

    if-eq v7, v6, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getStatus()J

    move-result-wide v6

    cmp-long v10, v6, v8

    if-eqz v10, :cond_4

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getStatus()J

    move-result-wide v6

    const-wide/16 v10, 0x1

    cmp-long v12, v6, v10

    if-eqz v12, :cond_4

    goto :goto_0

    .line 7
    :cond_4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->isLuckyRemoteEnable()Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_0

    .line 8
    :cond_5
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getStatus()J

    move-result-wide v6

    cmp-long v4, v6, v8

    if-nez v4, :cond_a

    .line 9
    iget-object v4, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    const/4 v6, -0x1

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m()I

    move-result v4

    if-le v4, v6, :cond_6

    iget-object v4, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->h()I

    move-result v4

    goto :goto_1

    :cond_6
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getConfDiamondNum()I

    move-result v4

    :goto_1
    move v15, v4

    .line 10
    iget-object v4, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->k()Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->k()Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getRoundId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->k()Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getRoundId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getRoundId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    return-void

    .line 11
    :cond_7
    invoke-direct {v0, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->e5(Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;)V

    .line 12
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getFlag()I

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "LIVE_LUCKY_REMOTE_UPDATE"

    goto :goto_2

    :cond_8
    const-string v4, "LIVE_LUCKY_REMOTE_UPDATE_V_COIN"

    :goto_2
    move-object v7, v4

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getGameRoundVo()Ljava/util/List;

    move-result-object v4

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    iget-object v4, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m()I

    move-result v4

    if-le v4, v6, :cond_9

    iget-object v4, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->i()I

    move-result v4

    goto :goto_3

    :cond_9
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getConfUserNum()I

    move-result v4

    :goto_3
    move v10, v4

    .line 16
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getGameRoundVo()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int v11, v15, v4

    .line 17
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getGameInfoId()J

    move-result-wide v12

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getRoundId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getGameRoundVo()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int v4, v4, v15

    int-to-float v4, v4

    const v6, 0x3f733333    # 0.95f

    mul-float v4, v4, v6

    float-to-int v4, v4

    .line 18
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getFlag()I

    move-result v17

    move/from16 v16, v4

    .line 19
    invoke-static/range {v7 .. v17}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createLuckyUserUpdateMessage(Ljava/lang/String;Lcom/guochao/faceshow/bean/UserBean;Ljava/util/List;IIJLjava/lang/String;III)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    :cond_a
    move-object v4, v5

    goto/16 :goto_0

    :cond_b
    if-eqz v4, :cond_c

    .line 20
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getStatus()J

    move-result-wide v4

    const-wide/16 v10, 0x2

    cmp-long v2, v4, v10

    if-ltz v2, :cond_11

    :cond_c
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    .line 21
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    .line 22
    invoke-virtual {v10}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameCode()I

    move-result v11

    if-eq v11, v7, :cond_e

    invoke-virtual {v10}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameCode()I

    move-result v11

    if-ne v11, v6, :cond_d

    .line 23
    :cond_e
    invoke-virtual {v10}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameInfoId()J

    move-result-wide v4

    .line 24
    invoke-virtual {v10}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getFlag()I

    move-result v2

    move v15, v2

    move-wide v12, v4

    goto :goto_4

    :cond_f
    move-wide v12, v4

    const/4 v15, 0x0

    :goto_4
    cmp-long v1, v12, v8

    if-gez v1, :cond_10

    return-void

    :cond_10
    const/4 v11, 0x0

    const/4 v14, 0x0

    const-string v10, "LIVE_LUCKY_REMOTE_CANCEL"

    .line 25
    invoke-static/range {v10 .. v15}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createLuckyCancelMessage(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;I)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v1

    .line 26
    invoke-virtual {v0, v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    .line 27
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-eqz v1, :cond_11

    .line 28
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->n0()V

    :cond_11
    return-void
.end method

.method private e5(Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getGameRoundVo()Ljava/util/List;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->n()Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m()I

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->p0(ZLjava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private f5()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->V5:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->V5:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->W5:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->a6:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private hideKeyboard(Landroid/os/IBinder;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private i5()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->pusher()Lcom/guochao/pusher/GCLivePusher;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->O5:Lcom/guochao/pusher/GCLivePusher;

    .line 2
    invoke-virtual {v0}, Lcom/guochao/pusher/GCLivePusher;->getBeautyManager()Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/pusher/base/ILivePusher$BeautyManager;->reInit()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->O5:Lcom/guochao/pusher/GCLivePusher;

    invoke-virtual {v0, p0}, Lcom/guochao/pusher/GCLivePusher;->addPushEventListener(Lcom/guochao/pusher/base/ILivePusher$PushEventListener;)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->player()Lcom/guochao/player/GCLivePlayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/player/GCLivePlayer;->addPlayEventListener(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->O5:Lcom/guochao/pusher/GCLivePusher;

    invoke-virtual {v0}, Lcom/guochao/pusher/GCLivePusher;->getBeautyManager()Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->setBeauty(ILcom/guochao/pusher/base/ILivePusher$BeautyManager;)V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->setMirror(Z)V

    return-void
.end method

.method private j5(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Landroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v2

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    int-to-float v2, v2

    cmpl-float v2, v5, v2

    if-lez v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gez p1, :cond_0

    .line 7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float p2, v4

    cmpg-float p1, p1, p2

    if-ltz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private synthetic l5(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->k6:I

    return-void
.end method

.method public static synthetic m4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->x5(IZ)V

    return-void
.end method

.method public static synthetic n4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->l5(I)V

    return-void
.end method

.method static synthetic o4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->N:J

    return-wide p1
.end method

.method static synthetic p4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->Y5:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic q4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->S4:Ljava/util/List;

    return-object p0
.end method

.method static synthetic r4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->Y5:Ljava/lang/String;

    return-object p1
.end method

.method private r5(Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->W5:Ljava/lang/String;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->a6:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createPkReplyMessageModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$f;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendC2CLiveMessage(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    return-void
.end method

.method static synthetic s4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->R5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    return-object p0
.end method

.method static synthetic t4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->U5:J

    return-wide v0
.end method

.method static synthetic u4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)J
    .locals 4

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->U5:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->U5:J

    return-wide v0
.end method

.method private u5(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->v2()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->w2()V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->u2()V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->c6:I

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setAdmitDefeatNum(I)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->d6:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setIntroductionToPlay(Ljava/util/List;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setPkWaiting(Z)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setInPkPunishmentTime(Z)V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setApplyPkState(Z)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->setPkState(Z)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->setPkLoadingState(Z)V

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u540c\u610fPK\u6309\u94ae\u9080\u8bf7\u4e2d"

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->refreshPkBtn()V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->W5:Ljava/lang/String;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->a6:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->q5(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->s(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V

    .line 15
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->v()V

    .line 16
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->A(Z)V

    return-void
.end method

.method static synthetic v4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->x3()V

    return-void
.end method

.method private v5(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getApplyPkState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->e()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getPkUserInfo()Lcom/guochao/faceshow/aaspring/beans/IM_User;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getPkUserInfo()Lcom/guochao/faceshow/aaspring/beans/IM_User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->Y5:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getPkUserInfo()Lcom/guochao/faceshow/aaspring/beans/IM_User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->Z5:Ljava/lang/String;

    :cond_1
    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->Y5:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->Y5:Ljava/lang/String;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->Z5:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v4

    invoke-interface {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkPunishmentTime()Z

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createLeavePkMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendC2CLiveMessage(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    goto :goto_0

    :cond_2
    const-string p1, "tokens/live/pk/downPkLive"

    .line 8
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->I(I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$g;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic w4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->Q5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;

    return-object p0
.end method

.method static synthetic x4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->h6:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    return-object p1
.end method

.method private x5(IZ)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string v0, "live_voice_room_config"

    .line 1
    invoke-static {v0}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeature(Ljava/lang/String;)Lcom/guochao/lib_core/feature/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/lib_core/feature/Feature;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->R5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->setCurrentIndex(IZ)V

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p2, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setMultiLiveRoom(Z)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->X4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;

    if-ne p1, v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->w(Z)V

    return-void
.end method

.method static synthetic y4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->L4:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic z4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->d6:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public B3()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B3()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A2()Lcom/guochao/pusher/GCLivePusher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->i6:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkPunishmentTime()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/guochao/pusher/GCLivePusher;->getBeautyManager()Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->i6:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/guochao/pusher/base/ILivePusher$BeautyManager;->setMotionTmpl(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->L4:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/guochao/pusher/GCLivePusher;->getBeautyManager()Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->L4:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/guochao/pusher/base/ILivePusher$BeautyManager;->setMotionTmpl(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Lcom/guochao/pusher/GCLivePusher;->getBeautyManager()Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/guochao/pusher/base/ILivePusher$BeautyManager;->setMotionTmpl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public C()V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;-><init>()V

    const/4 v1, 0x5

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->setType(I)V

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->setOnItemClickListener(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog$c;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "beauty"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public D1(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->h:I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->l6:Z

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->R5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isPersons()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->setIsPrivateOrMultiLiving(Z)V

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 6
    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->setPrivateRoom(Z)V

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->X3()V

    const/4 v0, 0x3

    .line 8
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->mCountDownTips:Landroid/widget/TextView;

    invoke-static {v0, v3, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->j(IILandroid/widget/TextView;)V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->k2(Landroid/view/View;)V

    if-ne p1, v1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->btnInvite:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :cond_4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result p1

    const/4 v0, 0x5

    const/16 v1, 0x12c

    if-eqz p1, :cond_5

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->O5:Lcom/guochao/pusher/GCLivePusher;

    const-string v2, "leave_bj02.png"

    invoke-virtual {p1, v2, v1, v0}, Lcom/guochao/pusher/GCLivePusher;->setPauseImage(Ljava/lang/String;II)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->O5:Lcom/guochao/pusher/GCLivePusher;

    invoke-virtual {p1, p0}, Lcom/guochao/pusher/GCLivePusher;->setSoundLevelListener(Lcom/guochao/pusher/base/ILivePusher$PushSoundLevelListener;)V

    goto :goto_1

    .line 14
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->O5:Lcom/guochao/pusher/GCLivePusher;

    const-string v2, "leave_bj01.png"

    invoke-virtual {p1, v2, v1, v0}, Lcom/guochao/pusher/GCLivePusher;->setPauseImage(Ljava/lang/String;II)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->O5:Lcom/guochao/pusher/GCLivePusher;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/pusher/GCLivePusher;->setSoundLevelListener(Lcom/guochao/pusher/base/ILivePusher$PushSoundLevelListener;)V

    .line 16
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0674

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;

    .line 18
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->x()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 20
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->giftAndAdsView:Landroid/view/View;

    const/16 v0, 0x8

    if-eqz p1, :cond_7

    .line 21
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 22
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkMode()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mAdsAndActivityView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeLay:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 25
    :cond_7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 26
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mMaskRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 27
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveViewMaskContainer:Landroid/view/View;

    if-eqz p1, :cond_9

    .line 28
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 29
    :cond_8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mMaskRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 30
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mMaskVideoRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 31
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mTextViewFaceCastId:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public G0(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->N3(Ljava/lang/String;ZI)V

    return-void
.end method

.method protected M3(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->setUserInfoData(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;ZZ)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->M3(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;Z)V

    :cond_1
    return-void
.end method

.method public V0(I)V
    .locals 1

    const-string p1, "LiveRoom\uff1a"

    const-string v0, "\u79bb\u5f00\u8d85\u8fc760s"

    .line 1
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->w5()V

    return-void
.end method

.method public Y()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRequestLink:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->R5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->getLastMicStatus()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setLinkMicEnabled(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setRequestLinkMicEnabled(Z)V

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->R5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    if-eqz v2, :cond_2

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRequestLink:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :cond_2
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->t3(Z)V

    .line 9
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getChatGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onEnterRoom(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B:Landroid/os/Handler;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->g6:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->R5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->getLiveRoomModel()Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->R5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->getLiveRoomModel()Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;->getFcoin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->setFcoinCound(Ljava/lang/String;)V

    .line 13
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->t0()V

    .line 15
    :cond_4
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A3(Z)V

    return-void
.end method

.method public Z4(Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->E4:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->P1(Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->u5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserNickName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LittleLinkMicInfoFragment;->P1(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LittleLinkMicInfoFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->M:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LittleLinkMicInfoFragment;

    const p1, 0x7f0a0670

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->u5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->u3(ILandroidx/fragment/app/Fragment;)V

    const p1, 0x7f0a0671

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->M:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LittleLinkMicInfoFragment;

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->u3(ILandroidx/fragment/app/Fragment;)V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->t3(Z)V

    return-void
.end method

.method public b5(Lcom/guochao/faceshow/aaspring/beans/IM_User;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setPkUserInfo(Lcom/guochao/faceshow/aaspring/beans/IM_User;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setApplyPkState(Z)V

    .line 3
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->e6:Z

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, "\u53d1\u9001\u9080\u8bf7PK\u6309\u94ae\u9080\u8bf7\u4e2d"

    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->refreshPkBtn()V

    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->V1:Z

    .line 8
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->setIsPKPrepare(Z)V

    const-string v0, "tokens/live/invite/launch/arena"

    .line 9
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "liveId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "streamType"

    const-string v2, "1"

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "inviteUserId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$i;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;Lcom/guochao/faceshow/aaspring/beans/IM_User;)V

    .line 12
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p7}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/a;->g()Lcom/guochao/faceshow/aaspring/manager/a;

    move-result-object p2

    new-instance p3, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$h;

    invoke-direct {p3, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;I)V

    const/16 p1, 0xc

    invoke-virtual {p2, p0, p3, p1}, Lcom/guochao/faceshow/aaspring/manager/a;->w(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;I)V

    :cond_0
    return-void
.end method

.method public c0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->c0(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tokens/live/microphone/leave"

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "liveId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "streamId"

    .line 3
    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "audienceId"

    .line 4
    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "anchorId"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 v0, 0x3

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "quitType"

    invoke-virtual {p1, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 7
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->I(I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$o;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$o;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method protected c3(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->c3(Z)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A2()Lcom/guochao/pusher/GCLivePusher;

    move-result-object p1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->j6:I

    invoke-virtual {p1, v0}, Lcom/guochao/pusher/GCLivePusher;->setLiveResolution(I)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->x3()V

    :goto_0
    return-void
.end method

.method public e1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->R5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    const-string v1, "more"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isPersons()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 2
    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->j6:I

    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->Z1(II)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->h6:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->j6:I

    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->Z1(II)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->h6:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->h6:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$u;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$u;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->setOnDismissListener(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$g;)V

    return-void
.end method

.method public g5(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->j5(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->hideKeyboard(Landroid/os/IBinder;)V

    :cond_2
    return-void
.end method

.method public getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;
    .locals 1

    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01b8

    return v0
.end method

.method public h5()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->x:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->P5:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->mLiveInfoViewContainer:Landroid/view/View;

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    return-void

    .line 5
    :cond_3
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->I:Z

    if-eqz v0, :cond_4

    return-void

    .line 6
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f01004a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->P5:Landroid/view/animation/Animation;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->mLiveInfoViewContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->P5:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->P5:Landroid/view/animation/Animation;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$t;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$t;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->mLiveInfoViewContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->P5:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

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
    const-string v0, "104"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/guochao/faceshow/utils/PushUtils;->registerCustomMessageHandler(Lcom/guochao/faceshow/utils/PushUtils$OnPushCustomMessageHandler;[Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->H4:Z

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->btnInvite:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->setPkState(Z)V

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->i5()V

    .line 9
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;-><init>(Lcom/guochao/faceshow/bean/UserBean;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    .line 10
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->mLaunchLiveView:Landroid/view/ViewGroup;

    invoke-direct {v1, v3, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;-><init>(Landroid/view/ViewGroup;Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->R5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    .line 11
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->O5:Lcom/guochao/pusher/GCLivePusher;

    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->setPusher(Lcom/guochao/pusher/GCLivePusher;)V

    .line 12
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->R5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->setLiveRoomModel(Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;)V

    .line 13
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 14
    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->setLiving(Z)V

    .line 15
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a1:Z

    .line 16
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->mLiveBroadCastScrollDownView:Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$q;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$q;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView;->setOnScrollListener(Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView$a;)V

    .line 17
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->touchView:Landroid/view/View;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$r;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$r;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 18
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;

    const v0, 0x7f0a015d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;-><init>(Landroid/view/ViewGroup;)V

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->Q5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;

    .line 19
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->setOnSwitchListener(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder$a;)V

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->R5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->setOnResultListener(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$o;)V

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->R5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->reloadNet()V

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->R5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->Q5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->setBottomHolder(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;)V

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->mTextViewLinkMicTip:Landroid/widget/TextView;

    const p2, 0x7f1204c1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "withPkUserId"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->W5:Ljava/lang/String;

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "withPkLiveId"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->X5:Ljava/lang/String;

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "withPkUserName"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->a6:Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->a5()V

    .line 29
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->W5:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 30
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->R5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->startLiveWithPk()V

    :cond_2
    return-void
.end method

.method public j0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f1304b9

    .line 4
    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;-><init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->setonMuteListener(Lcom/guochao/faceshow/aaspring/modulars/live/common/n$h;)V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 7
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public k5()Z
    .locals 1

    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object v0

    invoke-virtual {v0}, Lc9/a;->g()Ld9/k;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m()I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public l4(ZZ)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->l4(ZZ)V

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->m()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->m()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->m()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->m()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createPkMessageModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getPkUserInfo()Lcom/guochao/faceshow/aaspring/beans/IM_User;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u5bf9\u65b9\u4e3b\u64ad\u63a5\u53d7\u4e86PK\uff0c\u5f00\u59cb\u7ed9\u7fa4\u7ec4\u89c2\u4f17\u4e0b\u53d1\u5f00\u59cbPK\u6d88\u606f"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getPkUserInfo()Lcom/guochao/faceshow/aaspring/beans/IM_User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getPkUserInfo()Lcom/guochao/faceshow/aaspring/beans/IM_User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getNick_name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createPkMessageModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A2()Lcom/guochao/pusher/GCLivePusher;

    move-result-object p1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->j6:I

    invoke-virtual {p1, v0}, Lcom/guochao/pusher/GCLivePusher;->setLiveResolution(I)V

    .line 11
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->i6:Ljava/lang/String;

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->e5:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->O5:Lcom/guochao/pusher/GCLivePusher;

    invoke-virtual {p1}, Lcom/guochao/pusher/GCLivePusher;->getBeautyManager()Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->e5:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/guochao/pusher/base/ILivePusher$BeautyManager;->setMotionTmpl(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->O5:Lcom/guochao/pusher/GCLivePusher;

    invoke-virtual {p1}, Lcom/guochao/pusher/GCLivePusher;->getBeautyManager()Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->L4:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/guochao/pusher/base/ILivePusher$BeautyManager;->setMotionTmpl(Ljava/lang/String;)V

    .line 15
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->x3()V

    return-void
.end method

.method public m5(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "withPkUserId"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->W5:Ljava/lang/String;

    const-string v0, "withPkLiveId"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->X5:Ljava/lang/String;

    const-string v0, "withPkUserName"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->a6:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->a5()V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->a6:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->W5:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->mLaunchLiveView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->R5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->startLiveWithPk()V

    :cond_0
    return-void
.end method

.method public n5(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$m;

    invoke-direct {p2, p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$m;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;Ljava/util/Map;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public o5(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->L4:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p2

    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkMode()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p2

    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkPunishmentTime()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->o()I

    move-result p2

    if-nez p2, :cond_3

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->O5:Lcom/guochao/pusher/GCLivePusher;

    invoke-virtual {p2}, Lcom/guochao/pusher/GCLivePusher;->getBeautyManager()Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/guochao/pusher/base/ILivePusher$BeautyManager;->setMotionTmpl(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->O5:Lcom/guochao/pusher/GCLivePusher;

    invoke-virtual {p2}, Lcom/guochao/pusher/GCLivePusher;->getBeautyManager()Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/guochao/pusher/base/ILivePusher$BeautyManager;->setMotionTmpl(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->e5:Ljava/lang/String;

    if-eqz p2, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->O5:Lcom/guochao/pusher/GCLivePusher;

    invoke-virtual {p2}, Lcom/guochao/pusher/GCLivePusher;->getBeautyManager()Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/guochao/pusher/base/ILivePusher$BeautyManager;->setMotionTmpl(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->R5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->I:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->x:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->mLiveInfoViewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->h5()V

    const/4 v0, 0x1

    return v0

    .line 4
    :cond_1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onBack()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a018b

    if-eq p1, v0, :cond_4

    const v0, 0x7f0a0212

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a0612

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->R5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->dismissPopupwindow()V

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->C()V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->s()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onCloseEvent(Ljava/lang/Object;)V
    .locals 9
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLiving()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    instance-of v0, p1, Ly7/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 3
    check-cast p1, Ly7/b;

    .line 4
    iget-boolean v0, p1, Ly7/b;->f:Z

    const-string v2, "close "

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ly7/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->onLiveFinish(ILjava/lang/String;)V

    return-void

    :cond_1
    const-wide/16 v3, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveStartTimestamp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v5, v3

    .line 8
    :goto_0
    iget-object v0, p1, Ly7/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v7, p1, Ly7/b;->d:J

    cmp-long v0, v7, v5

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p1, Ly7/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x2

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ly7/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->onLiveFinish(ILjava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const v0, 0x7f12005d

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    return-void

    .line 12
    :cond_2
    iget-object v0, p1, Ly7/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 13
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5173\u64ad\u63a8\u9001\uff0ctip = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Ly7/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "LiveRoom\uff1a"

    invoke-static {v7, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-wide v7, p1, Ly7/b;->d:J

    cmp-long v0, v7, v3

    if-eqz v0, :cond_4

    cmp-long v0, v7, v5

    if-eqz v0, :cond_4

    return-void

    .line 15
    :cond_4
    iget-object v0, p1, Ly7/b;->c:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->N3(Ljava/lang/String;ZI)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->O5:Lcom/guochao/pusher/GCLivePusher;

    if-eqz v0, :cond_7

    .line 17
    invoke-virtual {v0}, Lcom/guochao/pusher/GCLivePusher;->stopAll()V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->R5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isErrorPush:Z

    .line 19
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, -0x3

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ly7/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->onLiveFinish(ILjava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_5
    instance-of v0, p1, Ly7/m;

    if-eqz v0, :cond_7

    .line 22
    check-cast p1, Ly7/m;

    .line 23
    invoke-virtual {p1}, Ly7/m;->a()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    .line 25
    :cond_6
    :try_start_1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 26
    invoke-virtual {p1}, Ly7/m;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ly7/m;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->unescapeJava(Ljava/io/Writer;Ljava/lang/String;)V

    .line 28
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Ly7/m;->c()J

    move-result-wide v3

    .line 30
    const-class p1, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    new-array v0, v1, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    const-class v5, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;

    aput-object v5, v0, v1

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Lcom/google/gson/internal/$Gson$Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    .line 31
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->K5:Lcom/google/gson/Gson;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    .line 32
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getMatchList()Ljava/util/List;

    move-result-object p1

    invoke-static {v3, v4, p1}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createMixedFlowModel(JLjava/util/List;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v0, "LiveRoom"

    const-string v1, "onCloseEvent: "

    .line 33
    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public synthetic onConnectToServer(Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/player/base/a;->a(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroy()V

    const-string v0, "104"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/guochao/faceshow/utils/PushUtils;->unregisterCustomMessageHandler(Lcom/guochao/faceshow/utils/PushUtils$OnPushCustomMessageHandler;[Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onDrawFirstFrame(Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/player/base/a;->b(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V

    return-void
.end method

.method public onEndPushEvent(Ly7/d;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;->freezeLiveRoom(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V

    :cond_0
    return-void
.end method

.method public onGetPushIp(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setLivePushIP(Ljava/lang/String;)V

    return-void
.end method

.method public onLinkMicStatusChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onLinkMicStatusChanged(Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->setPkBtnVisibility(Z)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRequestLink:Landroid/view/View;

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isFreeLinkMic()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRequestLink:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRequestLink:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->i4()V

    :cond_4
    return-void
.end method

.method public onLiveFinish(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onLiveFinish(ILjava/lang/String;)V

    .line 2
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->I:Z

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->O5:Lcom/guochao/pusher/GCLivePusher;

    invoke-virtual {p1}, Lcom/guochao/pusher/GCLivePusher;->stopAll()V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->f5()V

    const/4 p1, 0x1

    .line 5
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->v5(Z)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->R5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->onLiveFinish()V

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->v2()V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->u2()V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->w2()V

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p()I

    move-result p2

    if-ne p2, p1, :cond_2

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->g()V

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p2

    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getApplyPkState()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 14
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->c5()V

    :cond_3
    const/4 p2, 0x0

    const-string v0, "LIVE_CLOSE"

    .line 15
    invoke-virtual {p0, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessageCmd(Ljava/lang/String;Ld9/e$a;)V

    const/4 p2, 0x0

    .line 16
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->s5(Z)V

    .line 17
    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->setLiving(Z)V

    const-string v0, ""

    .line 18
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->setLocalLiving(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->x:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;

    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;->R1()V

    .line 21
    :cond_4
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->T5:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    if-eqz v0, :cond_6

    .line 23
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->cancel()V

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->T5:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->p()Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->T5:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->p()Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->cancel()V

    goto :goto_0

    .line 26
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->S5:Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    if-eqz v0, :cond_6

    .line 27
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->cancel()V

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->S5:Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->p()Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 29
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->S5:Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->p()Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->cancel()V

    .line 30
    :cond_6
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->j()V

    .line 31
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->f()V

    .line 32
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l2()V

    .line 33
    invoke-virtual {p0, p1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->d(IZ)V

    .line 34
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_7

    .line 35
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->onLiveFinished()V

    .line 36
    :cond_7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->R5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    if-eqz v0, :cond_8

    .line 37
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->release()V

    .line 38
    :cond_8
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->I:Z

    .line 39
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onNetworkResume(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onNetworkResume(I)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/i;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->R5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->reloadNet()V

    .line 5
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->T5:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->L()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->S5:Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->L()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_2
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->R5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->onPause()V

    :cond_0
    return-void
.end method

.method public synthetic onPlayEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/guochao/player/base/a;->c(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic onPlayFirstAudioFrame(Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/player/base/a;->d(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V

    return-void
.end method

.method public onPlayerVolumeUpdate(Ljava/lang/String;F)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x41700000    # 15.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Z4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveVideoAudioMaskAdapter;

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    .line 6
    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getStreamId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7
    instance-of p1, v2, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    if-eqz p1, :cond_2

    .line 8
    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    .line 9
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getMatchType()Ljava/lang/String;

    move-result-object p1

    const-string v2, "1"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    float-to-double p1, p2

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createVolumeModel(DLjava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p1

    const/4 p2, 0x0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Z4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveVideoAudioMaskAdapter;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/VolumeMessage;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->F(Lcom/guochao/faceshow/aaspring/modulars/live/model/VolumeMessage;)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public synthetic onPublishStreamInfo(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/player/base/a;->f(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onPushCustomMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->n5(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public onPushSuccess(Lcom/guochao/pusher/base/ILivePusher;)V
    .locals 2
    .param p1    # Lcom/guochao/pusher/base/ILivePusher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->V2:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->R5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->onPushSuccess()V

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->R3()V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->V2:Z

    const-string p1, " tokens/live/newLive/monitoringStreamingSuccess"

    .line 6
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getStreamId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "streamId"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveStartTimestamp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startTime"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->I(I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$n;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$n;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public onQuitLiveRoom(ZZ)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->onQuitLiveRoom(ZZ)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B:Landroid/os/Handler;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->g6:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->O5:Lcom/guochao/pusher/GCLivePusher;

    invoke-virtual {p1}, Lcom/guochao/pusher/GCLivePusher;->reset()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onResume()V

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/k;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$p;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$p;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;->unfreezeLiveRoom(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->R5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->onSaveInstantState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public synthetic onVideoLoading(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/player/base/a;->g(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public synthetic onVideoPlaying(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/player/base/a;->h(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(Ljava/lang/String;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/player/base/a;->i(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;II)V

    return-void
.end method

.method public p5(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;)V
    .locals 7
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getLivePkState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->o:J

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->e6:Z

    if-nez v0, :cond_4

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->p3()V

    goto/16 :goto_1

    .line 5
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    iget v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->f:I

    if-eq v0, v1, :cond_4

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->q:J

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_4

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->p3()V

    goto/16 :goto_1

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getLivePkState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getLivePkState()Ljava/lang/String;

    move-result-object v0

    const-string v3, "4"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getLivePkState()Ljava/lang/String;

    move-result-object v0

    const-string v3, "5"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getLivePkState()Ljava/lang/String;

    move-result-object v0

    const-string v3, "2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    iget-wide v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->n:J

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-gez p1, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setInPkMode(Z)V

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setApplyPkState(Z)V

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setPkWaiting(Z)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->setPkState(Z)V

    goto :goto_1

    .line 14
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getApplyPkState()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    iget-wide v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->p:J

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    iget-wide v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->m:J

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-gez p1, :cond_4

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkMode()Z

    move-result p1

    if-nez p1, :cond_4

    .line 16
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setApplyPkState(Z)V

    .line 17
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setInPkMode(Z)V

    .line 18
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setInPkPunishmentTime(Z)V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->refreshPkBtn()V

    :cond_4
    :goto_1
    return-void
.end method

.method public q5(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createPkMessageModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->onReceiveLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLiving()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->k6:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;II)Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->setOnDismissListener(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$g;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public s5(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->x:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->mLiveInfoViewContainer:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->P5:Landroid/view/animation/Animation;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-nez p1, :cond_2

    .line 4
    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->mLiveInfoViewContainer:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void

    .line 6
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    if-nez p1, :cond_5

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->mLiveInfoViewContainer:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 8
    :cond_5
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const v0, 0x7f010049

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->P5:Landroid/view/animation/Animation;

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->mLiveInfoViewContainer:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->P5:Landroid/view/animation/Animation;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->x:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;->P1()V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->P5:Landroid/view/animation/Animation;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$s;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$s;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->mLiveInfoViewContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->P5:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setFreeLinkMic(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setFreeLinkMic(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->canRequestLinkMic()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->onLinkMicStatusChanged(Z)V

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;-><init>()V

    .line 4
    iput-boolean p1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    .line 5
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string v1, "LIVE_LINKMIC_MICMODE"

    invoke-direct {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    return-void
.end method

.method public setLinkMicEnabled(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "tokens/live/newLive/updateLiveInfo"

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "liveId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    xor-int/lit8 v1, p1, 0x1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isLockMicrophone"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->I(I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$c;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;Z)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_1
    :goto_0
    return-void
.end method

.method public setLiveResolution(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->j6:I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->O5:Lcom/guochao/pusher/GCLivePusher;

    invoke-virtual {v0, p1}, Lcom/guochao/pusher/GCLivePusher;->setLiveResolution(I)V

    return-void
.end method

.method public setMirror(Z)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->O5:Lcom/guochao/pusher/GCLivePusher;

    invoke-virtual {v0, p1}, Lcom/guochao/pusher/GCLivePusher;->setMirror(Z)V

    return-void
.end method

.method public shareRoom(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .annotation runtime Lbutterknife/Optional;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getShareUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 6
    :goto_0
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;-><init>()V

    .line 7
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setShareType(I)V

    if-eqz p1, :cond_3

    const v2, 0x7f1204ea

    goto :goto_1

    :cond_3
    const v2, 0x7f1204eb

    .line 8
    :goto_1
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setContent(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveCoverImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setImgUrl(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getShareUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setShortUrl(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    const p1, 0x7f1204ec

    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getUserNickName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    const p1, 0x7f1204ed

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getUserNickName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setTitle(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->g2(Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    move-result-object p1

    .line 13
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->setOnSharePlatformClickListener(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$m;)V

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "share"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public switchCamera()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->O5:Lcom/guochao/pusher/GCLivePusher;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/guochao/pusher/GCLivePusher;->switchCamera()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->R5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    iget-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isFontCamera:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isFontCamera:Z

    .line 4
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->i:[Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    const v4, 0x7f1205d6

    .line 5
    iget v5, v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->c:I

    if-ne v4, v5, :cond_1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->R5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    iget-boolean v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isFontCamera:Z

    iput-boolean v0, v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->d:Z

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->h6:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->h6:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->h6:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public t5()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object v1

    invoke-virtual {v1}, Lc9/a;->g()Ld9/k;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object v1

    invoke-virtual {v1}, Lc9/a;->g()Ld9/k;

    move-result-object v1

    invoke-interface {v1}, Ld9/k;->p0()Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getFlag()I

    move-result v0

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m()I

    move-result v1

    if-ltz v1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->j()I

    move-result v0

    .line 7
    :cond_2
    :goto_0
    new-instance v1, Lcom/guochao/faceshow/views/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$j;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V

    invoke-direct {v1, v2, v3}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    const v0, 0x7f1205af

    goto :goto_1

    :cond_3
    const v0, 0x7f1205ae

    :goto_1
    invoke-virtual {v2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/views/e;->b(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f1205b0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->k(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->show()V

    :cond_4
    :goto_2
    return-void
.end method

.method public u1(JI)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->u1(JI)V

    return-void
.end method

.method public w0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p4, p3}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createAdminModel(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p1

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onReceiveLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    return-void
.end method

.method public w3()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->w3()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->f5()V

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->O5:Lcom/guochao/pusher/GCLivePusher;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/guochao/pusher/GCLivePusher;->stopAll()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->R5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->release()V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->mCountDownTips:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->O5:Lcom/guochao/pusher/GCLivePusher;

    invoke-virtual {v0, p0}, Lcom/guochao/pusher/GCLivePusher;->removePushEventListener(Lcom/guochao/pusher/base/ILivePusher$PushEventListener;)V

    .line 13
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->player()Lcom/guochao/player/GCLivePlayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/player/GCLivePlayer;->removePlayEventListener(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;)V

    return-void
.end method

.method public w5()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->O5:Lcom/guochao/pusher/GCLivePusher;

    invoke-virtual {v0}, Lcom/guochao/pusher/GCLivePusher;->stopAll()V

    const/4 v0, 0x0

    const-string v1, "closed"

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->onLiveFinish(ILjava/lang/String;)V

    return-void
.end method
