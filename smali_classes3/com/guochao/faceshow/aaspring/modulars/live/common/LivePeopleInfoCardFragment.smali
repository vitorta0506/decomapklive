.class public Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"

# interfaces
.implements Ld9/e;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field adminArea:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field chatTV:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field cmdArea:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field focus:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field focusClick:Z

.field kickArea:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mFCoins:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mFansCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mGenderAndSexView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mILiveRoomManager:Ld9/g;

.field private mLivePeopleInfoBean:Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mPkBroadcaster:Z

.field mReportView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSentCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mUserId:Ljava/lang/String;

.field mUserIdView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mUserName:Ljava/lang/String;

.field mUserNameView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field muteArea:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field peopleCardChat:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field peopleCardUserFocus:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field spaceView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userInfoLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->focusClick:Z

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;)Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mLivePeopleInfoBean:Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    return-object p0
.end method

.method static synthetic access$002(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;)Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mLivePeopleInfoBean:Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mPkBroadcaster:Z

    return p0
.end method

.method static synthetic access$200(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->isBroadCaster()Z

    move-result p0

    return p0
.end method

.method private hasPermission()Z
    .locals 2

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->myUserType()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->myUserType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->otherVipLevel()I

    move-result v0

    if-nez v0, :cond_0

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

.method private isAdmin()Z
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mLivePeopleInfoBean:Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->getAdmin()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isBroadCaster()Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mILiveRoomManager:Ld9/g;

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    return v0
.end method

.method private isSuperAdmin()Z
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mLivePeopleInfoBean:Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->getLiveManager()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private myUserType()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mILiveRoomManager:Ld9/g;

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getUserType()I

    move-result v0

    return v0
.end method

.method private myVipLevel()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getVipLevel()I

    move-result v0

    return v0
.end method

.method private onMenuClick(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mILiveRoomManager:Ld9/g;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mLivePeopleInfoBean:Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq p1, v1, :cond_9

    const/4 v4, 0x2

    const v5, 0x7f120a0d

    if-eq p1, v4, :cond_7

    const/4 v4, 0x3

    if-eq p1, v4, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const v0, 0x7f1207a7

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->report(Landroid/view/View;)V

    goto/16 :goto_0

    .line 3
    :cond_2
    new-instance p1, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;-><init>()V

    const v0, 0x7f120a96

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->contentText(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$e;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;)V

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$f;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;)V

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->onClick(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->build(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 7
    :cond_3
    new-instance p1, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;-><init>()V

    const v0, 0x7f120aa1

    .line 8
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->contentText(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$g;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;)V

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$h;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;)V

    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->onClick(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->build(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->getKink()I

    move-result p1

    if-ne p1, v1, :cond_5

    const p1, 0x7f120a01

    .line 12
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    goto :goto_0

    .line 13
    :cond_5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->hasPermission()Z

    move-result p1

    if-nez p1, :cond_6

    .line 14
    invoke-virtual {p0, v5}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    return-void

    :cond_6
    const p1, 0x7f120519

    .line 15
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$i;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;)V

    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;Z)Lcom/guochao/faceshow/views/e;

    goto :goto_0

    .line 16
    :cond_7
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->hasPermission()Z

    move-result p1

    if-nez p1, :cond_8

    .line 17
    invoke-virtual {p0, v5}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    return-void

    :cond_8
    const p1, 0x7f120515

    .line 18
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;)V

    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;Z)Lcom/guochao/faceshow/views/e;

    goto :goto_0

    :cond_9
    const p1, 0x7f12050a

    .line 19
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;)V

    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;Z)Lcom/guochao/faceshow/views/e;

    :cond_a
    :goto_0
    return-void
.end method

.method private otherUserType()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->isSuperAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mLivePeopleInfoBean:Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, 0x2

    return v0
.end method

