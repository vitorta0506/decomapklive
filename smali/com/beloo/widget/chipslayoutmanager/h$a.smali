.class Lcom/beloo/widget/chipslayoutmanager/h$a;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beloo/widget/chipslayoutmanager/h;->b(Landroid/content/Context;IILcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/beloo/widget/chipslayoutmanager/h;


# direct methods
.method constructor <init>(Lcom/beloo/widget/chipslayoutmanager/h;Landroid/content/Context;Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;II)V
    .locals 0

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/h$a;->d:Lcom/beloo/widget/chipslayoutmanager/h;

    iput-object p3, p0, Lcom/beloo/widget/chipslayoutmanager/h$a;->a:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    iput p4, p0, Lcom/beloo/widget/chipslayoutmanager/h$a;->b:I

    iput p5, p0, Lcom/beloo/widget/chipslayoutmanager/h$a;->c:I

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/h$a;->a:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->c()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/beloo/widget/chipslayoutmanager/h$a;->b:I

    if-le v1, p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    :goto_0
    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method protected onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearSmoothScroller;->onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V

    .line 2
    iget-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/h$a;->d:Lcom/beloo/widget/chipslayoutmanager/h;

    invoke-static {p2}, Lcom/beloo/widget/chipslayoutmanager/h;->x(Lcom/beloo/widget/chipslayoutmanager/h;)Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result p2

    .line 3
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/h$a;->d:Lcom/beloo/widget/chipslayoutmanager/h;

    invoke-static {v0}, Lcom/beloo/widget/chipslayoutmanager/h;->x(Lcom/beloo/widget/chipslayoutmanager/h;)Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p1, p2

    .line 4
    iget p2, p0, Lcom/beloo/widget/chipslayoutmanager/h$a;->c:I

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p3, v1, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method
