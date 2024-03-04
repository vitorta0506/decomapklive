.class abstract Lcom/twitter/sdk/android/core/internal/oauth/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/twitter/sdk/android/core/q;

.field private final b:Lcom/twitter/sdk/android/core/internal/j;

.field private final c:Ljava/lang/String;

.field private final d:Lretrofit2/Retrofit;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/q;Lcom/twitter/sdk/android/core/internal/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/e;->a:Lcom/twitter/sdk/android/core/q;

    .line 3
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/oauth/e;->b:Lcom/twitter/sdk/android/core/internal/j;

    .line 4
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/q;->m()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TwitterAndroidSDK"

    invoke-static {p2, p1}, Lcom/twitter/sdk/android/core/internal/j;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/e;->c:Ljava/lang/String;

    .line 5
    new-instance p1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance p2, Lcom/twitter/sdk/android/core/internal/oauth/d;

    invoke-direct {p2, p0}, Lcom/twitter/sdk/android/core/internal/oauth/d;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/e;)V

    .line 6
    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 7
    invoke-static {}, Lve/e;->c()Lokhttp3/CertificatePinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->certificatePinner(Lokhttp3/CertificatePinner;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 9
    new-instance p2, Lretrofit2/Retrofit$Builder;

    invoke-direct {p2}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 10
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/oauth/e;->b()Lcom/twitter/sdk/android/core/internal/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    .line 11
    invoke-virtual {p2, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 12
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p2

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/e;->d:Lretrofit2/Retrofit;

    return-void
.end method

.method public static synthetic a(Lcom/twitter/sdk/android/core/internal/oauth/e;Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/internal/oauth/e;->f(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method private synthetic f(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/oauth/e;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 4
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected b()Lcom/twitter/sdk/android/core/internal/j;
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/e;->b:Lcom/twitter/sdk/android/core/internal/j;

    return-object v0
.end method

.method protected c()Lretrofit2/Retrofit;
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/e;->d:Lretrofit2/Retrofit;

    return-object v0
.end method

.method protected d()Lcom/twitter/sdk/android/core/q;
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/e;->a:Lcom/twitter/sdk/android/core/q;

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/e;->c:Ljava/lang/String;

    return-object v0
.end method
