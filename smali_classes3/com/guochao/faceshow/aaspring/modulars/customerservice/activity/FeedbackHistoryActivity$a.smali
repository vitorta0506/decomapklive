.class Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
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
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->showEmptyView()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

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

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$a;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Ljava/util/List;
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
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getCurrentPage()I

    move-result p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getDefaultPage()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_2

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->showEmptyView()V

    .line 7
    :cond_2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    return-void
.end method
