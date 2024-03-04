.class public Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:I

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(III[I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->d:Ljava/util/List;

    .line 3
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    .line 4
    iput p2, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->b:I

    .line 5
    iput p3, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->c:I

    .line 6
    array-length p1, p4

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget p3, p4, p2

    .line 7
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->d:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;)I
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

    return p1

    .line 4
    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private b(II)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    return v0

    :cond_0
    rem-int/2addr p1, p2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private c(II)Z
    .locals 0

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private d(III)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    add-int/2addr p1, v1

    if-ne p1, p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 1
    :cond_1
    rem-int v2, p3, p2

    sub-int/2addr p3, v2

    .line 2
    div-int/2addr p3, p2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    add-int/2addr p3, v2

    add-int/2addr p1, v1

    .line 3
    rem-int v2, p1, p2

    if-nez v2, :cond_4

    .line 4
    div-int/2addr p1, p2

    if-ne p3, p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    sub-int/2addr p1, v2

    .line 5
    div-int/2addr p1, p2

    add-int/2addr p1, v1

    if-ne p3, p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method private isLastColumn(II)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    return v0

    :cond_0
    add-int/2addr p1, v0

    rem-int/2addr p1, p2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public drawHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 3
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    if-gez v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->d:Ljava/util/List;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    instance-of v3, v2, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$f;

    if-eqz v3, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 8
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    .line 10
    iget v5, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->c:I

    add-int/2addr v5, v4

    .line 11
    iget-object v6, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v3, v4, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 12
    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 3
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    if-gez v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->d:Ljava/util/List;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    instance-of v3, v2, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$f;

    if-eqz v3, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    .line 8
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    .line 9
    iget v5, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->b:I

    add-int/2addr v5, v3

    .line 10
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 11
    iget-object v6, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v3, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 12
    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    .line 1
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-gez p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->d:Ljava/util/List;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 3
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 4
    :cond_1
    invoke-direct {p0, p3}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->a(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p4

    .line 5
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    .line 6
    invoke-direct {p0, p2, p4}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->c(II)Z

    move-result v1

    .line 7
    invoke-direct {p0, p2, p4, p3}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->d(III)Z

    move-result p3

    .line 8
    invoke-direct {p0, p2, p4}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->b(II)Z

    move-result v2

    .line 9
    invoke-direct {p0, p2, p4}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->isLastColumn(II)Z

    move-result p2

    const/4 v3, 0x1

    if-ne p4, v3, :cond_4

    if-eqz v1, :cond_2

    .line 10
    iget p2, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->c:I

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, v0, v0, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 11
    iget p2, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->c:I

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, v0, p2, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 12
    :cond_3
    iget p2, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->c:I

    div-int/lit8 p3, p2, 0x2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, v0, p3, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    :cond_4
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 13
    iget p2, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->b:I

    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->c:I

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    :cond_5
    if-eqz v1, :cond_6

    if-eqz p2, :cond_6

    .line 14
    iget p2, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->b:I

    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->c:I

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p1, p2, v0, v0, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    :cond_6
    if-eqz v1, :cond_7

    .line 15
    iget p2, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->b:I

    div-int/lit8 p3, p2, 0x2

    div-int/lit8 p2, p2, 0x2

    iget p4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->c:I

    div-int/lit8 p4, p4, 0x2

    invoke-virtual {p1, p3, v0, p2, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_7
    if-eqz p3, :cond_8

    if-eqz v2, :cond_8

    .line 16
    iget p2, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->c:I

    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->b:I

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p1, v0, p2, p3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_8
    if-eqz p3, :cond_9

    if-eqz p2, :cond_9

    .line 17
    iget p2, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->b:I

    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->c:I

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_9
    if-eqz p3, :cond_a

    .line 18
    iget p2, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->b:I

    div-int/lit8 p3, p2, 0x2

    iget p4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->c:I

    div-int/lit8 p4, p4, 0x2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p3, p4, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_a
    if-eqz v2, :cond_b

    .line 19
    iget p2, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->c:I

    div-int/lit8 p3, p2, 0x2

    iget p4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->b:I

    div-int/lit8 p4, p4, 0x2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, v0, p3, p4, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_b
    if-eqz p2, :cond_c

    .line 20
    iget p2, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->b:I

    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->c:I

    div-int/lit8 p4, p3, 0x2

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p1, p2, p4, v0, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 21
    :cond_c
    iget p2, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->b:I

    div-int/lit8 p3, p2, 0x2

    iget p4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->c:I

    div-int/lit8 v0, p4, 0x2

    div-int/lit8 p2, p2, 0x2

    div-int/lit8 p4, p4, 0x2

    invoke-virtual {p1, p3, v0, p2, p4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->drawHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
