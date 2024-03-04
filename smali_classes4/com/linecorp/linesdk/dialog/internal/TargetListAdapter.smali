.class public Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$a;,
        Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/dialog/internal/TargetUser;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/dialog/internal/TargetUser;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$a;


# direct methods
.method static synthetic a(Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;)I
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->c:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linecorp/linesdk/dialog/internal/TargetUser;

    .line 7
    invoke-virtual {v1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iget-object v2, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 10
    iget-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public c(Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;I)V
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/linecorp/linesdk/dialog/internal/TargetUser;

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->d:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$a;

    invoke-virtual {p1, p2, v0}, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->d(Lcom/linecorp/linesdk/dialog/internal/TargetUser;Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$a;)V

    return-void
.end method

.method public d(Landroid/view/ViewGroup;I)Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/linecorp/linesdk/R$layout;->layout_target_item:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 3
    new-instance p2, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;-><init>(Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;Landroid/view/ViewGroup;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->c(Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->d(Landroid/view/ViewGroup;I)Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;

    move-result-object p1

    return-object p1
.end method
