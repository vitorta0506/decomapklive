.class public Lcom/guochao/faceshow/views/PagingScrollHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/views/PagingScrollHelper$c;,
        Lcom/guochao/faceshow/views/PagingScrollHelper$a;,
        Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnScrollListener;,
        Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;,
        Lcom/guochao/faceshow/views/PagingScrollHelper$b;
    }
.end annotation


# instance fields
.field a:Landroidx/recyclerview/widget/RecyclerView;

.field private b:Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnScrollListener;

.field private c:Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;

.field private d:I

.field private e:I

.field f:I

.field g:I

.field private h:Lcom/guochao/faceshow/views/PagingScrollHelper$b;

.field i:Landroid/animation/ValueAnimator;

.field private j:Lcom/guochao/faceshow/views/PagingScrollHelper$a;

.field private k:Z

.field l:Lcom/guochao/faceshow/views/PagingScrollHelper$c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    new-instance v1, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnScrollListener;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnScrollListener;-><init>(Lcom/guochao/faceshow/views/PagingScrollHelper;)V

    iput-object v1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->b:Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnScrollListener;

    .line 4
    new-instance v1, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;-><init>(Lcom/guochao/faceshow/views/PagingScrollHelper;)V

    iput-object v1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->c:Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->d:I

    .line 6
    iput v1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->e:I

    .line 7
    iput v1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->f:I

    .line 8
    iput v1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->g:I

    .line 9
    sget-object v1, Lcom/guochao/faceshow/views/PagingScrollHelper$b;->a:Lcom/guochao/faceshow/views/PagingScrollHelper$b;

    iput-object v1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->h:Lcom/guochao/faceshow/views/PagingScrollHelper$b;

    .line 10
    iput-object v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->i:Landroid/animation/ValueAnimator;

    .line 11
    new-instance v0, Lcom/guochao/faceshow/views/PagingScrollHelper$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/views/PagingScrollHelper$a;-><init>(Lcom/guochao/faceshow/views/PagingScrollHelper;)V

    iput-object v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->j:Lcom/guochao/faceshow/views/PagingScrollHelper$a;

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->k:Z

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/views/PagingScrollHelper;)Lcom/guochao/faceshow/views/PagingScrollHelper$b;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->h:Lcom/guochao/faceshow/views/PagingScrollHelper$b;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/views/PagingScrollHelper;)I
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/views/PagingScrollHelper;->l()I

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/guochao/faceshow/views/PagingScrollHelper;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->d:I

    return p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/views/PagingScrollHelper;I)I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->d:I

    return v0
.end method

.method static synthetic e(Lcom/guochao/faceshow/views/PagingScrollHelper;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->e:I

    return p0
.end method

.method static synthetic f(Lcom/guochao/faceshow/views/PagingScrollHelper;I)I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->e:I

    return v0
.end method

.method static synthetic g(Lcom/guochao/faceshow/views/PagingScrollHelper;)I
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/views/PagingScrollHelper;->k()I

    move-result p0

    return p0
.end method

.method static synthetic h(Lcom/guochao/faceshow/views/PagingScrollHelper;)Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->c:Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;

    return-object p0
.end method

.method static synthetic i(Lcom/guochao/faceshow/views/PagingScrollHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->k:Z

    return p0
.end method

.method static synthetic j(Lcom/guochao/faceshow/views/PagingScrollHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->k:Z

    return p1
.end method

.method private k()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->h:Lcom/guochao/faceshow/views/PagingScrollHelper$b;

    sget-object v1, Lcom/guochao/faceshow/views/PagingScrollHelper$b;->b:Lcom/guochao/faceshow/views/PagingScrollHelper$b;

    if-ne v0, v1, :cond_1

    .line 3
    iget v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->d:I

    iget-object v1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    div-int/2addr v0, v1

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->e:I

    iget-object v1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    :goto_0
    return v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private l()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->h:Lcom/guochao/faceshow/views/PagingScrollHelper$b;

    sget-object v1, Lcom/guochao/faceshow/views/PagingScrollHelper$b;->b:Lcom/guochao/faceshow/views/PagingScrollHelper$b;

    if-ne v0, v1, :cond_1

    .line 3
    iget v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->f:I

    iget-object v1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    div-int/2addr v0, v1

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->g:I

    iget-object v1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    :goto_0
    return v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public m(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->c:Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->b:Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->j:Lcom/guochao/faceshow/views/PagingScrollHelper$a;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/views/PagingScrollHelper;->n()V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "recycleView must be not null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v0, Lcom/guochao/faceshow/views/PagingScrollHelper$b;->b:Lcom/guochao/faceshow/views/PagingScrollHelper$b;

    iput-object v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->h:Lcom/guochao/faceshow/views/PagingScrollHelper$b;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lcom/guochao/faceshow/views/PagingScrollHelper$b;->a:Lcom/guochao/faceshow/views/PagingScrollHelper$b;

    iput-object v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->h:Lcom/guochao/faceshow/views/PagingScrollHelper$b;

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lcom/guochao/faceshow/views/PagingScrollHelper$b;->c:Lcom/guochao/faceshow/views/PagingScrollHelper$b;

    iput-object v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->h:Lcom/guochao/faceshow/views/PagingScrollHelper$b;

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->i:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->g:I

    .line 10
    iput v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->f:I

    .line 11
    iput v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->e:I

    .line 12
    iput v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper;->d:I

    :cond_3
    return-void
.end method
