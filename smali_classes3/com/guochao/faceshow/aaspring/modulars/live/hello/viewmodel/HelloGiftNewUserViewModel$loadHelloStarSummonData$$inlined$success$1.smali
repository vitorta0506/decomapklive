.class public final Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel$loadHelloStarSummonData$$inlined$success$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;->loadHelloStarSummonData(Ljava/lang/String;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel$loadHelloStarSummonData$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel$loadHelloStarSummonData$$inlined$success$1;->invoke(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 1
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

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/HelloStarSummonListBean$Result;

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/HelloStarSummonListBean$Result;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel$loadHelloStarSummonData$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;->getHelloGiftNewUserLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_2

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel$loadHelloStarSummonData$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;->getHelloGiftNewUserLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/HelloStarSummonListBean$Result;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 6
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    if-nez p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel$loadHelloStarSummonData$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;->getHelloGiftNewUserLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
