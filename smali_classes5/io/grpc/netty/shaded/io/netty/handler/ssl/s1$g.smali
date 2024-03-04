.class Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->s0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lug/x;

.field final synthetic b:J

.field final synthetic c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lug/x;J)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$g;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$g;->a:Lug/x;

    iput-wide p3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$g;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$g;->a:Lug/x;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/SslHandshakeTimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handshake timed out after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$g;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/SslHandshakeTimeoutException;-><init>(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$g;->a:Lug/x;

    invoke-interface {v1, v0}, Lug/x;->z(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$g;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->h(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$g;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->c0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$g;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->c0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V

    .line 6
    throw v1
.end method
