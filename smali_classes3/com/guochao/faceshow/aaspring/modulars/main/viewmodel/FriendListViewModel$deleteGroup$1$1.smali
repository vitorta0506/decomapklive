.class final Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$deleteGroup$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->deleteGroup(Landroid/content/Context;Ljava/lang/Integer;)V
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
    c = "com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$deleteGroup$1$1"
    f = "FriendListViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $groupdId:Ljava/lang/Integer;

.field label:I

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;


# direct methods
.method constructor <init>(Ljava/lang/Integer;Landroid/content/Context;Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Landroid/content/Context;",
            "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$deleteGroup$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$deleteGroup$1$1;->$groupdId:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$deleteGroup$1$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$deleteGroup$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$deleteGroup$1$1;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$deleteGroup$1$1;->$groupdId:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$deleteGroup$1$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$deleteGroup$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$deleteGroup$1$1;-><init>(Ljava/lang/Integer;Landroid/content/Context;Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$deleteGroup$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$deleteGroup$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$deleteGroup$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$deleteGroup$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$deleteGroup$1$1;->label:I

    if-nez v0, :cond_8

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$deleteGroup$1$1;->$groupdId:Ljava/lang/Integer;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$deleteGroup$1$1;->$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$deleteGroup$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 3
    new-instance v3, Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository;

    invoke-direct {v3, v0}, Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository;->deleteGroup(I)V

    .line 4
    new-instance v3, Lcom/guochao/faceshow/aaspring/db/FriendRepository;

    invoke-direct {v3, v0}, Lcom/guochao/faceshow/aaspring/db/FriendRepository;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/guochao/faceshow/aaspring/db/FriendRepository;->undateGroupIdByGroupId(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 5
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->getFriendListLivedata()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v3, "value"

    if-eqz v0, :cond_2

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/db/FriendInfo;

    .line 7
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getGroupId()I

    move-result v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 8
    invoke-virtual {v4, v2}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setGroupId(I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->getGroupListLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 11
    check-cast v4, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    if-eqz v4, :cond_3

    .line 12
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getId()I

    move-result v4

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, -0x1

    :goto_3
    if-ltz v2, :cond_6

    .line 13
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 14
    :cond_6
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->getFriendListLivedata()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v1, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->access$putFriendsToGroup(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;Ljava/util/List;Ljava/util/List;)V

    .line 15
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->getGroupListLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 16
    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
