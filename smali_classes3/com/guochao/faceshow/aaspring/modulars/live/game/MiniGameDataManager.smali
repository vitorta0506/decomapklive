.class public final Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel<",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000 \u001d2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001dB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0006\u0010\u0018\u001a\u00020\rJ\u0006\u0010\u0019\u001a\u00020\u001aJ\u0019\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001cR\u001e\u0010\u0004\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R!\u0010\u0008\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u00060\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u000eR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "()V",
        "_gameLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;",
        "gameLiveData",
        "Landroidx/lifecycle/LiveData;",
        "getGameLiveData",
        "()Landroidx/lifecycle/LiveData;",
        "isGameEnable",
        "",
        "()Z",
        "isLuckyRemoteEnable",
        "lastLoadTime",
        "",
        "liveGameData",
        "getLiveGameData",
        "()Ljava/util/List;",
        "mLiveGameData",
        "",
        "requesting",
        "hasEnableGame",
        "loadData",
        "",
        "loadGames",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LIVE_GAME_CACHE_TIMEOUT:I = 0x1b7740

.field private static final instance$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _gameLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final gameLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lastLoadTime:J

.field private final mLiveGameData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private requesting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->Companion:Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$Companion;

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    const-string v2, "app()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$special$$inlined$lazyGlobalViewModel$default$1;

    invoke-direct {v3, v0, v1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$special$$inlined$lazyGlobalViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 3
    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->mLiveGameData:Ljava/util/List;

    .line 3
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->_gameLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 4
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$1;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;)V

    invoke-interface {v1, v2}, Lb8/d;->registerOnUserChangedListener(Lb8/d$a;)V

    .line 6
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v1

    .line 7
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$2;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;)V

    invoke-virtual {v1, v2}, Lq7/a;->addLanguageListener(Lq7/a$a;)V

    .line 8
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->gameLiveData:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getMLiveGameData$p(Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->mLiveGameData:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$get_gameLiveData$p(Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->_gameLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$loadGames(Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->loadGames(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setLastLoadTime$p(Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->lastLoadTime:J

    return-void
.end method

.method public static final synthetic access$setRequesting$p(Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->requesting:Z

    return-void
.end method

.method public static final getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->Companion:Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object v0

    return-object v0
.end method

.method private final loadGames(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$loadGames$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$loadGames$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final getGameLiveData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->gameLiveData:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getLiveGameData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->mLiveGameData:Ljava/util/List;

    return-object v0
.end method

.method public final hasEnableGame()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->isGameEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->mLiveGameData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->mLiveGameData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getStatus()I

    move-result v2

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    return v3

    :cond_4
    return v1
.end method

.method public final isGameEnable()Z
    .locals 2

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getGameSwitch()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isLuckyRemoteEnable()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->isGameEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->mLiveGameData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->mLiveGameData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getStatus()I

    move-result v4

    if-ne v4, v3, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameCode()I

    move-result v4

    if-eq v4, v3, :cond_4

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameCode()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    :cond_4
    return v3

    :cond_5
    return v1
.end method

.method public final loadData()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->requesting:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->lastLoadTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->requesting:Z

    .line 4
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$loadData$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$loadData$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
