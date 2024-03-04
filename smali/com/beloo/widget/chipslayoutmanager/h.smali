.class Lcom/beloo/widget/chipslayoutmanager/h;
.super Lcom/beloo/widget/chipslayoutmanager/g;
.source "SourceFile"


# instance fields
.field private e:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;


# direct methods
.method constructor <init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lu/m;Lcom/beloo/widget/chipslayoutmanager/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/beloo/widget/chipslayoutmanager/g;-><init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lu/m;Lcom/beloo/widget/chipslayoutmanager/g$a;)V

    .line 2
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/h;->e:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    return-void
.end method

.method static synthetic x(Lcom/beloo/widget/chipslayoutmanager/h;)Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/h;->e:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    return-object p0
.end method


# virtual methods
.method public b(Landroid/content/Context;IILcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v6, Lcom/beloo/widget/chipslayoutmanager/h$a;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/beloo/widget/chipslayoutmanager/h$a;-><init>(Lcom/beloo/widget/chipslayoutmanager/h;Landroid/content/Context;Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;II)V

    return-object v6
.end method

.method public i()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/g;->d:Lu/g;

    invoke-interface {v0}, Lu/g;->i()V

    .line 2
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/h;->e:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/h;->e:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/g;->d:Lu/g;

    invoke-interface {v2}, Lu/g;->g()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    .line 4
    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/h;->e:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/g;->d:Lu/g;

    invoke-interface {v3}, Lu/g;->f()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/g;->d:Lu/g;

    invoke-interface {v3}, Lu/g;->d()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/g;->d:Lu/g;

    .line 6
    invoke-interface {v3}, Lu/g;->r()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/beloo/widget/chipslayoutmanager/h;->e:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v4}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getItemCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/h;->e:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 7
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v3

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/h;->e:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/h;->e:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    if-gt v2, v0, :cond_0

    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/h;->e:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->D()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method t(I)V
    .locals 1

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/h;->e:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    return-void
.end method
