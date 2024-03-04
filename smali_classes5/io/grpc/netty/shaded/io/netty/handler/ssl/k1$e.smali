.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;

.field private b:[Ljavax/security/cert/X509Certificate;

.field private c:[Ljava/security/cert/Certificate;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;

.field private volatile h:J

.field private volatile i:I

.field private volatile j:[Ljava/security/cert/Certificate;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic l:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->l:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->d:Z

    .line 3
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->g:Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;

    .line 4
    sget p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->J:I

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->i:I

    .line 5
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;

    return-void
.end method

.method private g([[BI)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    add-int v1, p2, v0

    .line 2
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->c:[Ljava/security/cert/Certificate;

    new-instance v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/util/LazyX509Certificate;

    aget-object v4, p1, v0

    invoke-direct {v3, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/util/LazyX509Certificate;-><init>([B)V

    aput-object v3, v2, v1

    .line 3
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->b:[Ljavax/security/cert/X509Certificate;

    new-instance v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/util/a;

    aget-object v4, p1, v0

    invoke-direct {v3, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/util/a;-><init>([B)V

    aput-object v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private h(Ljava/lang/String;)Ljavax/net/ssl/SSLSessionBindingEvent;
    .locals 2

    new-instance v0, Ljavax/net/ssl/SSLSessionBindingEvent;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->l:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->s(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    return-object v0
.end method

.method private i(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljavax/net/ssl/SSLSessionBindingListener;

    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->h(Ljava/lang/String;)Ljavax/net/ssl/SSLSessionBindingEvent;

    move-result-object p2

    invoke-interface {p1, p2}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    sget v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->J:I

    if-le p1, v0, :cond_0

    iget p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->i:I

    sget v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->K:I

    if-eq p1, v0, :cond_0

    .line 2
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->i:I

    :cond_0
    return-void
.end method

.method public c()Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->l:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->g:Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->l:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->p(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->l:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->q(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getSessionId(J)[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;

    invoke-direct {v2, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;-><init>([B)V

    iput-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->g:Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;

    .line 5
    :cond_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->g:Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d([BLjava/lang/String;Ljava/lang/String;[B[[BJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1
    iget-object p8, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->l:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    monitor-enter p8

    .line 2
    :try_start_0
    iget-object p9, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->l:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-static {p9}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->p(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)Z

    move-result p9

    if-nez p9, :cond_6

    .line 3
    iput-wide p6, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->h:J

    .line 4
    iget-object p6, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->g:Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;

    sget-object p7, Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;

    if-ne p6, p7, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p7, Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;

    invoke-direct {p7, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;-><init>([B)V

    :goto_0
    iput-object p7, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->g:Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;

    .line 6
    :cond_1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->l:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->h(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->f:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->e:Ljava/lang/String;

    .line 8
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->l:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->n(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 9
    invoke-static {p5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->i([Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    sget-object p1, Lio/grpc/netty/shaded/io/netty/util/internal/h;->j:[Ljava/security/cert/Certificate;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->c:[Ljava/security/cert/Certificate;

    .line 11
    sget-object p1, Lio/grpc/netty/shaded/io/netty/util/internal/h;->l:[Ljavax/security/cert/X509Certificate;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->b:[Ljavax/security/cert/X509Certificate;

    goto :goto_1

    .line 12
    :cond_2
    array-length p1, p5

    new-array p1, p1, [Ljava/security/cert/Certificate;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->c:[Ljava/security/cert/Certificate;

    .line 13
    array-length p1, p5

    new-array p1, p1, [Ljavax/security/cert/X509Certificate;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->b:[Ljavax/security/cert/X509Certificate;

    .line 14
    invoke-direct {p0, p5, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->g([[BI)V

    goto :goto_1

    .line 15
    :cond_3
    invoke-static {p4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->j([B)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    sget-object p1, Lio/grpc/netty/shaded/io/netty/util/internal/h;->j:[Ljava/security/cert/Certificate;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->c:[Ljava/security/cert/Certificate;

    .line 17
    sget-object p1, Lio/grpc/netty/shaded/io/netty/util/internal/h;->l:[Ljavax/security/cert/X509Certificate;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->b:[Ljavax/security/cert/X509Certificate;

    goto :goto_1

    .line 18
    :cond_4
    invoke-static {p5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->i([Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_5

    new-array p1, p3, [Ljava/security/cert/Certificate;

    .line 19
    new-instance p5, Lio/grpc/netty/shaded/io/netty/handler/ssl/util/LazyX509Certificate;

    invoke-direct {p5, p4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/util/LazyX509Certificate;-><init>([B)V

    aput-object p5, p1, p2

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->c:[Ljava/security/cert/Certificate;

    new-array p1, p3, [Ljavax/security/cert/X509Certificate;

    .line 20
    new-instance p3, Lio/grpc/netty/shaded/io/netty/handler/ssl/util/a;

    invoke-direct {p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/util/a;-><init>([B)V

    aput-object p3, p1, p2

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->b:[Ljavax/security/cert/X509Certificate;

    goto :goto_1

    .line 21
    :cond_5
    array-length p1, p5

    add-int/2addr p1, p3

    new-array p1, p1, [Ljava/security/cert/Certificate;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->c:[Ljava/security/cert/Certificate;

    .line 22
    array-length p6, p5

    add-int/2addr p6, p3

    new-array p6, p6, [Ljavax/security/cert/X509Certificate;

    iput-object p6, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->b:[Ljavax/security/cert/X509Certificate;

    .line 23
    new-instance p6, Lio/grpc/netty/shaded/io/netty/handler/ssl/util/LazyX509Certificate;

    invoke-direct {p6, p4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/util/LazyX509Certificate;-><init>([B)V

    aput-object p6, p1, p2

    .line 24
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->b:[Ljavax/security/cert/X509Certificate;

    new-instance p6, Lio/grpc/netty/shaded/io/netty/handler/ssl/util/a;

    invoke-direct {p6, p4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/util/a;-><init>([B)V

    aput-object p6, p1, p2

    .line 25
    invoke-direct {p0, p5, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->g([[BI)V

    .line 26
    :goto_1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->l:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->k(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)V

    .line 27
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->l:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->l(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;)Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    .line 28
    monitor-exit p8

    return-void

    .line 29
    :cond_6
    new-instance p1, Ljavax/net/ssl/SSLException;

    const-string p2, "Already closed"

    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 30
    monitor-exit p8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e([Ljava/security/cert/Certificate;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->j:[Ljava/security/cert/Certificate;

    return-void
.end method

.method public getApplicationBufferSize()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->i:I

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->l:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->f:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "SSL_NULL_WITH_NULL_NULL"

    .line 3
    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCreationTime()J
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->l:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-wide v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->h:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getId()[B
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->c()Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public getLastAccessedTime()J
    .locals 5

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->l:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->t(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->getCreationTime()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->j:[Ljava/security/cert/Certificate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->j:[Ljava/security/cert/Certificate;

    if-eqz v0, :cond_1

    .line 2
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPacketBufferSize()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->l:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->O()I

    move-result v0

    return v0
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->l:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->b:[Ljavax/security/cert/X509Certificate;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->i([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->b:[Ljavax/security/cert/X509Certificate;

    invoke-virtual {v1}, [Ljavax/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljavax/security/cert/X509Certificate;

    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    new-instance v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v2, "peer not verified"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->l:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->c:[Ljava/security/cert/Certificate;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->i([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->c:[Ljava/security/cert/Certificate;

    invoke-virtual {v1}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    new-instance v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v2, "peer not verified"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPeerHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->l:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPort()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->l:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getPeerPort()I

    move-result v0

    return v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->l:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->l:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->p(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->l:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->q(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getVersion(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 5
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public getSessionContext()Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;

    return-object v0
.end method

.method public bridge synthetic getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->getSessionContext()Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "name"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->k:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 4
    monitor-exit p0

    return-object p1

    .line 5
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getValueNames()[Ljava/lang/String;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->k:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 5
    :cond_1
    :goto_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/h;->f:[Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidate()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->l:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->d:Z

    .line 3
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->g:Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;

    invoke-virtual {v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->d(Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isValid()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->l:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->d:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->g:Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;

    invoke-virtual {v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->c(Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
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

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "name"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "value"

    .line 2
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->k:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->k:Ljava/util/Map;

    .line 6
    :cond_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    instance-of v1, p2, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_1

    .line 9
    check-cast p2, Ljavax/net/ssl/SSLSessionBindingListener;

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->h(Ljava/lang/String;)Ljavax/net/ssl/SSLSessionBindingEvent;

    move-result-object v1

    invoke-interface {p2, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueBound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 10
    :cond_1
    invoke-direct {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->k:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-direct {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultOpenSslSession{sessionContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;->g:Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
