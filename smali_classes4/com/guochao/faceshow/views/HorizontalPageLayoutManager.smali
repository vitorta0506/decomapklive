.class public Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->a:I

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->b:I

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->c:I

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->d:I

    .line 6
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->e:Landroid/util/SparseArray;

    .line 7
    iput v0, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->h:I

    .line 8
    iput v0, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->i:I

    .line 9
    iput v0, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->j:I

    .line 10
    iput p1, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->f:I

    .line 11
    iput p2, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->g:I

    mul-int p1, p1, p2

    .line 12
    iput p1, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->k:I

    return-void
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->k:I

    div-int/2addr v0, v1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    iget v1, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->k:I

    rem-int/2addr p1, v1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    add-int/2addr v0, p1

    iput v0, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->h:I

    return-void
.end method

.method private c()I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private d()I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private e(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->d:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->d:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 5
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 7
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 8
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 9
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 10
    invoke-static {p2, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 11
    invoke-virtual {p0, v3, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-static {p2, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v3

    .line 15
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    .line 16
    iget v0, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->l:I

    iget v2, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->m:I

    invoke-virtual {p0, v3, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 18
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->d:I

    sub-int v5, v2, v4

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int v7, v2, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move-object v2, p0

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    iget p1, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->d:I

    return p1
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    iget p1, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->h:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    mul-int p1, p1, v0

    return p1
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->d:I

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->c:I

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->d()I

    move-result v0

    iget v1, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->g:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->i:I

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->c()I

    move-result v0

    iget v1, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->f:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->j:I

    .line 6
    iget v2, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->g:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->i:I

    mul-int v2, v2, v3

    iput v2, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->l:I

    add-int/lit8 v1, v1, -0x1

    mul-int v1, v1, v0

    .line 7
    iput v1, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->m:I

    .line 8
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "itemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state itemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zzz"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget v0, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->h:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v1

    mul-int v0, v0, v1

    iput v0, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->b:I

    .line 11
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 13
    :goto_0
    iget v3, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->h:I

    if-ge v2, v3, :cond_6

    const/4 v3, 0x0

    .line 14
    :goto_1
    iget v4, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->f:I

    if-ge v3, v4, :cond_5

    const/4 v4, 0x0

    .line 15
    :goto_2
    iget v5, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->g:I

    if-ge v4, v5, :cond_4

    .line 16
    iget v6, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->k:I

    mul-int v6, v6, v2

    mul-int v5, v5, v3

    add-int/2addr v6, v5

    add-int/2addr v6, v4

    if-ne v6, v0, :cond_2

    .line 17
    iget v3, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->f:I

    .line 18
    iget v2, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->h:I

    goto :goto_3

    .line 19
    :cond_2
    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v5

    .line 20
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    .line 21
    iget v7, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->l:I

    iget v8, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->m:I

    invoke-virtual {p0, v5, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 22
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v7

    .line 23
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v5

    .line 24
    iget-object v8, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->e:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    if-nez v8, :cond_3

    .line 25
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 26
    :cond_3
    invoke-direct {p0}, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->d()I

    move-result v9

    mul-int v9, v9, v2

    iget v10, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->i:I

    mul-int v10, v10, v4

    add-int/2addr v9, v10

    .line 27
    iget v10, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->j:I

    mul-int v10, v10, v3

    add-int/2addr v7, v9

    add-int/2addr v5, v10

    .line 28
    invoke-virtual {v8, v9, v10, v7, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 29
    iget-object v5, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->e:Landroid/util/SparseArray;

    invoke-virtual {v5, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 30
    :cond_5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->e(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->d:I

    add-int v1, v0, p1

    .line 3
    iget v2, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->b:I

    if-le v1, v2, :cond_0

    sub-int p1, v2, v0

    goto :goto_0

    :cond_0
    if-gez v1, :cond_1

    rsub-int/lit8 p1, v0, 0x0

    :cond_1
    :goto_0
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->d:I

    neg-int v0, p1

    .line 5
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    .line 6
    invoke-direct {p0, p2, p3}, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;->e(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return p1
.end method
