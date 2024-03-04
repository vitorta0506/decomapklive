.class public final Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment$adapter$1;
.super Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$ConversationAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0014J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0003H\u0014\u00a8\u0006\n"
    }
    d2 = {
        "com/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment$adapter$1",
        "Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$ConversationAdapter;",
        "getDefItemViewType",
        "",
        "position",
        "onCreateDefViewHolder",
        "Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
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
.field final synthetic this$0:Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment$adapter$1;->this$0:Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$ConversationAdapter;-><init>(Z)V

    return-void
.end method


# virtual methods
.method protected getDefItemViewType(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment$adapter$1;->this$0:Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->access$isWatcher$p(Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment$adapter$1;->this$0:Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->access$getBroadCasterId$p(Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x3e8

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$ConversationAdapter;->getDefItemViewType(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment$adapter$1;->onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$ConversationAdapter;->onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;

    move-result-object p1

    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_0

    .line 3
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f080427

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-object p1
.end method
