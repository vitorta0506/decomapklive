.class public Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# instance fields
.field content:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ratingBar:Lcom/guochao/faceshow/aaspring/views/RatingBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvCancel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvConfirm:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d013d

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog;->content:Landroid/widget/TextView;

    const v0, 0x7f120763

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog;->tvConfirm:Landroid/widget/TextView;

    const v0, 0x7f120762

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog;->tvCancel:Landroid/widget/TextView;

    const v0, 0x7f120761

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog;->ratingBar:Lcom/guochao/faceshow/aaspring/views/RatingBar;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/RatingBar;->setOnRatingChangeListener(Lcom/guochao/faceshow/aaspring/views/RatingBar$b;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x500

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public loadData()V
    .locals 0

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

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->createCenterDialog()Lcom/guochao/faceshow/aaspring/base/dialog/FaceCastDialog;

    move-result-object p1

    return-object p1
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0c55

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a0c60

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog;->ratingBar:Lcom/guochao/faceshow/aaspring/views/RatingBar;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/RatingBar;->getStart()F

    move-result p1

    const/high16 v0, 0x40a00000    # 5.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 4
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackQuestionTypeListActivity;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackQuestionTypeListActivity;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "feedback"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/PackageUtils;->goToMarket(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    :goto_0
    return-void
.end method
