.class public Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$MyItemTouchHelperCallBack;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyItemTouchHelperCallBack"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J \u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0011H\u0016J\u0018\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0004H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$MyItemTouchHelperCallBack;",
        "Landroidx/recyclerview/widget/ItemTouchHelper$Callback;",
        "()V",
        "form",
        "",
        "getForm",
        "()I",
        "setForm",
        "(I)V",
        "to",
        "getTo",
        "setTo",
        "clearView",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "viewHolder",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "getMovementFlags",
        "onMove",
        "",
        "target",
        "onSwiped",
        "direction",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private form:I

.field private to:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const-string p1, "FriendGroupManager"

    const-string p2, "clearView"

    .line 2
    invoke-static {p1, p2}, Lcom/tencent/xmagic/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getForm()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$MyItemTouchHelperCallBack;->form:I

    return v0
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "viewHolder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0xf

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public final getTo()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$MyItemTouchHelperCallBack;->to:I

    return v0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$MyItemTouchHelperCallBack;->form:I

    .line 2
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$MyItemTouchHelperCallBack;->to:I

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, p2

    if-eqz v0, :cond_2

    .line 5
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$MyItemTouchHelperCallBack;->form:I

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$MyItemTouchHelperCallBack;->to:I

    if-ge v0, v1, :cond_0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    .line 7
    invoke-static {v2, v0, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v0, v3

    goto :goto_0

    :cond_0
    add-int/2addr v1, p2

    if-gt v1, v0, :cond_1

    .line 8
    :goto_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    .line 9
    invoke-static {v2, v0, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$MyItemTouchHelperCallBack;->form:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getSortNum()Ljava/lang/Integer;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$MyItemTouchHelperCallBack;->form:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$MyItemTouchHelperCallBack;->to:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getSortNum()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->setSortNum(Ljava/lang/Integer;)V

    .line 12
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$MyItemTouchHelperCallBack;->to:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->setSortNum(Ljava/lang/Integer;)V

    .line 13
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$MyItemTouchHelperCallBack;->form:I

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$MyItemTouchHelperCallBack;->to:I

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string p1, "FriendGroupManager"

    const-string p3, "onMove"

    .line 14
    invoke-static {p1, p3}, Lcom/tencent/xmagic/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    :cond_2
    const/4 p2, 0x0

    :catch_1
    :goto_2
    return p2
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "viewHolder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "FriendGroupManager"

    const-string p2, "onSwiped"

    invoke-static {p1, p2}, Lcom/tencent/xmagic/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setForm(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$MyItemTouchHelperCallBack;->form:I

    return-void
.end method

.method public final setTo(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$MyItemTouchHelperCallBack;->to:I

    return-void
.end method
