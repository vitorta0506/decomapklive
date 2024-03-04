.class public abstract Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/SSLSessionContext;


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/handler/ssl/b1;

.field private final b:Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;

.field final c:Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;

.field private final d:Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;

.field private final e:J


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;JLio/grpc/netty/shaded/io/netty/handler/ssl/y0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;

    .line 3
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;

    .line 4
    iput-wide p3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->e:J

    .line 5
    new-instance p2, Lio/grpc/netty/shaded/io/netty/handler/ssl/b1;

    invoke-direct {p2, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/b1;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;)V

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/b1;

    .line 6
    iput-object p5, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;

    .line 7
    iget-wide p1, p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->d:J

    invoke-static {p1, p2, p5}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->setSSLSessionCache(JLio/grpc/netty/shaded/io/netty/internal/tcnative/SSLSessionCache;)V

    return-void
.end method

.method static synthetic a(Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;)Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;

    return-object p0
.end method


# virtual methods
.method final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;->b()V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->b()V

    return-void
.end method

.method final c(Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;)Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->c(Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;)Z

    move-result p1

    return p1
.end method

.method final d(Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->i(Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;)V

    return-void
.end method

.method public e(Z)V
    .locals 5

    if-eqz p1, :cond_0

    .line 1
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->e:J

    sget-wide v2, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->m:J

    or-long/2addr v0, v2

    sget-wide v2, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->n:J

    or-long/2addr v0, v2

    goto :goto_0

    :cond_0
    sget-wide v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->j:J

    .line 2
    :goto_0
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;

    iget-object v2, v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->o:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    :try_start_0
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;

    iget-wide v3, v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->d:J

    invoke-static {v3, v4, v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->setSessionCacheMode(JJ)J

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 7
    throw p1
.end method

.method f(Ljava/lang/String;IJ)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;

    invoke-virtual {v0, p3, p4, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->k(JLjava/lang/String;I)V

    return-void
.end method

.method public varargs g([Lio/grpc/netty/shaded/io/netty/handler/ssl/c1;)V
    .locals 5

    const-string v0, "keys"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p1

    new-array v1, v0, [Lrg/d;

    if-gtz v0, :cond_1

    .line 3
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;

    iget-object p1, p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->o:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 5
    :try_start_0
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;

    iget-wide v2, v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->d:J

    sget v4, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->h:I

    invoke-static {v2, v3, v4}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->clearOptions(JI)V

    if-lez v0, :cond_0

    .line 6
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;

    iget-wide v2, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->d:J

    invoke-static {v2, v3, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->g(J[Lrg/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 8
    throw v0

    :cond_1
    const/4 v0, 0x0

    .line 9
    aget-object p1, p1, v0

    const/4 p1, 0x0

    throw p1
.end method

.method public getIds()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0$a;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;)V

    return-object v0
.end method

.method public getSession([B)Ljavax/net/ssl/SSLSession;
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;

    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;

    invoke-direct {v1, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;-><init>([B)V

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->e(Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;)Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;

    move-result-object p1

    return-object p1
.end method

.method public getSessionCacheSize()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->f()I

    move-result v0

    return v0
.end method

.method public getSessionTimeout()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->g()I

    move-result v0

    return v0
.end method

.method final h()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setSessionCacheSize(I)V
    .locals 1

    const-string v0, "size"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->l(I)V

    return-void
.end method

.method public setSessionTimeout(I)V
    .locals 5

    const-string v0, "seconds"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->o:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;

    iget-wide v1, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->d:J

    int-to-long v3, p1

    invoke-static {v1, v2, v3, v4}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->setSessionCacheTimeout(JJ)J

    .line 5
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;

    invoke-virtual {v1, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->m(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 7
    throw p1
.end method
