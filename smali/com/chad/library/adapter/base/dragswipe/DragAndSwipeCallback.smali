.class public Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# instance fields
.field private a:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

.field private b:F

.field private c:F

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/chad/library/adapter/base/module/BaseDraggableModule;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    const v0, 0x3dcccccd    # 0.1f

    .line 2
    iput v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->b:F

    const v0, 0x3f333333    # 0.7f

    .line 3
    iput v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->c:F

    const/16 v0, 0xf

    .line 4
    iput v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->d:I

    const/16 v0, 0x20

    .line 5
    iput v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->e:I

    .line 6
    iput-object p1, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->a:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const v0, 0x10000111

    if-eq p1, v0, :cond_1

    const v0, 0x10000222

    if-eq p1, v0, :cond_1

    const v0, 0x10000333

    if-eq p1, v0, :cond_1

    const v0, 0x10000555

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    invoke-direct {p0, p2}, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/chad/library/R$id;->BaseQuickAdapter_dragging_support:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->a:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->onItemDragEnd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 7
    :cond_1
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 8
    :cond_2
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/chad/library/R$id;->BaseQuickAdapter_swiping_support:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->a:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->onItemSwipeClear(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 12
    :cond_3
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public getMoveThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p1, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->b:F

    return p1
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p2}, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-static {p1, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1

    .line 3
    :cond_0
    iget p1, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->d:I

    iget p2, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->e:I

    invoke-static {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public getSwipeThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p1, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->c:F

    return p1
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->a:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isSwipeEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->a:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isDragEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->a:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->hasToggleView()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onChildDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    const/4 p2, 0x1

    if-ne p6, p2, :cond_2

    .line 2
    invoke-direct {p0, p3}, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 3
    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 p6, 0x0

    cmpl-float p6, p4, p6

    if-lez p6, :cond_0

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p6

    int-to-float p6, p6

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    .line 7
    invoke-virtual {p1, p6, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p6

    int-to-float p6, p6

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p6, p2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p6

    int-to-float p6, p6

    add-float/2addr p6, p4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    .line 11
    invoke-virtual {p1, p6, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p6

    int-to-float p6, p6

    add-float/2addr p6, p4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p6, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->a:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    if-eqz v0, :cond_1

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p7

    .line 14
    invoke-virtual/range {v0 .. v5}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->onItemSwiping(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFZ)V

    .line 15
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V

    .line 2
    iget-object p1, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->a:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p2, p4}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->onItemDragMoving(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 1
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->a:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->onItemDragStart(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/chad/library/R$id;->BaseQuickAdapter_dragging_support:I

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 5
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->a:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->onItemSwipeStart(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 8
    :cond_2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/chad/library/R$id;->BaseQuickAdapter_swiping_support:I

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 9
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->a:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->onItemSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method
