.class public final Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$1;
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
        "Lcom/guochao/faceshow/aaspring/beans/AppResource;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\"\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u00020\u00062\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$1",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c;",
        "Lcom/guochao/faceshow/aaspring/beans/AppResource;",
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

.field final synthetic $sendGiftCallBack:Lcom/guochao/faceshow/gift/SendGiftCallBack;

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/gift/SendGiftCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$1;->$itemBean:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$1;->$count:I

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$1;->$categoryItem:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    iput-object p5, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$1;->$sendGiftCallBack:Lcom/guochao/faceshow/gift/SendGiftCallBack;

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
            "Lcom/guochao/faceshow/aaspring/beans/AppResource;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;

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

.method public onResponse(Lcom/guochao/faceshow/aaspring/beans/AppResource;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/AppResource;
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
            "Lcom/guochao/faceshow/aaspring/beans/AppResource;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/AppResource;",
            ">;)V"
        }
    .end annotation

    const-string v0, "baseResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_5

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$1;->$sendGiftCallBack:Lcom/guochao/faceshow/gift/SendGiftCallBack;

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AppResource;->getBag()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    if-eqz p2, :cond_5

    .line 5
    invoke-interface {p2}, Lcom/guochao/faceshow/gift/SendGiftCallBack;->onSendGiftSuccessful()V

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    .line 6
    invoke-interface {p2, p1}, Lcom/guochao/faceshow/gift/SendGiftCallBack;->onSendGiftFailure(Lcom/guochao/faceshow/aaspring/beans/AppResource;)V

    :cond_4
    return-void

    .line 7
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$1;->$itemBean:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$1;->$count:I

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$1;->$categoryItem:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-static {p1, p2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->access$sendGiftResponse(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/AppResource;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$1;->onResponse(Lcom/guochao/faceshow/aaspring/beans/AppResource;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
