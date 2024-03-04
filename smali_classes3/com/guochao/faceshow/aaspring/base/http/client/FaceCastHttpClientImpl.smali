.class public Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/http/client/a;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final e:Lokhttp3/MediaType;

.field private static final f:Lokhttp3/MediaType;

.field private static g:Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;

.field private static final h:[Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/guochao/faceshow/aaspring/base/http/api/FaceCastApi;

.field private c:Lcom/guochao/faceshow/aaspring/base/http/api/FaceCastApi;

.field private d:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "multipart/form-data;charset=utf-8"

    .line 1
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->e:Lokhttp3/MediaType;

    const-string v0, "application/json;charset=utf-8"

    .line 2
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->f:Lokhttp3/MediaType;

    const-string v0, ""

    .line 3
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->h:[Ljava/lang/String;

    .line 4
    sput-object v0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->i:Ljava/lang/String;

    .line 5
    sput-object v0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->j:Ljava/lang/String;

    .line 6
    sput-object v0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    const-class v0, Lcom/guochao/faceshow/aaspring/base/http/api/FaceCastApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->a:Landroid/content/Context;

    .line 3
    new-instance p1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v1, Lj7/a;

    invoke-direct {v1}, Lj7/a;-><init>()V

    .line 4
    invoke-virtual {p1, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 5
    new-instance v1, Lj7/b;

    invoke-direct {v1}, Lj7/b;-><init>()V

    invoke-virtual {p1, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 6
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {p1, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 7
    invoke-virtual {p1, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 8
    invoke-virtual {p1, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 9
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 10
    new-instance v2, Lretrofit2/Retrofit$Builder;

    invoke-direct {v2}, Lretrofit2/Retrofit$Builder;-><init>()V

    sget-object v3, Lx6/a;->a:Ljava/lang/String;

    .line 11
    invoke-virtual {v2, v3}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v2

    .line 12
    invoke-virtual {v2, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v2

    .line 13
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v2

    .line 14
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v2

    .line 16
    invoke-virtual {v2, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/base/http/api/FaceCastApi;

    iput-object v3, p0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->b:Lcom/guochao/faceshow/aaspring/base/http/api/FaceCastApi;

    .line 17
    invoke-virtual {v2}, Lretrofit2/Retrofit;->newBuilder()Lretrofit2/Retrofit$Builder;

    move-result-object v2

    .line 18
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const-wide/16 v3, 0x12c

    invoke-virtual {p1, v3, v4, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 19
    invoke-virtual {p1, v3, v4, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 20
    invoke-virtual {p1, v3, v4, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->d:Lokhttp3/OkHttpClient;

    .line 22
    invoke-virtual {v2, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    .line 24
    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/api/FaceCastApi;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->c:Lcom/guochao/faceshow/aaspring/base/http/api/FaceCastApi;

    return-void
.end method

.method private c(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "TT;>;)Z"
        }
    .end annotation

    instance-of v0, p1, Landroid/content/Context;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/content/Context;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object p1

    :goto_0
    invoke-static {p1, p2}, Ln7/c;->a(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Z

    move-result p1

    return p1
.end method

.method private d(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "TT;>;Z)Z"
        }
    .end annotation

    instance-of v0, p1, Landroid/content/Context;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/content/Context;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object p1

    :goto_0
    invoke-static {p1, p2, p3}, Ln7/c;->b(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/base/http/callback/c;Z)Z

    move-result p1

    return p1
.end method

.method private e(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroid/content/Context;Lio/reactivex/k;Ljava/lang/reflect/Type;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lio/reactivex/r;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/content/Context;",
            "Lio/reactivex/k<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "TT;>;)",
            "Lio/reactivex/r<",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object p3

    invoke-virtual {p4, p3}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p3

    new-instance p4, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl$c;

    invoke-direct {p4, p0, p1, p2, p5}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl$c;-><init>(Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/reflect/Type;)V

    invoke-virtual {p3, p4}, Lio/reactivex/k;->compose(Lio/reactivex/q;)Lio/reactivex/k;

    move-result-object p1

    new-instance p3, Lm7/b;

    invoke-direct {p3, p2, p6}, Lm7/b;-><init>(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/b;)V

    .line 2
    invoke-virtual {p1, p3}, Lio/reactivex/k;->subscribeWith(Lio/reactivex/r;)Lio/reactivex/r;

    move-result-object p1

    return-object p1
.end method

.method public static h(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->g:Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->g:Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->g:Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->g:Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;

    return-object p0
.end method


# virtual methods
.method public a(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/guochao/faceshow/aaspring/base/utils/a;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p4, v0}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->d(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/guochao/faceshow/aaspring/base/utils/a;->c0:Lcom/guochao/faceshow/aaspring/base/utils/a;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->k(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->c:Lcom/guochao/faceshow/aaspring/base/http/api/FaceCastApi;

    invoke-interface {v1, p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/api/FaceCastApi;->download(Ljava/lang/String;Ljava/util/Map;)Lio/reactivex/k;

    move-result-object p2

    .line 5
    new-instance v0, Li7/b;

    invoke-direct {v0, p3, p4}, Li7/b;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V

    .line 6
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p2

    invoke-virtual {p2, v0}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object p2

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p2

    new-instance p3, Lm7/b;

    invoke-direct {p3, p1, p4}, Lm7/b;-><init>(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/b;)V

    invoke-virtual {p2, p3}, Lio/reactivex/k;->subscribeWith(Lio/reactivex/r;)Lio/reactivex/r;

    return-object v0
.end method

.method public b(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/util/Map;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "TT;>;)",
            "Lcom/guochao/faceshow/aaspring/base/utils/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl$a;

    invoke-direct {v0, p0, p4}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl$a;-><init>(Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;Lcom/guochao/faceshow/aaspring/base/http/callback/b;)V

    .line 2
    invoke-virtual {v0}, Ll7/a;->a()Ljava/lang/reflect/Type;

    move-result-object v6

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->m(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/reflect/Type;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;

    move-result-object p1

    return-object p1
.end method

.method public f(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;
    .locals 9
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/reflect/Type;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/guochao/faceshow/aaspring/base/http/callback/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "TT;>;)",
            "Lcom/guochao/faceshow/aaspring/base/utils/a;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p5}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->c(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/guochao/faceshow/aaspring/base/utils/a;->c0:Lcom/guochao/faceshow/aaspring/base/utils/a;

    return-object p1

    :cond_0
    if-eqz p5, :cond_1

    .line 3
    invoke-virtual {p5, p1}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 4
    :cond_1
    invoke-virtual {p0, p3}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->k(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->b:Lcom/guochao/faceshow/aaspring/base/http/api/FaceCastApi;

    invoke-interface {v1, p2, p3, v0}, Lcom/guochao/faceshow/aaspring/base/http/api/FaceCastApi;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lio/reactivex/k;

    move-result-object p3

    .line 6
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->a:Landroid/content/Context;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->e(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroid/content/Context;Lio/reactivex/k;Ljava/lang/reflect/Type;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lio/reactivex/r;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p4

    new-instance p5, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl$6;

    invoke-direct {p5, p0, p2, p1}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl$6;-><init>(Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;Lio/reactivex/r;Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {p4, p5}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 8
    :cond_2
    new-instance p1, Ln7/a;

    invoke-direct {p1, p3}, Ln7/a;-><init>(Lio/reactivex/k;)V

    return-object p1
.end method

.method public g()Lokhttp3/OkHttpClient;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->d:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public i(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->j(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/util/Map;Z)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->x:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v2

    const-class v3, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;

    const-string v3, "api_version"

    const-string v4, "3"

    .line 5
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "platform"

    const-string v4, "android"

    .line 6
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/utils/SystemUtil;->getSystemVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "platform_version"

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/utils/SystemUtil;->getVersionCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "versionCode"

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/utils/SystemUtil;->getVersionName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_version"

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/utils/SystemUtil;->getSystemModel()Ljava/lang/String;

    move-result-object v3

    const-string v4, "device"

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/utils/SystemUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "deviceId"

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "unixTime"

    .line 12
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 13
    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    const-string v0, "systoken"

    .line 14
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v2, :cond_3

    .line 15
    sget-object v0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->h:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "longitude"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 16
    sget-object v0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->h:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "latitude"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "language"

    .line 17
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 18
    sget-object v1, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->k:Ljava/lang/String;

    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v1, "en"

    .line 20
    :cond_5
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 21
    :cond_6
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :goto_2
    sget-object v0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->i:Ljava/lang/String;

    const-string v1, "phone_country"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->j:Ljava/lang/String;

    const-string v1, "in"

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "id"

    :cond_7
    const-string v1, "phone_lang"

    .line 25
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/guochao/faceshow/context/GCApplication;->sCpuArch:Ljava/lang/String;

    const-string v1, "cpuArch"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "androidSdkLevel"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "timeZone"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_9

    .line 30
    sget-object p2, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->w:Ljava/lang/String;

    const-string v0, "userId"

    .line 31
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 32
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v0, "user_id"

    .line 33
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 34
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-object p1
.end method

.method public k(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->l(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    const-string v0, "unixTime"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 5
    invoke-interface {v1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 6
    :cond_0
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->i(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->i(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public m(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/reflect/Type;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "TT;>;)",
            "Lcom/guochao/faceshow/aaspring/base/utils/a;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p6}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->c(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/guochao/faceshow/aaspring/base/utils/a;->c0:Lcom/guochao/faceshow/aaspring/base/utils/a;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p3}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->k(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 4
    invoke-virtual {p0, p3}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->i(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    const/4 v1, 0x0

    if-eqz p4, :cond_2

    .line 5
    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    .line 6
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->b:Lcom/guochao/faceshow/aaspring/base/http/api/FaceCastApi;

    invoke-interface {p4, p2, p3, v0}, Lcom/guochao/faceshow/aaspring/base/http/api/FaceCastApi;->postData(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lio/reactivex/k;

    move-result-object p3

    goto/16 :goto_7

    .line 7
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-direct {v2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    new-instance p3, Lokhttp3/MultipartBody$Builder;

    invoke-direct {p3}, Lokhttp3/MultipartBody$Builder;-><init>()V

    const/4 v3, 0x0

    .line 9
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 10
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 11
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v4, ""

    .line 12
    :cond_4
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p3, v5, v4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 13
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-direct {v2, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p4, 0x0

    .line 14
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge p4, v3, :cond_8

    .line 15
    invoke-interface {v2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    .line 16
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 17
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 18
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/guochao/faceshow/aaspring/utils/ContentTypeUtils;->findContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 19
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 20
    sget-object v6, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->e:Lokhttp3/MediaType;

    invoke-static {v6, v5}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v5

    goto :goto_5

    .line 21
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";charset=utf-8"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v6

    invoke-static {v6, v5}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v5

    .line 22
    :goto_5
    :try_start_0
    invoke-interface {v2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v5

    invoke-virtual {p3, v5}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v5

    .line 23
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    .line 24
    :cond_8
    sget-object p4, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->e:Lokhttp3/MediaType;

    invoke-virtual {p3, p4}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p3

    .line 25
    instance-of p4, p6, Lcom/guochao/faceshow/aaspring/base/http/callback/d;

    if-eqz p4, :cond_9

    .line 26
    new-instance p4, Lcom/guochao/faceshow/aaspring/base/http/request/b;

    move-object v1, p6

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/callback/d;

    invoke-direct {p4, p3, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/b;-><init>(Lokhttp3/RequestBody;Lcom/guochao/faceshow/aaspring/base/http/callback/d;)V

    move-object p3, p4

    .line 27
    :cond_9
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->c:Lcom/guochao/faceshow/aaspring/base/http/api/FaceCastApi;

    invoke-interface {p4, p2, p3, v0}, Lcom/guochao/faceshow/aaspring/base/http/api/FaceCastApi;->postDataWithFile(Ljava/lang/String;Lokhttp3/RequestBody;Ljava/util/Map;)Lio/reactivex/k;

    move-result-object p3

    :goto_7
    if-eqz p6, :cond_a

    .line 28
    invoke-virtual {p6, p1}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 29
    :cond_a
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->a:Landroid/content/Context;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->e(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroid/content/Context;Lio/reactivex/k;Ljava/lang/reflect/Type;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lio/reactivex/r;

    move-result-object p2

    if-eqz p1, :cond_b

    .line 30
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p4

    new-instance p5, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl$5;

    invoke-direct {p5, p0, p2, p1}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl$5;-><init>(Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;Lio/reactivex/r;Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {p4, p5}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 31
    :cond_b
    new-instance p1, Ln7/a;

    invoke-direct {p1, p3}, Ln7/a;-><init>(Lio/reactivex/k;)V

    return-object p1
.end method

.method public n(Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;
    .locals 13
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/callback/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "TT;>;)",
            "Lcom/guochao/faceshow/aaspring/base/utils/a;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->l()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v7

    .line 2
    invoke-direct {p0, v7, p2}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->c(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lcom/guochao/faceshow/aaspring/base/utils/a;->c0:Lcom/guochao/faceshow/aaspring/base/utils/a;

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->n()Ljava/util/Map;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->T()Ljava/util/Map;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->i()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->l(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->m()Ljava/util/Map;

    move-result-object v3

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->k()Lorg/json/JSONObject;

    move-result-object v4

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->o()Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->i(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->o()Ljava/lang/String;

    move-result-object v6

    const-string v8, "tokens/report/updatePrivateInvite"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "language"

    .line 12
    invoke-interface {v0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v6, 0x0

    if-eqz v1, :cond_3

    .line 13
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v8, 0x1

    :goto_1
    if-eqz v8, :cond_7

    .line 14
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 15
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 16
    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 17
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    invoke-static {v1, v4}, Lcom/guochao/faceshow/aaspring/utils/MapUtils;->putJsonToMap(Ljava/util/Map;Lorg/json/JSONObject;)V

    .line 19
    :cond_4
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 20
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 21
    :try_start_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->j()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 22
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 23
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 25
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 27
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v3

    goto :goto_3

    :catch_1
    move-exception v0

    .line 28
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v3, v1

    :cond_5
    if-nez v3, :cond_6

    .line 29
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 30
    :cond_6
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/a;

    sget-object v1, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->f:Lokhttp3/MediaType;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/a;-><init>(Lokhttp3/MediaType;Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->b:Lcom/guochao/faceshow/aaspring/base/http/api/FaceCastApi;

    invoke-interface {v1, v5, v0, v2}, Lcom/guochao/faceshow/aaspring/base/http/api/FaceCastApi;->postJson(Ljava/lang/String;Lokhttp3/RequestBody;Ljava/util/Map;)Lio/reactivex/k;

    move-result-object v0

    :goto_4
    move-object v8, v0

    goto/16 :goto_d

    .line 32
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 33
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v0}, Lokhttp3/MultipartBody$Builder;-><init>()V

    const/4 v8, 0x0

    .line 34
    :goto_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    const-string v10, ""

    if-ge v8, v9, :cond_9

    .line 35
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 36
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_6

    :cond_8
    move-object v10, v9

    .line 37
    :goto_6
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_9
    if-eqz v3, :cond_b

    .line 38
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v4

    .line 39
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    .line 40
    :goto_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_b

    .line 41
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_a

    move-object v9, v10

    .line 42
    :cond_a
    invoke-virtual {v4, v9}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 43
    new-instance v11, Ljava/io/StringWriter;

    invoke-direct {v11}, Ljava/io/StringWriter;-><init>()V

    .line 44
    :try_start_2
    invoke-static {v11, v9}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->unescapeJava(Ljava/io/Writer;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v11}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception v11

    .line 46
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    .line 47
    :goto_8
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v0, v11, v9}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 48
    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 49
    :goto_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_e

    .line 50
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v8, 0x0

    .line 51
    :goto_a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_d

    .line 52
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    .line 53
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/guochao/faceshow/aaspring/utils/ContentTypeUtils;->findContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 54
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 55
    sget-object v10, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->e:Lokhttp3/MediaType;

    invoke-static {v10, v9}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v9

    goto :goto_b

    .line 56
    :cond_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ";charset=utf-8"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v10

    invoke-static {v10, v9}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v9

    .line 57
    :goto_b
    :try_start_3
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-static {v11, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v9}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v9

    invoke-virtual {v0, v9}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_c

    :catch_3
    move-exception v9

    .line 58
    invoke-virtual {v9}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 59
    :cond_e
    sget-object v1, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->e:Lokhttp3/MediaType;

    invoke-virtual {v0, v1}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v0

    .line 60
    instance-of v1, p2, Lcom/guochao/faceshow/aaspring/base/http/callback/d;

    if-eqz v1, :cond_f

    .line 61
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/request/b;

    move-object v3, p2

    check-cast v3, Lcom/guochao/faceshow/aaspring/base/http/callback/d;

    invoke-direct {v1, v0, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/b;-><init>(Lokhttp3/RequestBody;Lcom/guochao/faceshow/aaspring/base/http/callback/d;)V

    move-object v0, v1

    .line 62
    :cond_f
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->c:Lcom/guochao/faceshow/aaspring/base/http/api/FaceCastApi;

    invoke-interface {v1, v5, v0, v2}, Lcom/guochao/faceshow/aaspring/base/http/api/FaceCastApi;->postDataWithFile(Ljava/lang/String;Lokhttp3/RequestBody;Ljava/util/Map;)Lio/reactivex/k;

    move-result-object v0

    goto/16 :goto_4

    :goto_d
    if-eqz p2, :cond_10

    .line 63
    invoke-virtual {p2, v7}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 64
    :cond_10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->g()Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->g()Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    move-result-object p1

    goto :goto_e

    :cond_11
    move-object p1, p2

    .line 65
    :goto_e
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->a:Landroid/content/Context;

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl$b;-><init>(Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;Lcom/guochao/faceshow/aaspring/base/http/callback/b;)V

    .line 66
    invoke-virtual {v0}, Ll7/a;->a()Ljava/lang/reflect/Type;

    move-result-object p1

    move-object v0, p0

    move-object v1, v5

    move-object v2, v7

    move-object v4, v8

    move-object v5, p1

    move-object v6, p2

    .line 67
    invoke-direct/range {v0 .. v6}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->e(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroid/content/Context;Lio/reactivex/k;Ljava/lang/reflect/Type;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lio/reactivex/r;

    move-result-object p1

    if-eqz v7, :cond_12

    .line 68
    invoke-interface {v7}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl$8;

    invoke-direct {v0, p0, p1, v7}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl$8;-><init>(Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;Lio/reactivex/r;Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {p2, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 69
    :cond_12
    new-instance p1, Ln7/a;

    invoke-direct {p1, v8}, Ln7/a;-><init>(Lio/reactivex/k;)V

    return-object p1
.end method
