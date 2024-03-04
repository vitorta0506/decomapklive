.class public final Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel<",
        "Lcom/guochao/component/mvp/model/MVPInfoModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J@\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00162(\u0010\u0017\u001a$\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001a0\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u001b\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u0018\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001dJF\u0010\u0014\u001a\u00020\u00112\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u001f2(\u0010\u0017\u001a$\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001a0\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u001b\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u0018\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010 J\u0006\u0010\u0008\u001a\u00020\u0011J@\u0010!\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\"2(\u0010\u0017\u001a$\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001a0\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u001b\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u0018\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010#J@\u0010$\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\"2(\u0010\u0017\u001a$\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001a0\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u001b\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u0018\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010#R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006%"
    }
    d2 = {
        "Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;",
        "Lcom/guochao/component/mvp/model/MVPInfoModel;",
        "()V",
        "_myMVPInfo",
        "Landroidx/lifecycle/MutableLiveData;",
        "_userModel",
        "Lcom/guochao/component/mvp/model/UserModel;",
        "myMVPInfo",
        "Landroidx/lifecycle/LiveData;",
        "getMyMVPInfo",
        "()Landroidx/lifecycle/LiveData;",
        "repository",
        "Lcom/guochao/component/mvp/repository/MVPRepository;",
        "userModel",
        "getUserModel",
        "findUserById",
        "",
        "userId",
        "",
        "getReward",
        "bean",
        "Lcom/guochao/component/mvp/model/GetRewardRequestModel;",
        "call",
        "Lkotlin/Function2;",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;",
        "",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lcom/guochao/component/mvp/model/GetRewardRequestModel;Lkotlin/jvm/functions/Function2;)V",
        "list",
        "",
        "(Ljava/util/List;Lkotlin/jvm/functions/Function2;)V",
        "setFreeTime",
        "Lcom/guochao/component/mvp/model/GetInterestsRequestModel;",
        "(Lcom/guochao/component/mvp/model/GetInterestsRequestModel;Lkotlin/jvm/functions/Function2;)V",
        "setWorldTop",
        "component_mvp_release"
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
.field private final _myMVPInfo:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/guochao/component/mvp/model/MVPInfoModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _userModel:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/guochao/component/mvp/model/UserModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final myMVPInfo:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/guochao/component/mvp/model/MVPInfoModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final repository:Lcom/guochao/component/mvp/repository/MVPRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final userModel:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/guochao/component/mvp/model/UserModel;",
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
    new-instance v0, Lcom/guochao/component/mvp/repository/MVPRepository;

    invoke-direct {v0}, Lcom/guochao/component/mvp/repository/MVPRepository;-><init>()V

    iput-object v0, p0, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;->repository:Lcom/guochao/component/mvp/repository/MVPRepository;

    .line 3
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;->_userModel:Landroidx/lifecycle/MutableLiveData;

    .line 4
    iput-object v0, p0, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;->userModel:Landroidx/lifecycle/LiveData;

    .line 5
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;->_myMVPInfo:Landroidx/lifecycle/MutableLiveData;

    .line 6
    iput-object v0, p0, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;->myMVPInfo:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static final synthetic access$getRepository$p(Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;)Lcom/guochao/component/mvp/repository/MVPRepository;
    .locals 0

    iget-object p0, p0, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;->repository:Lcom/guochao/component/mvp/repository/MVPRepository;

    return-object p0
.end method

.method public static final synthetic access$get_myMVPInfo$p(Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;->_myMVPInfo:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$get_userModel$p(Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;->_userModel:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public final findUserById(Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel$findUserById$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel$findUserById$1;-><init>(Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getMyMVPInfo()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/guochao/component/mvp/model/MVPInfoModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;->myMVPInfo:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getReward(Lcom/guochao/component/mvp/model/GetRewardRequestModel;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .param p1    # Lcom/guochao/component/mvp/model/GetRewardRequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/component/mvp/model/GetRewardRequestModel;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Integer;",
            ">;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel$getReward$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel$getReward$1;-><init>(Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;Lcom/guochao/component/mvp/model/GetRewardRequestModel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getReward(Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/component/mvp/model/GetRewardRequestModel;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Integer;",
            ">;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel$getReward$2;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel$getReward$2;-><init>(Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getUserModel()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/guochao/component/mvp/model/UserModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;->userModel:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final myMVPInfo()V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel$myMVPInfo$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel$myMVPInfo$1;-><init>(Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setFreeTime(Lcom/guochao/component/mvp/model/GetInterestsRequestModel;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .param p1    # Lcom/guochao/component/mvp/model/GetInterestsRequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/component/mvp/model/GetInterestsRequestModel;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Integer;",
            ">;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel$setFreeTime$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel$setFreeTime$1;-><init>(Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;Lcom/guochao/component/mvp/model/GetInterestsRequestModel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setWorldTop(Lcom/guochao/component/mvp/model/GetInterestsRequestModel;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .param p1    # Lcom/guochao/component/mvp/model/GetInterestsRequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/component/mvp/model/GetInterestsRequestModel;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Integer;",
            ">;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel$setWorldTop$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel$setWorldTop$1;-><init>(Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;Lcom/guochao/component/mvp/model/GetInterestsRequestModel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
