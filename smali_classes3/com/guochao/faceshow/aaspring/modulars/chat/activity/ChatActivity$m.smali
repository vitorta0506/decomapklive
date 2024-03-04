.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$m;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->onSelectGift(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/util/List;IZIILcom/guochao/faceshow/gift/SendGiftCallBack;)V
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
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

.field final synthetic b:I

.field final synthetic c:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

.field final synthetic d:Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;

.field final synthetic e:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$m;->e:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$m;->a:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$m;->b:I

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$m;->c:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    iput-object p5, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$m;->d:Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 1
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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$m;->e:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-virtual {p1}, Lg7/a;->a()I

    move-result p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender;->sendGiftFailure(Landroidx/fragment/app/FragmentActivity;I)V

    return-void
.end method

.method public onResponse(Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
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
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$m;->e:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$m;->a:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$m;->b:I

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$m;->c:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-static {p1, p2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->access$1200(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$m;->d:Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$m;->a:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$m;->onResponse(Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
