.class public Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$a;,
        Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$a;

.field private d:I

.field public e:Z

.field private f:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/ItemTouchHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/16 p2, 0x8

    .line 2
    iput p2, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->d:I

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->e:Z

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;)Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$a;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->c:Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$a;

    return-object p0
.end method

.method static synthetic c(Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    return-object p0
.end method

.method private f()Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->f:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->f:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    const/4 v1, -0x3

    .line 3
    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->localType:I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->f:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    return-object v0
.end method


# virtual methods
.method public d(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x7

    if-ne p1, v1, :cond_0

    iget p1, v0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->localType:I

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    invoke-direct {p0}, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->f()Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public e()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 4
    iget-object v3, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    iget v3, v3, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->localType:I

    const/4 v4, -0x3

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v3, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    if-nez v3, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iget v3, v3, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->imgId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    return-object v1

    :cond_4
    return-object v0

    :cond_5
    :goto_2
    return-object v1
.end method

.method public g()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    iget v2, v2, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->localType:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    iget p1, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->localType:I

    return p1
.end method

.method public h(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->d:I

    add-int/lit8 v0, v0, 0x1

    if-ne p2, v0, :cond_0

    .line 5
    iput-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->f:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public i(Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;->c(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;I)V

    return-void
.end method

.method public j(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;
    .locals 3

    new-instance p2, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;

    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d03fe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;-><init>(Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->i(Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->j(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;

    move-result-object p1

    return-object p1
.end method

.method public setData(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    const/4 v3, -0x2

    iput v3, v2, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->localType:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->d:I

    if-ge v1, v2, :cond_3

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    invoke-direct {p0}, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->f()Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->d:I

    if-le v1, v2, :cond_5

    if-nez p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    goto :goto_1

    :cond_4
    invoke-interface {p1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a:Ljava/util/List;

    .line 11
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->c:Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$a;

    return-void
.end method
