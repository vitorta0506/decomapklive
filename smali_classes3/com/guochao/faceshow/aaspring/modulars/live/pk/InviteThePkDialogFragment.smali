.class public Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

.field avatarUser:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

.field btnHangup:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private c:Lcom/opensource/svgaplayer/SVGAParser;

.field pkRandomGif:Lcom/opensource/svgaplayer/SVGAImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvTitleName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;->Q1()V

    return-void
.end method

.method private Q1()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;->R1()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setApplyPkState(Z)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, "cancelPk"

    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setInPkMode(Z)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->setPkState(Z)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u53d6\u6d88PK \u6309\u94ae\u6062\u590d"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->refreshPkBtn()V

    .line 9
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/ApplyPkCountdown;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/ApplyPkCountdown;-><init>()V

    const-wide/16 v1, -0x64

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/beans/ApplyPkCountdown;->setTime(J)V

    .line 11
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    .line 13
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->d()V

    return-void
.end method

.method private R1()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getPkUserInfo()Lcom/guochao/faceshow/aaspring/beans/IM_User;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getPkUserInfo()Lcom/guochao/faceshow/aaspring/beans/IM_User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getPkUserInfo()Lcom/guochao/faceshow/aaspring/beans/IM_User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getPkUserInfo()Lcom/guochao/faceshow/aaspring/beans/IM_User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getUserNickName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v0, v4, v5}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createCancelPkMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->buildMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v2

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getPriority()I

    move-result v0

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment$c;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;)V

    const-string v4, ""

    invoke-static {v1, v4, v2, v0, v3}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle;->sendOnlineMessage(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;ILcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method

.method public static S1(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "mLiveRoomModel"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 5
    const-class p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01c4

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;->tvTitleName:Landroid/widget/TextView;

    const v1, 0x7f120704

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;->avatarUser:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;->pkRandomGif:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;->avatarUser:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getPkUserInfo()Lcom/guochao/faceshow/aaspring/beans/IM_User;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;->tvTitleName:Landroid/widget/TextView;

    const v1, 0x7f120702

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->getParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;->c:Lcom/opensource/svgaplayer/SVGAParser;

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;->avatarUser:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110029

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;->c:Lcom/opensource/svgaplayer/SVGAParser;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;)V

    const/4 v2, 0x1

    const-string v3, "pk_random_match_btn"

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    :goto_0
    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 3
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "mLiveRoomModel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    :cond_2
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

.method public onViewClicked()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->d()V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->g()V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v1, :cond_0

    .line 7
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setApplyPkState(Z)V

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->p3()V

    :cond_0
    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->getApplyPkSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getPkUserInfo()Lcom/guochao/faceshow/aaspring/beans/IM_User;

    move-result-object v0

    if-nez v0, :cond_3

    .line 11
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;->Q1()V

    return-void

    :cond_3
    const-string v0, "tokens/live/invite/cancel/arena"

    .line 12
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    .line 13
    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getPkUserInfo()Lcom/guochao/faceshow/aaspring/beans/IM_User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cancelUserId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    .line 14
    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "liveId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 v1, 0x3

    .line 15
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->I(I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;)V

    .line 16
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a00fc

    if-eq p1, v0, :cond_0

    const v0, 0x7f0a0d0c

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getPkUserInfo()Lcom/guochao/faceshow/aaspring/beans/IM_User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->start(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
