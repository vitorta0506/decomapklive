.class public Lxc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxc/a$a;
    }
.end annotation


# static fields
.field private static final e:[B


# instance fields
.field private final a:Lxc/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lxc/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lxc/a;->e:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lxc/e;

    invoke-direct {v0, p1, p2}, Lxc/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lxc/a;-><init>(Lxc/e;)V

    return-void
.end method

.method protected constructor <init>(Lxc/e;)V
    .locals 1
    .param p1    # Lxc/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lxc/a;->a:Lxc/e;

    .line 4
    new-instance p1, Lxc/d;

    const-string v0, "UTF-8"

    invoke-direct {p1, v0}, Lxc/d;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lxc/a;->b:Lxc/d;

    const p1, 0x15f90

    .line 5
    iput p1, p0, Lxc/a;->c:I

    .line 6
    iput p1, p0, Lxc/a;->d:I

    return-void
.end method

.method private static a(Ljava/util/Map;)[B
    .locals 1
    .param p0    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lxc/a;->e:[B

    return-object p0

    :cond_0
    const-string v0, ""

    .line 3
    invoke-static {v0, p0}, Lyc/f;->c(Ljava/lang/String;Ljava/util/Map;)Landroid/net/Uri;

    move-result-object p0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static c(Ljava/net/HttpURLConnection;Lxc/c;Lxc/c;)Lqc/c;
    .locals 2
    .param p0    # Ljava/net/HttpURLConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lxc/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lxc/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/HttpURLConnection;",
            "Lxc/c<",
            "TT;>;",
            "Lxc/c<",
            "Ljava/lang/String;",
            ">;)",
            "Lqc/c<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lxc/a;->d(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    const/16 v1, 0xc8

    if-eq p0, v1, :cond_0

    const/16 v1, 0xcc

    if-eq p0, v1, :cond_0

    .line 3
    :try_start_0
    sget-object p1, Lcom/linecorp/linesdk/LineApiResponseCode;->SERVER_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    .line 4
    invoke-interface {p2, v0}, Lxc/c;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 5
    invoke-static {p0, p2}, Lcom/linecorp/linesdk/LineApiError;->a(ILjava/lang/String;)Lcom/linecorp/linesdk/LineApiError;

    move-result-object p0

    .line 6
    invoke-static {p1, p0}, Lqc/c;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lqc/c;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    .line 7
    invoke-static {p0}, Lqc/c;->b(Ljava/lang/Object;)Lqc/c;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    invoke-interface {p1, v0}, Lxc/c;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lqc/c;->b(Ljava/lang/Object;)Lqc/c;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 9
    sget-object p1, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance p2, Lcom/linecorp/linesdk/LineApiError;

    sget-object v0, Lcom/linecorp/linesdk/LineApiError$ErrorCode;->HTTP_RESPONSE_PARSE_ERROR:Lcom/linecorp/linesdk/LineApiError$ErrorCode;

    invoke-direct {p2, p0, v0}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/Exception;Lcom/linecorp/linesdk/LineApiError$ErrorCode;)V

    invoke-static {p1, p2}, Lqc/c;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lqc/c;

    move-result-object p0

    return-object p0
.end method

.method private static d(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 2
    .param p0    # Ljava/net/HttpURLConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 4
    :goto_0
    invoke-static {p0}, Lxc/a;->e(Ljava/net/HttpURLConnection;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, p0

    :cond_1
    return-object v0
.end method

.method private static e(Ljava/net/HttpURLConnection;)Z
    .locals 4
    .param p0    # Ljava/net/HttpURLConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    const-string v0, "Content-Encoding"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "gzip"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private static f(Lqc/c;Ljava/lang/Exception;)V
    .locals 0
    .param p0    # Lqc/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqc/c<",
            "*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method private g(Landroid/net/Uri;ILxc/a$a;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lxc/a;->i(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 3
    iget-object v1, p0, Lxc/a;->a:Lxc/e;

    invoke-virtual {v1}, Lxc/e;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    .line 4
    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    .line 5
    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Content-Length"

    invoke-virtual {p1, v1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget p2, p0, Lxc/a;->c:I

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 8
    iget p2, p0, Lxc/a;->d:I

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 9
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    return-object p1
.end method

.method private h(Landroid/net/Uri;)Ljava/net/HttpURLConnection;
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lxc/a;->i(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 3
    iget-object v0, p0, Lxc/a;->a:Lxc/e;

    invoke-virtual {v0}, Lxc/e;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    .line 4
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget v0, p0, Lxc/a;->c:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 6
    iget v0, p0, Lxc/a;->d:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 7
    sget-object v0, Lxc/a$a;->b:Lxc/a$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object p1
.end method

.method private j(Landroid/net/Uri;I)Ljava/net/HttpURLConnection;
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lxc/a;->i(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 3
    iget-object v1, p0, Lxc/a;->a:Lxc/e;

    invoke-virtual {v1}, Lxc/e;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    .line 4
    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    .line 5
    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Content-Length"

    invoke-virtual {p1, v1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget p2, p0, Lxc/a;->c:I

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 8
    iget p2, p0, Lxc/a;->d:I

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 9
    sget-object p2, Lxc/a$a;->a:Lxc/a$a;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    return-object p1
.end method

.method private m(Lxc/a$a;Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;Lxc/c;)Lqc/c;
    .locals 2
    .param p1    # Lxc/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lxc/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lxc/a$a;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lxc/c<",
            "TT;>;)",
            "Lqc/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p4

    const/4 v0, 0x0

    .line 2
    :try_start_0
    array-length v1, p4

    invoke-direct {p0, p2, v1, p1}, Lxc/a;->g(Landroid/net/Uri;ILxc/a$a;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 3
    invoke-static {v0, p3}, Lxc/a;->n(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    .line 4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p4}, Ljava/io/OutputStream;->write([B)V

    .line 7
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 8
    iget-object p1, p0, Lxc/a;->b:Lxc/d;

    invoke-static {v0, p5, p1}, Lxc/a;->c(Ljava/net/HttpURLConnection;Lxc/c;Lxc/c;)Lqc/c;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    :try_start_1
    sget-object p2, Lcom/linecorp/linesdk/LineApiResponseCode;->NETWORK_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance p3, Lcom/linecorp/linesdk/LineApiError;

    invoke-direct {p3, p1}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/Exception;)V

    invoke-static {p2, p3}, Lqc/c;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lqc/c;

    move-result-object p2

    .line 11
    invoke-static {p2, p1}, Lxc/a;->f(Lqc/c;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object p2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 13
    :cond_1
    throw p1
.end method

.method private static n(Ljava/net/HttpURLConnection;Ljava/util/Map;)V
    .locals 2
    .param p0    # Ljava/net/HttpURLConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public b(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lxc/c;)Lqc/c;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lxc/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lxc/c<",
            "TT;>;)",
            "Lqc/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p3}, Lyc/f;->b(Landroid/net/Uri;Ljava/util/Map;)Landroid/net/Uri;

    move-result-object p1

    const/4 p3, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lxc/a;->h(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object p3

    .line 3
    invoke-static {p3, p2}, Lxc/a;->n(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    .line 4
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->connect()V

    .line 5
    iget-object p1, p0, Lxc/a;->b:Lxc/d;

    invoke-static {p3, p4, p1}, Lxc/a;->c(Ljava/net/HttpURLConnection;Lxc/c;Lxc/c;)Lqc/c;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    :try_start_1
    sget-object p2, Lcom/linecorp/linesdk/LineApiResponseCode;->NETWORK_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance p4, Lcom/linecorp/linesdk/LineApiError;

    invoke-direct {p4, p1}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/Exception;)V

    invoke-static {p2, p4}, Lqc/c;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lqc/c;

    move-result-object p2

    .line 8
    invoke-static {p2, p1}, Lxc/a;->f(Lqc/c;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_0

    .line 9
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object p2

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 10
    :cond_1
    throw p1
.end method

.method protected i(Landroid/net/Uri;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_1

    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt p1, v1, :cond_0

    .line 4
    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0

    .line 5
    :cond_0
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 6
    new-instance p1, Loc/a;

    .line 7
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-direct {p1, v1}, Loc/a;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 8
    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-object v0

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The scheme of the server url must be https."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lxc/c;)Lqc/c;
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lxc/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lxc/c<",
            "TT;>;)",
            "Lqc/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lxc/a;->a(Ljava/util/Map;)[B

    move-result-object p3

    const/4 v0, 0x0

    .line 2
    :try_start_0
    array-length v1, p3

    invoke-direct {p0, p1, v1}, Lxc/a;->j(Landroid/net/Uri;I)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 3
    invoke-static {v0, p2}, Lxc/a;->n(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    .line 4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 7
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 8
    iget-object p1, p0, Lxc/a;->b:Lxc/d;

    invoke-static {v0, p4, p1}, Lxc/a;->c(Ljava/net/HttpURLConnection;Lxc/c;Lxc/c;)Lqc/c;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    :try_start_1
    sget-object p2, Lcom/linecorp/linesdk/LineApiResponseCode;->NETWORK_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance p3, Lcom/linecorp/linesdk/LineApiError;

    invoke-direct {p3, p1}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/Exception;)V

    invoke-static {p2, p3}, Lqc/c;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lqc/c;

    move-result-object p2

    .line 11
    invoke-static {p2, p1}, Lxc/a;->f(Lqc/c;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object p2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 13
    :cond_1
    throw p1
.end method

.method public l(Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;Lxc/c;)Lqc/c;
    .locals 6
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lxc/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lxc/c<",
            "TT;>;)",
            "Lqc/c<",
            "TT;>;"
        }
    .end annotation

    sget-object v1, Lxc/a$a;->a:Lxc/a$a;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lxc/a;->m(Lxc/a$a;Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;Lxc/c;)Lqc/c;

    move-result-object p1

    return-object p1
.end method
