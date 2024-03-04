.class public Lcom/twitter/sdk/android/core/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lretrofit2/Retrofit;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/twitter/sdk/android/core/q;->k()Lcom/twitter/sdk/android/core/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/q;->i()Lcom/twitter/sdk/android/core/e;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lve/e;->d(Lcom/twitter/sdk/android/core/e;)Lokhttp3/OkHttpClient;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/internal/j;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/internal/j;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/twitter/sdk/android/core/m;-><init>(Lokhttp3/OkHttpClient;Lcom/twitter/sdk/android/core/internal/j;)V

    return-void
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/core/s;)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/twitter/sdk/android/core/q;->k()Lcom/twitter/sdk/android/core/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/q;->g()Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v0

    .line 4
    invoke-static {p1, v0}, Lve/e;->e(Lcom/twitter/sdk/android/core/j;Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Lokhttp3/OkHttpClient;

    move-result-object p1

    new-instance v0, Lcom/twitter/sdk/android/core/internal/j;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/j;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/core/m;-><init>(Lokhttp3/OkHttpClient;Lcom/twitter/sdk/android/core/internal/j;)V

    return-void
.end method

.method constructor <init>(Lokhttp3/OkHttpClient;Lcom/twitter/sdk/android/core/internal/j;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/m;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/m;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/core/m;->c(Lokhttp3/OkHttpClient;Lcom/twitter/sdk/android/core/internal/j;)Lretrofit2/Retrofit;

    move-result-object p1

    iput-object p1, p0, Lcom/twitter/sdk/android/core/m;->b:Lretrofit2/Retrofit;

    return-void
.end method

.method private a()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method

.method private b()Lcom/google/gson/Gson;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    new-instance v1, Lcom/twitter/sdk/android/core/models/SafeListAdapter;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/models/SafeListAdapter;-><init>()V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/models/SafeMapAdapter;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/models/SafeMapAdapter;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lcom/twitter/sdk/android/core/models/c;

    new-instance v2, Lcom/twitter/sdk/android/core/models/BindingValuesAdapter;

    invoke-direct {v2}, Lcom/twitter/sdk/android/core/models/BindingValuesAdapter;-><init>()V

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method private c(Lokhttp3/OkHttpClient;Lcom/twitter/sdk/android/core/internal/j;)Lretrofit2/Retrofit;
    .locals 1

    .line 1
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 3
    invoke-virtual {p2}, Lcom/twitter/sdk/android/core/internal/j;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 4
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/m;->b()Lcom/google/gson/Gson;

    move-result-object p2

    invoke-static {p2}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p2

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public d()Lcom/twitter/sdk/android/core/services/AccountService;
    .locals 1

    const-class v0, Lcom/twitter/sdk/android/core/services/AccountService;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/m;->g(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/services/AccountService;

    return-object v0
.end method

.method public e()Lcom/twitter/sdk/android/core/services/FavoriteService;
    .locals 1

    const-class v0, Lcom/twitter/sdk/android/core/services/FavoriteService;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/m;->g(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/services/FavoriteService;

    return-object v0
.end method

.method public f()Lcom/twitter/sdk/android/core/services/MediaService;
    .locals 1

    const-class v0, Lcom/twitter/sdk/android/core/services/MediaService;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/m;->g(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/services/MediaService;

    return-object v0
.end method

.method protected g(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/m;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/core/m;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/m;->b:Lretrofit2/Retrofit;

    invoke-virtual {v1, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/m;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h()Lcom/twitter/sdk/android/core/services/StatusesService;
    .locals 1

    const-class v0, Lcom/twitter/sdk/android/core/services/StatusesService;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/m;->g(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/services/StatusesService;

    return-object v0
.end method
