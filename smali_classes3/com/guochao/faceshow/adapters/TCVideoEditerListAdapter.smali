.class public Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$b;,
        Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/bean/TCVideoFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Z

.field public d:Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->a:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->b:I

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->c:Z

    return p0
.end method


# virtual methods
.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/TCVideoFileInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->setSelected(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->setSelected(Z)V

    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public d(Landroid/content/Context;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0xbb8

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x3e80

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    :cond_0
    const p2, 0x7f1209d6

    .line 4
    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    return-void

    .line 5
    :cond_1
    iget p1, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->b:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/TCVideoFileInfo;

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->setSelected(Z)V

    .line 7
    :cond_2
    iget p1, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->b:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->getDuration()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    cmp-long p1, v3, v5

    if-lez p1, :cond_3

    .line 9
    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->setSelected(Z)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 10
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->setSelected(Z)V

    .line 11
    :goto_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 12
    iput p2, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->b:I

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->d:Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$b;

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->getDuration()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$b;->a(J)V

    :cond_4
    return-void
.end method

.method public e()Lcom/guochao/faceshow/bean/TCVideoFileInfo;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/TCVideoFileInfo;

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public f(Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$ViewHolder;I)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$ViewHolder;->c(Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    invoke-static {p1}, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$ViewHolder;->d(Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/guochao/faceshow/utils/TCUtils;->formattedTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-static {p1}, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$ViewHolder;->e(Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->getDisplayUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, Lhc/a;->g(Landroid/widget/ImageView;Ljava/lang/Object;)V

    .line 6
    invoke-static {p1}, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$ViewHolder;->e(Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$a;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$a;-><init>(Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public g(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d042b

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d027e

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    :goto_0
    new-instance p2, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$ViewHolder;-><init>(Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->c:Z

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->f(Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->g(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public setOnItemClickListener(Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->d:Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$b;

    return-void
.end method
