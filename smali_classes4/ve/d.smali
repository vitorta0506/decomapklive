.class public Lve/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field final a:Lcom/twitter/sdk/android/core/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/j<",
            "+",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/twitter/sdk/android/core/TwitterAuthConfig;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/j;Lcom/twitter/sdk/android/core/TwitterAuthConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/j<",
            "+",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lve/d;->a:Lcom/twitter/sdk/android/core/j;

    .line 3
    iput-object p2, p0, Lve/d;->b:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    return-void
.end method


# virtual methods
.method a(Lokhttp3/Request;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/twitter/sdk/android/core/internal/oauth/b;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/oauth/b;-><init>()V

    iget-object v1, p0, Lve/d;->b:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iget-object v2, p0, Lve/d;->a:Lcom/twitter/sdk/android/core/j;

    .line 2
    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/j;->a()Lcom/twitter/sdk/android/core/a;

    move-result-object v2

    check-cast v2, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3
    invoke-virtual {p0, p1}, Lve/d;->b(Lokhttp3/Request;)Ljava/util/Map;

    move-result-object v6

    const/4 v3, 0x0

    .line 4
    invoke-virtual/range {v0 .. v6}, Lcom/twitter/sdk/android/core/internal/oauth/b;->a(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method b(Lokhttp3/Request;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "POST"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object p1

    .line 4
    instance-of v1, p1, Lokhttp3/FormBody;

    if-eqz v1, :cond_0

    .line 5
    check-cast p1, Lokhttp3/FormBody;

    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1}, Lokhttp3/FormBody;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 7
    invoke-virtual {p1, v1}, Lokhttp3/FormBody;->encodedName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1}, Lokhttp3/FormBody;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method c(Lokhttp3/HttpUrl;)Lokhttp3/HttpUrl;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->query(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->querySize()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    invoke-virtual {p1, v2}, Lokhttp3/HttpUrl;->queryParameterName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lve/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p1, v2}, Lokhttp3/HttpUrl;->queryParameterValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lve/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v0, v3, v4}, Lokhttp3/HttpUrl$Builder;->addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p1

    return-object p1
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lve/d;->c(Lokhttp3/HttpUrl;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v1

    .line 6
    invoke-virtual {p0, v0}, Lve/d;->a(Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Authorization"

    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 8
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
