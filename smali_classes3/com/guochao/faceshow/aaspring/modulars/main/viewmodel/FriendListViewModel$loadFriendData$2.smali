.class final Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$loadFriendData$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->loadFriendData(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/util/ArrayList<",
        "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\u0008\u0012\u0004\u0012\u00020\u0002`\u0003*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/CoroutineScope;",
        "Ljava/util/ArrayList;",
        "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
        "Lkotlin/collections/ArrayList;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$loadFriendData$2"
    f = "FriendListViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$loadFriendData$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$loadFriendData$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .param p1    # Ljava/lang/Object;
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
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$loadFriendData$2;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$loadFriendData$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    invoke-direct {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$loadFriendData$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$loadFriendData$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/CoroutineScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$loadFriendData$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$loadFriendData$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$loadFriendData$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$loadFriendData$2;->label:I

    if-nez v0, :cond_6

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$loadFriendData$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    invoke-static {v3, v2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->access$loadFriendDataFromServer(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;I)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/friend/bean/FriendListBean$Result;

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/friend/bean/FriendListBean$Result;->getList()Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/friend/bean/FriendListBean$Result;->getList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-ne v4, v1, :cond_2

    const/4 v5, 0x1

    :cond_2
    if-eqz v5, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/friend/bean/FriendListBean$Result;->getList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 8
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 10
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/friend/bean/FriendListBean$Result;->getCount()I

    move-result v3

    if-ge v3, v2, :cond_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-object p1

    .line 12
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
