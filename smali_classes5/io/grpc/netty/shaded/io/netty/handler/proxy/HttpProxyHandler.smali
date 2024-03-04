.class public final Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;
.super Lqg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler$b;,
        Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler$HttpProxyConnectException;
    }
.end annotation


# instance fields
.field private final n:Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler$b;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/CharSequence;

.field private final r:Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

.field private final s:Z

.field private t:Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

.field private u:Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;


# direct methods
.method public constructor <init>(Ljava/net/SocketAddress;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;-><init>(Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;-><init>(Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;Z)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lqg/b;-><init>(Ljava/net/SocketAddress;)V

    .line 4
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler$b;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler$b;-><init>(Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler$a;)V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;->n:Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler$b;

    .line 5
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;->o:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;->p:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;->q:Ljava/lang/CharSequence;

    .line 8
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;->r:Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    .line 9
    iput-boolean p3, p0, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;->s:Z

    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, p2, p3, v0}, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;-><init>(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 11
    invoke-direct/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;-><init>(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;Z)V
    .locals 1

    .line 12
    invoke-direct {p0, p1}, Lqg/b;-><init>(Ljava/net/SocketAddress;)V

    .line 13
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler$b;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler$b;-><init>(Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler$a;)V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;->n:Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler$b;

    const-string p1, "username"

    .line 14
    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;->o:Ljava/lang/String;

    const-string p1, "password"

    .line 15
    invoke-static {p3, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;->p:Ljava/lang/String;

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3a

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lio/grpc/netty/shaded/io/netty/util/h;->d:Ljava/nio/charset/Charset;

    invoke-static {p1, p2}, Lkg/s0;->c(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lkg/j;

    move-result-object p1

    const/4 p2, 0x0

    .line 17
    :try_start_0
    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a;->m(Lkg/j;Z)Lkg/j;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 19
    :try_start_1
    new-instance p1, Lio/grpc/netty/shaded/io/netty/util/c;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Basic "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/h;->f:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Lkg/j;->p2(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Lio/grpc/netty/shaded/io/netty/util/c;-><init>(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;->q:Ljava/lang/CharSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 21
    iput-object p4, p0, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;->r:Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    .line 22
    iput-boolean p5, p0, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;->s:Z

    return-void

    :catchall_0
    move-exception p1

    .line 23
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 24
    throw p1

    :catchall_1
    move-exception p2

    .line 25
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 26
    throw p2
.end method


# virtual methods
.method protected I(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of p1, p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;->t:Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    if-nez p1, :cond_0

    .line 3
    move-object p1, p2

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;

    .line 4
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;->t()Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;->t:Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    .line 5
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;->u:Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler$HttpProxyConnectException;

    const-string p2, "too many responses"

    invoke-virtual {p0, p2}, Lqg/b;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler$HttpProxyConnectException;-><init>(Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V

    throw p1

    .line 7
    :cond_1
    :goto_0
    instance-of p1, p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;

    if-eqz p1, :cond_4

    .line 8
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;->t:Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;->a()I

    move-result p2

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler$HttpProxyConnectException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "status: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;->t:Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lqg/b;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;->u:Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    invoke-direct {p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler$HttpProxyConnectException;-><init>(Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V

    throw p1

    .line 11
    :cond_3
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler$HttpProxyConnectException;

    const-string p2, "missing response"

    invoke-virtual {p0, p2}, Lqg/b;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;->u:Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    invoke-direct {p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler$HttpProxyConnectException;-><init>(Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V

    throw p1

    :cond_4
    :goto_1
    return p1
.end method

.method protected J(Lio/grpc/netty/shaded/io/netty/channel/m;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lqg/b;->B()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    .line 2
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i0;->a(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5
    iget-boolean v1, p0, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;->s:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x50

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1bb

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v6

    .line 6
    :cond_1
    :goto_0
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b;

    sget-object v4, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->i:Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    sget-object v5, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->j:Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    sget-object v7, Lkg/s0;->d:Lkg/j;

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;Ljava/lang/String;Lkg/j;Z)V

    .line 7
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v1

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->L:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {v1, v2, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->O(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    .line 8
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;->q:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v0

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->Y:Lio/grpc/netty/shaded/io/netty/util/c;

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;->q:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->O(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;->r:Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    if-eqz v0, :cond_3

    .line 11
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;->r:Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->c(Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    :cond_3
    return-object p1
.end method

.method public K()Ljava/lang/String;
    .locals 1

    const-string v0, "http"

    return-object v0
.end method

.method protected M(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;->n:Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler$b;

    iget-object p1, p1, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler$b;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/a0;->z()V

    return-void
.end method

.method protected N(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;->n:Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler$b;

    iget-object p1, p1, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler$b;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/a0;->B()V

    return-void
.end method

.method protected w(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->name()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;->n:Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler$b;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lio/grpc/netty/shaded/io/netty/channel/w;->J0(Ljava/lang/String;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/w;

    return-void
.end method

.method public y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;->q:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const-string v0, "basic"

    goto :goto_0

    :cond_0
    const-string v0, "none"

    :goto_0
    return-object v0
.end method
