.class final Lig/h0$b;
.super Lig/h0$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final f:Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;

.field private final g:Ljava/lang/String;

.field private final h:I

.field private i:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/k;Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;Ljava/lang/String;Ljava/util/concurrent/Executor;Lio/grpc/ChannelLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p5}, Lig/h0$k;-><init>(Lio/grpc/netty/shaded/io/netty/channel/k;Lio/grpc/ChannelLogger;)V

    const-string p1, "sslContext"

    .line 2
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;

    iput-object p1, p0, Lig/h0$b;->f:Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;

    .line 3
    invoke-static {p3}, Lig/h0;->e(Ljava/lang/String;)Lig/h0$f;

    move-result-object p1

    .line 4
    iget-object p2, p1, Lig/h0$f;->a:Ljava/lang/String;

    iput-object p2, p0, Lig/h0$b;->g:Ljava/lang/String;

    .line 5
    iget p1, p1, Lig/h0$f;->b:I

    iput p1, p0, Lig/h0$b;->h:I

    .line 6
    iput-object p4, p0, Lig/h0$b;->i:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private z(Lio/grpc/netty/shaded/io/netty/channel/m;Ljavax/net/ssl/SSLSession;)V
    .locals 5

    .line 1
    new-instance v0, Lio/grpc/c0$c;

    new-instance v1, Lio/grpc/c0$d;

    invoke-direct {v1, p2}, Lio/grpc/c0$d;-><init>(Ljavax/net/ssl/SSLSession;)V

    invoke-direct {v0, v1}, Lio/grpc/c0$c;-><init>(Lio/grpc/c0$d;)V

    .line 2
    invoke-virtual {p0}, Lig/h0$k;->u()Lig/f0;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lig/f0;->a()Lio/grpc/a;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/a;->d()Lio/grpc/a$b;

    move-result-object v2

    sget-object v3, Lio/grpc/internal/r0;->a:Lio/grpc/a$c;

    sget-object v4, Lio/grpc/SecurityLevel;->PRIVACY_AND_INTEGRITY:Lio/grpc/SecurityLevel;

    .line 4
    invoke-virtual {v2, v3, v4}, Lio/grpc/a$b;->d(Lio/grpc/a$c;Ljava/lang/Object;)Lio/grpc/a$b;

    move-result-object v2

    sget-object v3, Lio/grpc/a0;->c:Lio/grpc/a$c;

    .line 5
    invoke-virtual {v2, v3, p2}, Lio/grpc/a$b;->d(Lio/grpc/a$c;Ljava/lang/Object;)Lio/grpc/a$b;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lio/grpc/a$b;->a()Lio/grpc/a;

    move-result-object p2

    .line 7
    invoke-virtual {v1, p2}, Lig/f0;->c(Lio/grpc/a;)Lig/f0;

    move-result-object p2

    invoke-virtual {p2, v0}, Lig/f0;->d(Lio/grpc/c0$c;)Lig/f0;

    move-result-object p2

    invoke-virtual {p0, p2}, Lig/h0$k;->x(Lig/f0;)V

    .line 8
    invoke-virtual {p0, p1}, Lig/h0$k;->s(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    return-void
.end method


# virtual methods
.method protected v(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lig/h0$b;->f:Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object v1

    iget-object v2, p0, Lig/h0$b;->g:Ljava/lang/String;

    iget v3, p0, Lig/h0$b;->h:I

    invoke-virtual {v0, v1, v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->v(Lkg/k;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v1

    const-string v2, "HTTPS"

    .line 3
    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 5
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object v1

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->name()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lig/h0$b;->i:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 6
    new-instance v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    iget-object v4, p0, Lig/h0$b;->i:Ljava/util/concurrent/Executor;

    invoke-direct {v2, v0, v3, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;-><init>(Ljavax/net/ssl/SSLEngine;ZLjava/util/concurrent/Executor;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-direct {v2, v0, v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;-><init>(Ljavax/net/ssl/SSLEngine;Z)V

    :goto_0
    const/4 v0, 0x0

    .line 8
    invoke-interface {v1, p1, v0, v2}, Lio/grpc/netty/shaded/io/netty/channel/w;->J0(Ljava/lang/String;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/w;

    return-void
.end method

.method protected y(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lio/grpc/netty/shaded/io/netty/handler/ssl/u1;

    if-eqz v0, :cond_3

    .line 2
    check-cast p2, Lio/grpc/netty/shaded/io/netty/handler/ssl/u1;

    .line 3
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/o1;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object p2

    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-interface {p2, v0}, Lio/grpc/netty/shaded/io/netty/channel/w;->i(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object p2

    check-cast p2, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    .line 5
    iget-object v0, p0, Lig/h0$b;->f:Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->a()Lio/grpc/netty/shaded/io/netty/handler/ssl/b;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/b;->b()Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->r0()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const/4 v1, 0x0

    const-string v2, "TLS negotiation succeeded."

    invoke-static {v0, p1, v2, v1}, Lig/h0;->d(Ljava/util/logging/Level;Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->z0()Ljavax/net/ssl/SSLEngine;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lig/h0$b;->z(Lio/grpc/netty/shaded/io/netty/channel/m;Ljavax/net/ssl/SSLSession;)V

    goto :goto_0

    :cond_0
    const-string p2, "Failed ALPN negotiation: Unable to find compatible protocol"

    .line 9
    invoke-static {p2}, Lig/h0;->a(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p2

    .line 10
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v1, "TLS negotiation failed."

    invoke-static {v0, p1, v1, p2}, Lig/h0;->d(Ljava/util/logging/Level;Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/m;->v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/m;

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/o1;->a()Ljava/lang/Throwable;

    move-result-object p2

    .line 13
    instance-of v0, p2, Ljava/nio/channels/ClosedChannelException;

    if-eqz v0, :cond_2

    .line 14
    sget-object v0, Lio/grpc/Status;->u:Lio/grpc/Status;

    const-string v1, "Connection closed while performing TLS negotiation"

    .line 15
    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 16
    invoke-virtual {v0, p2}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p2

    .line 17
    invoke-virtual {p2}, Lio/grpc/Status;->d()Lio/grpc/StatusRuntimeException;

    move-result-object p2

    .line 18
    :cond_2
    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/m;->v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/m;

    goto :goto_0

    .line 19
    :cond_3
    invoke-super {p0, p1, p2}, Lig/h0$k;->y(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
