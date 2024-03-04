.class public final Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel<",
        "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u00085\u00106J\u0012\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u0002J\u0016\u0010\u000b\u001a\u00020\n2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0002J\u0016\u0010\u000c\u001a\u00020\u00052\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0002J\u001b\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\rH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001d\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0006\u0010\u000c\u001a\u00020\u0005J\u0006\u0010\u0016\u001a\u00020\u0005J\u0006\u0010\u0017\u001a\u00020\u0005J\u001b\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\rH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0010J$\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00112\u0014\u0010\u001b\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0013\u0012\u0004\u0012\u00020\u00050\u001aR\u0014\u0010\u001e\u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0014\u0010!\u001a\u00020 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\"\u0010&\u001a\u0010\u0012\u0004\u0012\u00020$\u0012\u0006\u0012\u0004\u0018\u00010%0#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u001c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00080(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0016\u0010,\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u0014\u0010/\u001a\u00020.8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u00100R$\u00103\u001a\u0012\u0012\u0004\u0012\u00020$01j\u0008\u0012\u0004\u0012\u00020$`28\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u00104\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u00067"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;",
        "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;",
        "",
        "checkOnline",
        "",
        "resetList",
        "",
        "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
        "list",
        "",
        "getUnread",
        "requestOnlineStatus",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;",
        "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserListModel;",
        "requestTopOnlineUsers",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "ids",
        "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$OnlineStatusModel;",
        "requestOnlineStatusToServer",
        "([ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "loadSystemMessage",
        "readAll",
        "loadTopRecommendUsers",
        "array",
        "Lkotlin/Function1;",
        "callback",
        "requestOnline",
        "Lcom/guochao/faceshow/aaspring/manager/im/b;",
        "imManager",
        "Lcom/guochao/faceshow/aaspring/manager/im/b;",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;",
        "systemConversationManager",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;",
        "Landroidx/collection/ArrayMap;",
        "",
        "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;",
        "onlineMap",
        "Landroidx/collection/ArrayMap;",
        "",
        "systemConversations",
        "Ljava/util/List;",
        "",
        "lastRequestOnline",
        "J",
        "Lcom/guochao/faceshow/aaspring/db/repo/SystemConversationRepository;",
        "repo",
        "Lcom/guochao/faceshow/aaspring/db/repo/SystemConversationRepository;",
        "Ljava/util/HashSet;",
        "Lkotlin/collections/HashSet;",
        "requestOnlineHash",
        "Ljava/util/HashSet;",
        "<init>",
        "()V",
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
.field private conversationResult:La8/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final imManager:Lcom/guochao/faceshow/aaspring/manager/im/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lastRequestOnline:J

