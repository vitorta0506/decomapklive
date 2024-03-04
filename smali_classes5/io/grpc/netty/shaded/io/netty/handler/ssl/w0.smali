.class public final Lio/grpc/netty/shaded/io/netty/handler/ssl/w0;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;
.source "SourceFile"


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;)V
    .locals 6

    sget-wide v3, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->k:J

    new-instance v5, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;

    iget-object v0, p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->n:Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;

    invoke-direct {v5, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;JLio/grpc/netty/shaded/io/netty/handler/ssl/y0;)V

    return-void
.end method


# virtual methods
.method public i([B)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->o:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;

    iget-wide v1, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->d:J

    invoke-static {v1, v2, p1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->setSessionIdContext(J[B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5
    throw p1
.end method
