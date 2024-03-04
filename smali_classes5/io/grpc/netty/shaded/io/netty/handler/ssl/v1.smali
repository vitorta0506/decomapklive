.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final c:[Ljava/lang/String;

.field static final d:[Ljava/lang/String;

.field static final e:[Ljava/lang/String;

.field private static final f:Z

.field private static final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    const-string v1, "TLS_AES_256_GCM_SHA384"

    const-string v2, "TLS_CHACHA20_POLY1305_SHA256"

    const-string v3, "TLS_AES_128_GCM_SHA256"

    const-string v4, "TLS_AES_128_CCM_8_SHA256"

    const-string v5, "TLS_AES_128_CCM_SHA256"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->b:Ljava/util/Set;

    .line 5
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->e:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 6
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->m(Ljava/security/Provider;)Z

    move-result v2

    sput-boolean v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->f:Z

    .line 7
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->k(Ljava/security/Provider;)Z

    move-result v1

    sput-boolean v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->g:Z

    if-eqz v2, :cond_0

    .line 8
    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->d:[Ljava/lang/String;

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/h;->f:[Ljava/lang/String;

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->d:[Ljava/lang/String;

    .line 10
    :goto_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    .line 11
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    .line 13
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    .line 14
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    .line 15
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    .line 16
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    .line 17
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_RSA_WITH_AES_128_CBC_SHA"

    .line 18
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS_RSA_WITH_AES_256_CBC_SHA"

    .line 19
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->d:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 21
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/h;->f:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->c:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static varargs a(Ljava/util/Set;Ljava/util/List;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 2
    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static b([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static c(Ljava/nio/ByteBuffer;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->t(B)S

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x1

    :goto_0
    const/4 v4, 0x3

    if-eqz v1, :cond_2

    add-int/lit8 v5, v0, 0x1

    .line 3
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-static {v6}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->t(B)S

    move-result v6

    if-eq v6, v4, :cond_0

    .line 4
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    const/16 v6, 0x101

    if-ne v5, v6, :cond_3

    :cond_0
    add-int/lit8 v5, v0, 0x3

    .line 5
    invoke-static {p0, v5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->u(Ljava/nio/ByteBuffer;I)I

    move-result v5

    const/4 v6, 0x5

    add-int/2addr v5, v6

    if-gt v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-nez v3, :cond_8

    .line 6
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->t(B)S

    move-result v1

    and-int/lit16 v1, v1, 0x80

    const/4 v3, 0x2

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    goto :goto_2

    :cond_4
    const/4 v1, 0x3

    :goto_2
    add-int v5, v0, v1

    add-int/2addr v5, v2

    .line 7
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->t(B)S

    move-result v2

    if-eq v2, v3, :cond_6

    if-ne v2, v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 p0, -0x2

    return p0

    :cond_6
    :goto_3
    if-ne v1, v3, :cond_7

    .line 8
    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->p(Ljava/nio/ByteBuffer;I)S

    move-result p0

    and-int/lit16 p0, p0, 0x7fff

    add-int/2addr p0, v3

    goto :goto_4

    :cond_7
    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->p(Ljava/nio/ByteBuffer;I)S

    move-result p0

    and-int/lit16 p0, p0, 0x3fff

    add-int/2addr p0, v4

    :goto_4
    move v5, p0

    if-gt v5, v1, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static d(Lkg/j;I)I
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lkg/j;->R0(I)S

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x3

    if-eqz v0, :cond_2

    add-int/lit8 v4, p1, 0x1

    .line 2
    invoke-virtual {p0, v4}, Lkg/j;->R0(I)S

    move-result v5

    if-eq v5, v3, :cond_0

    .line 3
    invoke-virtual {p0, v4}, Lkg/j;->P0(I)S

    move-result v4

    const/16 v5, 0x101

    if-ne v4, v5, :cond_3

    :cond_0
    add-int/lit8 v4, p1, 0x3

    .line 4
    invoke-static {p0, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->v(Lkg/j;I)I

    move-result v4

    const/4 v5, 0x5

    add-int/2addr v4, v5

    if-gt v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v0

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-nez v2, :cond_8

    .line 5
    invoke-virtual {p0, p1}, Lkg/j;->R0(I)S

    move-result v0

    and-int/lit16 v0, v0, 0x80

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_2

    :cond_4
    const/4 v0, 0x3

    :goto_2
    add-int v4, p1, v0

    add-int/2addr v4, v1

    .line 6
    invoke-virtual {p0, v4}, Lkg/j;->R0(I)S

    move-result v1

    if-eq v1, v2, :cond_6

    if-ne v1, v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 p0, -0x2

    return p0

    :cond_6
    :goto_3
    if-ne v0, v2, :cond_7

    .line 7
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->q(Lkg/j;I)S

    move-result p0

    and-int/lit16 p0, p0, 0x7fff

    add-int/2addr p0, v2

    goto :goto_4

    :cond_7
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->q(Lkg/j;I)S

    move-result p0

    and-int/lit16 p0, p0, 0x3fff

    add-int/2addr p0, v3

    :goto_4
    move v4, p0

    if-gt v4, v0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static e([Ljava/nio/ByteBuffer;I)I
    .locals 4

    .line 1
    aget-object v0, p0, p1

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->c(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    .line 4
    :cond_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    add-int/lit8 v1, p1, 0x1

    .line 5
    aget-object p1, p0, p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-nez p1, :cond_2

    .line 10
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 11
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->c(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    :cond_2
    move p1, v1

    goto :goto_0
.end method

.method static f(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->g()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1, v0, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-object p0
.end method

.method private static g()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "TLSv1.3"

    goto :goto_0

    :cond_0
    const-string v0, "TLSv1.2"

    :goto_0
    return-object v0
.end method

.method static h(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;Z)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/m;->flush()Lio/grpc/netty/shaded/io/netty/channel/m;

    if-eqz p2, :cond_0

    .line 2
    new-instance p2, Lio/grpc/netty/shaded/io/netty/handler/ssl/u1;

    invoke-direct {p2, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/u1;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, p2}, Lio/grpc/netty/shaded/io/netty/channel/m;->s(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;

    .line 3
    :cond_0
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/v;->close()Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void
.end method

.method static i(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->b:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static j(Ljava/security/Provider;)Z
    .locals 0

    if-nez p0, :cond_0

    .line 1
    sget-boolean p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->g:Z

    return p0

    .line 2
    :cond_0
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->k(Ljava/security/Provider;)Z

    move-result p0

    return p0
.end method

.method private static k(Ljava/security/Provider;)Z
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->o(Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getDefaultSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "TLSv1.3"

    .line 3
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->b([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception v0

    .line 4
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v2, "Unable to detect if JDK SSLEngine with provider {} enables TLSv1.3 by default, assuming no"

    invoke-interface {v1, v2, p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method static l(Ljava/security/Provider;)Z
    .locals 0

    if-nez p0, :cond_0

    .line 1
    sget-boolean p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->f:Z

    return p0

    .line 2
    :cond_0
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->m(Ljava/security/Provider;)Z

    move-result p0

    return p0
.end method

.method private static m(Ljava/security/Provider;)Z
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->o(Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSupportedSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "TLSv1.3"

    .line 3
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->b([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception v0

    .line 4
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v2, "Unable to detect if JDK SSLEngine with provider {} supports TLSv1.3, assuming no"

    invoke-interface {v1, v2, p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method static n(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0x2e

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "."

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/n;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/n;->o(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static o(Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    const-string v0, "TLS"

    if-nez p0, :cond_0

    .line 1
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0, p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-object p0
.end method

.method private static p(Ljava/nio/ByteBuffer;I)S
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    invoke-static {p0}, Lkg/n;->M(S)S

    move-result p0

    :goto_0
    return p0
.end method

.method private static q(Lkg/j;I)S
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lkg/j;->P0(I)S

    move-result p1

    .line 2
    invoke-virtual {p0}, Lkg/j;->v1()Ljava/nio/ByteOrder;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_0

    .line 3
    invoke-static {p1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p1

    :cond_0
    return p1
.end method

.method static r(Lkg/k;Lkg/j;)Lkg/j;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result v1

    .line 2
    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result v2

    sget-object v4, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;

    const/4 v3, 0x1

    move-object v0, p1

    move-object v5, p0

    .line 3
    invoke-static/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a;->k(Lkg/j;IIZLio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;Lkg/k;)Lkg/j;

    move-result-object p0

    .line 4
    invoke-virtual {p1}, Lkg/j;->K2()I

    move-result v0

    invoke-virtual {p1, v0}, Lkg/j;->R1(I)Lkg/j;

    return-object p0
.end method

.method static s(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;
    .locals 2

    .line 1
    instance-of v0, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljavax/net/ssl/SSLHandshakeException;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/SSLHandshakeException;

    return-object p0
.end method

.method private static t(B)S
    .locals 0

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method private static u(Ljava/nio/ByteBuffer;I)I
    .locals 0

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->p(Ljava/nio/ByteBuffer;I)S

    move-result p0

    const p1, 0xffff

    and-int/2addr p0, p1

    return p0
.end method

.method private static v(Lkg/j;I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lkg/j;->Y0(I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Lkg/j;->v1()Ljava/nio/ByteOrder;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    ushr-int/lit8 p1, p0, 0x10

    :cond_0
    return p1
.end method

.method static w(Ljava/util/List;Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "SSL_"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "_RC4_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method static varargs x(Ljava/util/List;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->w(Ljava/util/List;Ljava/lang/Iterable;)V

    return-void
.end method

.method static y(Lkg/j;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkg/j;->i1()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lkg/j;->F()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lkg/j;->k2(II)Lkg/j;

    :cond_0
    return-void
.end method

.method static z(Lkg/j;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->y(Lkg/j;)V

    .line 2
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    return-void
.end method
