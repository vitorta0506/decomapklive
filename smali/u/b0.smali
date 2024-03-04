.class public Lu/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/m;


# instance fields
.field private a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;


# direct methods
.method public constructor <init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lu/b0;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    return-void
.end method

.method private p()Lu/l;
    .locals 1

    iget-object v0, p0, Lu/b0;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lu/x;

    invoke-direct {v0}, Lu/x;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lu/r;

    invoke-direct {v0}, Lu/r;-><init>()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()Lr/a;
    .locals 3

    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/anchor/c;

    iget-object v1, p0, Lu/b0;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->v()Lu/g;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/beloo/widget/chipslayoutmanager/anchor/c;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lu/g;)V

    return-object v0
.end method

.method public b(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lu/b0;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lu/b0;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->v()Lu/g;

    move-result-object v0

    invoke-interface {v0}, Lu/g;->g()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/b0;->o(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lu/b0;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    return v0
.end method

.method public e(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)I
    .locals 0

    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->a()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    return p1
.end method

.method public f(Lw/m;Lx/f;)Lu/t;
    .locals 10

    .line 1
    invoke-direct {p0}, Lu/b0;->p()Lu/l;

    move-result-object v0

    .line 2
    new-instance v9, Lu/t;

    iget-object v2, p0, Lu/b0;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 3
    invoke-interface {v0, v2}, Lu/l;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lu/i;

    move-result-object v3

    new-instance v4, Lv/d;

    iget-object v1, p0, Lu/b0;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 4
    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->B()Ls/a;

    move-result-object v1

    iget-object v5, p0, Lu/b0;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 5
    invoke-virtual {v5}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->z()Lv/i;

    move-result-object v5

    iget-object v6, p0, Lu/b0;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 6
    invoke-virtual {v6}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->y()Ljava/lang/Integer;

    move-result-object v6

    .line 7
    invoke-interface {v0}, Lu/l;->c()Lv/g;

    move-result-object v7

    invoke-direct {v4, v1, v5, v6, v7}, Lv/d;-><init>(Ls/a;Lv/i;Ljava/lang/Integer;Lv/g;)V

    new-instance v7, Lt/e0;

    invoke-direct {v7}, Lt/e0;-><init>()V

    .line 8
    invoke-interface {v0}, Lu/l;->a()Lt/r;

    move-result-object v0

    iget-object v1, p0, Lu/b0;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->A()I

    move-result v1

    invoke-interface {v0, v1}, Lt/r;->a(I)Lt/q;

    move-result-object v8

    move-object v1, v9

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v8}, Lu/t;-><init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lu/i;Lv/g;Lw/m;Lx/f;Lt/p;Lt/q;)V

    return-object v9
.end method

.method public g()I
    .locals 2

    iget-object v0, p0, Lu/b0;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lu/b0;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lu/b0;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->v()Lu/g;

    move-result-object v0

    invoke-interface {v0}, Lu/g;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/b0;->b(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 2

    .line 1
    iget-object v0, p0, Lu/b0;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lu/b0;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lu/b0;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 2
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public j()Lcom/beloo/widget/chipslayoutmanager/f;
    .locals 1

    iget-object v0, p0, Lu/b0;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->K()Lcom/beloo/widget/chipslayoutmanager/h;

    move-result-object v0

    return-object v0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lu/b0;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lu/b0;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public m()Lu/g;
    .locals 2

    new-instance v0, Lu/a0;

    iget-object v1, p0, Lu/b0;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-direct {v0, v1}, Lu/a0;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

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
    new-instance v0, Lw/q;

    invoke-direct {v0}, Lw/q;-><init>()V

    :goto_0
    return-object v0
.end method

.method public o(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lu/b0;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p1

    return p1
.end method
