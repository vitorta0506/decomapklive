.class public Lcom/vk/api/sdk/okhttp/OkHttpExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/api/sdk/okhttp/OkHttpExecutor$MethodResponse;,
        Lcom/vk/api/sdk/okhttp/OkHttpExecutor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000 P2\u00020\u0001:\u0002PQB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u00062\u0008\u0010$\u001a\u0004\u0018\u00010\u0006H\u0004J\u0010\u0010%\u001a\u00020\"2\u0006\u0010&\u001a\u00020\'H\u0014J\u0010\u0010(\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\u0006H\u0002J \u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u000201H\u0014J\u0010\u00102\u001a\u0002032\u0006\u0010&\u001a\u00020\'H\u0016J\u001a\u00102\u001a\u0004\u0018\u00010\u00062\u0006\u0010&\u001a\u0002042\u0008\u00105\u001a\u0004\u0018\u000106J\u000e\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:J\u0012\u0010;\u001a\u0004\u0018\u00010\u00062\u0006\u0010&\u001a\u00020\'H\u0014J\u0012\u0010<\u001a\u0004\u0018\u00010\u00062\u0006\u0010&\u001a\u00020\'H\u0014J\u0010\u0010=\u001a\u00020\"2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0018\u0010>\u001a\u00020?2\u0006\u0010&\u001a\u0002042\u0006\u0010@\u001a\u00020AH\u0014J\u0010\u0010B\u001a\u0004\u0018\u00010\u00062\u0006\u0010C\u001a\u000208J\u0010\u0010D\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0006H\u0002J\u001b\u0010E\u001a\u00020\"2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0000\u00a2\u0006\u0002\u0008FJ\u0018\u0010E\u001a\u00020\"2\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0006J\u0010\u0010G\u001a\u00020\"2\u0006\u0010H\u001a\u00020\u001aH\u0002J\u0018\u0010I\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\'2\u0006\u0010J\u001a\u00020\u0006H\u0004J \u0010K\u001a\u00020L*\u00020L2\u0012\u0010M\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020O0NH\u0002R\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u000cX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0013\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0008R\"\u0010\u0016\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0006@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0008R\u000e\u0010\u0018\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001b\u0010\u001cR\u0013\u0010\u001f\u001a\u0004\u0018\u00010\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u0008\u00a8\u0006R"
    }
    d2 = {
        "Lcom/vk/api/sdk/okhttp/OkHttpExecutor;",
        "",
        "config",
        "Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;",
        "(Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;)V",
        "accessToken",
        "",
        "getAccessToken",
        "()Ljava/lang/String;",
        "getConfig",
        "()Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "credentialsProvider",
        "Lkotlin/Lazy;",
        "Lcom/vk/api/sdk/VKApiCredentials;",
        "customEndpoint",
        "host",
        "getHost",
        "<set-?>",
        "ignoredAccessToken",
        "getIgnoredAccessToken",
        "lock",
        "okHttpProvider",
        "Lcom/vk/api/sdk/VKOkHttpProvider;",
        "getOkHttpProvider",
        "()Lcom/vk/api/sdk/VKOkHttpProvider;",
        "okHttpProvider$delegate",
        "Lkotlin/Lazy;",
        "secret",
        "getSecret",
        "checkAccessTokenIsIgnored",
        "",
        "method",
        "requestAccessToken",
        "checkNonSecretMethodCall",
        "call",
        "Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;",
        "convertFileNameToSafeValue",
        "fileName",
        "createLoggingInterceptor",
        "Lcom/vk/api/sdk/okhttp/LoggingInterceptor;",
        "filterCredentials",
        "",
        "logger",
        "Lcom/vk/api/sdk/utils/log/Logger;",
        "loggingPrefixer",
        "Lcom/vk/api/sdk/okhttp/LoggingPrefixer;",
        "execute",
        "Lcom/vk/api/sdk/okhttp/OkHttpExecutor$MethodResponse;",
        "Lcom/vk/api/sdk/okhttp/OkHttpPostCall;",
        "progressListener",
        "Lcom/vk/api/sdk/VKApiProgressListener;",
        "executeRequest",
        "Lokhttp3/Response;",
        "request",
        "Lokhttp3/Request;",
        "getActualAccessToken",
        "getActualSecret",
        "ignoreAccessToken",
        "makePostCallRequestBuilder",
        "Lokhttp3/Request$Builder;",
        "requestBody",
        "Lokhttp3/RequestBody;",
        "readResponse",
        "response",
        "resolveEndpoint",
        "setCredentials",
        "setCredentials$core_release",
        "updateClient",
        "provider",
        "validateQueryString",
        "paramsString",
        "updateWith",
        "Lokhttp3/MultipartBody$Builder;",
        "parts",
        "",
        "Lcom/vk/api/sdk/internal/HttpMultipartEntry;",
        "Companion",
        "MethodResponse",
        "core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/vk/api/sdk/okhttp/OkHttpExecutor$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MIME_APPLICATION:Ljava/lang/String; = "application/x-www-form-urlencoded; charset=utf-8"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final config:Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile credentialsProvider:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/vk/api/sdk/VKApiCredentials;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final customEndpoint:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile ignoredAccessToken:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final okHttpProvider$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/api/sdk/okhttp/OkHttpExecutor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/api/sdk/okhttp/OkHttpExecutor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->Companion:Lcom/vk/api/sdk/okhttp/OkHttpExecutor$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;)V
    .locals 3
    .param p1    # Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->config:Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;

    .line 2
    invoke-virtual {p1}, Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->context:Landroid/content/Context;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->lock:Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/vk/api/sdk/okhttp/OkHttpExecutor$okHttpProvider$2;

    invoke-direct {v0, p0}, Lcom/vk/api/sdk/okhttp/OkHttpExecutor$okHttpProvider$2;-><init>(Lcom/vk/api/sdk/okhttp/OkHttpExecutor;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->okHttpProvider$delegate:Lkotlin/Lazy;

    .line 5
    sget-object v0, Lcom/vk/api/sdk/VKApiCredentials;->Companion:Lcom/vk/api/sdk/VKApiCredentials$Companion;

    invoke-virtual {p1}, Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;->getSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vk/api/sdk/VKApiCredentials$Companion;->lazyFrom(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->credentialsProvider:Lkotlin/Lazy;

    .line 6
    invoke-virtual {p1}, Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;->getCustomEndpoint()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->customEndpoint:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$updateClient(Lcom/vk/api/sdk/okhttp/OkHttpExecutor;Lcom/vk/api/sdk/VKOkHttpProvider;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->updateClient(Lcom/vk/api/sdk/VKOkHttpProvider;)V

    return-void
.end method

.method private final convertFileNameToSafeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v1, "\""

    const-string v2, "\\\""

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "encode(fileName.replace(\"\\\"\", \"\\\\\\\"\"), UTF_8)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getOkHttpProvider()Lcom/vk/api/sdk/VKOkHttpProvider;
    .locals 1

    iget-object v0, p0, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->okHttpProvider$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/api/sdk/VKOkHttpProvider;

    return-object v0
.end method

.method private final resolveEndpoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->customEndpoint:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->customEndpoint:Ljava/lang/String;

    goto :goto_1

    .line 3
    :cond_1
    sget-object v0, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->Companion:Lcom/vk/api/sdk/okhttp/OkHttpExecutor$Companion;

    invoke-static {v0, p1}, Lcom/vk/api/sdk/okhttp/OkHttpExecutor$Companion;->access$defaultApiEndpoint(Lcom/vk/api/sdk/okhttp/OkHttpExecutor$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private final updateClient(Lcom/vk/api/sdk/VKOkHttpProvider;)V
    .locals 1

    new-instance v0, Lcom/vk/api/sdk/okhttp/OkHttpExecutor$updateClient$1;

    invoke-direct {v0, p0}, Lcom/vk/api/sdk/okhttp/OkHttpExecutor$updateClient$1;-><init>(Lcom/vk/api/sdk/okhttp/OkHttpExecutor;)V

    invoke-virtual {p1, v0}, Lcom/vk/api/sdk/VKOkHttpProvider;->updateClient(Lcom/vk/api/sdk/VKOkHttpProvider$BuilderUpdateFunction;)V

    return-void
.end method

.method private final updateWith(Lokhttp3/MultipartBody$Builder;Ljava/util/Map;)Lokhttp3/MultipartBody$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/MultipartBody$Builder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/vk/api/sdk/internal/HttpMultipartEntry;",
            ">;)",
            "Lokhttp3/MultipartBody$Builder;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/api/sdk/internal/HttpMultipartEntry;

    .line 2
    instance-of v2, v0, Lcom/vk/api/sdk/internal/HttpMultipartEntry$Text;

    if-eqz v2, :cond_1

    .line 3
    check-cast v0, Lcom/vk/api/sdk/internal/HttpMultipartEntry$Text;

    invoke-virtual {v0}, Lcom/vk/api/sdk/internal/HttpMultipartEntry$Text;->getTextValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    goto :goto_0

    .line 4
    :cond_1
    instance-of v2, v0, Lcom/vk/api/sdk/internal/HttpMultipartEntry$File;

    if-eqz v2, :cond_0

    .line 5
    new-instance v2, Lcom/vk/api/sdk/okhttp/FileFullRequestBody;

    iget-object v3, p0, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->context:Landroid/content/Context;

    check-cast v0, Lcom/vk/api/sdk/internal/HttpMultipartEntry$File;

    invoke-virtual {v0}, Lcom/vk/api/sdk/internal/HttpMultipartEntry$File;->getFileUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/vk/api/sdk/okhttp/FileFullRequestBody;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 6
    invoke-virtual {v0}, Lcom/vk/api/sdk/internal/HttpMultipartEntry$File;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    invoke-direct {p0, v0}, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->convertFileNameToSafeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    goto :goto_0

    :cond_3
    return-object p1
.end method


# virtual methods
.method protected final checkAccessTokenIsIgnored(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vk/api/sdk/exceptions/IgnoredAccessTokenException;
        }
    .end annotation

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->ignoredAccessToken:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 2
    iget-object v0, p0, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->ignoredAccessToken:Ljava/lang/String;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Lcom/vk/api/sdk/exceptions/IgnoredAccessTokenException;

    invoke-direct {p2, p1}, Lcom/vk/api/sdk/exceptions/IgnoredAccessTokenException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method protected checkNonSecretMethodCall(Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;)V
    .locals 1
    .param p1    # Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected createLoggingInterceptor(ZLcom/vk/api/sdk/utils/log/Logger;Lcom/vk/api/sdk/okhttp/LoggingPrefixer;)Lcom/vk/api/sdk/okhttp/LoggingInterceptor;
    .locals 1
    .param p2    # Lcom/vk/api/sdk/utils/log/Logger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/vk/api/sdk/okhttp/LoggingPrefixer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggingPrefixer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;

    invoke-direct {v0, p1, p2, p3}, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;-><init>(ZLcom/vk/api/sdk/utils/log/Logger;Lcom/vk/api/sdk/okhttp/LoggingPrefixer;)V

    return-object v0
.end method

.method public execute(Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;)Lcom/vk/api/sdk/okhttp/OkHttpExecutor$MethodResponse;
    .locals 8
    .param p1    # Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;,
            Lcom/vk/api/sdk/exceptions/VKApiException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->getActualAccessToken(Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;)Ljava/lang/String;

    move-result-object v5

    .line 2
    invoke-virtual {p1}, Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->checkAccessTokenIsIgnored(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->getActualSecret(Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;)Ljava/lang/String;

    move-result-object v6

    .line 4
    invoke-virtual {p0, p1}, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->checkNonSecretMethodCall(Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;)V

    .line 5
    sget-object v1, Lcom/vk/api/sdk/internal/QueryStringGenerator;->INSTANCE:Lcom/vk/api/sdk/internal/QueryStringGenerator;

    .line 6
    invoke-virtual {p1}, Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;->getArgs()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1}, Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;->getVersion()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->config:Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;

    invoke-virtual {v0}, Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;->getAppId()I

    move-result v7

    .line 7
    invoke-virtual/range {v1 .. v7}, Lcom/vk/api/sdk/internal/QueryStringGenerator;->buildSignedQueryStringForMethod(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 8
    sget-object v1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {p0, p1, v0}, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->validateQueryString(Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v3, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {v2, v3}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 10
    :cond_0
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 11
    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1}, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->resolveEndpoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 13
    sget-object v1, Lokhttp3/CacheControl;->FORCE_NETWORK:Lokhttp3/CacheControl;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-class v1, Ljava/util/Map;

    .line 14
    invoke-virtual {p1}, Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;->getTag()Lcom/vk/api/sdk/okhttp/RequestTag;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/vk/api/sdk/okhttp/RequestTag;->toMap()Ljava/util/Map;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Class;Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;->getCustomTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Class;Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 17
    :goto_1
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 18
    invoke-virtual {p0}, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {p0, p1}, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->executeRequest(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    .line 20
    new-instance v1, Lcom/vk/api/sdk/okhttp/OkHttpExecutor$MethodResponse;

    invoke-virtual {p0, p1}, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->readResponse(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    invoke-direct {v1, v2, p1, v0}, Lcom/vk/api/sdk/okhttp/OkHttpExecutor$MethodResponse;-><init>(Ljava/lang/String;Lokhttp3/Headers;Ljava/lang/String;)V

    return-object v1
.end method

.method public final execute(Lcom/vk/api/sdk/okhttp/OkHttpPostCall;Lcom/vk/api/sdk/VKApiProgressListener;)Ljava/lang/String;
    .locals 13
    .param p1    # Lcom/vk/api/sdk/okhttp/OkHttpPostCall;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vk/api/sdk/VKApiProgressListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;,
            Lcom/vk/api/sdk/exceptions/VKApiException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lcom/vk/api/sdk/okhttp/OkHttpPostCall;->isMultipart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    sget-object v1, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v0, v1}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 24
    invoke-virtual {p1}, Lcom/vk/api/sdk/okhttp/OkHttpPostCall;->getParts()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->updateWith(Lokhttp3/MultipartBody$Builder;Ljava/util/Map;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v0

    goto/16 :goto_2

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/vk/api/sdk/okhttp/OkHttpPostCall;->getParts()Ljava/util/Map;

    move-result-object v0

    .line 27
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 28
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 29
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vk/api/sdk/internal/HttpMultipartEntry;

    .line 30
    instance-of v3, v3, Lcom/vk/api/sdk/internal/HttpMultipartEntry$Text;

    if-eqz v3, :cond_1

    .line 31
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 32
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 35
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/api/sdk/internal/HttpMultipartEntry$Text;

    invoke-virtual {v1}, Lcom/vk/api/sdk/internal/HttpMultipartEntry$Text;->getTextValue()Ljava/lang/String;

    move-result-object v1

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3e

    const/4 v12, 0x0

    const-string v5, "&"

    .line 37
    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 38
    sget-object v1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v2, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v3, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {v2, v3}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 39
    :goto_2
    new-instance v1, Lcom/vk/api/sdk/okhttp/ProgressRequestBody;

    invoke-direct {v1, v0, p2}, Lcom/vk/api/sdk/okhttp/ProgressRequestBody;-><init>(Lokhttp3/RequestBody;Lcom/vk/api/sdk/VKApiProgressListener;)V

    .line 40
    invoke-virtual {p0, p1, v1}, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->makePostCallRequestBuilder(Lcom/vk/api/sdk/okhttp/OkHttpPostCall;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 41
    invoke-virtual {p0, p1}, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->executeRequest(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->readResponse(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final executeRequest(Lokhttp3/Request;)Lokhttp3/Response;
    .locals 1
    .param p1    # Lokhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->getOkHttpProvider()Lcom/vk/api/sdk/VKOkHttpProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/api/sdk/VKOkHttpProvider;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public final getAccessToken()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->credentialsProvider:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/api/sdk/VKApiCredentials;

    invoke-virtual {v0}, Lcom/vk/api/sdk/VKApiCredentials;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getActualAccessToken(Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getActualSecret(Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->getSecret()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final getConfig()Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->config:Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;

    return-object v0
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getHost()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->config:Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;

    invoke-virtual {v0}, Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;->getHostProvider()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getIgnoredAccessToken()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->ignoredAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getSecret()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->credentialsProvider:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/api/sdk/VKApiCredentials;

    invoke-virtual {v0}, Lcom/vk/api/sdk/VKApiCredentials;->getSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ignoreAccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->ignoredAccessToken:Ljava/lang/String;

    return-void
.end method

.method protected makePostCallRequestBuilder(Lcom/vk/api/sdk/okhttp/OkHttpPostCall;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .locals 1
    .param p1    # Lcom/vk/api/sdk/okhttp/OkHttpPostCall;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/RequestBody;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestBody"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 2
    invoke-virtual {v0, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lcom/vk/api/sdk/okhttp/OkHttpPostCall;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 4
    sget-object p2, Lokhttp3/CacheControl;->FORCE_NETWORK:Lokhttp3/CacheControl;

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final readResponse(Lokhttp3/Response;)Ljava/lang/String;
    .locals 4
    .param p1    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0x19d

    if-eq v0, v1, :cond_4

    .line 2
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 3
    :goto_0
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v2, 0x1f4

    const/4 v3, 0x0

    if-gt v2, v0, :cond_1

    const/16 v2, 0x257

    if-gt v0, v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-eqz v3, :cond_3

    .line 4
    new-instance v0, Lcom/vk/api/sdk/exceptions/VKInternalServerErrorException;

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p1

    if-nez v1, :cond_2

    const-string v1, "null"

    :cond_2
    invoke-direct {v0, p1, v1}, Lcom/vk/api/sdk/exceptions/VKInternalServerErrorException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    return-object v1

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 6
    :cond_4
    new-instance v0, Lcom/vk/api/sdk/exceptions/VKLargeEntityException;

    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vk/api/sdk/exceptions/VKLargeEntityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/api/sdk/VKApiCredentials;->Companion:Lcom/vk/api/sdk/VKApiCredentials$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/vk/api/sdk/VKApiCredentials$Companion;->lazyFrom(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->credentialsProvider:Lkotlin/Lazy;

    return-void
.end method

.method public final setCredentials$core_release(Lkotlin/Lazy;)V
    .locals 1
    .param p1    # Lkotlin/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/vk/api/sdk/VKApiCredentials;",
            ">;)V"
        }
    .end annotation

    const-string v0, "credentialsProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->credentialsProvider:Lkotlin/Lazy;

    return-void
.end method

.method protected final validateQueryString(Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1    # Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vk/api/sdk/exceptions/VKApiException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p2

    const-string v1, "call"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "paramsString"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v3, "execute."

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v1, v3, v4, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "https://vk.com/?"

    .line 2
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "method"

    .line 3
    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const-string v5, "execute"

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "code"

    .line 4
    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :cond_1
    if-eqz v4, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;

    const/16 v6, 0xf

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;->getMethod()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x1f0

    const/16 v16, 0x0

    const-string v9, "Hey dude don\'t execute your hacky code ;)"

    move-object v5, v0

    .line 7
    invoke-direct/range {v5 .. v16}, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;-><init>(ILjava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    :cond_3
    :goto_0
    return-object v0
.end method
