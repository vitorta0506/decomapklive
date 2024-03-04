.class public final Lie/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/snapchat/kit/sdk/core/networking/FirebaseExtensionClient;

.field private final b:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/snapchat/kit/sdk/core/networking/FirebaseExtensionClient;Lcom/google/gson/Gson;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lie/j;->a:Lcom/snapchat/kit/sdk/core/networking/FirebaseExtensionClient;

    .line 3
    iput-object p2, p0, Lie/j;->b:Lcom/google/gson/Gson;

    return-void
.end method

.method static synthetic a(Lie/j;Lretrofit2/Call;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {p1}, Lretrofit2/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "%s when hitting %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "throws"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    instance-of p1, p2, Ljava/io/IOException;

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "isNetworkError"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p0, p0, Lie/j;->b:Lcom/google/gson/Gson;

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lie/j;Lretrofit2/Call;Lretrofit2/Response;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lie/j;->c(Lretrofit2/Call;Lretrofit2/Response;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c(Lretrofit2/Call;Lretrofit2/Response;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/lang/String;",
            ">;",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {p1}, Lretrofit2/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "HTTP %s error when hitting %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "throws"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "isNetworkError"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p2}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    const-string v2, "responseMsg"

    .line 5
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    move-object p1, v1

    :cond_1
    const-string v2, "responseBody"

    .line 7
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p1

    const-string p2, "errorBody"

    if-eqz p1, :cond_2

    .line 9
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_2
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :goto_0
    iget-object p1, p0, Lie/j;->b:Lcom/google/gson/Gson;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic e(Ljava/lang/Throwable;)Z
    .locals 0

    instance-of p0, p0, Ljava/io/IOException;

    return p0
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lie/b;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lie/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lie/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lie/j;->a:Lcom/snapchat/kit/sdk/core/networking/FirebaseExtensionClient;

    new-instance v1, Lcom/snapchat/kit/sdk/core/models/a;

    invoke-direct {v1, p1, p2, p3}, Lcom/snapchat/kit/sdk/core/models/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/snapchat/kit/sdk/core/networking/FirebaseExtensionClient;->getCustomToken(Lcom/snapchat/kit/sdk/core/models/a;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lie/j$a;

    invoke-direct {p2, p0, p4}, Lie/j$a;-><init>(Lie/j;Lie/b;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
