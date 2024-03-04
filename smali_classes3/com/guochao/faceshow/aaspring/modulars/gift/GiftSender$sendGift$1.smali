.class public final Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendGift$1;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender;->sendGift(Landroidx/lifecycle/LifecycleOwner;Ljava/util/Map;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V
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
        "com/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendGift$1",
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
.field final synthetic $callBack:Lcom/guochao/faceshow/aaspring/base/http/callback/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field final synthetic $params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/base/http/callback/c;Ljava/util/Map;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/lifecycle/LifecycleOwner;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendGift$1;->$callBack:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendGift$1;->$params:Ljava/util/Map;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendGift$1;->$lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 9
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
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    const v1, 0x15f91

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v2, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendGift$1;->$params:Ljava/util/Map;

    const-string v0, "unixTime"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendGift$1;->$params:Ljava/util/Map;

    const-string v0, "XX"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 5
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendGift$1;->$lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 6
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendGift$1;->$params:Ljava/util/Map;

    .line 7
    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendGift$1;->$callBack:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    .line 8
    invoke-static/range {v2 .. v8}, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender;->access$getNewSign(Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender;JLjava/lang/String;Landroidx/lifecycle/LifecycleOwner;Ljava/util/Map;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendGift$1;->$callBack:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onFailure(Lg7/a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResponse(Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
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

    const-string v0, "baseResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendGift$1;->$callBack:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendGift$1;->onResponse(Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
