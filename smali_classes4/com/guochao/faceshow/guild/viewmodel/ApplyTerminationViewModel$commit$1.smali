.class final Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;->commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
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
    c = "com.guochao.faceshow.guild.viewmodel.ApplyTerminationViewModel$commit$1"
    f = "ApplyTerminationViewModel.kt"
    i = {
        0x0
    }
    l = {
        0x9d
    }
    m = "invokeSuspend"
    n = {
        "pictureUrlArray"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $pictureLocalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $reason:Ljava/lang/String;

.field final synthetic $recordId:Ljava/lang/Integer;

.field final synthetic $signId:Ljava/lang/Integer;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;->$pictureLocalList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;->$reason:Ljava/lang/String;

    iput-object p3, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;->$signId:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;->$recordId:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;->this$0:Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance p1, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;

    iget-object v1, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;->$pictureLocalList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;->$reason:Ljava/lang/String;

    iget-object v3, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;->$signId:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;->$recordId:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;->this$0:Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;-><init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-class v0, Ljava/lang/Integer;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v4, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;

    iget-object v5, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v5

    move-object v5, v4

    move-object v4, v2

    move-object v2, v1

    move-object v1, p0

    goto/16 :goto_1

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
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;->$pictureLocalList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;->this$0:Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;

    .line 6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v5, p1

    move-object p1, p0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    .line 7
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getUri()Landroid/net/Uri;

    move-result-object v7

    const-string v8, "it.uri"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getUri()Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    :cond_2
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object v8

    :cond_3
    const-string v6, "it.uri?.path ?: it.path"

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ".jpg"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v7, v8, v6}, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;->access$copyFileOrNot(Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 8
    iput-object v5, p1, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;->L$0:Ljava/lang/Object;

    iput-object v4, p1, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;->L$1:Ljava/lang/Object;

    iput-object v2, p1, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;->L$2:Ljava/lang/Object;

    iput v3, p1, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;->label:I

    invoke-static {v4, v6, p1}, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;->access$uploadPicture(Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_4

    return-object v1

    :cond_4
    move-object v11, v1

    move-object v1, p1

    move-object p1, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v2

    move-object v2, v11

    .line 9
    :goto_1
    check-cast p1, Lcom/guochao/faceshow/guild/bean/UploadFileResultBean;

    if-nez p1, :cond_5

    .line 10
    new-instance p1, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1$1$1;

    const/4 v0, 0x0

    invoke-direct {p1, v5, v0}, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1$1$1;-><init>(Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v5, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->launchMain(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 12
    :cond_5
    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/bean/UploadFileResultBean;->getBigImgUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p1, v1

    move-object v1, v2

    move-object v2, v4

    move-object v4, v5

    move-object v5, v6

    goto :goto_0

    .line 13
    :cond_6
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    const-string v2, "api/token/guild/anchorin/rescindRequest"

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;-><init>(Ljava/lang/String;)V

    .line 14
    iget-object v2, p1, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;->$reason:Ljava/lang/String;

    const-string v3, "reason"

    invoke-virtual {v1, v3, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v1

    const-string v2, "imgUrlList"

    .line 15
    invoke-virtual {v1, v2, v5}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v1

    .line 16
    iget-object v2, p1, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;->$signId:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 17
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "signId"

    invoke-virtual {v1, v3, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    .line 18
    :cond_7
    iget-object v2, p1, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;->$recordId:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 19
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "recordId"

    invoke-virtual {v1, v3, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    .line 20
    :cond_8
    iget-object v2, p1, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;->this$0:Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;

    .line 21
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccessClz(Ljava/lang/reflect/Type;)V

    .line 22
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v3

    new-instance v4, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1$invokeSuspend$$inlined$success$1;

    invoke-direct {v4, v2}, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1$invokeSuspend$$inlined$success$1;-><init>(Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;)V

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccess(Lkotlin/jvm/functions/Function1;)V

    .line 23
    iget-object p1, p1, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1;->this$0:Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;

    .line 24
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFailClz(Ljava/lang/Class;)V

    .line 25
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v0

    new-instance v2, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1$invokeSuspend$$inlined$fail$1;

    invoke-direct {v2, p1}, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel$commit$1$invokeSuspend$$inlined$fail$1;-><init>(Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;)V

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFail(Lkotlin/jvm/functions/Function1;)V

    .line 26
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    .line 27
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
