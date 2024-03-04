.class public abstract Lu/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/h;
.implements Lcom/beloo/widget/chipslayoutmanager/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/a$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/graphics/Rect;",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field e:I

.field f:I

.field g:I

.field h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private m:Ls/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private n:Lcom/beloo/widget/chipslayoutmanager/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private o:Lt/n;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private p:Lw/n;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private q:Lx/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private r:Lv/h;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private s:Lt/q;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lu/j;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lt/p;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private v:Lu/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lu/a$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lu/a;->d:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lu/a;->i:I

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lu/a;->t:Ljava/util/Set;

    .line 5
    invoke-static {p1}, Lu/a$a;->a(Lu/a$a;)Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v0

    iput-object v0, p0, Lu/a;->l:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 6
    invoke-static {p1}, Lu/a$a;->b(Lu/a$a;)Ls/a;

    move-result-object v0

    iput-object v0, p0, Lu/a;->m:Ls/a;

    .line 7
    invoke-static {p1}, Lu/a$a;->e(Lu/a$a;)Lcom/beloo/widget/chipslayoutmanager/d;

    move-result-object v0

    iput-object v0, p0, Lu/a;->n:Lcom/beloo/widget/chipslayoutmanager/d;

    .line 8
    invoke-static {p1}, Lu/a$a;->f(Lu/a$a;)Lt/n;

    move-result-object v0

    iput-object v0, p0, Lu/a;->o:Lt/n;

    .line 9
    invoke-static {p1}, Lu/a$a;->g(Lu/a$a;)Lw/n;

    move-result-object v0

    iput-object v0, p0, Lu/a;->p:Lw/n;

    .line 10
    invoke-static {p1}, Lu/a$a;->h(Lu/a$a;)Lx/e;

    move-result-object v0

    iput-object v0, p0, Lu/a;->q:Lx/e;

    .line 11
    invoke-static {p1}, Lu/a$a;->i(Lu/a$a;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lu/a;->f:I

    .line 12
    invoke-static {p1}, Lu/a$a;->i(Lu/a$a;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lu/a;->e:I

    .line 13
    invoke-static {p1}, Lu/a$a;->i(Lu/a$a;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lu/a;->g:I

    .line 14
    invoke-static {p1}, Lu/a$a;->i(Lu/a$a;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lu/a;->h:I

    .line 15
    invoke-static {p1}, Lu/a$a;->j(Lu/a$a;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lu/a;->t:Ljava/util/Set;

    .line 16
    invoke-static {p1}, Lu/a$a;->k(Lu/a$a;)Lv/h;

    move-result-object v0

    iput-object v0, p0, Lu/a;->r:Lv/h;

    .line 17
    invoke-static {p1}, Lu/a$a;->l(Lu/a$a;)Lt/p;

    move-result-object v0

    iput-object v0, p0, Lu/a;->u:Lt/p;

    .line 18
    invoke-static {p1}, Lu/a$a;->c(Lu/a$a;)Lt/q;

    move-result-object v0

    iput-object v0, p0, Lu/a;->s:Lt/q;

    .line 19
    invoke-static {p1}, Lu/a$a;->d(Lu/a$a;)Lu/b;

    move-result-object p1

    iput-object p1, p0, Lu/a;->v:Lu/b;

    return-void
.end method

.method private P()V
    .locals 2

    .line 1
    iget-object v0, p0, Lu/a;->t:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/j;

    .line 2
    invoke-interface {v1, p0}, Lu/j;->a(Lu/h;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private t(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    .line 1
    iget-object v0, p0, Lu/a;->o:Lt/n;

    invoke-virtual {p0}, Lu/a;->D()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    invoke-interface {v0, p1}, Lt/n;->a(I)I

    move-result p1

    .line 2
    iget-object v0, p0, Lu/a;->u:Lt/p;

    invoke-interface {v0, p1}, Lt/p;->a(I)Lt/o;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lu/a;->G()I

    move-result v0

    invoke-virtual {p0}, Lu/a;->C()I

    move-result v1

    invoke-interface {p1, v0, v1, p2}, Lt/o;->a(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method private u(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/a;->l:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lu/a;->b:I

    .line 2
    iget-object v0, p0, Lu/a;->l:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lu/a;->a:I

    .line 3
    iget-object v0, p0, Lu/a;->l:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lu/a;->c:I

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 1

    iget v0, p0, Lu/a;->c:I

    return v0
.end method

.method public final B()I
    .locals 1

    iget v0, p0, Lu/a;->a:I

    return v0
.end method

.method public abstract C()I
.end method

.method public D()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lu/a;->l:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    return-object v0
.end method

.method public abstract E()I
.end method

.method public F()I
    .locals 1

    iget v0, p0, Lu/a;->i:I

    return v0
.end method

.method public abstract G()I
.end method

.method public H()I
    .locals 1

    iget v0, p0, Lu/a;->e:I

    return v0
.end method

.method public final I()I
    .locals 1

    iget v0, p0, Lu/a;->h:I

    return v0
.end method

.method public final J()I
    .locals 1

    iget v0, p0, Lu/a;->g:I

    return v0
.end method

.method public K()I
    .locals 1

    iget v0, p0, Lu/a;->f:I

    return v0
.end method

.method abstract L(Landroid/view/View;)Z
.end method

.method public final M()Z
    .locals 1

    iget-object v0, p0, Lu/a;->p:Lw/n;

    invoke-interface {v0, p0}, Lw/n;->b(Lu/a;)Z

    move-result v0

    return v0
.end method

.method abstract N()Z
.end method

.method public O()Z
    .locals 1

    iget-boolean v0, p0, Lu/a;->k:Z

    return v0
.end method

.method abstract Q()V
.end method

.method abstract R(Landroid/view/View;)V
.end method

.method abstract S()V
.end method

.method T(Lw/n;)V
    .locals 0
    .param p1    # Lw/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lu/a;->p:Lw/n;

    return-void
.end method

.method U(Lx/e;)V
    .locals 0
    .param p1    # Lx/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lu/a;->q:Lx/e;

    return-void
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lu/a;->n:Lcom/beloo/widget/chipslayoutmanager/d;

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/d;->c()I

    move-result v0

    return v0
.end method

.method public final k()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lu/a;->S()V

    .line 2
    iget-object v0, p0, Lu/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lu/a;->s:Lt/q;

    invoke-virtual {p0}, Lu/a;->y()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lt/q;->a(Lu/a;Ljava/util/List;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lu/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 5
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    .line 6
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Landroid/view/View;

    .line 7
    invoke-direct {p0, v4, v2}, Lu/a;->t(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lu/a;->q:Lx/e;

    invoke-interface {v2, v4}, Lx/e;->a(Landroid/view/View;)V

    .line 9
    iget-object v3, p0, Lu/a;->l:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v3 .. v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lu/a;->Q()V

    .line 11
    invoke-direct {p0}, Lu/a;->P()V

    .line 12
    iget v0, p0, Lu/a;->i:I

    iput v0, p0, Lu/a;->j:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lu/a;->i:I

    .line 14
    iget-object v1, p0, Lu/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 15
    iput-boolean v0, p0, Lu/a;->k:Z

    return-void
.end method

.method public final l()I
    .locals 1

    iget-object v0, p0, Lu/a;->n:Lcom/beloo/widget/chipslayoutmanager/d;

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/d;->l()I

    move-result v0

    return v0
.end method

.method public m()Lu/b;
    .locals 1

    iget-object v0, p0, Lu/a;->v:Lu/b;

    return-object v0
.end method

.method public final n()I
    .locals 1

    iget-object v0, p0, Lu/a;->n:Lcom/beloo/widget/chipslayoutmanager/d;

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/d;->n()I

    move-result v0

    return v0
.end method

.method public final o(Landroid/view/View;)Z
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lu/a;->l:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 2
    invoke-direct {p0, p1}, Lu/a;->u(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0}, Lu/a;->v()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 4
    iput-boolean v2, p0, Lu/a;->k:Z

    .line 5
    invoke-virtual {p0}, Lu/a;->k()V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lu/a;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 7
    :cond_1
    iget v0, p0, Lu/a;->i:I

    add-int/2addr v0, v2

    iput v0, p0, Lu/a;->i:I

    .line 8
    invoke-virtual {p0, p1}, Lu/a;->w(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lu/a;->d:Ljava/util/List;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2
.end method

.method public final p(Landroid/view/View;)Z
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lu/a;->u(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0, p1}, Lu/a;->L(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lu/a;->P()V

    .line 4
    iput v1, p0, Lu/a;->i:I

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lu/a;->R(Landroid/view/View;)V

    .line 6
    invoke-virtual {p0}, Lu/a;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 7
    :cond_1
    iget v0, p0, Lu/a;->i:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lu/a;->i:I

    .line 8
    iget-object v0, p0, Lu/a;->l:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;)V

    return v1
.end method

.method public final q()I
    .locals 1

    iget-object v0, p0, Lu/a;->n:Lcom/beloo/widget/chipslayoutmanager/d;

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/d;->q()I

    move-result v0

    return v0
.end method

.method public s(Lu/j;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lu/a;->t:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final v()Z
    .locals 1

    iget-object v0, p0, Lu/a;->r:Lv/h;

    invoke-interface {v0, p0}, Lv/h;->a(Lu/a;)Z

    move-result v0

    return v0
.end method

.method abstract w(Landroid/view/View;)Landroid/graphics/Rect;
.end method

.method final x()Ls/a;
    .locals 1

    iget-object v0, p0, Lu/a;->m:Ls/a;

    return-object v0
.end method

.method public y()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu/o;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lu/a;->d:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-virtual {p0}, Lu/a;->N()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 5
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 6
    new-instance v3, Lu/o;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lu/a;->l:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    invoke-direct {v3, v4, v2}, Lu/o;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final z()I
    .locals 1

    iget v0, p0, Lu/a;->b:I

    return v0
.end method
