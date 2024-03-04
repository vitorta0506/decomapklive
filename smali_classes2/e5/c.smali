.class final Le5/c;
.super Lcom/google/api/client/http/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le5/c$b;,
        Le5/c$c;
    }
.end annotation


# static fields
.field private static final g:Le5/c$c;


# instance fields
.field private final e:Ljava/net/HttpURLConnection;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Le5/c$b;

    invoke-direct {v0}, Le5/c$b;-><init>()V

    sput-object v0, Le5/c;->g:Le5/c$c;

    return-void
.end method

.method constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/http/u;-><init>()V

    .line 2
    iput-object p1, p0, Le5/c;->e:Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Le5/c;->f:I

    .line 4
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method private n(Ljava/net/HttpURLConnection;)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method private o(Le5/c$c;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le5/c;->f:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/api/client/http/u;->f()Lcom/google/api/client/util/d0;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Le5/c$c;->a(Ljava/io/OutputStream;Lcom/google/api/client/util/d0;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/client/http/u;->f()Lcom/google/api/client/util/d0;

    move-result-object v0

    .line 4
    new-instance v1, Le5/c$a;

    invoke-direct {v1, p0, p1, p2, v0}, Le5/c$a;-><init>(Le5/c;Le5/c$c;Ljava/io/OutputStream;Lcom/google/api/client/util/d0;)V

    .line 5
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 6
    new-instance p2, Ljava/util/concurrent/FutureTask;

    invoke-direct {p2, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p2

    .line 7
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 8
    :try_start_0
    iget v0, p0, Le5/c;->f:I

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result p2

    if-nez p2, :cond_1

    .line 10
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 11
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Socket write timed out"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 12
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Exception in socket write"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 13
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Socket write interrupted"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Le5/c;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Lcom/google/api/client/http/v;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Le5/c;->g:Le5/c$c;

    invoke-virtual {p0, v0}, Le5/c;->m(Le5/c$c;)Lcom/google/api/client/http/v;

    move-result-object v0

    return-object v0
.end method

.method public k(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Le5/c;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 2
    iget-object p2, p0, Le5/c;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    return-void
.end method

.method public l(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput p1, p0, Le5/c;->f:I

    return-void
.end method

.method m(Le5/c$c;)Lcom/google/api/client/http/v;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le5/c;->e:Ljava/net/HttpURLConnection;

    .line 2
    invoke-virtual {p0}, Lcom/google/api/client/http/u;->f()Lcom/google/api/client/util/d0;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_8

    .line 3
    invoke-virtual {p0}, Lcom/google/api/client/http/u;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v5, "Content-Type"

    .line 4
    invoke-virtual {p0, v5, v1}, Le5/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/client/http/u;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v5, "Content-Encoding"

    .line 6
    invoke-virtual {p0, v5, v1}, Le5/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/google/api/client/http/u;->d()J

    move-result-wide v5

    cmp-long v1, v5, v2

    if-ltz v1, :cond_2

    .line 8
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Content-Length"

    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    .line 10
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v7, 0x0

    if-nez v3, :cond_5

    const-string v3, "PUT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v2, v1, v7

    const-string v2, "%s with non-zero content length is not supported"

    .line 11
    invoke-static {p1, v2, v1}, Lcom/google/api/client/util/z;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 12
    :cond_5
    :goto_1
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    if-ltz v1, :cond_6

    const-wide/32 v1, 0x7fffffff

    cmp-long v3, v5, v1

    if-gtz v3, :cond_6

    long-to-int v1, v5

    .line 13
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto :goto_2

    .line 14
    :cond_6
    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 15
    :goto_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 16
    :try_start_0
    invoke-direct {p0, p1, v1}, Le5/c;->o(Le5/c$c;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 18
    throw p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 19
    :try_start_2
    invoke-direct {p0, v0}, Le5/c;->n(Ljava/net/HttpURLConnection;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_7

    .line 20
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    .line 21
    :cond_7
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 22
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 23
    :catch_2
    throw p1

    .line 24
    :cond_8
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DELETE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 25
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 26
    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    .line 27
    :catch_3
    :cond_9
    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 28
    new-instance p1, Le5/d;

    invoke-direct {p1, v0}, Le5/d;-><init>(Ljava/net/HttpURLConnection;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-object p1

    :catchall_1
    move-exception p1

    .line 29
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 30
    throw p1
.end method
