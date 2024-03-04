.class public Lcom/guochao/faceshow/aaspring/modulars/customerservice/adapter/FeedbackDetailAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;",
        "Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackReplyFragment$b;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$f;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;

.field private c:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/adapter/FeedbackDetailAdapter;->a:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/adapter/FeedbackDetailAdapter;->c:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity;

    return-void
.end method


# virtual methods
.method public B(Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/adapter/FeedbackDetailAdapter;->b:Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->getFeedBackQuestionDetails()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/adapter/FeedbackDetailAdapter;->a:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/adapter/FeedbackDetailAdapter;->b:Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/adapter/FeedbackDetailAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/adapter/FeedbackDetailAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->getStatus()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->getEvaluateStore()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->getFeedBackQuestionDetails()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->getFeedBackQuestionDetails()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v3, :cond_1

    .line 7
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/adapter/FeedbackDetailAdapter;->a:Ljava/util/List;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->getFeedBackQuestionDetails()Ljava/util/List;

    move-result-object v6

    sub-int/2addr v4, v3

    invoke-interface {v6, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const/4 v4, 0x0

    .line 8
    :goto_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->getFeedBackQuestionDetails()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->getFeedBackQuestionDetails()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->getCreateUserType()I

    move-result v5

    if-ne v5, v3, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 10
    :goto_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->getFeedBackQuestionDetails()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;

    invoke-virtual {v6, v5}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->setShowScore(Z)V

    if-eqz v5, :cond_4

    goto :goto_3

    .line 11
    :cond_3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->getFeedBackQuestionDetails()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;

    invoke-virtual {v5, v2}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->setShowScore(Z)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 12
    :cond_5
    :goto_3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$TobeHandled;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$TobeHandled;-><init>()V

    .line 13
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/adapter/FeedbackDetailAdapter;->b:Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->getCreateTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;->setCreateTime(J)V

    .line 14
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/adapter/FeedbackDetailAdapter;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->getStatus()I

    move-result v0

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->getEvaluateStore()I

    move-result v0

    if-lez v0, :cond_6

    .line 16
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$g;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$g;-><init>()V

    .line 17
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->getEvaluate()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$g;->a:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->getEvaluateStore()I

    move-result p1

    iput p1, v0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$g;->b:I

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/adapter/FeedbackDetailAdapter;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/adapter/FeedbackDetailAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/adapter/FeedbackDetailAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$f;

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$f;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/adapter/FeedbackDetailAdapter;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/adapter/FeedbackDetailAdapter;->b:Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder;->e(Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;)V

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/adapter/FeedbackDetailAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$g;

    const v0, 0x7f0a0255

    .line 6
    iget-object v1, p2, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$g;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->setText(ILjava/lang/String;)V

    const v0, 0x7f0a0920

    .line 7
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/views/RatingBar;

    .line 8
    iget p2, p2, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$g;->b:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/views/RatingBar;->setStar(F)V

    const/4 p2, 0x0

    .line 9
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/views/RatingBar;->setClickable(Z)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 12
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$TobeHandlerHolder;

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/adapter/FeedbackDetailAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$TobeHandled;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$TobeHandlerHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$TobeHandled;)V

    goto :goto_1

    .line 14
    :cond_3
    :goto_0
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$ReplyHolder;

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/adapter/FeedbackDetailAdapter;->c:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/adapter/FeedbackDetailAdapter;->b:Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/adapter/FeedbackDetailAdapter;->a:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;

    invoke-virtual {p1, v0, v1, p2}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$ReplyHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity;Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean$FeedbackQuestionDetailBean;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/adapter/FeedbackDetailAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/16 v1, 0xa

    if-eq p2, v1, :cond_1

    const/16 v1, 0x64

    if-eq p2, v1, :cond_0

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$ReplyHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0375

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$ReplyHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 3
    :cond_0
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d037a

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 4
    :cond_1
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$TobeHandlerHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0377

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$TobeHandlerHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 5
    :cond_2
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0376

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