.method private otherVipLevel()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mLivePeopleInfoBean:Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mLivePeopleInfoBean:Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getVipLevel()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static showPeopleInfo(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->showPeopleInfo(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static showPeopleInfo(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ld9/g;)V
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->showPeopleInfo(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;ZLd9/g;)V

    return-void
.end method

.method public static showPeopleInfo(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, p2, p3, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->showPeopleInfo(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;ZLd9/g;)V

    return-void
.end method

.method public static showPeopleInfo(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;ZLd9/g;)V
    .locals 2
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p4

    invoke-interface {p4}, Lb8/d;->c()Lb8/a;

    move-result-object p4

    check-cast p4, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {p4}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p4, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    invoke-direct {p4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;-><init>()V

    .line 6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "userId"

    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "userName"

    .line 8
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "pkBroadcaster"

    .line 9
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    invoke-virtual {p4, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const-string p1, "live_user_info"

    .line 11
    invoke-virtual {p4, p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected addFocus()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->setFocused(Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mUserId:Ljava/lang/String;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;->LIVE:Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$a;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;)V

    invoke-static {v0, v1, v2, v3}, Lib/b;->b(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;Landroid/app/Activity;Lhb/b;)V

    return-void
.end method

.method protected cancelFocus()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->setFocused(Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mUserId:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$j;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;)V

    invoke-static {v0, v1, v2}, Lib/b;->a(Ljava/lang/String;Landroid/app/Activity;Lhb/b;)V

    return-void
.end method

.method public getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mILiveRoomManager:Ld9/g;

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d03b2

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mUserIdView:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mUserNameView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public loadData2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mILiveRoomManager:Ld9/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "tokens/user/info/findDetailAttention"

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mUserId:Ljava/lang/String;

    const-string v2, "account"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mILiveRoomManager:Ld9/g;

    .line 4
    invoke-interface {v1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "liveId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mILiveRoomManager:Ld9/g;

    .line 5
    invoke-interface {v1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getChatGroupId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMID"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public menuButtonClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mLivePeopleInfoBean:Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mLivePeopleInfoBean:Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->getUserId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mLivePeopleInfoBean:Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->getNick_name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/KotlinBridge;->startChatFromLiveRoom(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :pswitch_1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getIsBindMobile()I

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/d;->e(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;I)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mILiveRoomManager:Ld9/g;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mLivePeopleInfoBean:Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mLivePeopleInfoBean:Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->getNick_name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ld9/e;->onAtSomebody(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a086c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x28c

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->getInstance()Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->onActivityResult(Landroid/app/Activity;ILandroid/content/Intent;)V

    const/4 p1, 0x1

    .line 3
    sput-boolean p1, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->onActivityResult:Z

    :cond_0
    return-void
.end method

.method public onAtSomebody(Ljava/lang/String;Ljava/lang/String;)V
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

    const/16 v0, 0x50

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->mGravity:I

    .line 3
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->e0()Ld9/g;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mILiveRoomManager:Ld9/g;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mILiveRoomManager:Ld9/g;

    if-nez p1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "userId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mUserId:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "userName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mUserName:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "pkBroadcaster"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mPkBroadcaster:Z

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

.method public onEnterRoom(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onLinkMicResponse(Z)V
    .locals 0

    return-void
.end method

.method public onLinkMicStatusChanged(Z)V
    .locals 0

    return-void
.end method

.method public onLiveFinish(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onNetworkLose(I)V
    .locals 0

    return-void
.end method

.method public onNetworkResume(I)V
    .locals 0

    return-void
.end method

.method public synthetic onPlayMusicAnim(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ld9/d;->a(Ld9/e;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onPlaySuccess()V
    .locals 0

    return-void
.end method

.method public onQuitLiveRoom(ZZ)V
    .locals 0

    return-void
.end method

.method public onReceiveFaceGift(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V
    .locals 0

    return-void
.end method

.method public onReceiveHugeGift(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V
    .locals 0

    return-void
.end method

.method public onReceiveLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onRefreshLiveInfo()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->loadData2()V

    return-void
.end method

.method public onSelfMute(Z)V
    .locals 0

    return-void
.end method

.method public onUserTypeChanged(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->refreshUserType()V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const-wide/16 v0, 0x3e8

    .line 1
    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;J)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mLivePeopleInfoBean:Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->focusClick:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->focusClick:Z

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->getIs_tutual()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->cancelFocus()V

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->addFocus()V

    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, -0x1

    .line 3
    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setLayout(II)V

    .line 4
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const/16 v0, 0x50

    .line 5
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const p2, 0x106000d

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 8
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public operationButtonClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a07c6

    if-ne v0, v1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->muteArea:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->onMenuClick(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->onMenuClick(I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0609

    if-ne v0, v1, :cond_2

    const/4 p1, 0x3

    .line 6
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->onMenuClick(I)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a008e

    if-ne p1, v0, :cond_4

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->adminArea:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x4

    .line 9
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->onMenuClick(I)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x5

    .line 10
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->onMenuClick(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected refreshUserType()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mPkBroadcaster:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mReportView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->cmdArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->myUserType()I

    move-result v0

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->otherUserType()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mReportView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->cmdArea:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->myVipLevel()I

    move-result v0

    if-ne v0, v5, :cond_4

    if-eqz v3, :cond_3

    const/4 v0, 0x3

    if-eq v3, v0, :cond_3

    const/4 v0, 0x1

    if-ne v3, v0, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mReportView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->cmdArea:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 11
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mReportView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->cmdArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mReportView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->cmdArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    :goto_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->setting()V

    return-void
.end method

.method public report(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mILiveRoomManager:Ld9/g;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mUserId:Ljava/lang/String;

    invoke-interface {p1, p0, v0}, Ld9/g;->U0(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;Ljava/lang/String;)V

    return-void
.end method

.method public seeUser(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mUserId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mLivePeopleInfoBean:Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mLivePeopleInfoBean:Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mPkBroadcaster:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->getIsLive()I

    move-result p1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mILiveRoomManager:Ld9/g;

    invoke-interface {p1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mILiveRoomManager:Ld9/g;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mLivePeopleInfoBean:Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    invoke-interface {p1, v0}, Ld9/g;->J0(Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mUserId:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->start(Landroid/app/Activity;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public sendC2CLiveMessage(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ld9/e$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "TT;>;",
            "Ld9/e$a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ld9/e$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "TT;>;",
            "Ld9/e$a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public sendLiveMessage(Ljava/lang/String;Ld9/e$a;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ld9/e$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ld9/e$a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public sendLiveMessageCmd(Ljava/lang/String;Ld9/e$a;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ld9/e$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ld9/e$a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected setFocused(Z)V
    .locals 6

    .line 1
    instance-of v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;

    const v1, 0x7f1203a5

    const v2, 0x7f12039f

    const-string v3, "%s"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->focus:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->peopleCardUserFocus:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->peopleCardUserFocus:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->focus:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->peopleCardUserFocus:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->peopleCardUserFocus:Landroid/widget/TextView;

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->focus:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->peopleCardUserFocus:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->peopleCardUserFocus:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->focus:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->spaceView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->peopleCardChat:Landroid/view/View;

    const v0, 0x7f0801bd

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->chatTV:Landroid/widget/TextView;

    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->peopleCardChat:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x41d00000    # 26.0f

    .line 16
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 17
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->focus:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->peopleCardUserFocus:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->peopleCardUserFocus:Landroid/widget/TextView;

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->focus:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->spaceView:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->peopleCardChat:Landroid/view/View;

    const v0, 0x7f0800eb

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->chatTV:Landroid/widget/TextView;

    const-string v0, "#6365FF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->peopleCardChat:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x0

    .line 26
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 27
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_0
    return-void
.end method

.method public setting()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mLivePeopleInfoBean:Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->otherUserType()I

    move-result v0

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->myUserType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_1

    goto/16 :goto_5

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->kickArea:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mLivePeopleInfoBean:Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->getBanTalk()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->muteArea:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->muteArea:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->muteArea:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->muteArea:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :goto_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->adminArea:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->adminArea:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 13
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->adminArea:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->adminArea:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->adminArea:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_5
    const/4 v5, 0x3

    if-eq v1, v5, :cond_9

    if-ne v1, v3, :cond_6

    goto :goto_3

    .line 16
    :cond_6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->myVipLevel()I

    move-result v1

    if-ne v1, v2, :cond_c

    if-eq v0, v2, :cond_7

    goto :goto_5

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->kickArea:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mLivePeopleInfoBean:Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->getBanTalk()I

    move-result v0

    if-ne v0, v3, :cond_8

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->muteArea:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_2

    .line 20
    :cond_8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->muteArea:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 21
    :goto_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->muteArea:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_9
    :goto_3
    if-eq v0, v2, :cond_a

    goto :goto_5

    .line 22
    :cond_a
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->kickArea:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mLivePeopleInfoBean:Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->getBanTalk()I

    move-result v0

    if-ne v0, v3, :cond_b

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->muteArea:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_4

    .line 25
    :cond_b
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->muteArea:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 26
    :goto_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->muteArea:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    :goto_5
    return-void
.end method
