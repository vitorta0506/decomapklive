.class Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a;->a(Ljava/util/List;Ljava/lang/String;)V
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a$a;->a:Ljava/util/List;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 4
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->dismissProgressDialog()V

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;-><init>()V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->setCreateTime(J)V

    const/4 p2, 0x2

    .line 5
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->setCreateUserType(I)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->setDetail(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a$a;->a:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->setFileList(Ljava/util/List;)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment;->b:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->setQuestionId(I)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$b;

    if-eqz p2, :cond_0

    .line 10
    invoke-interface {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$b;->B(Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;)V

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 12
    :cond_1
    new-instance p1, Lg7/a;

    invoke-direct {p1}, Lg7/a;-><init>()V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a$a;->onFailure(Lg7/a;)V

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
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->dismissProgressDialog()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment;

    const v0, 0x7f12005d

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$a$a;->a(Ljava/lang/Boolean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
