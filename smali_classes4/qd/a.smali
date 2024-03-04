.class public Lqd/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I

.field private static b:Lokhttp3/OkHttpClient;

.field private static c:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)Lokhttp3/OkHttpClient;
    .locals 3

    .line 1
    sget-object v0, Lqd/a;->b:Lokhttp3/OkHttpClient;

    if-eqz v0, :cond_0

    sget v0, Lqd/a;->a:I

    if-eq v0, p0, :cond_4

    .line 2
    :cond_0
    const-class v0, Lqd/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lqd/a;->b:Lokhttp3/OkHttpClient;

    if-eqz v1, :cond_1

    sget v2, Lqd/a;->a:I

    if-eq v2, p0, :cond_3

    :cond_1
    if-nez v1, :cond_2

    .line 4
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    sput-object v1, Lqd/a;->b:Lokhttp3/OkHttpClient;

    .line 5
    :cond_2
    sput p0, Lqd/a;->a:I

    .line 6
    invoke-static {p0}, Lqd/a;->c(I)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 7
    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    sput-object p0, Lqd/a;->b:Lokhttp3/OkHttpClient;

    .line 8
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_4
    sget-object p0, Lqd/a;->b:Lokhttp3/OkHttpClient;

    return-object p0

    :catchall_0
    move-exception p0

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static b()Lokhttp3/OkHttpClient;
    .locals 1

    const/16 v0, 0x3c

    invoke-static {v0}, Lqd/a;->a(I)Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized c(I)Lokhttp3/OkHttpClient$Builder;
    .locals 6

    const-class v0, Lqd/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lqd/a;->b:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 2
    new-instance v2, Lpd/a;

    invoke-direct {v2}, Lpd/a;-><init>()V

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    int-to-long v3, p0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-virtual {v2, v3, v4, p0}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 4
    invoke-virtual {v2, v3, v4, p0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 5
    invoke-virtual {v2, v3, v4, p0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 6
    invoke-virtual {v2, v3, v4, p0}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 7
    :try_start_1
    sget-object v2, Lqd/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    .line 8
    new-instance v3, Lqd/a$a;

    invoke-direct {v3}, Lqd/a$a;-><init>()V

    aput-object v3, v2, p0

    const-string v3, "SSL"

    .line 9
    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    const/4 v4, 0x0

    .line 10
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v4, v2, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 11
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    sput-object v3, Lqd/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    aget-object v2, v2, p0

    .line 12
    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v1, v3, v2}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 13
    new-instance v2, Lqd/a$b;

    invoke-direct {v2}, Lqd/a$b;-><init>()V

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :cond_0
    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v2

    .line 15
    :try_start_2
    sput p0, Lqd/a;->a:I

    .line 16
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
