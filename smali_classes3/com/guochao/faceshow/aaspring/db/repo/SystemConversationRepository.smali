.class public final Lcom/guochao/faceshow/aaspring/db/repo/SystemConversationRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u0019\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\nJ!\u0010\u000b\u001a\u00020\u00062\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/db/repo/SystemConversationRepository;",
        "",
        "()V",
        "appDatabase",
        "Lcom/guochao/faceshow/aaspring/db/AppDatabase;",
        "deleteAll",
        "",
        "getAllConversations",
        "",
        "Lcom/guochao/faceshow/aaspring/modulars/main/model/SystemConversationModel;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "insertOrUpdateConversations",
        "conversations",
        "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final appDatabase:Lcom/guochao/faceshow/aaspring/db/AppDatabase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/db/AppDatabase;->Companion:Lcom/guochao/faceshow/aaspring/db/AppDatabase$Companion;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const-string v2, "getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/db/AppDatabase$Companion;->getInstance(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/db/repo/SystemConversationRepository;->appDatabase:Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    return-void
.end method

.method public static final synthetic access$getAppDatabase$p(Lcom/guochao/faceshow/aaspring/db/repo/SystemConversationRepository;)Lcom/guochao/faceshow/aaspring/db/AppDatabase;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/db/repo/SystemConversationRepository;->appDatabase:Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    return-object p0
.end method


# virtual methods
.method public final deleteAll()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/repo/SystemConversationRepository;->appDatabase:Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/AppDatabase;->systemConversationDao()Lcom/guochao/faceshow/aaspring/db/dao/SystemConversationDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/db/dao/SystemConversationDao;->deleteAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final getAllConversations(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/main/model/SystemConversationModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/db/repo/SystemConversationRepository$getAllConversations$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/guochao/faceshow/aaspring/db/repo/SystemConversationRepository$getAllConversations$2;-><init>(Lcom/guochao/faceshow/aaspring/db/repo/SystemConversationRepository;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final insertOrUpdateConversations(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/main/model/SystemConversationModel;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 2
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/db/repo/SystemConversationRepository$insertOrUpdateConversations$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/guochao/faceshow/aaspring/db/repo/SystemConversationRepository$insertOrUpdateConversations$2;-><init>(Lcom/guochao/faceshow/aaspring/db/repo/SystemConversationRepository;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
