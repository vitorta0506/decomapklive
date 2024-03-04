.class public final Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/LiveHelloStartInviteViewHolder;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0017\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001c\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0016J\u001c\u0010\u000b\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\u0018\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000c2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0016R$\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/LiveHelloStartInviteViewHolder;",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;",
        "last",
        "message",
        "",
        "onBind",
        "Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;",
        "item",
        "Landroid/view/View;",
        "view",
        "onItemClick",
        "",
        "onCreatePopupMenus",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;",
        "liveInviteMessage",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;",
        "getLiveInviteMessage",
        "()Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;",
        "setLiveInviteMessage",
        "(Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;)V",
        "Landroid/content/Context;",
        "context",
        "itemView",
        "<init>",
        "(Landroid/content/Context;Landroid/view/View;)V",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private liveInviteMessage:Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/LiveHelloStartInviteViewHolder;Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/LiveHelloStartInviteViewHolder;->onBind$lambda-3$lambda-2$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/LiveHelloStartInviteViewHolder;Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;Landroid/view/View;)V

    return-void
.end method

.method private static final onBind$lambda-3$lambda-2$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/LiveHelloStartInviteViewHolder;Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$it"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;->getLiveId()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/guochao/faceshow/utils/LiveInfoUtils;->getLiveInfoAndJumpIfNeed(Ljava/lang/String;Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p0

    const-string p1, "click_imchat_liveroom"

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getLiveInviteMessage()Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/LiveHelloStartInviteViewHolder;->liveInviteMessage:Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;

    return-object v0
.end method

.method public onBind(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0c63

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0ca1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/LiveHelloStartInviteViewHolder;->liveInviteMessage:Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;

    if-eqz p2, :cond_3

    const v1, 0x7f0603ce

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    const v3, 0x7f06009c

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    :goto_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;->getContentEnd()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    const v1, 0x7f060093

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    :goto_1
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/a;

    invoke-direct {p1, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/LiveHelloStartInviteViewHolder;Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public onCreatePopupMenus(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)Ljava/util/List;
    .locals 4
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;",
            ")",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    const v3, 0x7f1201f8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;-><init>(ILjava/lang/String;)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isSelf()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getStatus()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->isErrorMsg()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    const v3, 0x7f120187

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;-><init>(ILjava/lang/String;)V

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public onItemClick(Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->onItemClick(Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;Landroid/view/View;)V

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;->getId()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->revokeCurrentMessage()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->deleteCurrentMessage()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setLiveInviteMessage(Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/LiveHelloStartInviteViewHolder;->liveInviteMessage:Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;

    return-void
.end method
