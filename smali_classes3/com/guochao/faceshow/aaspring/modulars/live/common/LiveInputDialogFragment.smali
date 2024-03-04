.class public Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment$d;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

.field btnSend:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:I

.field public f:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;

.field g:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment$d;

.field h:Z

.field mEditText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mGuideDanmu:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mViewLiveDanmuSwitch:Landroid/view/View;
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
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->d:Z

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->h:Z

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01ae

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->d:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    const v0, 0x7f0a0b0d

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    const-string v0, "KEY_LIVE_DANMU"

    invoke-virtual {p1, v0}, Lja/a;->f(Ljava/lang/String;)Z

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->mGuideDanmu:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "showDanmu"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getVipLevel()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->mViewLiveDanmuSwitch:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->btnSend:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->btnSend:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 12
    :goto_1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->e:I

    if-ne p1, v2, :cond_4

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 14
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;)V

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;->setListener(Landroid/view/Window;Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;)V

    .line 15
    :try_start_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/guochao/faceshow/utils/SoftKeyBoardUtils;->openSoftKeyBoard(Landroid/widget/EditText;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :catch_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->mEditText:Landroid/widget/EditText;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->mEditText:Landroid/widget/EditText;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
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

    const-string v0, "content"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "mute"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->c:Z

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "hideDanmu"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->d:Z

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, -0x1

    const-string v1, "inputType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->e:I

    .line 7
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_1
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

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->createBottomDialog()Landroid/app/Dialog;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroy()V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->b:Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;->keyBoardHide(I)V

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->b:Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;->keyBoardHide(I)V

    :cond_0
    return-void
.end method

.method public onEventBus(Ly7/j;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-boolean p1, p1, Ly7/j;->a:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->h:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->h:Z

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public openDanmu(Landroid/view/View;)V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getVipLevel()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    const-string v3, "KEY_LIVE_DANMU"

    if-nez v0, :cond_2

    const/4 p1, 0x3

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;->P1(ILandroidx/fragment/app/FragmentManager;)Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;

    .line 4
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    invoke-virtual {p1, v3}, Lja/a;->e(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->mGuideDanmu:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 6
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v2

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "showDanmu"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    invoke-static {v0, v2, p1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setBool(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->mGuideDanmu:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    invoke-virtual {p1, v3}, Lja/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public send(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getUserSpeech()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getLiveSpeechOperationLogVo()Lcom/guochao/faceshow/aaspring/beans/LiveSpeechOperationLogVo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getLiveSpeechOperationLogVo()Lcom/guochao/faceshow/aaspring/beans/LiveSpeechOperationLogVo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveSpeechOperationLogVo;->getReasonContentLang()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(Ljava/lang/CharSequence;)V

    return-void

    .line 5
    :cond_1
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->c:Z

    if-eqz p1, :cond_2

    const p1, 0x7f120510

    .line 6
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    return-void

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->g:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment$d;

    if-eqz v0, :cond_3

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->mViewLiveDanmuSwitch:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment$d;->a(Ljava/lang/String;Z)V

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->mEditText:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public setOnSendClickListener(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment$d;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->g:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment$d;

    return-void
.end method

.method public setOnSoftKeyBoardChangeListener(Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->b:Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    return-void
.end method
