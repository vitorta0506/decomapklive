.class public Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LittleLinkMicInfoFragment;
.super Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

.field mDebugInfo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;-><init>()V

    return-void
.end method

.method public static final P1(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LittleLinkMicInfoFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LittleLinkMicInfoFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LittleLinkMicInfoFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "name"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "userId"

    .line 4
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01a4

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->initView(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LittleLinkMicInfoFragment;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LittleLinkMicInfoFragment;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LittleLinkMicInfoFragment;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "userId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LittleLinkMicInfoFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    :cond_0
    return-void
.end method

.method public showBottomDialog(Landroid/view/View;)V
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
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LittleLinkMicInfoFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LittleLinkMicInfoFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getStreamId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LittleLinkMicInfoFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;->S1(Ljava/lang/String;Ljava/lang/String;Lp7/h;)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "live_linkmic"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->h:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->h:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->getStreamId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;->S1(Ljava/lang/String;Ljava/lang/String;Lp7/h;)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "live_pusher"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
