.class final Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->addGroup(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/CoroutineScope;",
        "",
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
    c = "com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$addGroup$3$1"
    f = "FriendListViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $friendIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $it:Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $name:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/v2/Response;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$3$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$3$1;->$friendIds:Ljava/util/List;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$3$1;->$it:Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$3$1;->$name:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$3$1;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$3$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$3$1;->$friendIds:Ljava/util/List;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$3$1;->$it:Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$3$1;->$name:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$3$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/v2/Response;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$3$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$3$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$3$1;->label:I

    if-nez v0, :cond_7

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$3$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->getFriendListLivedata()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$3$1;->$friendIds:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$3$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$3$1;->$it:Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5
    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->access$getFriendRepo$p(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;)Lcom/guochao/faceshow/aaspring/db/FriendRepository;

    move-result-object v5

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getId()I

    move-result v6

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v5, v4, v6}, Lcom/guochao/faceshow/aaspring/db/FriendRepository;->updateGroupIdByFriendId(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/aaspring/db/FriendInfo;

    .line 7
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getFriendId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 8
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getId()I

    move-result v7

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v6, v7}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setGroupId(I)V

    goto :goto_1

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$3$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->access$getGroupRepo$p(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;)Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$3$1;->$it:Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository;->insertGroup(Lcom/guochao/faceshow/aaspring/db/GroupInfo;)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$3$1;->$it:Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$3$1;->$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$3$1;->$friendIds:Ljava/util/List;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$3$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    .line 11
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->setName(Ljava/lang/String;)V

    if-eqz v2, :cond_5

    .line 12
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_5
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_3
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->setMemberNum(Ljava/lang/Integer;)V

    .line 13
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->getGroupListLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_6

    const-string v1, "value"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->getFriendListLivedata()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v3, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->access$putFriendsToGroup(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;Ljava/util/List;Ljava/util/List;)V

    .line 16
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->getGroupListLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 17
    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
