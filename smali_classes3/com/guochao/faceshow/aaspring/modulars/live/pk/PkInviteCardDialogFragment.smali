.class public Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment$b;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

.field avatarUser:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private b:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

.field btnAgree:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field btnRefuse:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private c:Z

.field private d:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment$b;

.field ivSelectState:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvInviteName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvNickName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userAgeLevel:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->c:Z

    return-void
.end method

.method public static Q1(Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;)Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public P1()Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->ivSelectState:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    return v0
.end method

.method public R1()Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

    return-object v0
.end method

.method public S1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->c:Z

    return v0
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->c:Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment$b;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment$b;->a(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;)V

    :cond_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01c5

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1500

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public loadData()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "data"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

    .line 3
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->setUserId(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;->getSex()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->setSex(I)V

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->setImg(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;->getAge()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->setAge(I)V

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;->getCountryFlag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->setCountryLog(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;->getUserVipMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 11
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;->getUserVipMsg()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->avatarUser:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->tvNickName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;->getNick_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->tvInviteName:Landroid/widget/TextView;

    const v2, 0x7f120705

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;->getNick_name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->userAgeLevel:Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

    .line 16
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->d(Lp7/i;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const p1, 0x7f130197

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->createBottomDialog(I)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a017e

    const v1, 0x7f0f055e

    if-eq p1, v0, :cond_3

    const v0, 0x7f0a0197

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a0620

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->ivSelectState:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->ivSelectState:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->ivSelectState:Landroid/widget/ImageView;

    const v0, 0x7f0f055d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->ivSelectState:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment$b;

    if-eqz p1, :cond_5

    .line 7
    invoke-interface {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment$b;->b(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;)V

    goto :goto_0

    .line 8
    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->isFaceToFaceFloatShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const v0, 0x7f12069f

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    return-void

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment$b;

    if-eqz p1, :cond_5

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->ivSelectState:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->ivSelectState:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->D(I)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment$b;

    invoke-interface {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment$b;->c(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public setOnResultListener(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment$b;

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->c:Z

    return-void
.end method
