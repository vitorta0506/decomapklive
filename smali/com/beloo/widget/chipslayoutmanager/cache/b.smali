.class Lcom/beloo/widget/chipslayoutmanager/cache/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls/a;


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private b:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/cache/b;->b:Ljava/util/NavigableSet;

    .line 3
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/cache/b;->c:Ljava/util/NavigableSet;

    const/16 v0, 0x3e8

    .line 4
    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/cache/b;->d:I

    .line 5
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/cache/b;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/beloo/widget/chipslayoutmanager/cache/b;->e:Z

    return-void
.end method

.method private g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/cache/b;->b:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->size()I

    move-result v0

    iget v1, p0, Lcom/beloo/widget/chipslayoutmanager/cache/b;->d:I

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/cache/b;->b:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->first()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableSet;->remove(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/cache/b;->c:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->size()I

    move-result v0

    iget v1, p0, Lcom/beloo/widget/chipslayoutmanager/cache/b;->d:I

    if-le v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/cache/b;->c:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->first()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/cache/b;->c:Ljava/util/NavigableSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/cache/b;->b:Ljava/util/NavigableSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public c(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/cache/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/cache/b;->b:Ljava/util/NavigableSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/cache/b;->b:Ljava/util/NavigableSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/cache/b;->c:Ljava/util/NavigableSet;

    invoke-interface {v0, p1, v2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 9
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public d()Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/cache/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/cache/b;->c:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public e(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/graphics/Rect;",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/beloo/widget/chipslayoutmanager/cache/b;->e:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    .line 4
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/cache/b;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/cache/b;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 6
    invoke-direct {p0}, Lcom/beloo/widget/chipslayoutmanager/cache/b;->g()V

    .line 7
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/cache/b;->b:Ljava/util/NavigableSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/NavigableSet;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/cache/b;->c:Ljava/util/NavigableSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/cache/b;->b:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->clear()V

    .line 2
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/cache/b;->c:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->clear()V

    return-void
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/cache/b;->c:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/beloo/widget/chipslayoutmanager/cache/CacheParcelableContainer;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/beloo/widget/chipslayoutmanager/cache/CacheParcelableContainer;

    .line 3
    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/cache/CacheParcelableContainer;->b()Ljava/util/NavigableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/cache/b;->b:Ljava/util/NavigableSet;

    .line 4
    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/cache/CacheParcelableContainer;->a()Ljava/util/NavigableSet;

    move-result-object p1

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/cache/b;->c:Ljava/util/NavigableSet;

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "wrong parcelable passed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/cache/CacheParcelableContainer;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/cache/b;->b:Ljava/util/NavigableSet;

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/cache/b;->c:Ljava/util/NavigableSet;

    invoke-direct {v0, v1, v2}, Lcom/beloo/widget/chipslayoutmanager/cache/CacheParcelableContainer;-><init>(Ljava/util/NavigableSet;Ljava/util/NavigableSet;)V

    return-object v0
.end method