.field private final onlineMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final repo:Lcom/guochao/faceshow/aaspring/db/repo/SystemConversationRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final requestOnlineHash:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final systemConversationManager:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private systemConversations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;-><init>()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->imManager:Lcom/guochao/faceshow/aaspring/manager/im/b;

    .line 3
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->systemConversationManager:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;

    .line 4
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->onlineMap:Landroidx/collection/ArrayMap;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->systemConversations:Ljava/util/List;

    .line 6
    new-instance v1, Lcom/guochao/faceshow/aaspring/db/repo/SystemConversationRepository;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/db/repo/SystemConversationRepository;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->repo:Lcom/guochao/faceshow/aaspring/db/repo/SystemConversationRepository;

    const-string v1, "24HourMessage"

    const-string v2, "\u5f00\u59cb\u8bbe\u7f6eIM\u76d1\u542c\u5668"

    .line 7
    invoke-static {v1, v2}, Lcom/tencent/xmagic/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/manager/im/a;->o(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 9
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;)V

    invoke-static {v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 10
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v4

    new-instance v6, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$3;

    invoke-direct {v6, p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$3;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 11
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->requestOnlineHash:Ljava/util/HashSet;

    return-void
.end method

.method private static final _init_$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;La8/a;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "24HourMessage"

    const-string v1, "\u6536\u5230\u6d88\u606f"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/xmagic/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->conversationResult:La8/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, La8/a;->a()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->conversationResult:La8/a;

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->getModelLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$ConversationListModel;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$ConversationListModel;-><init>(Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->conversationResult:La8/a;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, La8/a;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, La8/a;->b()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 7
    :cond_2
    new-instance v0, La8/a;

    invoke-virtual {p1}, La8/a;->b()Z

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, La8/a;->a()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, La8/a;-><init>(ZLjava/util/List;)V

    .line 8
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->conversationResult:La8/a;

    .line 9
    invoke-virtual {p1}, La8/a;->b()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->resetList(Z)V

    return-void
.end method

.method private static final _init_$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;Ljava/util/List;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->systemConversations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->systemConversations:Ljava/util/List;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$2$1;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$2$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->resetList(Z)V

    return-void
.end method

.method public static final synthetic access$getModelLiveData(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->getModelLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOnlineMap$p(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;)Landroidx/collection/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->onlineMap:Landroidx/collection/ArrayMap;

    return-object p0
.end method

.method public static final synthetic access$getRepo$p(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;)Lcom/guochao/faceshow/aaspring/db/repo/SystemConversationRepository;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->repo:Lcom/guochao/faceshow/aaspring/db/repo/SystemConversationRepository;

    return-object p0
.end method

.method public static final synthetic access$getSystemConversations$p(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->systemConversations:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getUnread(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;Ljava/util/List;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->getUnread(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$requestOnlineStatusToServer(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;[ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->requestOnlineStatusToServer([ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$requestTopOnlineUsers(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->requestTopOnlineUsers(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$resetList(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->resetList(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->_init_$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic e(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;La8/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->_init_$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;La8/a;)V

    return-void
.end method

.method private final getUnread(Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 3
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getSilent()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->shouldShowInConversationList()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getUnreadNum()I

    move-result v5

    if-gtz v5, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getUnreadNum()I

    move-result v4

    add-int/2addr v3, v4

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method private final requestOnlineStatus(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 9
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationType()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    goto :goto_3

    .line 10
    :cond_1
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_3

    .line 11
    :cond_2
    iget-object v6, v1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->onlineMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 12
    iget-object v4, v1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->onlineMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;

    const-wide/16 v9, -0x1

    const-wide/16 v12, 0x0

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "LOGOUT"

    move-object v8, v6

    invoke-direct/range {v8 .. v15}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;-><init>(JLjava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const/4 v4, 0x1

    goto :goto_3

    .line 13
    :cond_3
    iget-object v6, v1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->onlineMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;

    if-eqz v6, :cond_4

    .line 14
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;->getUserOnlineEnum()Ljava/lang/String;

    move-result-object v8

    const-string v9, "LOGIN"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    .line 15
    invoke-virtual {v5, v8}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setOnlineStatus(I)V

    .line 16
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;->getRequestTime()J

    move-result-wide v5

    goto :goto_2

    :cond_4
    const-wide/16 v5, 0x0

    .line 17
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v5

    const-wide/32 v5, 0xea60

    cmp-long v10, v8, v5

    if-lez v10, :cond_5

    goto :goto_1

    :cond_5
    :goto_3
    if-eqz v4, :cond_0

    .line 18
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    return-void

    .line 20
    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v5, v4, 0x1

    if-gez v4, :cond_8

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_8
    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 22
    :try_start_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v0

    const-string v4, "it.conversationId"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    move v4, v5

    goto :goto_4

    .line 24
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 25
    :cond_a
    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$requestOnlineStatus$2;

    const/4 v0, 0x0

    move-object/from16 v7, p1

    invoke-direct {v6, v1, v2, v7, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$requestOnlineStatus$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;Ljava/util/ArrayList;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final requestOnlineStatusToServer([ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$OnlineStatusModel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$requestOnlineStatusToServer$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$requestOnlineStatusToServer$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;[ILkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final requestTopOnlineUsers(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserListModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$requestTopOnlineUsers$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$requestTopOnlineUsers$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final resetList(Z)V
    .locals 4

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->systemConversations:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->conversationResult:La8/a;

    if-eqz v0, :cond_7

    .line 4
    invoke-virtual {v0}, La8/a;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "iterator.next()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 7
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lfb/a;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLastMsg()Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isGreetingConversation()V

    .line 11
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isSendGreetingConversation()V

    .line 12
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->checkOneDay()V

    .line 13
    :cond_2
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isSayHi()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 14
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isSendSayHi()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isOneDay()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 19
    :cond_5
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->shouldShowInConversationList()Z

    move-result v2

    if-nez v2, :cond_0

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 21
    :cond_6
    invoke-virtual {v0}, La8/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 22
    :cond_7
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 23
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    .line 24
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->getModelLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$ConversationListModel;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->getUnread(Ljava/util/List;)I

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$ConversationListModel;-><init>(Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic resetList$default(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->resetList(Z)V

    return-void
.end method


# virtual methods
.method public final loadSystemMessage()V
    .locals 0

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->loadMessageFromServer()V

    return-void
.end method

.method public final loadTopRecommendUsers(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserListModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$1;

    iget v1, v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$1;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$1;->label:I

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->requestTopOnlineUsers(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 5
    :goto_1
    move-object v4, p1

    check-cast v4, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    .line 6
    iget-object v5, v2, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->conversationResult:La8/a;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, La8/a;->a()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 7
    new-instance v6, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$2$1$1;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v2, v4, v7}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$2$1$1;-><init>(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;Lcom/guochao/faceshow/aaspring/base/http/v2/Response;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$1;->label:I

    invoke-virtual {v2, v6, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->withMain(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5

    return-object v1

    :cond_5
    move-object v0, p1

    :goto_2
    move-object p1, v0

    :cond_6
    return-object p1
.end method

.method public final readAll()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$readAll$1;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$readAll$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->markAllMessageAsRead(Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->conversationResult:La8/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, La8/a;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setUnreadNum(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->clearAllUnread()V

    return-void
.end method

.method public final requestOnline([ILkotlin/jvm/functions/Function1;)V
    .locals 7
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$OnlineStatusModel;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$requestOnline$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$requestOnline$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;[ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final requestOnlineStatus()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->lastRequestOnline:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->conversationResult:La8/a;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, La8/a;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 5
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->lastRequestOnline:J

    .line 6
    invoke-direct {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->requestOnlineStatus(Ljava/util/List;)V

    :cond_1
    return-void
.end method
