.class public final Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;
.super Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J \u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0008H\u0002J\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0008H\u0002J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "itemView",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "bind",
        "",
        "item",
        "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
        "bindToConversation",
        "alwaysTop",
        "Landroid/widget/ImageView;",
        "avatarView",
        "Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;",
        "clearUnRead",
        "conversationInfo",
        "showItemDialog",
        "showSummery",
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


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private static final bind$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Landroid/view/View;)Z
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;->showItemDialog(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static final bind$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.beans.ConversationInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 3
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;->clearUnRead(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V

    const/16 p0, 0x8

    .line 4
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private static final bind$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;)V
    .locals 1

    const-string v0, "$holder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$alwaysTop"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$avatarView"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p5, :cond_1

    .line 2
    invoke-virtual {p1, p5}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setConversationInfoDetail(Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;)V

    .line 3
    invoke-direct {p2, p1, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;->bindToConversation(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f0a0dc5

    const-string p2, ""

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const/4 p0, 0x0

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p4, p0, p1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->f(Lp7/h;Z)V

    :goto_0
    return-void
.end method

.method private final bindToConversation(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v0

    const v1, 0x7f0a0e13

    .line 2
    invoke-virtual {p0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a0dc5

    invoke-virtual {p0, v3, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isMvpConversation()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    invoke-virtual {p3, v0, v3, v4}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->g(Lp7/h;ZZ)V

    const v5, 0x7f0f0156

    .line 6
    invoke-virtual {p3, v5}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->setPendantRes(I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p3, v0, v4}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->f(Lp7/h;Z)V

    .line 8
    :goto_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result v5

    if-eqz v5, :cond_1

    .line 9
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;->setVipLevel(I)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLocalFaceRes()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->setAvatarOnly(I)V

    .line 14
    :cond_4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getAlwaysTop()I

    move-result v0

    if-ne v0, v4, :cond_5

    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    const/16 v0, 0x8

    :goto_3
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationType()I

    move-result p2

    if-ne p2, v1, :cond_6

    const/4 p2, 0x1

    goto :goto_4

    :cond_6
    const/4 p2, 0x0

    :goto_4
    if-eqz p2, :cond_7

    .line 16
    invoke-virtual {p3, v2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->t(I)V

    goto :goto_5

    :cond_7
    const/4 v0, 0x5

    .line 17
    invoke-virtual {p3, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->t(I)V

    .line 18
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isMvpConversation()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 19
    invoke-virtual {p3, v3}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->r(Z)V

    :cond_8
    :goto_5
    if-nez p2, :cond_9

    .line 20
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getOnlineStatus()I

    move-result p1

    if-ne p1, v4, :cond_9

    const/4 v3, 0x1

    :cond_9
    invoke-virtual {p3, v3}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->setOnline(Z)V

    return-void
.end method

.method public static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;->bind$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;)V

    return-void
.end method

.method private final clearUnRead(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setUnreadNum(I)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "conversationInfo.conversationId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->clearUnread(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getTIMConversation()Lcom/tencent/imsdk/v2/V2TIMConversation;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUserID()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2$clearUnRead$1;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2$clearUnRead$1;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->markC2CMessageAsRead(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method

.method public static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;->bind$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;)V

    return-void
.end method

.method public static synthetic e(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;->bind$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(ZLcom/guochao/faceshow/aaspring/beans/ConversationInfo;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;->showItemDialog$lambda-4(ZLcom/guochao/faceshow/aaspring/beans/ConversationInfo;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private final showItemDialog(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "itemView.context.getString(R.string.delete)"

    const v4, 0x7f1201f8

    if-eqz v0, :cond_1

    new-array v2, v2, [Ljava/lang/String;

    .line 2
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v2, v1

    goto :goto_2

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getAlwaysTop()I

    move-result v5

    if-ne v5, v2, :cond_2

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f12000d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "itemView.context.getString(R.string.Cancel_top)"

    goto :goto_1

    :cond_2
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f120079

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "itemView.context.getStri\u2026acement\n                )"

    :goto_1
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object v5, v6, v1

    .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v6, v2

    move-object v2, v6

    .line 5
    :goto_2
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/a;

    invoke-direct {v3, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/a;-><init>(ZLcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 7
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final showItemDialog$lambda-4(ZLcom/guochao/faceshow/aaspring/beans/ConversationInfo;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "$conversationInfo"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->removeConversation(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V

    return-void

    :cond_0
    const/4 p0, 0x1

    if-eqz p3, :cond_2

    if-eq p3, p0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->G0(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getAlwaysTop()I

    move-result p2

    if-ne p2, p0, :cond_3

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setAlwaysTop(I)V

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setAlwaysTop(I)V

    .line 6
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->R0(Z)V

    :goto_1
    return-void
.end method

.method private final showSummery(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLastMsgStr()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a02e4

    .line 2
    invoke-virtual {p0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    const v4, 0x7f0a07a2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {p0, v4, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v4, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 6
    :goto_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLastMsgTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const v0, 0x7f0a0b96

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    .line 7
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLastMsgTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 9
    invoke-static {v2, v3, v4}, Lcom/guochao/faceshow/utils/TimeUtil;->getIMTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {p0, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p0, v0, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 12
    :goto_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getIsDraft()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    const/16 p1, 0x8

    :goto_2
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final bind(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V
    .locals 14
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/b;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getUnreadNum()I

    move-result v0

    const v1, 0x7f0a0d6b

    .line 4
    invoke-virtual {p0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getSilent()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    const/16 v8, 0x8

    if-lez v0, :cond_5

    if-eqz v3, :cond_3

    if-eqz v6, :cond_3

    .line 7
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_3
    const/16 v6, 0x63

    if-le v0, v6, :cond_4

    const-string v0, "99+"

    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_2

    .line 9
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 10
    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_5
    const-string v0, "0"

    .line 11
    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 12
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    if-nez v3, :cond_6

    const-string v0, "#FF417D"

    .line 13
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 14
    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->setDrawColor(I)V

    goto :goto_4

    .line 15
    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06008d

    .line 16
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 17
    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->setDrawColor(I)V

    .line 18
    :goto_4
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 19
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;)V

    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->setOnDismissAction(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$b;)V

    const v0, 0x7f0a04f5

    .line 20
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/ImageView;

    const v0, 0x7f0a00fd

    .line 21
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 22
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationType()I

    move-result v0

    if-ne v0, v7, :cond_7

    const/4 v4, 0x1

    .line 23
    :cond_7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v0

    if-nez v0, :cond_9

    if-eqz v4, :cond_8

    goto :goto_5

    .line 24
    :cond_8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getTIMConversation()Lcom/tencent/imsdk/v2/V2TIMConversation;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 25
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getTIMConversation()Lcom/tencent/imsdk/v2/V2TIMConversation;

    move-result-object v0

    .line 26
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUserID()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/c;

    move-object v8, v2

    move-object v9, p0

    move-object v10, p1

    move-object v11, p0

    invoke-direct/range {v8 .. v13}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;)V

    invoke-virtual {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/manager/im/b;->v0(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/manager/im/d$b;)V

    goto :goto_6

    .line 27
    :cond_9
    :goto_5
    invoke-direct {p0, p1, v12, v13}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;->bindToConversation(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;)V

    .line 28
    :cond_a
    :goto_6
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;->showSummery(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V

    return-void
.end method
