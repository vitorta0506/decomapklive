.class public Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment$d;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment$d;

.field mEditText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mRatingBar:Lcom/guochao/faceshow/aaspring/views/RatingBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static P1(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "id"

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

    const v0, 0x7f0d018b

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;->mRatingBar:Lcom/guochao/faceshow/aaspring/views/RatingBar;

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/RatingBar;->setStar(F)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;->mRatingBar:Lcom/guochao/faceshow/aaspring/views/RatingBar;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/RatingBar;->setOnRatingChangeListener(Lcom/guochao/faceshow/aaspring/views/RatingBar$b;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;->mEditText:Landroid/widget/EditText;

    const v0, 0x7f12031c

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;->mEditText:Landroid/widget/EditText;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;->mTextViewCount:Landroid/widget/TextView;

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;->j(Landroid/widget/TextView;II)V

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
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment$d;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment$d;

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

    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->createBottomDialog()Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public submit(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const-string p1, "tokens/sysHelp/evaluateFeedBackQuestion"

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;->a:Ljava/lang/String;

    const-string v1, "feedQuestionId"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;->mEditText:Landroid/widget/EditText;

    .line 2
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "evaluate"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;->mRatingBar:Lcom/guochao/faceshow/aaspring/views/RatingBar;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/RatingBar;->getStart()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "evaluateStore"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method
