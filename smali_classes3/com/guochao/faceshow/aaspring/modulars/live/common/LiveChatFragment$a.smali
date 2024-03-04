.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->onSelectGift(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/util/List;IZILcom/guochao/faceshow/gift/SendGiftCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

.field final synthetic d:Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;

.field final synthetic e:I

.field final synthetic f:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$a;->f:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$a;->b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    iput-object p5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$a;->d:Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;

    iput p6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$a;->e:I

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 0
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 6
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$a;->f:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$a;->b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$a;->d:Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->access$100(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$a;->f:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$a;->e:I

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;->getServerTime()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p2, v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->access$000(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;ILcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ljava/lang/Long;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$a;->d:Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$a;->b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->trackEvent(Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$a;->onResponse(Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
