.class public Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"

# interfaces
.implements Lu/k;


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private b:Z

.field private c:I

.field private d:I

.field private e:Z

.field private f:Ljava/lang/Integer;

.field private g:I

.field private h:Ljava/lang/Integer;

.field private i:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->f:Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->g:I

    .line 4
    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->h:Ljava/lang/Integer;

    .line 5
    iput v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->i:I

    .line 6
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-void
.end method

.method static synthetic g(Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->b:Z

    return p1
.end method

.method static synthetic h(Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-object p0
.end method

.method private j(I)V
    .locals 0

    iput p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->d:I

    return-void
.end method

.method private k(I)V
    .locals 0

    iput p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->c:I

    return-void
.end method


# virtual methods
.method public O()Z
    .locals 1

    iget-boolean v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->e:Z

    return v0
.end method

.method public a()I
    .locals 1

    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->d:I

    return v0
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->g:I

    .line 2
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->i:I

    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    new-instance v1, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter$a;

    invoke-direct {v1, p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter$a;-><init>(Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->e:Z

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->c:I

    return v0
.end method

.method public f(II)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->k(I)V

    .line 3
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->h:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->j(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->k(I)V

    .line 5
    invoke-direct {p0, p2}, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->j(I)V

    :goto_0
    return-void
.end method

.method i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->b:Z

    return v0
.end method

.method public onItemRangeRemoved(II)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->b:Z

    .line 3
    iget p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->g:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->f:Ljava/lang/Integer;

    .line 4
    iget p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->i:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->h:Ljava/lang/Integer;

    return-void
.end method
