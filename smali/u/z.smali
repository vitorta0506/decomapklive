.class Lu/z;
.super Lu/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/z$b;
    }
.end annotation


# instance fields
.field private w:Z


# direct methods
.method private constructor <init>(Lu/z$b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lu/a;-><init>(Lu/a$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lu/z$b;Lu/z$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lu/z;-><init>(Lu/z$b;)V

    return-void
.end method

.method public static V()Lu/z$b;
    .locals 2

    new-instance v0, Lu/z$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/z$b;-><init>(Lu/z$a;)V

    return-object v0
.end method


# virtual methods
.method public C()I
    .locals 1

    invoke-virtual {p0}, Lu/a;->J()I

    move-result v0

    return v0
.end method

.method public E()I
    .locals 2

    iget v0, p0, Lu/a;->f:I

    invoke-virtual {p0}, Lu/a;->l()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public G()I
    .locals 1

    invoke-virtual {p0}, Lu/a;->I()I

    move-result v0

    return v0
.end method

.method L(Landroid/view/View;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lu/a;->D()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lu/a;->D()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p1

    .line 3
    iget v1, p0, Lu/a;->g:I

    if-gt v1, v0, :cond_0

    iget v0, p0, Lu/a;->f:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method N()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method Q()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lu/a;->J()I

    move-result v0

    iput v0, p0, Lu/a;->h:I

    .line 2
    invoke-virtual {p0}, Lu/a;->l()I

    move-result v0

    iput v0, p0, Lu/a;->f:I

    return-void
.end method

.method R(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lu/a;->D()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lu/a;->f:I

    .line 2
    invoke-virtual {p0}, Lu/a;->D()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lu/a;->h:I

    .line 3
    iget v0, p0, Lu/a;->g:I

    invoke-virtual {p0}, Lu/a;->D()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lu/a;->g:I

    return-void
.end method

.method S()V
    .locals 4

    .line 1
    iget-object v0, p0, Lu/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lu/z;->w:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lu/z;->w:Z

    .line 4
    invoke-virtual {p0}, Lu/a;->x()Ls/a;

    move-result-object v0

    invoke-virtual {p0}, Lu/a;->D()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v1

    iget-object v2, p0, Lu/a;->d:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    invoke-interface {v0, v1}, Ls/a;->c(I)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lu/a;->x()Ls/a;

    move-result-object v0

    iget-object v1, p0, Lu/a;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ls/a;->e(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method w(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 5

    .line 1
    new-instance p1, Landroid/graphics/Rect;

    iget v0, p0, Lu/a;->h:I

    iget v1, p0, Lu/a;->f:I

    invoke-virtual {p0}, Lu/a;->B()I

    move-result v2

    add-int/2addr v2, v0

    iget v3, p0, Lu/a;->f:I

    invoke-virtual {p0}, Lu/a;->z()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lu/a;->e:I

    .line 3
    iput v0, p0, Lu/a;->f:I

    .line 4
    iget v0, p0, Lu/a;->g:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lu/a;->g:I

    return-object p1
.end method
