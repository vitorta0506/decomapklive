.class public Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter$a<",
            "TVH;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter$a<",
            "TVH;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter;->a:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter;->b:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter;->c:Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;)V
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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter;->c:Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter$a;

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter$a;->onViewRecycled(Ljava/lang/Object;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter;->c:Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter$a;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter$a;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter;->c:Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter$a;

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter$a;->getItemViewType(I)I

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter;->a:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
    .locals 1
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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter;->c:Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter$a;

    invoke-interface {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter$a;->onBindViewHolder(Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
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

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter;->c:Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter$a;

    invoke-interface {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter$a;->onCreateViewHolder(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    return-object p1
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter;->b(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;)V

    return-void
.end method
