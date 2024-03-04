.class Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackQuestionTypeListActivity$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackQuestionTypeListActivity;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/FeedbackQuestionTypeBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackQuestionTypeListActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackQuestionTypeListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackQuestionTypeListActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackQuestionTypeListActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackQuestionTypeListActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackQuestionTypeListActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->notifyDataLoaded(Z)V

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 0
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FeedbackQuestionTypeBean;",
            ">;>;)V"
        }
    .end annotation

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
    .end param

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackQuestionTypeListActivity$a;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FeedbackQuestionTypeBean;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FeedbackQuestionTypeBean;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackQuestionTypeListActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackQuestionTypeListActivity;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->setDatas(Ljava/util/List;)V

    return-void
.end method
