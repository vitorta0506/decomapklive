.class public Lu/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/m;


# instance fields
.field private a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

.field private b:Lt/r;


# direct methods
.method public constructor <init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lu/e;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 3
    new-instance p1, Lt/j;

    invoke-direct {p1}, Lt/j;-><init>()V

    iput-object p1, p0, Lu/e;->b:Lt/r;

    return-void
.end method

.method private p(Lw/m;Lx/f;Ls/a;)Lu/t;
    .locals 9

    .line 1
    new-instance v8, Lu/t;

    iget-object v1, p0, Lu/e;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    new-instance v2, Lu/d;

    invoke-direct {v2, v1}, Lu/d;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v3, Lv/d;

    iget-object v0, p0, Lu/e;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 2
    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->z()Lv/i;

    move-result-object v0

    iget-object v4, p0, Lu/e;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v4}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->y()Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lv/c;

    invoke-direct {v5}, Lv/c;-><init>()V

    invoke-direct {v3, p3, v0, v4, v5}, Lv/d;-><init>(Ls/a;Lv/i;Ljava/lang/Integer;Lv/g;)V

    new-instance v6, Lt/i;

    invoke-direct {v6}, Lt/i;-><init>()V

    iget-object p3, p0, Lu/e;->b:Lt/r;

    iget-object v0, p0, Lu/e;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 3
    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->A()I

    move-result v0

    invoke-interface {p3, v0}, Lt/r;->a(I)Lt/q;

    move-result-object v7

    move-object v0, v8

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lu/t;-><init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lu/i;Lv/g;Lw/m;Lx/f;Lt/p;Lt/q;)V

    return-object v8
.end method


# virtual methods
.method public a()Lr/a;
    .locals 3

    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/anchor/b;

    iget-object v1, p0, Lu/e;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->v()Lu/g;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/beloo/widget/chipslayoutmanager/anchor/b;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lu/g;)V

    return-object v0
.end method

.method public b(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lu/e;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lu/e;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->v()Lu/g;

    move-result-object v0

    invoke-interface {v0}, Lu/g;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/e;->o(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lu/e;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    return v0
.end method

.method public e(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)I
    .locals 0

    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->a()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    return p1
.end method

.method public f(Lw/m;Lx/f;)Lu/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/e;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->B()Ls/a;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lu/e;->p(Lw/m;Lx/f;Ls/a;)Lu/t;

    move-result-object p1

    return-object p1
.end method

.method public g()I
    .locals 2

    iget-object v0, p0, Lu/e;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    iget-object v1, p0, Lu/e;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lu/e;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->v()Lu/g;

    move-result-object v0

    invoke-interface {v0}, Lu/g;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/e;->b(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 2

    .line 1
    iget-object v0, p0, Lu/e;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    iget-object v1, p0, Lu/e;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lu/e;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 2
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public j()Lcom/beloo/widget/chipslayoutmanager/f;
    .locals 1

    iget-object v0, p0, Lu/e;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->C()Lcom/beloo/widget/chipslayoutmanager/c;

    move-result-object v0

    return-object v0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lu/e;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lu/e;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public m()Lu/g;
    .locals 2

    new-instance v0, Lu/c;

    iget-object v1, p0, Lu/e;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-direct {v0, v1}, Lu/c;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method

.method public n()Lw/a;
    .locals 1

    invoke-static {p0}, Ly/c;->a(Lu/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lw/p;

    invoke-direct {v0}, Lw/p;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lw/b;

    invoke-direct {v0}, Lw/b;-><init>()V

    :goto_0
    return-object v0
.end method

.method public o(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lu/e;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result p1

    return p1
.end method
