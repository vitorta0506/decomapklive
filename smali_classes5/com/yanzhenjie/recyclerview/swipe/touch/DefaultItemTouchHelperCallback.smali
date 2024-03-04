.class public Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# instance fields
.field private a:Lcg/b;

.field private b:Lcg/a;

.field private c:Lcg/c;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->d:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->e:Z

    return-void
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->c:Lcg/c;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, p2, v0}, Lcg/c;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->a:Lcg/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcg/b;->b(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->a:Lcg/b;

    invoke-interface {v1, p1, p2}, Lcg/b;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result p1

    .line 4
    invoke-static {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 6
    instance-of p2, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v0, 0x3

    const/16 v1, 0xc

    if-eqz p2, :cond_2

    .line 7
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p1

    const/16 p2, 0xf

    if-nez p1, :cond_1

    .line 9
    invoke-static {p2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1

    .line 10
    :cond_1
    invoke-static {p2, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1

    .line 11
    :cond_2
    instance-of p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p2, :cond_4

    .line 12
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p1

    if-nez p1, :cond_3

    .line 14
    invoke-static {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1

    .line 15
    :cond_3
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x0

    .line 16
    invoke-static {p1, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->d:Z

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->e:Z

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 4

    const/4 v0, 0x1

    if-ne p6, v0, :cond_2

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 2
    instance-of v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    .line 3
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    div-float/2addr v0, v1

    sub-float/2addr v3, v0

    goto :goto_1

    :cond_0
    if-ne v1, v0, :cond_1

    .line 5
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 7
    :cond_2
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->b:Lcg/a;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p2, p3}, Lcg/a;->b(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->c:Lcg/c;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {v0, p1, p2}, Lcg/c;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->b:Lcg/a;

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2, p1}, Lcg/a;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public setOnItemMoveListener(Lcg/a;)V
    .locals 0

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->b:Lcg/a;

    return-void
.end method

.method public setOnItemMovementListener(Lcg/b;)V
    .locals 0

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->a:Lcg/b;

    return-void
.end method

.method public setOnItemStateChangedListener(Lcg/c;)V
    .locals 0

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->c:Lcg/c;

    return-void
.end method
