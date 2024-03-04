.class public final Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final u:[Ljava/util/Map$Entry;


# instance fields
.field private final a:Z

.field private b:Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;

.field private c:Ljava/security/Provider;

.field private d:[Ljava/security/cert/X509Certificate;

.field private e:Ljavax/net/ssl/TrustManagerFactory;

.field private f:[Ljava/security/cert/X509Certificate;

.field private g:Ljava/security/PrivateKey;

.field private h:Ljava/lang/String;

.field private i:Ljavax/net/ssl/KeyManagerFactory;

.field private j:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lio/grpc/netty/shaded/io/netty/handler/ssl/i;

.field private l:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;

.field private m:J

.field private n:J

.field private o:Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;

.field private p:[Ljava/lang/String;

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;

.field private final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/r1<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map$Entry;

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->u:[Ljava/util/Map$Entry;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/o;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/o;

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->k:Lio/grpc/netty/shaded/io/netty/handler/ssl/i;

    .line 3
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;->NONE:Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->o:Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;

    .line 4
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->s:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->t:Ljava/util/Map;

    .line 6
    iput-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->a:Z

    return-void
.end method

.method public static d()Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;
    .locals 2

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;-><init>(Z)V

    return-object v0
.end method

.method private static k(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;[TT;)[TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->l:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;

    return-object p0
.end method

.method public b()Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->a:Z

    if-eqz v1, :cond_0

    .line 2
    iget-object v2, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;

    iget-object v3, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->c:Ljava/security/Provider;

    iget-object v4, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->d:[Ljava/security/cert/X509Certificate;

    iget-object v5, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->e:Ljavax/net/ssl/TrustManagerFactory;

    iget-object v6, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->f:[Ljava/security/cert/X509Certificate;

    iget-object v7, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->g:Ljava/security/PrivateKey;

    iget-object v8, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->h:Ljava/lang/String;

    iget-object v9, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->i:Ljavax/net/ssl/KeyManagerFactory;

    iget-object v10, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->j:Ljava/lang/Iterable;

    iget-object v11, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->k:Lio/grpc/netty/shaded/io/netty/handler/ssl/i;

    iget-object v12, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->l:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;

    iget-wide v13, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->m:J

    move-object/from16 v23, v2

    iget-wide v1, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->n:J

    move-wide v15, v1

    iget-object v1, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->o:Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;

    move-object/from16 v17, v1

    iget-object v1, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->p:[Ljava/lang/String;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->q:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->r:Z

    move/from16 v20, v1

    iget-object v1, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->s:Ljava/lang/String;

    move-object/from16 v21, v1

    iget-object v1, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->t:Ljava/util/Map;

    .line 3
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->u:[Ljava/util/Map$Entry;

    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->k(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, [Ljava/util/Map$Entry;

    move-object/from16 v2, v23

    .line 4
    invoke-static/range {v2 .. v22}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->w(Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;Ljava/security/Provider;[Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/grpc/netty/shaded/io/netty/handler/ssl/i;Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;JJLio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZLjava/lang/String;[Ljava/util/Map$Entry;)Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;

    move-result-object v1

    return-object v1

    .line 5
    :cond_0
    iget-object v2, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;

    iget-object v3, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->c:Ljava/security/Provider;

    iget-object v4, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->d:[Ljava/security/cert/X509Certificate;

    iget-object v5, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->e:Ljavax/net/ssl/TrustManagerFactory;

    iget-object v6, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->f:[Ljava/security/cert/X509Certificate;

    iget-object v7, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->g:Ljava/security/PrivateKey;

    iget-object v8, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->h:Ljava/lang/String;

    iget-object v9, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->i:Ljavax/net/ssl/KeyManagerFactory;

    iget-object v10, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->j:Ljava/lang/Iterable;

    iget-object v11, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->k:Lio/grpc/netty/shaded/io/netty/handler/ssl/i;

    iget-object v12, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->l:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;

    iget-object v13, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->p:[Ljava/lang/String;

    iget-wide v14, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->m:J

    move-object/from16 v21, v2

    iget-wide v1, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->n:J

    move-wide/from16 v16, v1

    iget-boolean v1, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->r:Z

    move/from16 v18, v1

    iget-object v1, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->s:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->t:Ljava/util/Map;

    .line 6
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->u:[Ljava/util/Map$Entry;

    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->k(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, [Ljava/util/Map$Entry;

    move-object/from16 v2, v21

    .line 7
    invoke-static/range {v2 .. v20}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->t(Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;Ljava/security/Provider;[Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/grpc/netty/shaded/io/netty/handler/ssl/i;Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;[Ljava/lang/String;JJZLjava/lang/String;[Ljava/util/Map$Entry;)Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;

    move-result-object v1

    return-object v1
.end method

.method public c(Ljava/lang/Iterable;Lio/grpc/netty/shaded/io/netty/handler/ssl/i;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/i;",
            ")",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;"
        }
    .end annotation

    const-string v0, "cipherFilter"

    .line 1
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/grpc/netty/shaded/io/netty/handler/ssl/i;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->k:Lio/grpc/netty/shaded/io/netty/handler/ssl/i;

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->j:Ljava/lang/Iterable;

    return-object p0
.end method

.method public e(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->B(Ljava/io/InputStream;)[Ljava/security/cert/X509Certificate;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    invoke-static {p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->A(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3
    invoke-virtual {p0, p2, p3, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->f(Ljava/security/PrivateKey;Ljava/lang/String;[Ljava/security/cert/X509Certificate;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Input stream does not contain valid private key."

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Input stream not contain valid certificates."

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public varargs f(Ljava/security/PrivateKey;Ljava/lang/String;[Ljava/security/cert/X509Certificate;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "keyCertChain"

    .line 2
    invoke-static {p3, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->f([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    const-string v0, "key required for servers"

    .line 3
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_3

    .line 4
    array-length v1, p3

    if-nez v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p3, v2

    const-string v4, "cert"

    .line 6
    invoke-static {v3, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p3}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/security/cert/X509Certificate;

    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->f:[Ljava/security/cert/X509Certificate;

    goto :goto_2

    .line 8
    :cond_3
    :goto_1
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->f:[Ljava/security/cert/X509Certificate;

    .line 9
    :goto_2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->g:Ljava/security/PrivateKey;

    .line 10
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->h:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->i:Ljavax/net/ssl/KeyManagerFactory;

    return-object p0
.end method

.method public g(Ljavax/net/ssl/KeyManagerFactory;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "keyManagerFactory required for servers"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->f:[Ljava/security/cert/X509Certificate;

    .line 4
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->g:Ljava/security/PrivateKey;

    .line 5
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->h:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->i:Ljavax/net/ssl/KeyManagerFactory;

    return-object p0
.end method

.method public varargs h([Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->p:[Ljava/lang/String;

    return-object p0
.end method

.method public i(Ljava/security/Provider;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->c:Ljava/security/Provider;

    return-object p0
.end method

.method public j(Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;

    return-object p0
.end method

.method public l(Ljava/io/InputStream;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->B(Ljava/io/InputStream;)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->n([Ljava/security/cert/X509Certificate;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input stream does not contain valid certificates."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public m(Ljavax/net/ssl/TrustManagerFactory;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->d:[Ljava/security/cert/X509Certificate;

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->e:Ljavax/net/ssl/TrustManagerFactory;

    return-object p0
.end method

.method public varargs n([Ljava/security/cert/X509Certificate;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/security/cert/X509Certificate;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->d:[Ljava/security/cert/X509Certificate;

    .line 2
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->e:Ljavax/net/ssl/TrustManagerFactory;

    return-object p0
.end method
