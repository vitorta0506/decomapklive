.class Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$a;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;Landroid/content/Context;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;

    invoke-direct {p0, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 2
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 6
    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v4, 0x40000000    # 2.0f

    .line 7
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v5, v4}, Landroid/view/View;->measure(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V

    return-void
.end method
