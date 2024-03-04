.class public Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

.field private b:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

.field bgBlurImage:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field blurImage:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private c:Landroid/os/Handler;

.field connectionStatus:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field hangUpIcon:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userCenterAgeLevel:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;)Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    return-object p0
.end method

.method public static Q1(Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;)Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;
    .locals 4

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v2

    const-string v3, "userData"

    invoke-virtual {v2, v3, p0}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private V1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 6
    :cond_0
    invoke-static {}, Lw9/a;->a()Lw9/a;

    move-result-object v0

    invoke-virtual {v0}, Lw9/a;->b()V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->U1()V

    return-void
.end method


# virtual methods
.method public R1(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->l0()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->s(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;Z)V

    return-void
.end method

.method public S1(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "audio"

    .line 1
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    const/4 v2, 0x3

    .line 3
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 4
    invoke-virtual {p1, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 5
    invoke-static {}, Lw9/a;->a()Lw9/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lw9/a;->c(Landroid/content/Context;)V

    return-void
.end method

.method public T1()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->V1()V

    return-void
.end method

.method public U1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public W1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->connectionStatus:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->V1()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->connectionStatus:Landroid/widget/TextView;

    const v1, 0x7f12090f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->c:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d015e

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->p0()Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->isFromLiveRoom()Z

    move-result p1

    if-nez p1, :cond_2

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->S1(Landroid/app/Activity;)V

    .line 5
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    const-string v0, "userData"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->a:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->p0()Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    .line 8
    :cond_3
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->userCenterAgeLevel:Landroid/view/View;

    invoke-direct {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;-><init>(Landroid/view/View;)V

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->b()V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->a:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->d(Lp7/i;)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->userAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->a:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->userName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->a:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->a:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://mp4.facecast.xyz/storage1/M02/7D/DF/aPODCl-P9NWAO6qXAABpdbMquME412.png"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->a:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    .line 14
    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://mp4.gchao.com/group2/M00/00/DB/a6cmOF-JmV-ABG-AAABpdbMquME365.png"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->a:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getAvatarUrl()Ljava/lang/String;

    move-result-object p1

    .line 16
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "#90000000"

    if-eqz v0, :cond_5

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->bgBlurImage:Landroid/view/View;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->blurImage:Landroid/widget/ImageView;

    const v2, 0x7f0f05eb

    new-instance v3, Ljc/f;

    const/16 v4, 0x19

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v1}, Ljc/f;-><init>(III)V

    invoke-static {v0, p1, v2, v3}, Lhc/a;->i(Landroid/widget/ImageView;Ljava/lang/Object;ILe0/h;)V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->connectionStatus:Landroid/widget/TextView;

    const v0, 0x7f120912

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array p1, v5, [I

    .line 20
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 22
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 23
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, 0x1

    .line 24
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/16 v0, 0x3c

    .line 25
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 26
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 27
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->hangUpIcon:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 28
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->p0()Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->isFromLiveRoom()Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    :cond_6
    const-string p1, "tokens/appoint/startAppoint"

    .line 30
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    const-string v1, "pushParams"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "userId"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->a:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accountId"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/16 v0, 0xbb9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "matchType"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->I(I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;)V

    .line 31
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_7
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x6
    .end array-data
.end method

.method protected loadData()V
    .locals 0

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a04bd

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 4
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->k(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->o()V

    :goto_0
    return-void
.end method
