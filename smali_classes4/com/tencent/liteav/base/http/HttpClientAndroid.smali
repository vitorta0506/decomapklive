.class public Lcom/tencent/liteav/base/http/HttpClientAndroid;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/base/http/HttpClientAndroid$a;,
        Lcom/tencent/liteav/base/http/HttpClientAndroid$c;,
        Lcom/tencent/liteav/base/http/HttpClientAndroid$f;,
        Lcom/tencent/liteav/base/http/HttpClientAndroid$e;,
        Lcom/tencent/liteav/base/http/HttpClientAndroid$d;,
        Lcom/tencent/liteav/base/http/HttpClientAndroid$b;,
        Lcom/tencent/liteav/base/http/HttpClientAndroid$g;
    }
.end annotation


# static fields
.field private static final ERROR_CODE_INVALID_REQUEST:I = 0x0

.field private static final HTTPS_PREFIX:Ljava/lang/String; = "https://"

.field private static final HTTP_PREFIX:Ljava/lang/String; = "http://"

.field private static final METHOD_GET:Ljava/lang/String; = "GET"

.field private static final METHOD_POST:Ljava/lang/String; = "POST"

.field private static final READ_STREAM_SIZE:I = 0x56c

.field private static final REDIRECT_REQUEST_MAX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HttpClientAndroid"


# instance fields
.field private mConnection:Ljava/net/HttpURLConnection;

.field private mHttpConfig:Lcom/tencent/liteav/base/http/HttpClientAndroid$b;

.field private final mHttpHandler:Landroid/os/Handler;

.field private volatile mInternalState:Lcom/tencent/liteav/base/http/HttpClientAndroid$c;

.field private mLastRequestURL:Ljava/lang/String;

.field private final mLocker:Ljava/lang/Object;

.field private mNativeHttpClientAndroidJni:J

.field private final mRunningRequestMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/tencent/liteav/base/http/HttpClientAndroid$d;",
            ">;"
        }
    .end annotation
.end field

.field private mStartReadTime:J

.field private mTotalReadBytes:J


