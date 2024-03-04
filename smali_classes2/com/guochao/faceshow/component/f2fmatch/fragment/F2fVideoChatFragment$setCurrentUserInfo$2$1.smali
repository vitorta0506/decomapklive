.class final Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$setCurrentUserInfo$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->setCurrentUserInfo(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V
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
    c = "com.guochao.faceshow.component.f2fmatch.fragment.F2fVideoChatFragment$setCurrentUserInfo$2$1"
    f = "F2fVideoChatFragment.kt"
    i = {}
    l = {
        0xb2
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $it:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

.field label:I

.field final synthetic this$0:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;",
            "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$setCurrentUserInfo$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$setCurrentUserInfo$2$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$setCurrentUserInfo$2$1;->$it:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$setCurrentUserInfo$2$1;

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$setCurrentUserInfo$2$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$setCurrentUserInfo$2$1;->$it:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    invoke-direct {p1, v0, v1, p2}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$setCurrentUserInfo$2$1;-><init>(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$setCurrentUserInfo$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$setCurrentUserInfo$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$setCurrentUserInfo$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$setCurrentUserInfo$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$setCurrentUserInfo$2$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$setCurrentUserInfo$2$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->audioTranslate:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object p1

    invoke-virtual {p1}, Lq7/a;->g()Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$setCurrentUserInfo$2$1;->$it:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    invoke-virtual {v1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$setCurrentUserInfo$2$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object p1

    iput v2, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$setCurrentUserInfo$2$1;->label:I

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->checkGoogleCloudAvailable(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$setCurrentUserInfo$2$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->audioTranslate:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
