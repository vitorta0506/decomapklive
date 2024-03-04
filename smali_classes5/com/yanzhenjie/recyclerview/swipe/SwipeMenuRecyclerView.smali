.class public Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$e;,
        Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$f;,
        Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$g;,
        Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$d;,
        Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$c;
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

.field protected c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;

.field private h:Lbg/d;

.field private i:Lbg/f;

.field private j:Lbg/a;

.field private k:Lbg/b;

.field private l:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

.field private m:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$f;

.field private w:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->c:I

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->f:Z

    .line 6
    new-instance p3, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$b;

    invoke-direct {p3, p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$b;-><init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;)V

    iput-object p3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->m:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 7
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->n:Ljava/util/List;

    .line 8
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->o:Ljava/util/List;

    .line 9
    iput p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->p:I

    .line 10
    iput-boolean p2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->q:Z

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->r:Z

    .line 12
    iput-boolean p2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->s:Z

    .line 13
    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->t:Z

    .line 14
    iput-boolean p2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->u:Z

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->a:I

    return-void
.end method

.method static synthetic a(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;)Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;
    .locals 0

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->l:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    return-object p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->l:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->s:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->r:Z

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->v:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$f;

    if-eqz v0, :cond_4

    .line 4
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->w:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$e;

    invoke-interface {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$f;->c(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$e;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->q:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->t:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->u:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->q:Z

    .line 7
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->v:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$f;

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$f;->a()V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->w:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$e;

    if-eqz v0, :cond_4

    .line 10
    invoke-interface {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$e;->onLoadMore()V

    :cond_4
    :goto_0
    return-void
.end method

.method private d(Landroid/view/View;)Landroid/view/View;
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 6
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-nez v3, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    instance-of v3, v2, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    if-eqz v3, :cond_3

    return-object v2

    .line 8
    :cond_3
    check-cast v2, Landroid/view/ViewGroup;

    .line 9
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_1

    .line 10
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-object p1
.end method

.method private e(IIZ)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->d:I

    sub-int/2addr v0, p1

    .line 2
    iget p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->e:I

    sub-int/2addr p1, p2

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->a:I

    const/4 v2, 0x0

    if-le p2, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le p2, v1, :cond_0

    return v2

    .line 4
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->a:I

    if-ge p1, p2, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->a:I

    if-ge p1, p2, :cond_1

    return v2

    :cond_1
    return p3
.end method

.method private f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->g:Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;

    invoke-direct {v0}, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->g:Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;

    .line 3
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final g(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->q:Z

    .line 2
    iput-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->s:Z

    .line 3
    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->t:Z

    .line 4
    iput-boolean p2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->u:Z

    .line 5
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->v:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$f;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1, p2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$f;->b(ZZ)V

    :cond_0
    return-void
.end method

.method public getFooterItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->l:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->f()I

    move-result v0

    return v0
.end method

.method public getHeaderItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->l:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->g()I

    move-result v0

    return v0
.end method

.method public getOriginAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->l:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->h()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->f:Z

    if-eqz v1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    return v2

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    const/4 v4, 0x0

    if-eqz v1, :cond_c

    if-eq v1, v2, :cond_b

    const/4 v5, 0x2

    if-eq v1, v5, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_b

    goto/16 :goto_4

    .line 7
    :cond_2
    invoke-direct {p0, v3, p1, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->e(IIZ)Z

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->b:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    if-nez v1, :cond_3

    goto/16 :goto_4

    .line 9
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_4

    goto/16 :goto_4

    .line 10
    :cond_4
    iget v5, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->d:I

    sub-int/2addr v5, v3

    if-lez v5, :cond_6

    .line 11
    iget-object v6, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->b:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    invoke-virtual {v6}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->e()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->b:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    invoke-virtual {v6}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->f()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    const/4 v6, 0x1

    goto :goto_0

    :cond_6
    const/4 v6, 0x0

    :goto_0
    if-gez v5, :cond_8

    .line 12
    iget-object v5, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->b:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    invoke-virtual {v5}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->d()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->b:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    invoke-virtual {v5}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->j()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    const/4 v5, 0x1

    goto :goto_1

    :cond_8
    const/4 v5, 0x0

    :goto_1
    if-nez v6, :cond_a

    if-eqz v5, :cond_9

    goto :goto_2

    :cond_9
    const/4 v2, 0x0

    .line 13
    :cond_a
    :goto_2
    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 14
    :cond_b
    invoke-direct {p0, v3, p1, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->e(IIZ)Z

    move-result v0

    goto :goto_4

    .line 15
    :cond_c
    iput v3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->d:I

    .line 16
    iput p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->e:I

    int-to-float v0, v3

    int-to-float p1, p1

    .line 17
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 18
    iget v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->c:I

    if-eq p1, v0, :cond_d

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->b:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 19
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->b:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->o()V

    const/4 v0, 0x1

    goto :goto_3

    :cond_d
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_e

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->b:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->c:I

    goto :goto_4

    .line 22
    :cond_e
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 23
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->d(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 24
    instance-of v2, v1, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    if-eqz v2, :cond_f

    .line 25
    check-cast v1, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    iput-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->b:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    .line 26
    iput p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->c:I

    :cond_f
    :goto_4
    return v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    iput p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->p:I

    return-void
.end method

.method public onScrolled(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 2
    instance-of v1, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_2

    .line 3
    move-object v1, p1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    add-int/2addr v1, v0

    if-ne p1, v1, :cond_5

    .line 6
    iget p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->p:I

    if-eq p1, v0, :cond_1

    if-ne p1, p2, :cond_5

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->c()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_5

    .line 8
    instance-of v1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_5

    .line 9
    move-object v1, p1

    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 10
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    if-gtz p1, :cond_3

    return-void

    :cond_3
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    move-result-object v1

    .line 12
    array-length v2, v1

    sub-int/2addr v2, v0

    aget v1, v1, v2

    add-int/2addr v1, v0

    if-ne p1, v1, :cond_5

    .line 13
    iget p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->p:I

    if-eq p1, v0, :cond_4

    if-ne p1, p2, :cond_5

    .line 14
    :cond_4
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->c()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->b:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->b:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->o()V

    .line 4
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->l:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->h()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->m:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->l:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    goto :goto_2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->m:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 5
    new-instance v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->l:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    .line 6
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->j:Lbg/a;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->l(Lbg/a;)V

    .line 7
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->l:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->k:Lbg/b;

    invoke-virtual {p1, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->m(Lbg/b;)V

    .line 8
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->l:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->h:Lbg/d;

    invoke-virtual {p1, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->n(Lbg/d;)V

    .line 9
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->l:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->i:Lbg/f;

    invoke-virtual {p1, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->o(Lbg/f;)V

    .line 10
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->l:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    invoke-virtual {v1, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->d(Landroid/view/View;)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->o:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 14
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->o:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 15
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->l:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    invoke-virtual {v1, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->c(Landroid/view/View;)V

    goto :goto_1

    .line 16
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->l:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setAutoLoadMore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->r:Z

    return-void
.end method

.method public setItemViewSwipeEnabled(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->f()V

    .line 2
    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->f:Z

    .line 3
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->g:Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;->a(Z)V

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$a;

    invoke-direct {v2, p0, v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$a;-><init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;Landroidx/recyclerview/widget/GridLayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 5
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public setLoadMoreListener(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$e;)V
    .locals 0

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->w:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$e;

    return-void
.end method

.method public setLoadMoreView(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$f;)V
    .locals 0

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->v:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$f;

    return-void
.end method

.method public setLongPressDragEnabled(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->f()V

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->g:Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;->b(Z)V

    return-void
.end method

.method public setOnItemMoveListener(Lcg/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->f()V

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->g:Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;->setOnItemMoveListener(Lcg/a;)V

    return-void
.end method

.method public setOnItemMovementListener(Lcg/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->f()V

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->g:Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;->setOnItemMovementListener(Lcg/b;)V

    return-void
.end method

.method public setOnItemStateChangedListener(Lcg/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->f()V

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->g:Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;->setOnItemStateChangedListener(Lcg/c;)V

    return-void
.end method

.method public setSwipeItemClickListener(Lbg/a;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "Cannot set item click listener, setAdapter has already been called."

    .line 1
    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->b(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$c;

    invoke-direct {v0, p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$c;-><init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;Lbg/a;)V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->j:Lbg/a;

    return-void
.end method

.method public setSwipeItemLongClickListener(Lbg/b;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "Cannot set item long click listener, setAdapter has already been called."

    .line 1
    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->b(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$d;

    invoke-direct {v0, p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$d;-><init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;Lbg/b;)V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->k:Lbg/b;

    return-void
.end method

.method public setSwipeMenuCreator(Lbg/d;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "Cannot set menu creator, setAdapter has already been called."

    .line 1
    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->b(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->h:Lbg/d;

    return-void
.end method

.method public setSwipeMenuItemClickListener(Lbg/f;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "Cannot set menu item click listener, setAdapter has already been called."

    .line 1
    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->b(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$g;

    invoke-direct {v0, p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$g;-><init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;Lbg/f;)V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->i:Lbg/f;

    return-void
.end method
