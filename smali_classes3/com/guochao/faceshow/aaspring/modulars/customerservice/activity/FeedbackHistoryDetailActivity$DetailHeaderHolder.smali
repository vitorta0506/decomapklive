.class public Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder;
.super Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$FeedbackHistoryBeanHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetailHeaderHolder"
.end annotation


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;

.field b:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$FeedbackHistoryBeanHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder;->b:Z

    const v0, 0x7f0a095c

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method


# virtual methods
.method public e(Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder;->a:Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;

    if-ne v0, p1, :cond_0

    const v0, 0x7f0a0ad6

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->getStatus()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$FeedbackHistoryBeanHolder;->c(Landroid/widget/TextView;I)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder;->a:Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;

    const v0, 0x7f0a0913

    .line 4
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder;->a:Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a095c

    .line 6
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->getFileList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity;->m0(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Z)V

    const v0, 0x7f0a03aa

    .line 7
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a03ae

    .line 8
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    const v1, 0x7f0a0255

    .line 9
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/guochao/faceshow/aaspring/views/ExpandTextView;

    const v1, 0x7f0a095d

    .line 10
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    const v1, 0x7f0a03ac

    .line 11
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    .line 12
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->getFileList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->getFileList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 13
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->getStatus()I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->getEvaluateStore()I

    move-result v3

    if-lez v3, :cond_3

    .line 15
    invoke-virtual {v9, v2}, Lcom/guochao/faceshow/aaspring/views/ExpandTextView;->setForceExpand(Z)V

    .line 16
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;->getFileList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 17
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const v3, 0x7f120312

    .line 18
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    const/high16 v3, 0x43340000    # 180.0f

    .line 19
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setRotation(F)V

    .line 20
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder;->b:Z

    goto :goto_0

    .line 22
    :cond_3
    invoke-virtual {v9, v4}, Lcom/guochao/faceshow/aaspring/views/ExpandTextView;->setForceExpand(Z)V

    .line 23
    iput-boolean v4, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder;->b:Z

    .line 24
    :goto_0
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder$b;

    invoke-direct {v2, p0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder;Landroid/view/View;Landroid/widget/TextView;)V

    invoke-virtual {v9, v2}, Lcom/guochao/faceshow/aaspring/views/ExpandTextView;->setOnShowExpand(Lcom/guochao/faceshow/aaspring/views/ExpandTextView$a;)V

    .line 25
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder$c;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v7, v0

    invoke-direct/range {v3 .. v9}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$DetailHeaderHolder;Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryDetailBean;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/ExpandTextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$FeedbackHistoryBeanHolder;->d(Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;)V

    return-void
.end method
