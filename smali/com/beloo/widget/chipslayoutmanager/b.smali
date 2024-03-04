.class Lcom/beloo/widget/chipslayoutmanager/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beloo/widget/chipslayoutmanager/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beloo/widget/chipslayoutmanager/b$a;
    }
.end annotation


# instance fields
.field private a:Lu/g;

.field private b:Lcom/beloo/widget/chipslayoutmanager/a;

.field private c:Lu/m;

.field private d:I


# direct methods
.method constructor <init>(Lu/g;Lcom/beloo/widget/chipslayoutmanager/a;Lu/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/b;->a:Lu/g;

    .line 3
    iput-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/b;->b:Lcom/beloo/widget/chipslayoutmanager/a;

    .line 4
    iput-object p3, p0, Lcom/beloo/widget/chipslayoutmanager/b;->c:Lu/m;

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$Recycler;)I
    .locals 10

    const v0, 0x7fffffff

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, -0x80000000

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/b;->b:Lcom/beloo/widget/chipslayoutmanager/a;

    invoke-virtual {v3}, Lcom/beloo/widget/chipslayoutmanager/a;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 4
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 5
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_2

    .line 6
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v7

    .line 7
    invoke-virtual {p1, v7}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v7

    .line 8
    iget-object v9, p0, Lcom/beloo/widget/chipslayoutmanager/b;->a:Lu/g;

    invoke-interface {v9}, Lu/g;->d()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lt v7, v9, :cond_1

    iget-object v9, p0, Lcom/beloo/widget/chipslayoutmanager/b;->a:Lu/g;

    invoke-interface {v9}, Lu/g;->r()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v7, v9, :cond_2

    :cond_1
    const/4 v5, 0x1

    .line 9
    :cond_2
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v5, :cond_0

    .line 10
    :cond_3
    iget v5, p0, Lcom/beloo/widget/chipslayoutmanager/b;->d:I

    add-int/2addr v5, v8

    iput v5, p0, Lcom/beloo/widget/chipslayoutmanager/b;->d:I

    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v5, p0, Lcom/beloo/widget/chipslayoutmanager/b;->c:Lu/m;

    invoke-interface {v5, v4}, Lu/m;->o(Landroid/view/View;)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 12
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v5, p0, Lcom/beloo/widget/chipslayoutmanager/b;->c:Lu/m;

    invoke-interface {v5, v4}, Lu/m;->b(Landroid/view/View;)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v0, :cond_5

    .line 14
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v5, p1, v0

    :cond_5
    return v5
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/b;->d:I

    return v0
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Lcom/beloo/widget/chipslayoutmanager/b$a;
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/b$a;

    invoke-direct {v0, p0}, Lcom/beloo/widget/chipslayoutmanager/b$a;-><init>(Lcom/beloo/widget/chipslayoutmanager/b;)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 4
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 6
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result v3

    iget-object v4, p0, Lcom/beloo/widget/chipslayoutmanager/b;->a:Lu/g;

    invoke-interface {v4}, Lu/g;->d()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 8
    invoke-static {v0}, Lcom/beloo/widget/chipslayoutmanager/b$a;->a(Lcom/beloo/widget/chipslayoutmanager/b$a;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result v2

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result v3

    iget-object v4, p0, Lcom/beloo/widget/chipslayoutmanager/b;->a:Lu/g;

    invoke-interface {v4}, Lu/g;->r()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 10
    invoke-static {v0}, Lcom/beloo/widget/chipslayoutmanager/b$a;->b(Lcom/beloo/widget/chipslayoutmanager/b$a;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result v2

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/b;->d:I

    return-void
.end method