# direct methods
.method public constructor <init>(IIIZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 13
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mRunningRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mLocker:Ljava/lang/Object;

    .line 4
    sget-object v1, Lcom/tencent/liteav/base/http/HttpClientAndroid$c;->a:Lcom/tencent/liteav/base/http/HttpClientAndroid$c;

    iput-object v1, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mInternalState:Lcom/tencent/liteav/base/http/HttpClientAndroid$c;

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mTotalReadBytes:J

    .line 6
    iput-wide v1, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mStartReadTime:J

    .line 7
    new-instance v1, Lcom/tencent/liteav/base/http/HttpClientAndroid$b;

    move-object v3, v1

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v3 .. v12}, Lcom/tencent/liteav/base/http/HttpClientAndroid$b;-><init>(IIIZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mHttpConfig:Lcom/tencent/liteav/base/http/HttpClientAndroid$b;

    move-wide/from16 v1, p10

    .line 8
    iput-wide v1, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mNativeHttpClientAndroidJni:J

    .line 9
    new-instance v1, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HttpClient_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Create http client("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "). [ThreadName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "][ThreadId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HttpClientAndroid"

    .line 14
    invoke-static {v3, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mHttpHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/tencent/liteav/base/http/HttpClientAndroid;Lcom/tencent/liteav/base/http/HttpClientAndroid$b;)Lcom/tencent/liteav/base/http/HttpClientAndroid$b;
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mHttpConfig:Lcom/tencent/liteav/base/http/HttpClientAndroid$b;

    return-object p1
.end method

.method static synthetic access$102(Lcom/tencent/liteav/base/http/HttpClientAndroid;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mTotalReadBytes:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/tencent/liteav/base/http/HttpClientAndroid;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mStartReadTime:J

    return-wide p1
.end method

.method private checkNativeValid()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-wide v1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mNativeHttpClientAndroidJni:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkRequestValid(J)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mRunningRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private closeConnectionSafely(Ljava/net/HttpURLConnection;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private createConnection(Lcom/tencent/liteav/base/http/HttpClientAndroid$d;)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mHttpConfig:Lcom/tencent/liteav/base/http/HttpClientAndroid$b;

    iget-object v0, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$b;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mHttpConfig:Lcom/tencent/liteav/base/http/HttpClientAndroid$b;

    iget v0, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$b;->f:I

    if-lez v0, :cond_0

    .line 2
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mHttpConfig:Lcom/tencent/liteav/base/http/HttpClientAndroid$b;

    iget-object v4, v3, Lcom/tencent/liteav/base/http/HttpClientAndroid$b;->g:Ljava/lang/String;

    iget v3, v3, Lcom/tencent/liteav/base/http/HttpClientAndroid$b;->f:I

    invoke-direct {v2, v4, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 3
    new-instance v1, Lcom/tencent/liteav/base/http/HttpClientAndroid$a;

    iget-object v2, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mHttpConfig:Lcom/tencent/liteav/base/http/HttpClientAndroid$b;

    iget-object v3, v2, Lcom/tencent/liteav/base/http/HttpClientAndroid$b;->h:Ljava/lang/String;

    iget-object v2, v2, Lcom/tencent/liteav/base/http/HttpClientAndroid$b;->i:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Lcom/tencent/liteav/base/http/HttpClientAndroid$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p1, Lcom/tencent/liteav/base/http/HttpClientAndroid$d;->b:Ljava/lang/String;

    const-string v3, " "

    const-string v4, "%20"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    :goto_1
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 8
    iget-object v2, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mHttpConfig:Lcom/tencent/liteav/base/http/HttpClientAndroid$b;

    iget v2, v2, Lcom/tencent/liteav/base/http/HttpClientAndroid$b;->a:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 9
    iget-object v2, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mHttpConfig:Lcom/tencent/liteav/base/http/HttpClientAndroid$b;

    iget v2, v2, Lcom/tencent/liteav/base/http/HttpClientAndroid$b;->b:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v2, "Accept-Encoding"

    const-string v3, "identity"

    .line 10
    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/tencent/liteav/base/http/HttpClientAndroid$d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/tencent/liteav/base/http/HttpClientAndroid$d;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mHttpConfig:Lcom/tencent/liteav/base/http/HttpClientAndroid$b;

    iget-boolean v1, v1, Lcom/tencent/liteav/base/http/HttpClientAndroid$b;->d:Z

    const-string v2, "Connection"

    if-eqz v1, :cond_3

    const-string v1, "Keep-Alive"

    .line 15
    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v1, "close"

    .line 16
    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :goto_2
    iget-object v1, p1, Lcom/tencent/liteav/base/http/HttpClientAndroid$d;->e:Ljava/util/Map;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 18
    iget-object p1, p1, Lcom/tencent/liteav/base/http/HttpClientAndroid$d;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    return-object v0
.end method

.method private doCleanById(JZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mRunningRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mRunningRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mLocker:Ljava/lang/Object;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object p2, Lcom/tencent/liteav/base/http/HttpClientAndroid$c;->a:Lcom/tencent/liteav/base/http/HttpClientAndroid$c;

    iput-object p2, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mInternalState:Lcom/tencent/liteav/base/http/HttpClientAndroid$c;

    .line 5
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 6
    iget-object p1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mConnection:Ljava/net/HttpURLConnection;

    invoke-direct {p0, p1}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->closeConnectionSafely(Ljava/net/HttpURLConnection;)V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mConnection:Ljava/net/HttpURLConnection;

    :cond_1
    return-void
.end method

.method private doOnCallback(Lcom/tencent/liteav/base/http/HttpClientAndroid$f;JLcom/tencent/liteav/base/http/HttpClientAndroid$e;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    .line 1
    iget-object v2, v1, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 2
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->checkNativeValid()Z

    move-result v3

    if-eqz v3, :cond_1

    move-wide/from16 v8, p2

    invoke-direct {v1, v8, v9}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->checkRequestValid(J)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 3
    sget-object v3, Lcom/tencent/liteav/base/http/HttpClientAndroid$c;->b:Lcom/tencent/liteav/base/http/HttpClientAndroid$c;

    iget-object v4, v1, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mInternalState:Lcom/tencent/liteav/base/http/HttpClientAndroid$c;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 4
    :goto_0
    iget-wide v4, v1, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mNativeHttpClientAndroidJni:J

    move-object/from16 v3, p1

    .line 5
    iget v7, v3, Lcom/tencent/liteav/base/http/HttpClientAndroid$f;->nativeValue:I

    .line 6
    iget-object v3, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->a:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    .line 7
    iget v10, v3, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->nativeValue:I

    .line 8
    iget-object v11, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->b:Ljava/lang/String;

    iget v12, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->g:I

    iget-object v13, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->c:Ljava/nio/ByteBuffer;

    iget-object v14, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->e:Ljava/lang/String;

    iget-object v15, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->f:Ljava/util/Map;

    iget v0, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->d:I

    move-wide/from16 v8, p2

    move/from16 v16, v0

    .line 9
    invoke-static/range {v4 .. v16}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->nativeOnCallback(JZIJILjava/lang/String;ILjava/nio/ByteBuffer;Ljava/lang/String;Ljava/util/Map;I)V

    .line 10
    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private doReadData(JLcom/tencent/liteav/base/http/HttpClientAndroid$e;)V
    .locals 12

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->checkRequestValid(J)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p3, "HttpClientAndroid"

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")Do read data failed. Invalid request id. id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p3, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 6
    iget-object v2, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 7
    :try_start_1
    iget-object v3, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mInternalState:Lcom/tencent/liteav/base/http/HttpClientAndroid$c;

    sget-object v4, Lcom/tencent/liteav/base/http/HttpClientAndroid$c;->c:Lcom/tencent/liteav/base/http/HttpClientAndroid$c;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 8
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x56c

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_6

    .line 9
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v2, v2, [B

    .line 10
    :cond_2
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_3

    .line 11
    invoke-virtual {v4, v2, v5, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_3
    if-lez v8, :cond_4

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->checkRequestValid(J)Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    if-nez v8, :cond_2

    .line 13
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 14
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p3, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->c:Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v2, v4, v5, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 16
    iput v1, p3, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->d:I

    :cond_5
    move-wide v8, v6

    goto :goto_2

    :catch_0
    move-exception v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "HttpClientAndroid"

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")Do read data failed. Catch error when reading."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, v1}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->getStatusCode(Ljava/lang/Exception;)Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    move-result-object v2

    iput-object v2, p3, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->a:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->b:Ljava/lang/String;

    .line 23
    sget-object v1, Lcom/tencent/liteav/base/http/HttpClientAndroid$f;->b:Lcom/tencent/liteav/base/http/HttpClientAndroid$f;

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->doOnCallback(Lcom/tencent/liteav/base/http/HttpClientAndroid$f;JLcom/tencent/liteav/base/http/HttpClientAndroid$e;)V

    .line 24
    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->doCleanById(JZ)V

    return-void

    :cond_6
    new-array v2, v2, [B

    .line 25
    :try_start_3
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 26
    iget-wide v8, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mTotalReadBytes:J

    int-to-long v10, v1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mTotalReadBytes:J

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-lez v1, :cond_7

    .line 28
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p3, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->c:Ljava/nio/ByteBuffer;

    .line 29
    invoke-virtual {v4, v2, v5, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 30
    iput v1, p3, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->d:I

    .line 31
    :cond_7
    :goto_2
    iget v1, p3, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->d:I

    if-nez v1, :cond_8

    if-nez v3, :cond_8

    const-string v1, "HttpClientAndroid"

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")Do read data failed. Rsp size is 0."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object v1, Lcom/tencent/liteav/base/http/HttpClientAndroid$f;->c:Lcom/tencent/liteav/base/http/HttpClientAndroid$f;

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->doOnCallback(Lcom/tencent/liteav/base/http/HttpClientAndroid$f;JLcom/tencent/liteav/base/http/HttpClientAndroid$e;)V

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->doCleanById(JZ)V

    return-void

    :cond_8
    if-eqz v3, :cond_9

    .line 35
    sget-object v1, Lcom/tencent/liteav/base/http/HttpClientAndroid$f;->c:Lcom/tencent/liteav/base/http/HttpClientAndroid$f;

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->doOnCallback(Lcom/tencent/liteav/base/http/HttpClientAndroid$f;JLcom/tencent/liteav/base/http/HttpClientAndroid$e;)V

    .line 36
    iget-object p3, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mHttpConfig:Lcom/tencent/liteav/base/http/HttpClientAndroid$b;

    iget-boolean p3, p3, Lcom/tencent/liteav/base/http/HttpClientAndroid$b;->d:Z

    xor-int/2addr p3, v0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->doCleanById(JZ)V

    return-void

    .line 37
    :cond_9
    sget-object v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$f;->a:Lcom/tencent/liteav/base/http/HttpClientAndroid$f;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->doOnCallback(Lcom/tencent/liteav/base/http/HttpClientAndroid$f;JLcom/tencent/liteav/base/http/HttpClientAndroid$e;)V

    .line 38
    iget-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mHttpConfig:Lcom/tencent/liteav/base/http/HttpClientAndroid$b;

    iget v0, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$b;->e:I

    if-lez v0, :cond_b

    .line 39
    iget-wide v1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mStartReadTime:J

    sub-long v3, v8, v1

    cmp-long v5, v3, v6

    if-nez v5, :cond_a

    const-wide/16 v1, 0x1

    goto :goto_3

    :cond_a
    sub-long v1, v8, v1

    .line 40
    :goto_3
    iget-wide v3, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mTotalReadBytes:J

    div-long v8, v3, v1

    .line 41
    div-int/lit16 v5, v0, 0x3e8

    int-to-long v10, v5

    cmp-long v5, v8, v10

    if-lez v5, :cond_b

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    int-to-long v5, v0

    .line 42
    div-long/2addr v3, v5

    sub-long v6, v3, v1

    .line 43
    :cond_b
    iget-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mHttpHandler:Landroid/os/Handler;

    invoke-static {p0, p3, p1, p2}, Lcom/tencent/liteav/base/http/d;->a(Lcom/tencent/liteav/base/http/HttpClientAndroid;Lcom/tencent/liteav/base/http/HttpClientAndroid$e;J)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_1
    move-exception v1

    .line 44
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "HttpClientAndroid"

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")Do read data failed. Catch error when reading."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, v1}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->getStatusCode(Ljava/lang/Exception;)Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    move-result-object v2

    iput-object v2, p3, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->a:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    .line 49
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->b:Ljava/lang/String;

    .line 50
    sget-object v1, Lcom/tencent/liteav/base/http/HttpClientAndroid$f;->b:Lcom/tencent/liteav/base/http/HttpClientAndroid$f;

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->doOnCallback(Lcom/tencent/liteav/base/http/HttpClientAndroid$f;JLcom/tencent/liteav/base/http/HttpClientAndroid$e;)V

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->doCleanById(JZ)V

    return-void

    :catchall_0
    move-exception p1

    .line 52
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :catch_2
    move-exception v1

    .line 53
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "HttpClientAndroid"

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")Do read data failed. Fail to get InputStream."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0, v1}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->getStatusCode(Ljava/lang/Exception;)Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    move-result-object v2

    iput-object v2, p3, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->a:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    .line 56
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->b:Ljava/lang/String;

    .line 57
    sget-object v1, Lcom/tencent/liteav/base/http/HttpClientAndroid$f;->b:Lcom/tencent/liteav/base/http/HttpClientAndroid$f;

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->doOnCallback(Lcom/tencent/liteav/base/http/HttpClientAndroid$f;JLcom/tencent/liteav/base/http/HttpClientAndroid$e;)V

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->doCleanById(JZ)V

    return-void
.end method

.method private doRequest(Lcom/tencent/liteav/base/http/HttpClientAndroid$d;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->internalRequest(Lcom/tencent/liteav/base/http/HttpClientAndroid$d;)Lcom/tencent/liteav/base/http/HttpClientAndroid$e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->a:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    sget-object v3, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->d:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->e:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    if-ne v2, v3, :cond_2

    .line 3
    :cond_1
    iget-object v2, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mConnection:Ljava/net/HttpURLConnection;

    const-string v3, "Location"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/tencent/liteav/base/http/HttpClientAndroid$d;->b:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mTotalReadBytes:J

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mStartReadTime:J

    .line 6
    iget-wide v1, p1, Lcom/tencent/liteav/base/http/HttpClientAndroid$d;->a:J

    invoke-direct {p0, v1, v2, v0}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->doReadData(JLcom/tencent/liteav/base/http/HttpClientAndroid$e;)V

    return-void
.end method

.method public static getJavaHashMap([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    if-eqz p0, :cond_3

    .line 1
    array-length v0, p0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_1

    const-string p0, "HttpClientAndroid"

    const-string p1, "Invalid parameter, keys and values do not match."

    .line 3
    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    .line 5
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 6
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 7
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    .line 8
    :cond_3
    :goto_1
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public static getMapKeys(Ljava/util/Map;)[Ljava/lang/String;
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 4
    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getMapValue(Ljava/util/Map;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    .line 3
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 4
    aget-object v2, p1, v0

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method private getResponseHeaders(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getStatusCode(I)Lcom/tencent/liteav/base/http/HttpClientAndroid$g;
    .locals 4

    .line 1
    sget-object v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->x:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->a:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xcc

    if-ne p1, v1, :cond_1

    .line 3
    sget-object v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->b:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xce

    if-ne p1, v1, :cond_2

    .line 4
    sget-object v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->c:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x12d

    if-ne p1, v1, :cond_3

    .line 5
    sget-object v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->d:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x12e

    if-ne p1, v1, :cond_4

    .line 6
    sget-object v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->e:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    goto :goto_0

    :cond_4
    const/16 v1, 0x12f

    if-ne p1, v1, :cond_5

    .line 7
    sget-object v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->f:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    goto :goto_0

    :cond_5
    const/16 v1, 0x130

    if-ne p1, v1, :cond_6

    .line 8
    sget-object v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->g:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    goto :goto_0

    :cond_6
    const/16 v1, 0x133

    if-ne p1, v1, :cond_7

    .line 9
    sget-object v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->h:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    goto :goto_0

    :cond_7
    const/16 v1, 0x134

    if-ne p1, v1, :cond_8

    .line 10
    sget-object v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->i:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    goto :goto_0

    :cond_8
    const/16 v1, 0x193

    if-ne p1, v1, :cond_9

    .line 11
    sget-object v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->j:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    goto :goto_0

    :cond_9
    const/16 v1, 0x194

    if-ne p1, v1, :cond_a

    .line 12
    sget-object v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->k:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    goto :goto_0

    :cond_a
    const/16 v1, 0x195

    if-ne p1, v1, :cond_b

    .line 13
    sget-object v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->l:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    goto :goto_0

    :cond_b
    const/16 v1, 0x1f7

    if-ne p1, v1, :cond_c

    .line 14
    sget-object v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->m:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    goto :goto_0

    .line 15
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")Failed to convert status code\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "HttpClientAndroid"

    invoke-static {p1, v1, v2}, Lcom/tencent/liteav/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method private getStatusCode(Ljava/lang/Exception;)Lcom/tencent/liteav/base/http/HttpClientAndroid$g;
    .locals 4

    .line 16
    sget-object v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->x:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    .line 17
    instance-of v1, p1, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_0

    .line 18
    sget-object v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->n:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    goto/16 :goto_1

    .line 19
    :cond_0
    instance-of v1, p1, Ljava/io/EOFException;

    if-eqz v1, :cond_1

    .line 20
    sget-object v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->o:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    goto :goto_1

    .line 21
    :cond_1
    instance-of v1, p1, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_2

    .line 22
    sget-object v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->p:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    goto :goto_1

    .line 23
    :cond_2
    instance-of v1, p1, Ljava/net/NoRouteToHostException;

    if-eqz v1, :cond_3

    .line 24
    sget-object v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->q:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    goto :goto_1

    .line 25
    :cond_3
    instance-of v1, p1, Ljava/net/SocketException;

    if-nez v1, :cond_9

    instance-of v1, p1, Ljava/net/MalformedURLException;

    if-eqz v1, :cond_4

    goto :goto_0

    .line 26
    :cond_4
    instance-of v1, p1, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_5

    .line 27
    sget-object v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->t:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    goto :goto_1

    .line 28
    :cond_5
    instance-of v1, p1, Ljava/net/ConnectException;

    if-eqz v1, :cond_6

    .line 29
    sget-object v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->u:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    goto :goto_1

    .line 30
    :cond_6
    instance-of v1, p1, Ljava/net/ProtocolException;

    if-eqz v1, :cond_7

    .line 31
    sget-object v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->v:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    goto :goto_1

    .line 32
    :cond_7
    instance-of v1, p1, Ljavax/net/ssl/SSLException;

    if-eqz v1, :cond_8

    .line 33
    sget-object v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->w:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    goto :goto_1

    .line 34
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")Failed to convert status code, exception\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 35
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "HttpClientAndroid"

    .line 36
    invoke-static {p1, v1, v2}, Lcom/tencent/liteav/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 37
    :cond_9
    :goto_0
    sget-object v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->r:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    :goto_1
    return-object v0
.end method

.method private internalRequest(Lcom/tencent/liteav/base/http/HttpClientAndroid$d;)Lcom/tencent/liteav/base/http/HttpClientAndroid$e;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/tencent/liteav/base/http/HttpClientAndroid$d;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "HttpClientAndroid"

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")Send request failed. Invalid request url("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/tencent/liteav/base/http/HttpClientAndroid$d;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 5
    :cond_0
    iget-wide v2, p1, Lcom/tencent/liteav/base/http/HttpClientAndroid$d;->a:J

    invoke-direct {p0, v2, v3}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->checkRequestValid(J)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "HttpClientAndroid"

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")Do send failed. ignore request when cancelled. request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 9
    :cond_1
    new-instance v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;

    invoke-direct {v0}, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;-><init>()V

    .line 10
    iget-object v2, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 11
    :try_start_0
    iget-object v3, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mInternalState:Lcom/tencent/liteav/base/http/HttpClientAndroid$c;

    sget-object v4, Lcom/tencent/liteav/base/http/HttpClientAndroid$c;->c:Lcom/tencent/liteav/base/http/HttpClientAndroid$c;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 12
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    .line 13
    iget-object v2, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/tencent/liteav/base/http/HttpClientAndroid$d;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mLastRequestURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 14
    iget-object v2, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mConnection:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v2}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->closeConnectionSafely(Ljava/net/HttpURLConnection;)V

    .line 15
    iput-object v1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mConnection:Ljava/net/HttpURLConnection;

    .line 16
    :cond_3
    iget-object v2, p1, Lcom/tencent/liteav/base/http/HttpClientAndroid$d;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mLastRequestURL:Ljava/lang/String;

    .line 17
    :try_start_1
    invoke-direct {p0, p1}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->createConnection(Lcom/tencent/liteav/base/http/HttpClientAndroid$d;)Ljava/net/HttpURLConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mConnection:Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 18
    invoke-virtual {p1}, Lcom/tencent/liteav/base/http/HttpClientAndroid$d;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/tencent/liteav/base/http/HttpClientAndroid$d;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 19
    :try_start_2
    iget-object v2, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 20
    :try_start_3
    iget-object v3, p1, Lcom/tencent/liteav/base/http/HttpClientAndroid$d;->d:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 21
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    move-object v2, v1

    .line 22
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "HttpClientAndroid"

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")Do send body failed."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    .line 24
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 25
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    :cond_4
    :goto_2
    :try_start_5
    iget-object v2, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->getStatusCode(I)Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->a:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    .line 27
    iget-object v2, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->b:Ljava/lang/String;

    .line 28
    iget-object v2, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->parseHostAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->e:Ljava/lang/String;

    .line 29
    iget-object v2, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v2

    iput v2, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->g:I

    .line 30
    iget-object v2, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->getResponseHeaders(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->f:Ljava/util/Map;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 31
    iget-wide v2, p1, Lcom/tencent/liteav/base/http/HttpClientAndroid$d;->a:J

    invoke-direct {p0, v2, v3}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->checkRequestValid(J)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "HttpClientAndroid"

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")Do send failed. Invalid request, abort request."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_5
    return-object v0

    :catch_3
    move-exception v2

    .line 33
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "HttpClientAndroid"

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")Do send failed. Catch error."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, v2}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->getStatusCode(Ljava/lang/Exception;)Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->a:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    .line 36
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->b:Ljava/lang/String;

    .line 37
    sget-object v2, Lcom/tencent/liteav/base/http/HttpClientAndroid$f;->b:Lcom/tencent/liteav/base/http/HttpClientAndroid$f;

    iget-wide v3, p1, Lcom/tencent/liteav/base/http/HttpClientAndroid$d;->a:J

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->doOnCallback(Lcom/tencent/liteav/base/http/HttpClientAndroid$f;JLcom/tencent/liteav/base/http/HttpClientAndroid$e;)V

    .line 38
    iget-wide v2, p1, Lcom/tencent/liteav/base/http/HttpClientAndroid$d;->a:J

    invoke-direct {p0, v2, v3, v5}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->doCleanById(JZ)V

    return-object v1

    :catch_4
    move-exception v2

    .line 39
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "HttpClientAndroid"

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")Do send failed. Fail to create http connection."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, v2}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->getStatusCode(Ljava/lang/Exception;)Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->a:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    .line 42
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->b:Ljava/lang/String;

    .line 43
    sget-object v2, Lcom/tencent/liteav/base/http/HttpClientAndroid$f;->b:Lcom/tencent/liteav/base/http/HttpClientAndroid$f;

    iget-wide v3, p1, Lcom/tencent/liteav/base/http/HttpClientAndroid$d;->a:J

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->doOnCallback(Lcom/tencent/liteav/base/http/HttpClientAndroid$f;JLcom/tencent/liteav/base/http/HttpClientAndroid$e;)V

    .line 44
    iget-wide v2, p1, Lcom/tencent/liteav/base/http/HttpClientAndroid$d;->a:J

    invoke-direct {p0, v2, v3, v5}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->doCleanById(JZ)V

    return-object v1

    :catchall_0
    move-exception p1

    .line 45
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method static synthetic lambda$cancelAll$1(Lcom/tencent/liteav/base/http/HttpClientAndroid;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mConnection:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v0}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->closeConnectionSafely(Ljava/net/HttpURLConnection;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mConnection:Ljava/net/HttpURLConnection;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")Cancel all finish."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HttpClientAndroid"

    invoke-static {v0, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$destroy$2(Lcom/tencent/liteav/base/http/HttpClientAndroid;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mConnection:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v0}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->closeConnectionSafely(Ljava/net/HttpURLConnection;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mConnection:Ljava/net/HttpURLConnection;

    .line 3
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mHttpHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mHttpHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 6
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")Quit looper finish."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HttpClientAndroid"

    invoke-static {v0, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$doReadData$3(Lcom/tencent/liteav/base/http/HttpClientAndroid;Lcom/tencent/liteav/base/http/HttpClientAndroid$e;J)V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;

    invoke-direct {v0}, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->a:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    iput-object p1, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->a:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    .line 3
    invoke-direct {p0, p2, p3, v0}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->doReadData(JLcom/tencent/liteav/base/http/HttpClientAndroid$e;)V

    return-void
.end method

.method static synthetic lambda$send$0(Lcom/tencent/liteav/base/http/HttpClientAndroid;Lcom/tencent/liteav/base/http/HttpClientAndroid$d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->doRequest(Lcom/tencent/liteav/base/http/HttpClientAndroid$d;)V

    return-void
.end method

.method private static native nativeOnCallback(JZIJILjava/lang/String;ILjava/nio/ByteBuffer;Ljava/lang/String;Ljava/util/Map;I)V
.end method

.method private parseHostAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 2
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")Parse host error. host:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HttpClientAndroid"

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public cancel(J)V
    .locals 3
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->checkNativeValid()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "HttpClientAndroid"

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")Cancel request failed. Invalid native handle."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mRunningRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mRunningRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/base/http/HttpClientAndroid$d;

    const-string p2, "HttpClientAndroid"

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")Cancel request. request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mRunningRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 12
    sget-object p1, Lcom/tencent/liteav/base/http/HttpClientAndroid$c;->a:Lcom/tencent/liteav/base/http/HttpClientAndroid$c;

    iput-object p1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mInternalState:Lcom/tencent/liteav/base/http/HttpClientAndroid$c;

    .line 13
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cancelAll()V
    .locals 4
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->checkNativeValid()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HttpClientAndroid"

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")Cancel all request failed. Invalid native handle."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mInternalState:Lcom/tencent/liteav/base/http/HttpClientAndroid$c;

    sget-object v2, Lcom/tencent/liteav/base/http/HttpClientAndroid$c;->a:Lcom/tencent/liteav/base/http/HttpClientAndroid$c;

    if-ne v1, v2, :cond_1

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :cond_1
    iput-object v2, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mInternalState:Lcom/tencent/liteav/base/http/HttpClientAndroid$c;

    const-string v1, "HttpClientAndroid"

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")Cancel all. size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mRunningRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mRunningRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 12
    iget-object v1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mHttpHandler:Landroid/os/Handler;

    invoke-static {p0}, Lcom/tencent/liteav/base/http/b;->a(Lcom/tencent/liteav/base/http/HttpClientAndroid;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public destroy()V
    .locals 4
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mRunningRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mNativeHttpClientAndroidJni:J

    const-string v1, "HttpClientAndroid"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")Destroy http client."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mHttpHandler:Landroid/os/Handler;

    invoke-static {p0}, Lcom/tencent/liteav/base/http/c;->a(Lcom/tencent/liteav/base/http/HttpClientAndroid;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public send(JLjava/lang/String;Ljava/lang/String;[BLjava/util/Map;Z)J
    .locals 4
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)J"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/base/http/HttpClientAndroid;->checkNativeValid()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "HttpClientAndroid"

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")Send request failed. Invalid native handle."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    .line 3
    :cond_0
    new-instance v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$d;

    invoke-direct {v0, p3, p4, p5, p6}, Lcom/tencent/liteav/base/http/HttpClientAndroid$d;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;)V

    .line 4
    invoke-virtual {v0}, Lcom/tencent/liteav/base/http/HttpClientAndroid$d;->a()Z

    move-result p3

    if-nez p3, :cond_1

    const-string p1, "HttpClientAndroid"

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")Send request failed. Invalid request url("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$d;->b:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    .line 8
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/liteav/base/http/HttpClientAndroid$d;->d()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 p4, 0x1

    xor-int/2addr p3, p4

    if-nez p3, :cond_2

    const-string p1, "HttpClientAndroid"

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")Send request failed. Request method("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$d;->c:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ") is not supported."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    .line 12
    :cond_2
    iget-object p3, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mLocker:Ljava/lang/Object;

    monitor-enter p3

    const/4 p5, 0x0

    .line 13
    :try_start_0
    iget-object p6, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mInternalState:Lcom/tencent/liteav/base/http/HttpClientAndroid$c;

    sget-object v3, Lcom/tencent/liteav/base/http/HttpClientAndroid$c;->a:Lcom/tencent/liteav/base/http/HttpClientAndroid$c;

    if-ne p6, v3, :cond_4

    if-eqz p7, :cond_3

    .line 14
    sget-object p5, Lcom/tencent/liteav/base/http/HttpClientAndroid$c;->b:Lcom/tencent/liteav/base/http/HttpClientAndroid$c;

    goto :goto_0

    :cond_3
    sget-object p5, Lcom/tencent/liteav/base/http/HttpClientAndroid$c;->c:Lcom/tencent/liteav/base/http/HttpClientAndroid$c;

    :goto_0
    iput-object p5, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mInternalState:Lcom/tencent/liteav/base/http/HttpClientAndroid$c;

    goto :goto_1

    .line 15
    :cond_4
    iget-object p6, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mInternalState:Lcom/tencent/liteav/base/http/HttpClientAndroid$c;

    sget-object p7, Lcom/tencent/liteav/base/http/HttpClientAndroid$c;->c:Lcom/tencent/liteav/base/http/HttpClientAndroid$c;

    if-ne p6, p7, :cond_5

    goto :goto_1

    :cond_5
    const/4 p4, 0x0

    :goto_1
    if-eqz p4, :cond_6

    .line 16
    iput-wide p1, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$d;->a:J

    .line 17
    iget-object p4, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mRunningRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object p1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mHttpHandler:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/tencent/liteav/base/http/a;->a(Lcom/tencent/liteav/base/http/HttpClientAndroid;Lcom/tencent/liteav/base/http/HttpClientAndroid$d;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    iget-wide p1, v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$d;->a:J

    monitor-exit p3

    return-wide p1

    :cond_6
    const-string p1, "HttpClientAndroid"

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "("

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ")Send request failed. Invalid state:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mInternalState:Lcom/tencent/liteav/base/http/HttpClientAndroid$c;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 22
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    monitor-exit p3

    return-wide v1

    :catchall_0
    move-exception p1

    .line 24
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateConfig(IIIZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 14
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    move-object v11, p0

    iget-object v12, v11, Lcom/tencent/liteav/base/http/HttpClientAndroid;->mHttpHandler:Landroid/os/Handler;

    new-instance v13, Lcom/tencent/liteav/base/http/HttpClientAndroid$1;

    move-object v0, v13

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/tencent/liteav/base/http/HttpClientAndroid$1;-><init>(Lcom/tencent/liteav/base/http/HttpClientAndroid;IIIZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
