.class abstract Lu/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/g;


# instance fields
.field a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private b:Lcom/beloo/widget/chipslayoutmanager/a;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Ljava/lang/Integer;

.field private h:Ljava/lang/Integer;

.field private i:Z


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lu/c0;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/a;

    invoke-direct {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/a;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iput-object v0, p0, Lu/c0;->b:Lcom/beloo/widget/chipslayoutmanager/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)Z
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p0}, Lu/c0;->k()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lu/c0;->e:Landroid/view/View;

    return-object v0
.end method

.method public d()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lu/c0;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method public e()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lu/c0;->f:Landroid/view/View;

    return-object v0
.end method

.method public f()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lu/c0;->d:Landroid/view/View;

    return-object v0
.end method

.method public g()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lu/c0;->c:Landroid/view/View;

    return-object v0
.end method

.method public h(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    iget-object v0, p0, Lu/c0;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lu/c0;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    .line 3
    iget-object v2, p0, Lu/c0;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v2

    .line 4
    iget-object v3, p0, Lu/c0;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p1

    .line 5
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method public i()V
    .locals 7

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lu/c0;->c:Landroid/view/View;

    .line 2
    iput-object v0, p0, Lu/c0;->d:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lu/c0;->e:Landroid/view/View;

    .line 4
    iput-object v0, p0, Lu/c0;->f:Landroid/view/View;

    const/4 v0, -0x1

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lu/c0;->g:Ljava/lang/Integer;

    .line 6
    iput-object v1, p0, Lu/c0;->h:Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lu/c0;->i:Z

    .line 8
    iget-object v2, p0, Lu/c0;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    if-lez v2, :cond_a

    .line 9
    iget-object v2, p0, Lu/c0;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 10
    iput-object v1, p0, Lu/c0;->c:Landroid/view/View;

    .line 11
    iput-object v1, p0, Lu/c0;->d:Landroid/view/View;

    .line 12
    iput-object v1, p0, Lu/c0;->e:Landroid/view/View;

    .line 13
    iput-object v1, p0, Lu/c0;->f:Landroid/view/View;

    .line 14
    iget-object v1, p0, Lu/c0;->b:Lcom/beloo/widget/chipslayoutmanager/a;

    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/a;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 15
    iget-object v3, p0, Lu/c0;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 16
    invoke-virtual {p0, v2}, Lu/c0;->o(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    iget-object v4, p0, Lu/c0;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lu/c0;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v6, p0, Lu/c0;->c:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 18
    iput-object v2, p0, Lu/c0;->c:Landroid/view/View;

    .line 19
    :cond_2
    iget-object v4, p0, Lu/c0;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lu/c0;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v6, p0, Lu/c0;->d:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v5

    if-le v4, v5, :cond_3

    .line 20
    iput-object v2, p0, Lu/c0;->d:Landroid/view/View;

    .line 21
    :cond_3
    iget-object v4, p0, Lu/c0;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lu/c0;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v6, p0, Lu/c0;->e:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 22
    iput-object v2, p0, Lu/c0;->e:Landroid/view/View;

    .line 23
    :cond_4
    iget-object v4, p0, Lu/c0;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lu/c0;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v6, p0, Lu/c0;->f:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v5

    if-le v4, v5, :cond_5

    .line 24
    iput-object v2, p0, Lu/c0;->f:Landroid/view/View;

    .line 25
    :cond_5
    iget-object v2, p0, Lu/c0;->g:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v0, :cond_6

    iget-object v2, p0, Lu/c0;->g:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v3, v2, :cond_7

    .line 26
    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lu/c0;->g:Ljava/lang/Integer;

    .line 27
    :cond_7
    iget-object v2, p0, Lu/c0;->h:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v0, :cond_8

    iget-object v2, p0, Lu/c0;->h:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v3, v2, :cond_9

    .line 28
    :cond_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lu/c0;->h:Ljava/lang/Integer;

    :cond_9
    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 29
    iput-boolean v2, p0, Lu/c0;->i:Z

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public j(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/c0;->h(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lu/c0;->m(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public k()Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-interface {p0}, Lcom/beloo/widget/chipslayoutmanager/d;->c()I

    move-result v1

    invoke-interface {p0}, Lcom/beloo/widget/chipslayoutmanager/d;->l()I

    move-result v2

    invoke-interface {p0}, Lcom/beloo/widget/chipslayoutmanager/d;->q()I

    move-result v3

    invoke-interface {p0}, Lcom/beloo/widget/chipslayoutmanager/d;->n()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public m(Landroid/graphics/Rect;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-interface {p0}, Lcom/beloo/widget/chipslayoutmanager/d;->l()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2
    invoke-interface {p0}, Lcom/beloo/widget/chipslayoutmanager/d;->n()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 3
    invoke-interface {p0}, Lcom/beloo/widget/chipslayoutmanager/d;->c()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 4
    invoke-interface {p0}, Lcom/beloo/widget/chipslayoutmanager/d;->q()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public o(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lu/c0;->h(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu/c0;->a(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public r()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lu/c0;->h:Ljava/lang/Integer;

    return-object v0
.end method
