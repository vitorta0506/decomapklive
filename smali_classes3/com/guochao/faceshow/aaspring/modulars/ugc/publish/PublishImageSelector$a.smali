.class Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$a;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_4

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->a(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->a(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getMediaType()I

    move-result p2

    const/16 v1, 0x68

    if-lt p2, v1, :cond_1

    .line 4
    invoke-static {v0, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 6
    instance-of p2, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez p2, :cond_3

    instance-of p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    goto :goto_1

    :cond_3
    :goto_0
    const/16 p1, 0xf

    .line 7
    :goto_1
    invoke-static {p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1

    .line 8
    :cond_4
    :goto_2
    invoke-static {v0, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 2
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 3
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    invoke-static {p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->a(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getMediaType()I

    move-result p3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->a(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getMediaType()I

    move-result v0

    if-eq p3, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-ge p1, p2, :cond_1

    move p3, p1

    :goto_0
    if-ge p3, p2, :cond_2

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->a(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-static {v0, p3, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move p3, v1

    goto :goto_0

    :cond_1
    move p3, p1

    :goto_1
    if-le p3, p2, :cond_2

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->a(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p3, -0x1

    invoke-static {v0, p3, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    .line 6
    :cond_2
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    invoke-static {p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->b(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "zune"

    const-string p2, "onSwiped"

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
