.class public final Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel<",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0006\u0010\u0010\u001a\u00020\u0011J\u0016\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010\u0016\u001a\u00020\u0011R(\u0010\u0004\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00060\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR \u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\t\"\u0004\u0008\u000f\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "()V",
        "helloGiftNewUserLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;",
        "getHelloGiftNewUserLiveData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setHelloGiftNewUserLiveData",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "helloSummonLiveData",
        "Lcom/guochao/faceshow/aaspring/beans/EventTrackData;",
        "getHelloSummonLiveData",
        "setHelloSummonLiveData",
        "checkSummonHelloUser",
        "",
        "loadHelloStarSummonData",
        "liveId",
        "",
        "startTime",
        "summonHelloUser",
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


# instance fields
.field private helloGiftNewUserLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private helloSummonLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/guochao/faceshow/aaspring/beans/EventTrackData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;->helloGiftNewUserLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 3
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;->helloSummonLiveData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final checkSummonHelloUser()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/i;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;->helloSummonLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/EventTrackData;

    const/4 v2, 0x3

    const-string v3, "\u65e0\u7f51\u7edc"

    invoke-direct {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/beans/EventTrackData;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    const-string v1, "api/token/live/helloCallLog/checkCall"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;->GET:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->method(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccessClz(Ljava/lang/reflect/Type;)V

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel$checkSummonHelloUser$$inlined$success$1;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel$checkSummonHelloUser$$inlined$success$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;)V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccess(Lkotlin/jvm/functions/Function1;)V

    .line 6
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFailClz(Ljava/lang/Class;)V

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel$checkSummonHelloUser$$inlined$fail$1;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel$checkSummonHelloUser$$inlined$fail$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;)V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFail(Lkotlin/jvm/functions/Function1;)V

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    return-void
.end method

.method public final getHelloGiftNewUserLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;->helloGiftNewUserLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getHelloSummonLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/guochao/faceshow/aaspring/beans/EventTrackData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;->helloSummonLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final loadHelloStarSummonData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-class v0, Lcom/guochao/faceshow/aaspring/beans/HelloStarSummonListBean$Result;

    const-string v1, "liveId"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "startTime"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/i;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;->helloGiftNewUserLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    new-instance v2, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    const-string v3, "api/token/live/helloLog/helloList"

    invoke-direct {v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;->GET:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->method(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v2

    .line 4
    invoke-virtual {v2, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->addQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    const-string v1, "liveStartTime"

    .line 5
    invoke-virtual {p1, v1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->addQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccessClz(Ljava/lang/reflect/Type;)V

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object p2

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel$loadHelloStarSummonData$$inlined$success$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel$loadHelloStarSummonData$$inlined$success$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;)V

    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccess(Lkotlin/jvm/functions/Function1;)V

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFailClz(Ljava/lang/Class;)V

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object p2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel$loadHelloStarSummonData$$inlined$fail$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel$loadHelloStarSummonData$$inlined$fail$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;)V

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFail(Lkotlin/jvm/functions/Function1;)V

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    return-void
.end method

.method public final setHelloGiftNewUserLiveData(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;->helloGiftNewUserLiveData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setHelloSummonLiveData(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/guochao/faceshow/aaspring/beans/EventTrackData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;->helloSummonLiveData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final summonHelloUser()V
    .locals 4

    .line 1
    const-class v0, Ljava/lang/Object;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/i;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;->helloSummonLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/EventTrackData;

    const/4 v2, 0x3

    const-string v3, "\u65e0\u7f51\u7edc"

    invoke-direct {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/beans/EventTrackData;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    const-string v2, "api/token/live/helloCallLog/call"

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;-><init>(Ljava/lang/String;)V

    .line 4
    sget-object v2, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;->GET:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->method(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccessClz(Ljava/lang/reflect/Type;)V

    .line 6
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel$summonHelloUser$$inlined$success$1;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel$summonHelloUser$$inlined$success$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;)V

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccess(Lkotlin/jvm/functions/Function1;)V

    .line 7
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFailClz(Ljava/lang/Class;)V

    .line 8
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v0

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel$summonHelloUser$$inlined$fail$1;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel$summonHelloUser$$inlined$fail$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;)V

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFail(Lkotlin/jvm/functions/Function1;)V

    .line 9
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    return-void
.end method
