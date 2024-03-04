.class public final Lcom/guochao/faceshow/userhomepage/UserHomePageModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J.\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u001c\u0010\u0016\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u000b0\u0017J\u0018\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u000cJ\u0018\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u000cJ\u0006\u0010\u001d\u001a\u00020\u0013J\u0016\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\u000cJ\u0010\u0010 \u001a\u00020\u00132\u0008\u0010!\u001a\u0004\u0018\u00010\u000cJ\u0016\u0010\"\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020#2\u0006\u0010\u001b\u001a\u00020\u000cJ\u001e\u0010$\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u000b0\nH\u0002J$\u0010%\u001a\u00020\u00132\u001c\u0010\u0016\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u000b0\u0017R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R1\u0010\t\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u000b0\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006&"
    }
    d2 = {
        "Lcom/guochao/faceshow/userhomepage/UserHomePageModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "mUserData",
        "Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;",
        "getMUserData",
        "()Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;",
        "setMUserData",
        "(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;)V",
        "modelLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "",
        "",
        "getModelLiveData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "modelLiveData$delegate",
        "Lkotlin/Lazy;",
        "bind",
        "",
        "lifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "observer",
        "Landroidx/lifecycle/Observer;",
        "deleteFocus",
        "activity",
        "Landroid/app/Activity;",
        "userId",
        "focus",
        "getUserAboutMe",
        "getUserBaseData",
        "account",
        "getUserId",
        "userName",
        "getVoiceInfo",
        "Landroidx/fragment/app/FragmentActivity;",
        "obtainLiveData",
        "unbind",
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
.field private mUserData:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final modelLiveData$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/userhomepage/UserHomePageModel$modelLiveData$2;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel$modelLiveData$2;-><init>(Lcom/guochao/faceshow/userhomepage/UserHomePageModel;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->modelLiveData$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getModelLiveData(Lcom/guochao/faceshow/userhomepage/UserHomePageModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->getModelLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$obtainLiveData(Lcom/guochao/faceshow/userhomepage/UserHomePageModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->obtainLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    return-object p0
.end method

.method private final getModelLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->modelLiveData$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method private final obtainLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final bind(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Observer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "observer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->getModelLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->getModelLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :goto_0
    return-void
.end method

.method public final deleteFocus(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/guochao/faceshow/userhomepage/UserHomePageModel$deleteFocus$1;

    invoke-direct {v0, p2, p0}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel$deleteFocus$1;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/userhomepage/UserHomePageModel;)V

    invoke-static {p2, p1, v0}, Lib/b;->a(Ljava/lang/String;Landroid/app/Activity;Lhb/b;)V

    return-void
.end method

.method public final focus(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;->DEFAULT:Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;

    new-instance v1, Lcom/guochao/faceshow/userhomepage/UserHomePageModel$focus$1;

    invoke-direct {v1, p2, p0}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel$focus$1;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/userhomepage/UserHomePageModel;)V

    invoke-static {p2, v0, p1, v1}, Lib/b;->b(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;Landroid/app/Activity;Lhb/b;)V

    return-void
.end method

.method public final getMUserData()Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->mUserData:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    return-object v0
.end method

.method public final getUserAboutMe()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->mUserData:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "getUserAboutMe"

    .line 3
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->getModelLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final getUserBaseData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "account"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    new-instance p1, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    const-string/jumbo p2, "tokens/PersonalHome/findHomeUserInfo"

    invoke-direct {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->E(Ljava/util/Map;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    new-instance p2, Lcom/guochao/faceshow/userhomepage/UserHomePageModel$getUserBaseData$1;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel$getUserBaseData$1;-><init>(Lcom/guochao/faceshow/userhomepage/UserHomePageModel;)V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public final getUserId(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string/jumbo v1, "tokens/search/getUserIdByNickName"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    const-string v1, "nickName"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/userhomepage/UserHomePageModel$getUserId$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel$getUserId$1;-><init>(Lcom/guochao/faceshow/userhomepage/UserHomePageModel;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public final getVoiceInfo(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 7
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcom/guochao/faceshow/userhomepage/UserHomePageModel$getVoiceInfo$1;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p2, p1}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel$getVoiceInfo$1;-><init>(Lcom/guochao/faceshow/userhomepage/UserHomePageModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setMUserData(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->mUserData:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    return-void
.end method

.method public final unbind(Landroidx/lifecycle/Observer;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/Observer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->getModelLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method
