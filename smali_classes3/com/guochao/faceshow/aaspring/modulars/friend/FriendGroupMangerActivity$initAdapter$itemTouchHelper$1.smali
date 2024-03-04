.class public final Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$initAdapter$itemTouchHelper$1;
.super Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$MyItemTouchHelperCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->initAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J@\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\tH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$initAdapter$itemTouchHelper$1",
        "Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$MyItemTouchHelperCallBack;",
        "onMoved",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "viewHolder",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "fromPos",
        "",
        "target",
        "toPos",
        "x",
        "y",
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
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$initAdapter$itemTouchHelper$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$MyItemTouchHelperCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$initAdapter$itemTouchHelper$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->getMenuItem()Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method
