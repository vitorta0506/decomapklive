.class public final Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J!\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\tJ!\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00062\u0006\u0010\u000b\u001a\u00020\u0008H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\tJ!\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\tJ\u0019\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0006H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000fJ\u0019\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u0006H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000fJ\u0019\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u0006H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000fJ!\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\tJ!\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u00062\u0006\u0010\u0017\u001a\u00020\u0018H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0019R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource;",
        "",
        "()V",
        "api",
        "Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchApi;",
        "agreeMatch",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;",
        "roomId",
        "",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "cancelMatch",
        "requestId",
        "confirmMatchSuccess",
        "getGoogleToken",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fGoogleTokenModel;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPrepareMatchInfo",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fTrtcSignatureModel;",
        "heartBeat",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;",
        "quitRoom",
        "startMatch",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fStartMatchResultModel;",
        "gender",
        "",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "component_f2f_match_release"
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
.field private final api:Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchApi;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchApi;

    invoke-direct {v0}, Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchApi;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource;->api:Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchApi;

    return-void
.end method

.method public static final synthetic access$getApi$p(Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource;)Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchApi;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource;->api:Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchApi;

    return-object p0
.end method


# virtual methods
.method public final agreeMatch(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource$agreeMatch$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource$agreeMatch$2;-><init>(Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final cancelMatch(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource$cancelMatch$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource$cancelMatch$2;-><init>(Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final confirmMatchSuccess(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource$confirmMatchSuccess$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource$confirmMatchSuccess$2;-><init>(Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getGoogleToken(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/component/f2fmatch/model/F2fGoogleTokenModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource$getGoogleToken$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource$getGoogleToken$2;-><init>(Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPrepareMatchInfo(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fTrtcSignatureModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource$getPrepareMatchInfo$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource$getPrepareMatchInfo$2;-><init>(Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final heartBeat(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource$heartBeat$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource$heartBeat$2;-><init>(Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final quitRoom(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource$quitRoom$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource$quitRoom$2;-><init>(Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final startMatch(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fStartMatchResultModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource$startMatch$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource$startMatch$2;-><init>(Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource;ILkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
