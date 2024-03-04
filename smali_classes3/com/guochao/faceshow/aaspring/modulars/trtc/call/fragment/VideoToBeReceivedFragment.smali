.class public Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

.field private b:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

.field private c:Landroid/os/Handler;

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

.field userInfo:Landroid/view/View;
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

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;)Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    return-object p0
.end method

.method public static Q1(Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;)Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;
    .locals 4

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;-><init>()V

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

.method public S1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->userInfo:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->W1()V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->c:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public T1(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lw9/a;->a()Lw9/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lw9/a;->c(Landroid/content/Context;)V

    return-void
.end method

.method public U1()V
    .locals 0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->W1()V

    return-void
.end method

.method public V1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public W1()V
    .locals 1

    invoke-static {}, Lw9/a;->a()Lw9/a;

    move-result-object v0

    invoke-virtual {v0}, Lw9/a;->b()V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01e6

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->p0()Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->isFromLiveRoom()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->T1(Landroid/content/Context;)V

    :cond_2
    const v0, 0x7f0a0ae3

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    const-string v0, "userData"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->a:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->p0()Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    .line 9
    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->p()Lcom/tencent/trtc/TRTCCloud;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->o0()Lcom/tencent/rtmp/ui/TXCloudVideoView;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/trtc/TRTCCloud;->startLocalPreview(ZLcom/tencent/rtmp/ui/TXCloudVideoView;)V

    .line 10
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->userCenterAgeLevel:Landroid/view/View;

    invoke-direct {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;-><init>(Landroid/view/View;)V

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->b()V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->a:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->d(Lp7/i;)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->userAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->a:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->userName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->a:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->hangUpIcon:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 16
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->p0()Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->isFromLiveRoom()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    const-string p1, "tokens/appoint/startAppoint"

    .line 18
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->a:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accountId"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/16 v0, 0xbba

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

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;)V

    .line 19
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_5
    :goto_0
    return-void
.end method

.method protected loadData()V
    .locals 0

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a011d

    if-eq p1, v0, :cond_2

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->k(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->o()V

    goto :goto_0

    .line 6
    :cond_2
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;-><init>()V

    .line 7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    const-string v2, "isTrtc"

    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v0, 0x5

    .line 10
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->setType(I)V

    .line 11
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->setOnItemClickListener(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog$c;)V

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "beauty"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
