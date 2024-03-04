.class public final Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel$checkSummonHelloUser$$inlined$success$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;->checkSummonHelloUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
        "Ljava/lang/Object;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u00012\u000e\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004H\n\u00a2\u0006\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "_response",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;",
        "",
        "invoke",
        "com/guochao/faceshow/aaspring/base/http/v2/GCRequest$success$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel$checkSummonHelloUser$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel$checkSummonHelloUser$$inlined$success$1;->invoke(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "_response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel$checkSummonHelloUser$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;->getHelloSummonLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/EventTrackData;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/beans/EventTrackData;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel$checkSummonHelloUser$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;->summonHelloUser()V

    goto :goto_2

    .line 7
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getMsg()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel$checkSummonHelloUser$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;->getHelloSummonLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/EventTrackData;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lcom/guochao/faceshow/aaspring/beans/EventTrackData;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method
