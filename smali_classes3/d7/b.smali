.class public abstract Ld7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld7/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">",
        "Ljava/lang/Object;",
        "Ld7/a<",
        "TT;TVH;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/content/Context;

.field c:Landroidx/recyclerview/widget/RecyclerView;

.field private d:Ld7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld7/a<",
            "TT;TVH;>;"
        }
    .end annotation
.end field

.field public e:Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter<",
            "TT;TVH;>;"
        }
    .end annotation
.end field

.field public f:Landroid/view/View;

.field protected g:Landroidx/viewpager2/widget/ViewPager2;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld7/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld7/a<",
            "TT;TVH;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld7/b;->h:Ljava/util/List;

    .line 3
    iput-object p1, p0, Ld7/b;->d:Ld7/a;

    return-void
.end method

.method static synthetic c(Ld7/b;)Ld7/a;
    .locals 0

    iget-object p0, p0, Ld7/b;->d:Ld7/a;

    return-object p0
.end method


# virtual methods
.method public addData(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Ld7/b;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDatas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Ld7/b;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public clearAll()V
    .locals 1

    iget-object v0, p0, Ld7/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public abstract convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;ITT;)V"
        }
    .end annotation
.end method

.method public e()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ld7/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method public g(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Ld7/b;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Ld7/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Ld7/b;->d:Ld7/a;

    invoke-interface {v0, p1}, Ld7/a;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ld7/b;->h:Ljava/util/List;

    return-object v0
.end method

.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Ld7/b;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public h(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    iget-object v0, p0, Ld7/b;->d:Ld7/a;

    invoke-interface {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter$a;->onCreateViewHolder(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    return-object p1
.end method

.method public init(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .line 1
    iput-object p1, p0, Ld7/b;->b:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Ld7/b;->a:Landroid/view/View;

    const v0, 0x7f0a095c

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 5
    move-object v1, v0

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Ld7/b;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    invoke-virtual {p0, v1}, Ld7/b;->onCreateLayoutManager(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 7
    iget-object v2, p0, Ld7/b;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    :cond_0
    instance-of v1, v0, Landroidx/viewpager2/widget/ViewPager2;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 9
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Ld7/b;->g:Landroidx/viewpager2/widget/ViewPager2;

    .line 10
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Ld7/b;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    :cond_1
    iget-object v0, p0, Ld7/b;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_5

    const v0, 0x7f0a0332

    .line 12
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ld7/b;->f:Landroid/view/View;

    if-nez v0, :cond_2

    const v0, 0x7f0a095a

    .line 13
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 14
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d02c4

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ld7/b;->f:Landroid/view/View;

    if-eqz p2, :cond_2

    .line 15
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 16
    :cond_2
    iget-object p1, p0, Ld7/b;->f:Landroid/view/View;

    if-eqz p1, :cond_3

    const/16 p2, 0x8

    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :cond_3
    iget-object p1, p0, Ld7/b;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Ld7/b;->onCreateAdapter(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 19
    iget-object p1, p0, Ld7/b;->f:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 20
    new-instance p2, Ld7/b$a;

    invoke-direct {p2, p0}, Ld7/b$a;-><init>(Ld7/b;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void

    .line 21
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "RecyclerViewDelegateImpl must have a recyclerView or a viewPager2 id is @+id/recycler_view"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    iget-object v0, p0, Ld7/b;->d:Ld7/a;

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter$a;->onViewRecycled(Ljava/lang/Object;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Ld7/b;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v1, p0, Ld7/b;->d:Ld7/a;

    invoke-interface {v1, p1, p2, v0}, Ld7/a;->convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V

    .line 4
    invoke-virtual {p0, p1, p2, v0}, Ld7/b;->convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Ld7/b;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public onCreateAdapter(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ")",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "TVH;>;"
        }
    .end annotation

    new-instance p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter;

    iget-object v0, p0, Ld7/b;->b:Landroid/content/Context;

    iget-object v1, p0, Ld7/b;->h:Ljava/util/List;

    iget-object v2, p0, Ld7/b;->d:Ld7/a;

    invoke-direct {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter$a;)V

    iput-object p1, p0, Ld7/b;->e:Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter;

    return-object p1
.end method

.method public onCreateLayoutManager(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 1

    iget-object v0, p0, Ld7/b;->d:Ld7/a;

    invoke-interface {v0, p1}, Ld7/a;->onCreateLayoutManager(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Ld7/b;->h(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onViewRecycled(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0, p1}, Ld7/b;->j(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;)V

    return-void
.end method

.method public setDatas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld7/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Ld7/b;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method
