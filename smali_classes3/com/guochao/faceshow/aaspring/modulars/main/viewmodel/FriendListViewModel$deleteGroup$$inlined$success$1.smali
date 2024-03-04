.class public final Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$deleteGroup$$inlined$success$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->deleteGroup(Landroid/content/Context;Ljava/lang/Integer;)V
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
.field final synthetic $context$inlined:Landroid/content/Context;

.field final synthetic $groupdId$inlined:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;Ljava/lang/Integer;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$deleteGroup$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$deleteGroup$$inlined$success$1;->$groupdId$inlined:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$deleteGroup$$inlined$success$1;->$context$inlined:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$deleteGroup$$inlined$success$1;->invoke(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 4
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
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$deleteGroup$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$deleteGroup$1$1;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$deleteGroup$$inlined$success$1;->$groupdId$inlined:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$deleteGroup$$inlined$success$1;->$context$inlined:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$deleteGroup$1$1;-><init>(Ljava/lang/Integer;Landroid/content/Context;Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->launchIO(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    return-void
.end method
