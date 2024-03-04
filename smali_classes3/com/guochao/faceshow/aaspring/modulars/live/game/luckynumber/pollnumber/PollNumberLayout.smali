.class public Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$d;,
        Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

.field private c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

.field private d:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

.field private e:I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
        to = 0x3e7L
    .end annotation
.end field

.field private f:Landroid/view/View;

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->a:Ljava/util/List;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->g:Landroid/os/Handler;

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->f:Landroid/view/View;

    .line 5
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->g(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->f:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;)Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    return-object p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;)Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    return-object p0
.end method

.method static synthetic e(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;)Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->d:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    return-object p0
.end method

.method private f(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/ScrollSpeedLinearLayoutManger;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/ScrollSpeedLinearLayoutManger;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private g(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a03de

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    const v0, 0x7f0a0a31

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    const v0, 0x7f0a0b8b

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->d:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->a:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->f(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->f(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->d:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->f(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->d:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->d:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->d:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 17
    :cond_3
    invoke-static {}, Lb9/a;->a()Lb9/a;

    move-result-object p1

    invoke-virtual {p1}, Lb9/a;->b()V

    return-void
.end method


# virtual methods
.method public h()V
    .locals 2

    .line 1
    invoke-static {}, Lb9/a;->a()Lb9/a;

    move-result-object v0

    invoke-virtual {v0}, Lb9/a;->d()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public i(IZZ)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x3e7L
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->e:I

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 2
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->f:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 3
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->g:Landroid/os/Handler;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p3, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    const/16 p3, 0x3e7

    const/4 v0, 0x0

    .line 4
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 5
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->e:I

    .line 6
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    const/16 v0, 0xa

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 7
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 8
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->d:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 9
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->f:Landroid/view/View;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;IZ)V

    invoke-virtual {p3, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
