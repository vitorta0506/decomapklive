.class public final Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$editGroup$$inlined$success$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->editGroup(ILjava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
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
.field final synthetic $callback$inlined:Lkotlin/jvm/functions/Function1;

.field final synthetic $groupId$inlined:I

.field final synthetic $name$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;Lkotlin/jvm/functions/Function1;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$editGroup$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$editGroup$$inlined$success$1;->$callback$inlined:Lkotlin/jvm/functions/Function1;

    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$editGroup$$inlined$success$1;->$groupId$inlined:I

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$editGroup$$inlined$success$1;->$name$inlined:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$editGroup$$inlined$success$1;->invoke(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 6
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
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$editGroup$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$editGroup$3$1;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$editGroup$$inlined$success$1;->$groupId$inlined:I

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$editGroup$$inlined$success$1;->$name$inlined:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$editGroup$3$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->launchIO(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$editGroup$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->getGroupListLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_5

    const-string v0, "it"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getId()I

    move-result v2

    iget v5, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$editGroup$$inlined$success$1;->$groupId$inlined:I

    if-ne v2, v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    if-eqz v4, :cond_0

    goto :goto_0

    :cond_2
    move-object v1, v3

    .line 6
    :goto_0
    check-cast v1, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    if-eqz v1, :cond_4

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$editGroup$$inlined$success$1;->$name$inlined:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->setName(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_3
    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->setMemberNum(Ljava/lang/Integer;)V

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$editGroup$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->getGroupListLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$editGroup$$inlined$success$1;->$callback$inlined:Lkotlin/jvm/functions/Function1;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
