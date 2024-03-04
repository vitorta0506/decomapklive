.class Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onReceiveLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$s;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$s;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$s;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getGiftSendList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$s;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getItemBean()Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->from(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    move-result-object v3

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;

    iget-object v4, v4, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserNickName(Ljava/lang/String;)V

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;

    iget-object v4, v4, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserId(Ljava/lang/String;)V

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;

    iget-object v4, v4, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserAvatar(Ljava/lang/String;)V

    .line 7
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;

    iget-object v4, v4, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->d:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserVipMsgr(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 8
    invoke-virtual {v3, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->setIsGiftAllSend(I)V

    .line 9
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$s;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string v6, "LIVE_SEND_GIFT"

    invoke-direct {v5, v6, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    invoke-virtual {v4, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onReceiveLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
