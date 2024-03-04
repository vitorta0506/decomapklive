.class final Lcom/squareup/okhttp/OkHttpClient$1;
.super Lcom/squareup/okhttp/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/d;-><init>()V

    return-void
.end method


# virtual methods
.method public addLenient(Lcom/squareup/okhttp/Headers$Builder;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    return-void
.end method

.method public addLenient(Lcom/squareup/okhttp/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p1, p2, p3}, Lcom/squareup/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    return-void
.end method

.method public apply(Lcom/squareup/okhttp/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Lcom/squareup/okhttp/ConnectionSpec;->apply(Ljavax/net/ssl/SSLSocket;Z)V

    return-void
.end method

.method public callEngineGetStreamAllocation(Lcom/squareup/okhttp/Call;)Lqe/o;
    .locals 0

    iget-object p1, p1, Lcom/squareup/okhttp/Call;->engine:Lqe/g;

    iget-object p1, p1, Lqe/g;->b:Lqe/o;

    return-object p1
.end method

.method public callEnqueue(Lcom/squareup/okhttp/Call;Lcom/squareup/okhttp/Callback;Z)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Lcom/squareup/okhttp/Call;->enqueue(Lcom/squareup/okhttp/Callback;Z)V

    return-void
.end method

.method public connectionBecameIdle(Lcom/squareup/okhttp/ConnectionPool;Lre/a;)Z
    .locals 0

    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/ConnectionPool;->connectionBecameIdle(Lre/a;)Z

    move-result p1

    return p1
.end method

.method public get(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Address;Lqe/o;)Lre/a;
    .locals 0

    invoke-virtual {p1, p2, p3}, Lcom/squareup/okhttp/ConnectionPool;->get(Lcom/squareup/okhttp/Address;Lqe/o;)Lre/a;

    move-result-object p1

    return-object p1
.end method

.method public getHttpUrlChecked(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-static {p1}, Lcom/squareup/okhttp/HttpUrl;->getChecked(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl;

    move-result-object p1

    return-object p1
.end method

.method public internalCache(Lcom/squareup/okhttp/OkHttpClient;)Lcom/squareup/okhttp/internal/InternalCache;
    .locals 0

    invoke-virtual {p1}, Lcom/squareup/okhttp/OkHttpClient;->internalCache()Lcom/squareup/okhttp/internal/InternalCache;

    move-result-object p1

    return-object p1
.end method

.method public put(Lcom/squareup/okhttp/ConnectionPool;Lre/a;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/ConnectionPool;->put(Lre/a;)V

    return-void
.end method

.method public routeDatabase(Lcom/squareup/okhttp/ConnectionPool;)Lcom/squareup/okhttp/internal/h;
    .locals 0

    iget-object p1, p1, Lcom/squareup/okhttp/ConnectionPool;->routeDatabase:Lcom/squareup/okhttp/internal/h;

    return-object p1
.end method

.method public setCache(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/internal/InternalCache;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/OkHttpClient;->setInternalCache(Lcom/squareup/okhttp/internal/InternalCache;)V

    return-void
.end method
