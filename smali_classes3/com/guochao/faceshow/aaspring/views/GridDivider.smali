.class public Lcom/guochao/faceshow/aaspring/views/GridDivider;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/graphics/Paint;


# direct methods
.method private a(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    move-object/from16 v3, p2

    .line 2
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 4
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 5
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v7

    .line 6
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v8

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    .line 7
    iget v9, v0, Lcom/guochao/faceshow/aaspring/views/GridDivider;->a:I

    add-int/2addr v9, v8

    .line 8
    iget-object v15, v0, Lcom/guochao/faceshow/aaspring/views/GridDivider;->b:Landroid/graphics/Paint;

    if-eqz v15, :cond_0

    int-to-float v11, v6

    int-to-float v12, v8

    int-to-float v13, v7

    int-to-float v14, v9

    move-object/from16 v10, p1

    .line 9
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 10
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    .line 11
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    iget v8, v0, Lcom/guochao/faceshow/aaspring/views/GridDivider;->a:I

    add-int/2addr v7, v8

    .line 12
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 13
    iget v5, v0, Lcom/guochao/faceshow/aaspring/views/GridDivider;->a:I

    add-int/2addr v5, v4

    .line 14
    iget-object v13, v0, Lcom/guochao/faceshow/aaspring/views/GridDivider;->b:Landroid/graphics/Paint;

    if-eqz v13, :cond_1

    int-to-float v9, v4

    int-to-float v10, v6

    int-to-float v11, v5

    int-to-float v12, v7

    move-object/from16 v8, p1

    .line 15
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 2
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method private c(Landroidx/recyclerview/widget/RecyclerView;III)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 2
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 3
    rem-int p1, p4, p3

    div-int/2addr p4, p3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p4, v2

    .line 4
    :goto_0
    div-int/2addr p2, p3

    add-int/2addr p2, v2

    if-ne p4, p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 5
    :cond_2
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_4

    .line 6
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 8
    rem-int p1, p4, p3

    sub-int/2addr p4, p1

    if-lt p2, p4, :cond_4

    return v2

    :cond_3
    add-int/2addr p2, v2

    .line 9
    rem-int/2addr p2, p3

    if-nez p2, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method private d(Landroidx/recyclerview/widget/RecyclerView;III)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 2
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3
    rem-int p1, p4, p3

    div-int/2addr p4, p3

    .line 4
    div-int/2addr p2, p3

    add-int/2addr p2, v2

    if-ne p2, v2, :cond_0

    return v2

    :cond_0
    return v1

    .line 5
    :cond_1
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_3

    .line 6
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 8
    rem-int p1, p4, p3

    sub-int/2addr p4, p1

    if-lt p2, p4, :cond_3

    return v2

    :cond_2
    add-int/2addr p2, v2

    .line 9
    rem-int/2addr p2, p3

    if-nez p2, :cond_3

    return v2

    :cond_3
    return v1
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p2

    .line 3
    invoke-direct {p0, p3}, Lcom/guochao/faceshow/aaspring/views/GridDivider;->b(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p4

    .line 4
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 5
    invoke-direct {p0, p3, p2, p4, v0}, Lcom/guochao/faceshow/aaspring/views/GridDivider;->c(Landroidx/recyclerview/widget/RecyclerView;III)Z

    .line 6
    invoke-direct {p0, p3, p2, p4, v0}, Lcom/guochao/faceshow/aaspring/views/GridDivider;->d(Landroidx/recyclerview/widget/RecyclerView;III)Z

    move-result p3

    add-int/lit8 v0, p4, -0x1

    .line 7
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/GridDivider;->a:I

    mul-int v2, v0, v1

    div-int/2addr v2, p4

    sub-int v3, v1, v2

    .line 8
    rem-int/2addr p2, p4

    mul-int p2, p2, v3

    sub-int/2addr v2, p2

    if-eqz p3, :cond_0

    mul-int v0, v0, v1

    .line 9
    div-int/2addr v0, p4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/GridDivider;->a(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
