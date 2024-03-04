.class public final Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008>\u0010*J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J \u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\n2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J+\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u0002H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ \u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0012\u0010\u0015\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0002J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001aH\u0002J\u0018\u0010 \u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0013H\u0002J*\u0010$\u001a\u0008\u0012\u0004\u0012\u00028\u00000\n\"\u0004\u0008\u0000\u0010!2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\"R\"\u0010\'\u001a\n &*\u0004\u0018\u00010%0%8\u0002X\u0083\u0004\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u0012\u0004\u0008)\u0010*R\u0014\u0010+\u001a\u00020\u00138\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u001a\u0010.\u001a\u00020-8\u0002X\u0083\u0004\u00a2\u0006\u000c\n\u0004\u0008.\u0010/\u0012\u0004\u00080\u0010*R\u001a\u00101\u001a\u00020-8\u0002X\u0083\u0004\u00a2\u0006\u000c\n\u0004\u00081\u0010/\u0012\u0004\u00082\u0010*R\u0014\u00104\u001a\u0002038\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u001a\u00107\u001a\u0002068\u0002X\u0083\u0004\u00a2\u0006\u000c\n\u0004\u00087\u00108\u0012\u0004\u00089\u0010*R\u001a\u0010;\u001a\u00020:8\u0002X\u0083\u0004\u00a2\u0006\u000c\n\u0004\u0008;\u0010<\u0012\u0004\u0008=\u0010*\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006?"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;",
        "",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;",
        "gcRequest",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;",
        "requestParams",
        "Lcom/guochao/faceshow/aaspring/base/utils/a;",
        "request",
        "Lokhttp3/Response;",
        "response",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;",
        "handleHttpResponse",
        "Lokhttp3/Call;",
        "call",
        "callServer",
        "(Lokhttp3/Call;Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "realCallServer",
        "Lokhttp3/Request;",
        "makeRequest",
        "",
        "content",
        "makeSesign",
        "Lokhttp3/RequestBody;",
        "makeBody",
        "Lcom/guochao/faceshow/aaspring/base/http/request/a;",
        "makeJsonBody",
        "Lokhttp3/MultipartBody$Builder;",
        "makeFileBody",
        "builder",
        "",
        "makeFormBody",
        "url",
        "makeUrl",
        "T",
        "Ljava/lang/reflect/Type;",
        "typeOfT",
        "execute",
        "Lcom/google/gson/Gson;",
        "kotlin.jvm.PlatformType",
        "gson",
        "Lcom/google/gson/Gson;",
        "getGson$annotations",
        "()V",
        "PUBLIC_KEY",
        "Ljava/lang/String;",
        "Lokhttp3/MediaType;",
        "CONTENT_TYPE_JSON",
        "Lokhttp3/MediaType;",
        "getCONTENT_TYPE_JSON$annotations",
        "CONTENT_TYPE_FILE",
        "getCONTENT_TYPE_FILE$annotations",
        "",
        "TIME_OUT",
        "J",
        "Lkotlinx/coroutines/CoroutineScope;",
        "httpScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getHttpScope$annotations",
        "Lokhttp3/OkHttpClient;",
        "httpClient",
        "Lokhttp3/OkHttpClient;",
        "getHttpClient$annotations",
        "<init>",
        "lib_httpclient_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field private static final CONTENT_TYPE_FILE:Lokhttp3/MediaType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CONTENT_TYPE_JSON:Lokhttp3/MediaType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PUBLIC_KEY:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQClLNqG6B67jvz1ngUn8e4imUKuuGbE3F7R2E41M5H2xoLe9VrTbx7FM67S9/vK0KHLPfvXBYY1X+no1rAKldAlXXkIu/20b9FjLZUOZAbUtmm7/luszNx0Ef3IoUPMfc/H7kv9kO7v7f4p3K4Om/GQT6ayqSJU8oqT/SF9+ZUjSwIDAQAB"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TIME_OUT:J = 0x1eL

.field private static final gson:Lcom/google/gson/Gson;

.field private static final httpClient:Lokhttp3/OkHttpClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final httpScope:Lkotlinx/coroutines/CoroutineScope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->INSTANCE:Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->gson:Lcom/google/gson/Gson;

    .line 2
    sget-object v0, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v1, "application/json;charset=utf-8"

    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    sput-object v1, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->CONTENT_TYPE_JSON:Lokhttp3/MediaType;

    const-string v1, "multipart/form-data;charset=utf-8"

    .line 3
    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->CONTENT_TYPE_FILE:Lokhttp3/MediaType;

    .line 4
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->httpScope:Lkotlinx/coroutines/CoroutineScope;

    .line 5
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 6
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 7
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 8
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 9
    new-instance v1, Lj7/b;

    invoke-direct {v1}, Lj7/b;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 10
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->httpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlinx/coroutines/Job;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/os/CancellationSignal;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->request$lambda-1(Lkotlinx/coroutines/Job;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/os/CancellationSignal;)V

    return-void
