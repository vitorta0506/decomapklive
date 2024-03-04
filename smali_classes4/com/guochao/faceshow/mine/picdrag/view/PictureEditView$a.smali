.class Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView$a;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView$a;->a:Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

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

    const/4 p1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    if-ltz p2, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView$a;->a:Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->a(Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;)Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView$a;->a:Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->a(Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;)Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    .line 4
    iget v0, p2, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->localType:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->isIllegal()Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_2

    :cond_1
    :goto_0
    return p1

    :catch_0
    move-exception p2

    .line 5
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const/16 p2, 0x33

    .line 6
    invoke-static {p2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

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
    iget-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView$a;->a:Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->a(Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;)Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    .line 2
    iget v0, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->localType:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->isIllegal()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMove: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "     "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PictureEditView"

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView$a;->a:Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->getData()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {p1, v0, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView$a;->a:Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->a(Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;)Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V

    return-void
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    if-nez p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView$a;->a:Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->b(Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;)Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView$a;->a:Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->b(Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;)Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView$b;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView$a;->a:Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;

    invoke-static {p2}, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->a(Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;)Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->e()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView$b;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwiped: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "      "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PictureEditView"

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
