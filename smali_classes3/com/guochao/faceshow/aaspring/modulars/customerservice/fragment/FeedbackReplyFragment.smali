.class public Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$b;
    }
.end annotation


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;

.field b:Ljava/lang/String;

.field c:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static P1(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public close(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d018a

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0a095d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;-><init>(Landroidx/fragment/app/FragmentActivity;Landroid/view/ViewGroup;Landroidx/activity/result/ActivityResultCaller;Z)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDimAmount(F)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$b;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$b;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
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

    const-string v0, "key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment;->b:Ljava/lang/String;

    :cond_0
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

.method public submit(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;->h()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->hasWord(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f12030d

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    return-void

    :cond_0
    const-string p1, ""

    .line 4
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;->l(Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$q;)V

    return-void
.end method
