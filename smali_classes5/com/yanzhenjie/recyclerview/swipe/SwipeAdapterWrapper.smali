.class public Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private d:Landroid/view/LayoutInflater;

.field private e:Lbg/d;

.field private f:Lbg/f;

.field private g:Lbg/a;

.field private h:Lbg/b;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->a:Landroidx/collection/SparseArrayCompat;

    .line 3
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->b:Landroidx/collection/SparseArrayCompat;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->d:Landroid/view/LayoutInflater;

    .line 5
    iput-object p2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method static synthetic a(Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;)Lbg/a;
    .locals 0

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->g:Lbg/a;

    return-object p0
.end method

.method static synthetic b(Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;)Lbg/b;
    .locals 0

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->h:Lbg/b;

    return-object p0
.end method

.method private e()I
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method private i(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->i(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->b:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->f()I

    move-result v1

    const v2, 0x30d40

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->a:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->g()I

    move-result v1

    const v2, 0x186a0

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->b:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->a:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->g()I

    move-result v0

    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->e()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->f()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->k(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->j(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->a:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->j(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->b:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->g()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->e()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result p1

    return p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->g()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public h()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public j(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->g()I

    move-result v0

    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->e()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public k(I)Z
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->g()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method l(Lbg/a;)V
    .locals 0

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->g:Lbg/a;

    return-void
.end method

.method m(Lbg/b;)V
    .locals 0

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->h:Lbg/b;

    return-void
.end method

.method n(Lbg/d;)V
    .locals 0

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->e:Lbg/d;

    return-void
.end method

.method o(Lbg/f;)V
    .locals 0

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->f:Lbg/f;

    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->k(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->j(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 3
    instance-of v1, v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    if-eqz v1, :cond_2

    .line 4
    check-cast v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    .line 5
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 6
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7
    instance-of v4, v3, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;

    if-eqz v4, :cond_1

    .line 8
    check-cast v3, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;

    invoke-virtual {v3, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->g()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->a:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$c;

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->a:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p1, p2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$c;-><init>(Landroid/view/View;)V

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->b:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    new-instance p1, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$c;

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->b:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p1, p2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$c;-><init>(Landroid/view/View;)V

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->g:Lbg/a;

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$a;

    invoke-direct {v2, p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$a;-><init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->h:Lbg/b;

    if-eqz v1, :cond_3

    .line 9
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$b;

    invoke-direct {v2, p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$b;-><init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->e:Lbg/d;

    if-nez v1, :cond_4

    return-object v0

    .line 11
    :cond_4
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->d:Landroid/view/LayoutInflater;

    sget v2, Lcom/yanzhenjie/recyclerview/swipe/R$layout;->recycler_swipe_view_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    .line 12
    new-instance v1, Lbg/c;

    invoke-direct {v1, p1, p2}, Lbg/c;-><init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;I)V

    .line 13
    new-instance v2, Lbg/c;

    invoke-direct {v2, p1, p2}, Lbg/c;-><init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;I)V

    .line 14
    iget-object v3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->e:Lbg/d;

    invoke-interface {v3, v1, v2, p2}, Lbg/d;->a(Lbg/c;Lbg/c;I)V

    .line 15
    invoke-virtual {v1}, Lbg/c;->a()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v3, 0x1

    if-lez p2, :cond_5

    .line 16
    sget p2, Lcom/yanzhenjie/recyclerview/swipe/R$id;->swipe_left:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;

    .line 17
    invoke-virtual {v1}, Lbg/c;->b()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 18
    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->f:Lbg/f;

    invoke-virtual {p2, v1, p1, v4, v3}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->c(Lbg/c;Lbg/g;Lbg/f;I)V

    .line 19
    :cond_5
    invoke-virtual {v2}, Lbg/c;->a()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_6

    .line 20
    sget p2, Lcom/yanzhenjie/recyclerview/swipe/R$id;->swipe_right:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;

    .line 21
    invoke-virtual {v2}, Lbg/c;->b()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 22
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->f:Lbg/f;

    const/4 v4, -0x1

    invoke-virtual {p2, v2, p1, v1, v4}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->c(Lbg/c;Lbg/g;Lbg/f;I)V

    .line 23
    :cond_6
    sget p2, Lcom/yanzhenjie/recyclerview/swipe/R$id;->swipe_content:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 24
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 25
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->i(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    const-string v1, "itemView"

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 26
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 27
    :cond_7
    invoke-virtual {p2, v0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->k(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->j(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->k(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->j(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->k(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->j(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->k(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->j(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method public unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method
