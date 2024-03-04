.class public Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;,
        Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$a;
    }
.end annotation


# static fields
.field private static final m:Ljava/lang/String; = "FlowLayoutManager"


# instance fields
.field final a:Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;

.field protected b:I

.field protected c:I

.field protected d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 2
    iput-object p0, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->a:Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->d:I

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->i:I

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;-><init>(Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->j:Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->k:Ljava/util/List;

    .line 7
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->l:Landroid/util/SparseArray;

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setAutoMeasureEnabled(Z)V

    return-void
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->i:I

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->i:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-direct {p1, p2, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->k:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;

    .line 6
    iget v1, v0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;->a:F

    .line 7
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;->c:Ljava/util/List;

    const/4 v1, 0x0

    .line 8
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$a;

    iget-object v4, v2, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$a;->b:Landroid/view/View;

    .line 10
    invoke-virtual {p0, v4, p1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 11
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$a;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$a;->c:Landroid/graphics/Rect;

    .line 13
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->i:I

    sub-int v7, v3, v6

    iget v8, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v6

    move-object v3, p0

    move v6, v7

    move v7, v8

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private c()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->j:Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;->c:Ljava/util/List;

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$a;

    .line 4
    iget-object v3, v2, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$a;->b:Landroid/view/View;

    .line 5
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    .line 6
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->l:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->j:Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;

    iget v7, v6, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;->a:F

    iget v6, v6, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;->b:F

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$a;

    iget v8, v8, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$a;->a:I

    int-to-float v8, v8

    sub-float/2addr v6, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    add-float/2addr v7, v6

    cmpg-float v5, v5, v7

    if-gez v5, :cond_1

    .line 7
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->l:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    if-nez v5, :cond_0

    .line 8
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 9
    :cond_0
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->l:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->j:Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;

    iget v9, v7, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;->a:F

    iget v7, v7, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;->b:F

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$a;

    iget v10, v10, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$a;->a:I

    int-to-float v10, v10

    sub-float/2addr v7, v10

    div-float/2addr v7, v8

    add-float/2addr v9, v7

    float-to-int v7, v9

    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->l:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->j:Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;

    iget v11, v10, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;->a:F

    iget v10, v10, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;->b:F

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$a;

    iget v12, v12, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$a;->a:I

    int-to-float v12, v12

    sub-float/2addr v10, v12

    div-float/2addr v10, v8

    add-float/2addr v11, v10

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v11, v3

    float-to-int v3, v11

    .line 11
    invoke-virtual {v5, v6, v7, v9, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 12
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->l:Landroid/util/SparseArray;

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    invoke-virtual {v2, v5}, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$a;->a(Landroid/graphics/Rect;)V

    .line 14
    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->j:Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;

    iput-object v0, v1, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;->c:Ljava/util/List;

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;-><init>(Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->j:Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;

    return-void
.end method

.method private e()I
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->a:Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->a:Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->a:Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->d:I

    return v0
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 11

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->m:Ljava/lang/String;

    const-string v1, "onLayoutChildren"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->d:I

    .line 3
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->f:I

    .line 4
    new-instance v2, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;-><init>(Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;)V

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->j:Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->l:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAllViews()V

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 9
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 10
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->i:I

    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 12
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->b:I

    .line 15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->c:I

    .line 16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->e:I

    .line 17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->g:I

    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->f:I

    .line 19
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->b:I

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->e:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->g:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->h:I

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 20
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v5

    if-ge v2, v5, :cond_8

    .line 21
    sget-object v5, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->m:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "index:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    .line 23
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v6, v7, :cond_3

    goto/16 :goto_2

    .line 24
    :cond_3
    invoke-virtual {p0, v5, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 25
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v6

    .line 26
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v7

    add-int v8, v3, v6

    .line 27
    iget v9, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->h:I

    if-gt v8, v9, :cond_5

    .line 28
    iget v9, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->e:I

    add-int/2addr v9, v3

    .line 29
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->l:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    if-nez v3, :cond_4

    .line 30
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    :cond_4
    add-int/2addr v6, v9

    add-int v10, v1, v7

    .line 31
    invoke-virtual {v3, v9, v1, v6, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 32
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->l:Landroid/util/SparseArray;

    invoke-virtual {v6, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 34
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->j:Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;

    new-instance v9, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$a;

    invoke-direct {v9, p0, v7, v5, v3}, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$a;-><init>(Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;ILandroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v6, v9}, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;->a(Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$a;)V

    .line 35
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->j:Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;

    int-to-float v5, v1

    invoke-virtual {v3, v5}, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;->b(F)V

    .line 36
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->j:Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;

    int-to-float v5, v4

    invoke-virtual {v3, v5}, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;->c(F)V

    move v3, v8

    goto :goto_1

    .line 37
    :cond_5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->c()V

    add-int/2addr v1, v4

    .line 38
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->d:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->d:I

    .line 39
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->e:I

    .line 40
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->l:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    if-nez v4, :cond_6

    .line 41
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    :cond_6
    add-int v8, v3, v6

    add-int v9, v1, v7

    .line 42
    invoke-virtual {v4, v3, v1, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 43
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->l:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->j:Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;

    new-instance v8, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$a;

    invoke-direct {v8, p0, v7, v5, v4}, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$a;-><init>(Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;ILandroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v3, v8}, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;->a(Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$a;)V

    .line 45
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->j:Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;->b(F)V

    .line 46
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->j:Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;

    int-to-float v4, v7

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;->c(F)V

    move v3, v6

    move v4, v7

    .line 47
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_7

    .line 48
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->c()V

    .line 49
    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->d:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->d:I

    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 50
    :cond_8
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->d:I

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->e()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->d:I

    .line 51
    sget-object v0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayoutChildren totalHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "totalHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->i:I

    add-int v1, v0, p1

    if-gez v1, :cond_0

    neg-int p1, v0

    goto :goto_0

    :cond_0
    add-int/2addr v0, p1

    .line 3
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->d:I

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->e()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 4
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->d:I

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->e()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->i:I

    sub-int/2addr p1, v0

    .line 5
    :cond_1
    :goto_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->i:I

    neg-int v0, p1

    .line 6
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    .line 7
    invoke-direct {p0, p2, p3}, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return p1
.end method
