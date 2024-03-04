.class public Lcom/guochao/faceshow/aaspring/views/RecycleBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "Landroid/widget/LinearLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/RecycleBehavior;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0701f7

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/RecycleBehavior;->c:I

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07010a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/RecycleBehavior;->b:I

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700f6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RecycleBehavior;->a:I

    return-void
.end method

.method private a(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0825

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 3
    invoke-direct {p0, v2}, Lcom/guochao/faceshow/aaspring/views/RecycleBehavior;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p3}, Lcom/guochao/faceshow/aaspring/views/RecycleBehavior;->a(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public c(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Landroid/view/View;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 2
    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float v0, p3

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/RecycleBehavior;->b:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 3
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/RecycleBehavior;->a:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    int-to-float p3, p3

    mul-float v0, v0, p3

    .line 4
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float p1, p1

    add-float/2addr v0, p1

    int-to-float p1, v1

    add-float/2addr v0, p1

    float-to-int p1, v0

    int-to-float p1, p1

    .line 5
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setY(F)V

    const/4 p1, 0x1

    return p1
.end method

.method public d(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;I)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;IIII)Z
    .locals 8

    .line 1
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/views/RecycleBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p5}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 4
    invoke-static {p5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p5

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 6
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/RecycleBehavior;->c:I

    sub-int/2addr p5, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p5, v0

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RecycleBehavior;->a:I

    add-int/2addr p5, v0

    .line 7
    invoke-static {p5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v7, p6

    .line 8
    invoke-virtual/range {v2 .. v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object p2

    .line 2
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/views/RecycleBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    .line 3
    invoke-direct {p0, p4}, Lcom/guochao/faceshow/aaspring/views/RecycleBehavior;->a(Landroid/view/View;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p2

    const p4, 0x7f0a095c

    .line 5
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    .line 8
    iget p4, p0, Lcom/guochao/faceshow/aaspring/views/RecycleBehavior;->c:I

    if-ne p2, p4, :cond_0

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    :cond_0
    return p3
.end method

.method public bridge synthetic layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/RecycleBehavior;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/RecycleBehavior;->c(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/RecycleBehavior;->d(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 0

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/guochao/faceshow/aaspring/views/RecycleBehavior;->e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;IIII)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/guochao/faceshow/aaspring/views/RecycleBehavior;->f(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method
