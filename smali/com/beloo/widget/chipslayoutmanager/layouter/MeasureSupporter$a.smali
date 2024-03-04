.class Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->c(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic b:Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;


# direct methods
.method constructor <init>(Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter$a;->b:Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;

    iput-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic b(Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter$a;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter$a;->b:Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->g(Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;Z)Z

    .line 2
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter$a;->b:Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;

    invoke-static {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->h(Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    new-instance v1, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter$a$a;

    invoke-direct {v1, p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter$a$a;-><init>(Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter$a;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter$a;->c()V

    :goto_0
    return-void
.end method
