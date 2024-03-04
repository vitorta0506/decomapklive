.class public Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;
.super Landroidx/core/widget/NestedScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/View;

.field private c:F

.field private final d:Ljava/lang/Runnable;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Z

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010080

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$a;

    invoke-direct {p1, p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$a;-><init>(Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;)V

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->d:Ljava/lang/Runnable;

    const/16 p1, 0xa

    .line 5
    iput p1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->i:I

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->k:Z

    .line 7
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->p()V

    return-void
.end method

.method static synthetic a(Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->b:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b(Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;Landroid/view/View;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->j(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;Landroid/view/View;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->i(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;Landroid/view/View;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->k(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;)F
    .locals 0

    iget p0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->c:F

    return p0
.end method

.method private f(Landroid/view/View;)Z
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->l(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sticky"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private g()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 2
    invoke-direct {p0, v3}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->m(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    iget-boolean v6, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->g:Z

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v6

    :goto_1
    add-int/2addr v5, v6

    if-gtz v5, :cond_4

    if-eqz v1, :cond_3

    .line 4
    invoke-direct {p0, v1}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->m(Landroid/view/View;)I

    move-result v6

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v7

    sub-int/2addr v6, v7

    iget-boolean v7, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->g:Z

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v4

    :goto_2
    add-int/2addr v6, v4

    if-le v5, v6, :cond_0

    :cond_3
    move-object v1, v3

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_6

    .line 6
    invoke-direct {p0, v2}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->m(Landroid/view/View;)I

    move-result v6

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v7

    sub-int/2addr v6, v7

    iget-boolean v7, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->g:Z

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v4

    :goto_3
    add-int/2addr v6, v4

    if-ge v5, v6, :cond_0

    :cond_6
    move-object v2, v3

    goto :goto_0

    :cond_7
    if-eqz v1, :cond_c

    if-nez v2, :cond_8

    const/4 v0, 0x0

    goto :goto_5

    .line 8
    :cond_8
    invoke-direct {p0, v2}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->m(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    sub-int/2addr v0, v2

    iget-boolean v2, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->g:Z

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    goto :goto_4

    .line 9
    :cond_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 10
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    :goto_5
    iput v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->c:F

    .line 11
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->b:Landroid/view/View;

    if-eq v1, v0, :cond_e

    if-eqz v0, :cond_b

    .line 12
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->l:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$b;

    .line 14
    iget-object v3, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->b:Landroid/view/View;

    invoke-interface {v2, v3}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$b;->a(Landroid/view/View;)V

    goto :goto_6

    .line 15
    :cond_a
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->s()V

    .line 16
    :cond_b
    invoke-direct {p0, v1}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->j(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->e:I

    .line 17
    invoke-direct {p0, v1}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->r(Landroid/view/View;)V

    .line 18
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->l:Ljava/util/List;

    if-eqz v0, :cond_e

    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$b;

    .line 20
    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->b:Landroid/view/View;

    invoke-interface {v1, v2}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$b;->b(Landroid/view/View;)V

    goto :goto_7

    .line 21
    :cond_c
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->b:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 22
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->l:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$b;

    .line 24
    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->b:Landroid/view/View;

    invoke-interface {v1, v2}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$b;->a(Landroid/view/View;)V

    goto :goto_8

    .line 25
    :cond_d
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->s()V

    :cond_e
    return-void
.end method

.method private h(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->f(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->h(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private i(Landroid/view/View;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private j(Landroid/view/View;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private k(Landroid/view/View;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private l(Landroid/view/View;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private m(Landroid/view/View;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private n(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->s()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->h(Landroid/view/View;)V

    .line 5
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->g()V

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private q(Landroid/view/View;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private r(Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->b:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->l(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "-hastransparency"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->b:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->n(Landroid/view/View;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->b:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->l(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "-nonconstant"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->d:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->b:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->l(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-hastransparency"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->b:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->q(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->b:Landroid/view/View;

    .line 4
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->d:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addOnViewStickyListener(Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->l:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->l:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->h(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;I)V

    .line 4
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->h(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 0

    .line 7
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 8
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->h(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 5
    invoke-super {p0, p1, p2, p3}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->h(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->h(Landroid/view/View;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->b:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->e:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->c:F

    add-float/2addr v1, v2

    iget-boolean v2, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->g:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->c:F

    neg-float v0, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 8
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    iget v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->e:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->b:Landroid/view/View;

    .line 9
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->i:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    .line 10
    invoke-virtual {p1, v1, v0, v2, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 11
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 13
    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 14
    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->i:I

    add-int/2addr v4, v5

    .line 15
    iget-object v5, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v3, v0, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 16
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 17
    :cond_2
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->g:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->c:F

    neg-float v0, v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->b:Landroid/view/View;

    .line 18
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 19
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 20
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->b:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->l(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-hastransparency"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->b:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->q(Landroid/view/View;)V

    .line 22
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 23
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->b:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->n(Landroid/view/View;)V

    goto :goto_3

    .line 24
    :cond_4
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 25
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->f:Z

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->f:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->f:Z

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->c:F

    add-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->b:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->j(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->b:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->k(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->f:Z

    goto :goto_2

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->b:Landroid/view/View;

    if-nez v0, :cond_4

    .line 9
    iput-boolean v2, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->f:Z

    .line 10
    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->f:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->c:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->b:Landroid/view/View;

    .line 12
    invoke-direct {p0, v3}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->m(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float v2, v2, v1

    .line 13
    invoke-virtual {p1, v0, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 14
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->d:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/core/widget/NestedScrollView;->onLayout(ZIIII)V

    .line 2
    iget-boolean p1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->h:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->g:Z

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->o()V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/core/widget/NestedScrollView;->onScrollChanged(IIII)V

    .line 2
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->g()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->c:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->b:Landroid/view/View;

    .line 3
    invoke-direct {p0, v2}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->m(Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 6
    iput-boolean v1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->k:Z

    .line 7
    :cond_1
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->k:Z

    if-eqz v0, :cond_2

    .line 8
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 10
    invoke-super {p0, v0}, Landroidx/core/widget/NestedScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 11
    iput-boolean v1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->k:Z

    .line 12
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 13
    :cond_3
    iput-boolean v1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->k:Z

    .line 14
    :cond_4
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public p()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public removeOnViewStickyListener(Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 2
    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->g:Z

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->h:Z

    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->j:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setShadowHeight(I)V
    .locals 0

    iput p1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->i:I

    return-void
.end method
