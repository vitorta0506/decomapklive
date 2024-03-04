.class Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$e;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity;->m0(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(ZLjava/util/List;)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$e;->a:Z

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$e;->b:Ljava/util/List;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$e;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/FeedbackFileInfo;

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackFileInfo;->getFileType()I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0529

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$e;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/FeedbackFileInfo;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackFileInfo;->getSmallUrl()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080459

    invoke-static {v0, v1, v2}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$e$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$e$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$e;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/views/RatioHeightImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/views/RatioHeightImageView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0529

    .line 3
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 4
    iget-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity$e;->a:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v2, 0x3fe38e39

    :goto_0
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/views/RatioHeightImageView;->setRatio(F)V

    .line 5
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v1, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 8
    new-instance p2, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0f01c1

    .line 9
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {p1, v4, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    :cond_1
    new-instance p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-direct {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
