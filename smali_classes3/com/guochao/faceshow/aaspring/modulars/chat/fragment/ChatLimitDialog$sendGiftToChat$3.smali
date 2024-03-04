.class public final Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$sendGiftToChat$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->sendGiftToChat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$sendGiftToChat$3",
        "Lp9/a$f;",
        "",
        "onResponse",
        "onCustomRecharge",
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
.field final synthetic $categoryItem:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

.field final synthetic $itemBean:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $userId:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $userName:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$sendGiftToChat$3;->$userId:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$sendGiftToChat$3;->$userName:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$sendGiftToChat$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$sendGiftToChat$3;->$categoryItem:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    iput-object p5, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$sendGiftToChat$3;->$itemBean:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomRecharge()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$sendGiftToChat$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->access$showChargeDialog(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;)V

    return-void
.end method

.method public onResponse()V
    .locals 14

    .line 1
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getDiamond()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$sendGiftToChat$3;->$itemBean:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getPrice()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "price"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 3
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v2

    invoke-virtual {v2}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->setDiamond(Ljava/lang/Integer;)V

    .line 4
    :cond_1
    :goto_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$sendGiftToChat$3;->$userId:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->a:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$sendGiftToChat$3;->$userName:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->b:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$sendGiftToChat$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$sendGiftToChat$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    goto :goto_1

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$sendGiftToChat$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;

    if-eqz v1, :cond_3

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$sendGiftToChat$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type com.guochao.faceshow.component.live.fragment.LiveIMChatFloatFragment"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->getChatActivity()Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v1, :cond_7

    .line 11
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$sendGiftToChat$3;->$categoryItem:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    .line 12
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$sendGiftToChat$3;->$itemBean:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    .line 13
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x73

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$sendGiftToChat$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->access$getMNormalFragment$p(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;)Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitNormalFragment;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-ne v0, v12, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$sendGiftToChat$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->access$getMNormalFragment$p(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;)Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitNormalFragment;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_6

    const/4 v10, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x2

    const/4 v10, 0x2

    :goto_4
    const/4 v11, 0x0

    move-object v3, v1

    .line 15
    invoke-virtual/range {v3 .. v11}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->onSelectGift(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/util/List;IZIILcom/guochao/faceshow/gift/SendGiftCallBack;)V

    :cond_7
    if-eqz v1, :cond_8

    .line 16
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->getChatControllerFragment()Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    move-result-object v0

    goto :goto_5

    :cond_8
    move-object v0, v2

    :goto_5
    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v0, v12}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->n2(Z)V

    :goto_6
    if-eqz v1, :cond_a

    .line 17
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->getChatControllerFragment()Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->c2()Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    move-result-object v2

    :cond_a
    if-nez v2, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v2, v13}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->setIsChat(I)V

    .line 18
    :goto_7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$sendGiftToChat$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->access$dismissSelf(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;)V

    return-void
.end method
