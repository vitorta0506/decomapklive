.class Lcom/squareup/okhttp/internal/g$a;
.super Lcom/squareup/okhttp/internal/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Lcom/squareup/okhttp/internal/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/okhttp/internal/f<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/squareup/okhttp/internal/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/okhttp/internal/f<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/reflect/Method;

.field private final f:Ljava/lang/reflect/Method;

.field private final g:Lcom/squareup/okhttp/internal/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/okhttp/internal/f<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/squareup/okhttp/internal/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/okhttp/internal/f<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/squareup/okhttp/internal/f;Lcom/squareup/okhttp/internal/f;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/squareup/okhttp/internal/f;Lcom/squareup/okhttp/internal/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/squareup/okhttp/internal/f<",
            "Ljava/net/Socket;",
            ">;",
            "Lcom/squareup/okhttp/internal/f<",
            "Ljava/net/Socket;",
            ">;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Lcom/squareup/okhttp/internal/f<",
            "Ljava/net/Socket;",
            ">;",
            "Lcom/squareup/okhttp/internal/f<",
            "Ljava/net/Socket;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/g;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/squareup/okhttp/internal/g$a;->b:Ljava/lang/Class;

    .line 3
    iput-object p2, p0, Lcom/squareup/okhttp/internal/g$a;->c:Lcom/squareup/okhttp/internal/f;

    .line 4
    iput-object p3, p0, Lcom/squareup/okhttp/internal/g$a;->d:Lcom/squareup/okhttp/internal/f;

    .line 5
    iput-object p4, p0, Lcom/squareup/okhttp/internal/g$a;->e:Ljava/lang/reflect/Method;

    .line 6
    iput-object p5, p0, Lcom/squareup/okhttp/internal/g$a;->f:Ljava/lang/reflect/Method;

    .line 7
    iput-object p6, p0, Lcom/squareup/okhttp/internal/g$a;->g:Lcom/squareup/okhttp/internal/f;

    .line 8
    iput-object p7, p0, Lcom/squareup/okhttp/internal/g$a;->h:Lcom/squareup/okhttp/internal/f;

    return-void
.end method


# virtual methods
.method public c(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 1
    iget-object v2, p0, Lcom/squareup/okhttp/internal/g$a;->c:Lcom/squareup/okhttp/internal/f;

    new-array v3, v1, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v0

    invoke-virtual {v2, p1, v3}, Lcom/squareup/okhttp/internal/f;->e(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v2, p0, Lcom/squareup/okhttp/internal/g$a;->d:Lcom/squareup/okhttp/internal/f;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-virtual {v2, p1, v3}, Lcom/squareup/okhttp/internal/f;->e(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/squareup/okhttp/internal/g$a;->h:Lcom/squareup/okhttp/internal/f;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/squareup/okhttp/internal/f;->g(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-array p2, v1, [Ljava/lang/Object;

    .line 4
    invoke-static {p3}, Lcom/squareup/okhttp/internal/g;->b(Ljava/util/List;)[B

    move-result-object p3

    aput-object p3, p2, v0

    .line 5
    iget-object p3, p0, Lcom/squareup/okhttp/internal/g$a;->h:Lcom/squareup/okhttp/internal/f;

    invoke-virtual {p3, p1, p2}, Lcom/squareup/okhttp/internal/f;->f(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public d(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Exception in connect"

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4
    throw p2

    :catch_1
    move-exception p1

    .line 5
    invoke-static {p1}, Lcom/squareup/okhttp/internal/i;->o(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 6
    :cond_0
    throw p1
.end method

.method public h(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/g$a;->g:Lcom/squareup/okhttp/internal/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/f;->g(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/g$a;->g:Lcom/squareup/okhttp/internal/f;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lcom/squareup/okhttp/internal/f;->f(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_2

    .line 4
    new-instance v1, Ljava/lang/String;

    sget-object v0, Lcom/squareup/okhttp/internal/i;->c:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :cond_2
    return-object v1
.end method

.method public k(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/g$a;->b:Ljava/lang/Class;

    const-string/jumbo v1, "sslParameters"

    invoke-static {p1, v0, v1}, Lcom/squareup/okhttp/internal/g;->j(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "com.google.android.gms.org.conscrypt.SSLParametersImpl"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 3
    invoke-static {p1, v0, v1}, Lcom/squareup/okhttp/internal/g;->j(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    :goto_0
    const-class p1, Ljavax/net/ssl/X509TrustManager;

    const-string/jumbo v1, "x509TrustManager"

    invoke-static {v0, p1, v1}, Lcom/squareup/okhttp/internal/g;->j(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/X509TrustManager;

    if-eqz p1, :cond_1

    return-object p1

    .line 5
    :cond_1
    const-class p1, Ljavax/net/ssl/X509TrustManager;

    const-string/jumbo v1, "trustManager"

    invoke-static {v0, p1, v1}, Lcom/squareup/okhttp/internal/g;->j(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/X509TrustManager;

    return-object p1
.end method

.method public l(Ljavax/net/ssl/X509TrustManager;)Lcom/squareup/okhttp/internal/tls/TrustRootIndex;
    .locals 1

    .line 1
    invoke-static {p1}, Lse/a;->a(Ljavax/net/ssl/X509TrustManager;)Lcom/squareup/okhttp/internal/tls/TrustRootIndex;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/g;->l(Ljavax/net/ssl/X509TrustManager;)Lcom/squareup/okhttp/internal/tls/TrustRootIndex;

    move-result-object p1

    return-object p1
.end method
