.class public final Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$2;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->onSelectGift(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/util/List;IZLcom/guochao/faceshow/gift/SendGiftCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\"\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u00020\u00062\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$2",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c;",
        "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;",
        "data",
        "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;",
        "baseResponse",
        "",
        "onResponse",
        "Lg7/a;",
        "exp",
        "onFailure",
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

.field final synthetic $count:I

.field final synthetic $itemBean:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

.field final synthetic $sendGiftRequestModel:Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$2;->$itemBean:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$2;->$count:I

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$2;->$categoryItem:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    iput-object p5, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$2;->$sendGiftRequestModel:Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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

    const-string v0, "exp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender;->sendGiftFailure(Landroidx/fragment/app/FragmentActivity;I)V

    :cond_0
    return-void
.end method

.method public onResponse(Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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

    const-string p1, "baseResponse"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$2;->$itemBean:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$2;->$count:I

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$2;->$categoryItem:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-static {p1, p2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->access$sendGiftResponse(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$2;->$sendGiftRequestModel:Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$2;->$itemBean:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->trackEvent(Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$2;->onResponse(Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
