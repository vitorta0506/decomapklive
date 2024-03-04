.class final Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository;->findVideoRelevantNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
        "Lcom/guochao/faceshow/bean/MusicTypeTopicList$Page;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;",
        "Lcom/guochao/faceshow/bean/MusicTypeTopicList$Page;",
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
    c = "com.guochao.faceshow.aaspring.modulars.main.repository.ShortVideoRepository$findVideoRelevantNew$2"
    f = "ShortVideoRepository.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $country:Ljava/lang/String;

.field final synthetic $isPrivate:Ljava/lang/String;

.field final synthetic $limit:I

.field final synthetic $musicId:Ljava/lang/String;

.field final synthetic $page:I

.field final synthetic $topicId:Ljava/lang/String;

.field final synthetic $type:Ljava/lang/String;

.field final synthetic $url:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;->$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;->$musicId:Ljava/lang/String;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;->$country:Ljava/lang/String;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;->$type:Ljava/lang/String;

    iput p5, p0, Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;->$page:I

    iput p6, p0, Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;->$limit:I

    iput-object p7, p0, Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;->$isPrivate:Ljava/lang/String;

    iput-object p8, p0, Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;->$topicId:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10
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

    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;->$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;->$musicId:Ljava/lang/String;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;->$country:Ljava/lang/String;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;->$type:Ljava/lang/String;

    iget v5, p0, Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;->$page:I

    iget v6, p0, Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;->$limit:I

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;->$isPrivate:Ljava/lang/String;

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;->$topicId:Ljava/lang/String;

    move-object v0, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/bean/MusicTypeTopicList$Page;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;->$url:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;->$musicId:Ljava/lang/String;

    const-string v1, "musicId"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;->$country:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    const-string v2, "country"

    invoke-virtual {p1, v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;->$type:Ljava/lang/String;

    const-string v2, "type"

    invoke-virtual {p1, v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    .line 6
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;->$page:I

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "page"

    invoke-virtual {p1, v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    .line 7
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;->$limit:I

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "size"

    invoke-virtual {p1, v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;->$isPrivate:Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    const-string v2, "isPrivate"

    invoke-virtual {p1, v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$findVideoRelevantNew$2;->$topicId:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    const-string v0, "topicId"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    .line 9
    :try_start_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->INSTANCE:Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->buildRequestParams()Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/bean/MusicTypeTopicList$Page;

    invoke-virtual {v0, p1, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->execute(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;Ljava/lang/reflect/Type;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    sget-object v0, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->Companion:Lcom/guochao/faceshow/aaspring/base/http/v2/Response$Companion;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response$Companion;->fail(ILjava/lang/Object;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->setError(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_1
    return-object p1

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
