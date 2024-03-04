.class Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment$c;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;->submit(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->dismissProgressDialog()V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;

    const v0, 0x7f120308

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment$d;

    if-eqz p2, :cond_0

    .line 5
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;->mRatingBar:Lcom/guochao/faceshow/aaspring/views/RatingBar;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/RatingBar;->getStart()F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment$d;->y(ILjava/lang/String;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Lg7/a;

    invoke-direct {p1}, Lg7/a;-><init>()V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment$c;->onFailure(Lg7/a;)V

    :goto_0
    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->dismissProgressDialog()V

    .line 2
    invoke-virtual {p1}, Lg7/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;

    invoke-virtual {p1}, Lg7/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment$c;->a(Ljava/lang/Boolean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
