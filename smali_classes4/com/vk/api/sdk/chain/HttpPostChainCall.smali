.class public Lcom/vk/api/sdk/chain/HttpPostChainCall;
.super Lcom/vk/api/sdk/chain/ChainCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vk/api/sdk/chain/ChainCall<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002B9\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u0005\u001a\u00020\u0010\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0019\u00a2\u0006\u0004\u0008 \u0010!J\u0019\u0010\u0005\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001b\u0010\t\u001a\u0004\u0018\u00018\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0004\u00a2\u0006\u0004\u0008\t\u0010\nR\u0017\u0010\u000c\u001a\u00020\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0005\u001a\u00020\u00108\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u0019\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u001f\u0010\u001a\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00198\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\""
    }
    d2 = {
        "Lcom/vk/api/sdk/chain/HttpPostChainCall;",
        "T",
        "Lcom/vk/api/sdk/chain/ChainCall;",
        "Lcom/vk/api/sdk/chain/ChainArgs;",
        "args",
        "call",
        "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;",
        "",
        "response",
        "handleResponse",
        "(Ljava/lang/String;)Ljava/lang/Object;",
        "Lcom/vk/api/sdk/okhttp/OkHttpExecutor;",
        "okHttpExecutor",
        "Lcom/vk/api/sdk/okhttp/OkHttpExecutor;",
        "getOkHttpExecutor",
        "()Lcom/vk/api/sdk/okhttp/OkHttpExecutor;",
        "Lcom/vk/api/sdk/VKHttpPostCall;",
        "Lcom/vk/api/sdk/VKHttpPostCall;",
        "getCall",
        "()Lcom/vk/api/sdk/VKHttpPostCall;",
        "Lcom/vk/api/sdk/VKApiProgressListener;",
        "progressListener",
        "Lcom/vk/api/sdk/VKApiProgressListener;",
        "getProgressListener",
        "()Lcom/vk/api/sdk/VKApiProgressListener;",
        "Lcom/vk/api/sdk/e;",
        "parser",
        "Lcom/vk/api/sdk/e;",
        "getParser",
        "()Lcom/vk/api/sdk/e;",
        "Lcom/vk/api/sdk/VKApiManager;",
        "manager",
        "<init>",
        "(Lcom/vk/api/sdk/VKApiManager;Lcom/vk/api/sdk/okhttp/OkHttpExecutor;Lcom/vk/api/sdk/VKHttpPostCall;Lcom/vk/api/sdk/VKApiProgressListener;Lcom/vk/api/sdk/e;)V",
        "core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private final call:Lcom/vk/api/sdk/VKHttpPostCall;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final okHttpExecutor:Lcom/vk/api/sdk/okhttp/OkHttpExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parser:Lcom/vk/api/sdk/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vk/api/sdk/e<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final progressListener:Lcom/vk/api/sdk/VKApiProgressListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vk/api/sdk/VKApiManager;Lcom/vk/api/sdk/okhttp/OkHttpExecutor;Lcom/vk/api/sdk/VKHttpPostCall;Lcom/vk/api/sdk/VKApiProgressListener;Lcom/vk/api/sdk/e;)V
    .locals 1
    .param p1    # Lcom/vk/api/sdk/VKApiManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vk/api/sdk/okhttp/OkHttpExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/vk/api/sdk/VKHttpPostCall;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/vk/api/sdk/VKApiProgressListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/vk/api/sdk/e;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/api/sdk/VKApiManager;",
            "Lcom/vk/api/sdk/okhttp/OkHttpExecutor;",
            "Lcom/vk/api/sdk/VKHttpPostCall;",
            "Lcom/vk/api/sdk/VKApiProgressListener;",
            "Lcom/vk/api/sdk/e<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "okHttpExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/vk/api/sdk/chain/ChainCall;-><init>(Lcom/vk/api/sdk/VKApiManager;)V

    .line 2
    iput-object p2, p0, Lcom/vk/api/sdk/chain/HttpPostChainCall;->okHttpExecutor:Lcom/vk/api/sdk/okhttp/OkHttpExecutor;

    .line 3
    iput-object p3, p0, Lcom/vk/api/sdk/chain/HttpPostChainCall;->call:Lcom/vk/api/sdk/VKHttpPostCall;

    .line 4
    iput-object p4, p0, Lcom/vk/api/sdk/chain/HttpPostChainCall;->progressListener:Lcom/vk/api/sdk/VKApiProgressListener;

    .line 5
    iput-object p5, p0, Lcom/vk/api/sdk/chain/HttpPostChainCall;->parser:Lcom/vk/api/sdk/e;

    return-void
.end method


# virtual methods
.method public call(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lcom/vk/api/sdk/chain/ChainArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/api/sdk/chain/ChainArgs;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/vk/api/sdk/chain/HttpPostChainCall;->okHttpExecutor:Lcom/vk/api/sdk/okhttp/OkHttpExecutor;

    new-instance v0, Lcom/vk/api/sdk/okhttp/OkHttpPostCall;

    iget-object v1, p0, Lcom/vk/api/sdk/chain/HttpPostChainCall;->call:Lcom/vk/api/sdk/VKHttpPostCall;

    invoke-direct {v0, v1}, Lcom/vk/api/sdk/okhttp/OkHttpPostCall;-><init>(Lcom/vk/api/sdk/VKHttpPostCall;)V

    iget-object v1, p0, Lcom/vk/api/sdk/chain/HttpPostChainCall;->progressListener:Lcom/vk/api/sdk/VKApiProgressListener;

    invoke-virtual {p1, v0, v1}, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->execute(Lcom/vk/api/sdk/okhttp/OkHttpPostCall;Lcom/vk/api/sdk/VKApiProgressListener;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/vk/api/sdk/chain/HttpPostChainCall;->handleResponse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getCall()Lcom/vk/api/sdk/VKHttpPostCall;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/chain/HttpPostChainCall;->call:Lcom/vk/api/sdk/VKHttpPostCall;

    return-object v0
.end method

.method public final getOkHttpExecutor()Lcom/vk/api/sdk/okhttp/OkHttpExecutor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/chain/HttpPostChainCall;->okHttpExecutor:Lcom/vk/api/sdk/okhttp/OkHttpExecutor;

    return-object v0
.end method

.method public final getParser()Lcom/vk/api/sdk/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vk/api/sdk/e<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/chain/HttpPostChainCall;->parser:Lcom/vk/api/sdk/e;

    return-object v0
.end method

.method public final getProgressListener()Lcom/vk/api/sdk/VKApiProgressListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/chain/HttpPostChainCall;->progressListener:Lcom/vk/api/sdk/VKApiProgressListener;

    return-object v0
.end method

.method protected final handleResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-static {p1}, Lcom/vk/api/sdk/utils/ApiExtKt;->hasSimpleError(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/vk/api/sdk/chain/HttpPostChainCall;->parser:Lcom/vk/api/sdk/e;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcom/vk/api/sdk/e;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v0, 0x2

    const-string v2, "post"

    .line 3
    invoke-static {p1, v2, v1, v0, v1}, Lcom/vk/api/sdk/utils/ApiExtKt;->toSimpleError$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/vk/api/sdk/exceptions/VKApiException;

    move-result-object p1

    throw p1

    .line 4
    :cond_2
    new-instance p1, Lcom/vk/api/sdk/exceptions/VKApiException;

    const-string v0, "Response returned null instead of valid string response"

    invoke-direct {p1, v0}, Lcom/vk/api/sdk/exceptions/VKApiException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
