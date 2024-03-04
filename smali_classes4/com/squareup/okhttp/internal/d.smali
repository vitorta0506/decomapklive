.class public abstract Lcom/squareup/okhttp/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static instance:Lcom/squareup/okhttp/internal/d;

.field public static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/d;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializeInstanceForTests()V
    .locals 1

    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addLenient(Lcom/squareup/okhttp/Headers$Builder;Ljava/lang/String;)V
.end method

.method public abstract addLenient(Lcom/squareup/okhttp/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract apply(Lcom/squareup/okhttp/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
.end method

.method public abstract callEngineGetStreamAllocation(Lcom/squareup/okhttp/Call;)Lqe/o;
.end method

.method public abstract callEnqueue(Lcom/squareup/okhttp/Call;Lcom/squareup/okhttp/Callback;Z)V
.end method

.method public abstract connectionBecameIdle(Lcom/squareup/okhttp/ConnectionPool;Lre/a;)Z
.end method

.method public abstract get(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Address;Lqe/o;)Lre/a;
.end method

.method public abstract getHttpUrlChecked(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method public abstract internalCache(Lcom/squareup/okhttp/OkHttpClient;)Lcom/squareup/okhttp/internal/InternalCache;
.end method

.method public abstract put(Lcom/squareup/okhttp/ConnectionPool;Lre/a;)V
.end method

.method public abstract routeDatabase(Lcom/squareup/okhttp/ConnectionPool;)Lcom/squareup/okhttp/internal/h;
.end method

.method public abstract setCache(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/internal/InternalCache;)V
.end method
