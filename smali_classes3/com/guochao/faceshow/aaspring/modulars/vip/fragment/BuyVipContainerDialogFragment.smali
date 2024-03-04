.class public Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment$d;
    }
.end annotation


# instance fields
.field private a:I

.field b:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

.field public bgTitleLay:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field c:Ljava/lang/Runnable;

.field private d:Z

.field private e:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment$d;

.field mViewClose:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mVipSwitcherView:Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;->c:Ljava/lang/Runnable;

    return-void
.end method

.method public static P1(ILandroidx/fragment/app/FragmentManager;)Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "from"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const-string p0, "buy_vip_dialog"

    .line 5
    invoke-virtual {v0, p1, p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public Q1()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public close(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const p1, 0x7f1209e0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;Z)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    const v0, 0x7f0a0233

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7fffffff

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    const-string v0, "#888888"

    .line 4
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->d(I)V

    const-string v0, "#F94A8C"

    .line 5
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->m(I)V

    const v0, 0x7f120a14

    .line 6
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->c(Ljava/lang/String;)V

    const v0, 0x7f1209f2

    .line 7
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->n(Z)V

    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;->W1(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;->d:Z

    :goto_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0167

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;->a:I

    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;->X1(II)Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

    const v1, 0x7f0a01a4

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;->mVipSwitcherView:Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->c(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;)V

    .line 4
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;->a:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;->mVipSwitcherView:Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;->mVipSwitcherView:Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 7
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;->c:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onBack()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;->mViewClose:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;->close(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;->a:I

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 p1, 0x50

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->mGravity:I

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->createBottDialog()Lcom/guochao/faceshow/aaspring/base/dialog/FaceCastDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/base/dialog/FaceCastDialog;->a(Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment$d;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment$d;->onDismiss()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 2
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v2, 0x4000000

    const/16 v3, 0x1d

    if-le v1, v3, :cond_0

    const/high16 v1, -0x80000000

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 7
    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    const/16 v1, 0x50

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 11
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOnDismissListener(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment$d;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment$d;

    return-void
.end method

.method public toCustomerService(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    new-instance p1, Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;

    invoke-direct {p1}, Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;-><init>()V

    .line 2
    invoke-static {}, Lfb/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;->userId:I

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->A0(Landroid/content/Context;Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;I)V

    return-void
.end method