.end method

.method public static final synthetic access$callServer(Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;Lokhttp3/Call;Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->callServer(Lokhttp3/Call;Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getHttpClient$p()Lokhttp3/OkHttpClient;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->httpClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public static final synthetic access$realCallServer(Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;Lokhttp3/Call;Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->realCallServer(Lokhttp3/Call;Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    move-result-object p0

    return-object p0
.end method

.method private final callServer(Lokhttp3/Call;Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call;",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$callServer$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$callServer$2;-><init>(Lokhttp3/Call;Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic getCONTENT_TYPE_FILE$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private static synthetic getCONTENT_TYPE_JSON$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private static synthetic getGson$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private static synthetic getHttpClient$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private static synthetic getHttpScope$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private final handleHttpResponse(Lokhttp3/Response;Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;",
            ")",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    const-string v1, "response is empty"

    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v2

    .line 2
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    const/16 v5, 0xc8

    if-eq v2, v5, :cond_1

    .line 4
    sget-object p2, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->Companion:Lcom/guochao/faceshow/aaspring/base/http/v2/Response$Companion;

    invoke-virtual {p2, v2, v4, v4}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response$Companion;->fail(ILjava/lang/Object;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    move-result-object p2

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Http Error , ResponseCode is "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , body is ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->setError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    sget-object p2, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->Companion:Lcom/guochao/faceshow/aaspring/base/http/v2/Response$Companion;

    const/4 v0, -0x1

    invoke-virtual {p2, v0, v4, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response$Companion;->fail(ILjava/lang/Object;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    move-result-object p2

    .line 9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->setError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 10
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "code"

    .line 11
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    new-array v1, v2, [Ljava/lang/reflect/Type;

    .line 13
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->getSuccessClz()Ljava/lang/reflect/Type;

    move-result-object p2

    aput-object p2, v1, v5

    .line 14
    invoke-static {v4, v0, v1}, Lcom/google/gson/internal/$Gson$Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p2

    .line 15
    sget-object v0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, v3, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    .line 16
    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    goto :goto_1

    :cond_3
    new-array v1, v2, [Ljava/lang/reflect/Type;

    .line 17
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->getFailClz()Ljava/lang/Class;

    move-result-object p2

    aput-object p2, v1, v5

    .line 18
    invoke-static {v4, v0, v1}, Lcom/google/gson/internal/$Gson$Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p2

    .line 19
    sget-object v0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, v3, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    .line 20
    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :goto_1
    invoke-static {p1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    if-nez p2, :cond_4

    .line 22
    sget-object p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->Companion:Lcom/guochao/faceshow/aaspring/base/http/v2/Response$Companion;

    const/16 p2, -0x3e8

    const-string v0, "no result"

    invoke-virtual {p1, p2, v4, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response$Companion;->fail(ILjava/lang/Object;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    move-result-object p2

    :cond_4
    return-object p2

    :catchall_0
    move-exception p2

    .line 23
    invoke-static {p1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw p2
.end method

.method private final makeBody(Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;)Lokhttp3/RequestBody;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;->getFileBody()Ljava/util/LinkedHashMap;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->makeJsonBody(Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;)Lcom/guochao/faceshow/aaspring/base/http/request/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->makeFileBody(Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->makeFormBody(Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;Lokhttp3/MultipartBody$Builder;)V

    .line 5
    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p1

    return-object p1
.end method

.method private final makeFileBody(Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;)Lokhttp3/MultipartBody$Builder;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;->getFileBody()Ljava/util/LinkedHashMap;

    move-result-object p1

    .line 2
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz p1, :cond_3

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 6
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/utils/ContentTypeUtils;->findContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    sget-object v5, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v6, "findContentType(it.absolutePath)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    if-nez v4, :cond_2

    .line 7
    :cond_1
    sget-object v4, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->CONTENT_TYPE_FILE:Lokhttp3/MediaType;

    .line 8
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 9
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 10
    sget-object v7, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {v7, v3, v4}, Lokhttp3/RequestBody$Companion;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v3

    .line 11
    invoke-virtual {v0, v5, v6, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    goto :goto_0

    .line 12
    :cond_3
    sget-object p1, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v0, p1}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    return-object p1
.end method

.method private final makeFormBody(Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;Lokhttp3/MultipartBody$Builder;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;->getContentBody()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;->getBody()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    sget-object v2, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/MapUtils;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final makeJsonBody(Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;)Lcom/guochao/faceshow/aaspring/base/http/request/a;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;->getBody()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "jsonRequst:"

    .line 3
    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/a;

    sget-object v1, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->CONTENT_TYPE_JSON:Lokhttp3/MediaType;

    invoke-direct {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/a;-><init>(Lokhttp3/MediaType;Ljava/lang/String;)V

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;->getContentBody()Ljava/util/LinkedHashMap;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/a;

    sget-object v1, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->CONTENT_TYPE_JSON:Lokhttp3/MediaType;

    sget-object v2, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/a;-><init>(Lokhttp3/MediaType;Ljava/lang/String;)V

    return-object v0
.end method

.method private final makeRequest(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;)Lokhttp3/Request;
    .locals 7

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 2
    sget-object v1, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->INSTANCE:Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->makeUrl(Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;->getHeaders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    invoke-virtual {v0, v3, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;->getMethod()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_1

    .line 8
    :cond_2
    sget-object v1, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->INSTANCE:Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;

    invoke-direct {v1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->makeBody(Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;)Lokhttp3/RequestBody;

    move-result-object v3

    .line 9
    instance-of v4, v3, Lcom/guochao/faceshow/aaspring/base/http/request/a;

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "/_vse"

    invoke-static {p1, v6, v4, v5, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    check-cast v3, Lcom/guochao/faceshow/aaspring/base/http/request/a;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/base/http/request/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->makeSesign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "sesign"

    invoke-virtual {v0, v1, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 11
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;->getMethod()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v1, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->CONTENT_TYPE_JSON:Lokhttp3/MediaType;

    const-string v2, "{}"

    invoke-virtual {p2, v2, v1}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;->getMethod()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 13
    :goto_1
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method private final makeSesign(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQClLNqG6B67jvz1ngUn8e4imUKuuGbE3F7R2E41M5H2xoLe9VrTbx7FM67S9/vK0KHLPfvXBYY1X+no1rAKldAlXXkIu/20b9FjLZUOZAbUtmm7/luszNx0Ef3IoUPMfc/H7kv9kO7v7f4p3K4Om/GQT6ayqSJU8oqT/SF9+ZUjSwIDAQAB"

    .line 1
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/RsaUtils;->getRsaPublicKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    .line 2
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/RsaUtils;->encodeByPublicKey(Ljava/lang/String;Ljava/security/interfaces/RSAPublicKey;)Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "encode(\n                \u2026splayName()\n            )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method private final makeUrl(Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;->getQueries()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-string v2, "?"

    move-object v1, p2

    .line 4
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_1

    const-string v1, "?"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "&"

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object p2
.end method

.method private final realCallServer(Lokhttp3/Call;Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call;",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;",
            ")",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->handleHttpResponse(Lokhttp3/Response;Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    move-result-object p1

    return-object p1
.end method

.method public static final request(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;)Lcom/guochao/faceshow/aaspring/base/utils/a;
    .locals 15
    .param p0    # Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v7, p0

    move-object/from16 v5, p1

    const-string v0, "gcRequest"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestParams"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/base/http/v2/RequestInterceptor;->INSTANCE:Lcom/guochao/faceshow/aaspring/base/http/v2/RequestInterceptor;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/RequestInterceptor;->getBefore()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->getOnStart()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_1
    sget-object v0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->INSTANCE:Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;

    invoke-direct {v0, p0, v5}, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->makeRequest(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;)Lokhttp3/Request;

    move-result-object v2

    .line 4
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->httpScope:Lkotlinx/coroutines/CoroutineScope;

    :cond_2
    move-object v10, v0

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;->getRepeatInterval()J

    move-result-wide v3

    .line 7
    new-instance v11, Landroid/os/CancellationSignal;

    invoke-direct {v11}, Landroid/os/CancellationSignal;-><init>()V

    .line 8
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v12

    const/4 v13, 0x0

    new-instance v14, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;

    const/4 v8, 0x0

    move-object v0, v14

    move-object v1, v9

    move-object/from16 v5, p1

    move-object v6, v11

    move-object v7, p0

    invoke-direct/range {v0 .. v8}, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lokhttp3/Request;JLcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;Landroid/os/CancellationSignal;Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x2

    move-object v3, v10

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/v2/a;

    invoke-direct {v1, v0, v9, v11}, Lcom/guochao/faceshow/aaspring/base/http/v2/a;-><init>(Lkotlinx/coroutines/Job;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/os/CancellationSignal;)V

    return-object v1
.end method

.method private static final request$lambda-1(Lkotlinx/coroutines/Job;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/os/CancellationSignal;)V
    .locals 2

    const-string v0, "$job"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$cancelSign"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v0, v1, v0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lokhttp3/Call;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lokhttp3/Call;->cancel()V

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->cancel()V

    return-void
.end method


# virtual methods
.method public final execute(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;Ljava/lang/reflect/Type;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/reflect/Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "gcRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeOfT"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/base/http/v2/RequestInterceptor;->INSTANCE:Lcom/guochao/faceshow/aaspring/base/http/v2/RequestInterceptor;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/RequestInterceptor;->getBefore()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccessClz(Ljava/lang/reflect/Type;)V

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->makeRequest(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;)Lokhttp3/Request;

    move-result-object p2

    .line 4
    sget-object p3, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p3, p2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p2

    .line 5
    invoke-interface {p2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->handleHttpResponse(Lokhttp3/Response;Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.http.v2.Response<T of com.guochao.faceshow.aaspring.base.http.v2.Requester.execute>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
