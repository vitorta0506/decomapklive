.class Lhg/i$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/stub/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/stub/h<",
        "Lio/grpc/lb/v1/LoadBalanceResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lhg/c;

.field final b:Lio/grpc/lb/v1/f$d;

.field c:Lio/grpc/stub/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/stub/h<",
            "Lio/grpc/lb/v1/LoadBalanceRequest;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field e:Z

.field f:J

.field g:Lio/grpc/d1$c;

.field final synthetic h:Lhg/i;


# direct methods
.method constructor <init>(Lhg/i;Lio/grpc/lb/v1/f$d;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lhg/i$k;->h:Lhg/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lhg/i$k;->f:J

    const-string v0, "stub"

    .line 3
    invoke-static {p2, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/grpc/lb/v1/f$d;

    iput-object p2, p0, Lhg/i$k;->b:Lio/grpc/lb/v1/f$d;

    .line 4
    new-instance p2, Lhg/c;

    invoke-static {p1}, Lhg/i;->x(Lhg/i;)Lio/grpc/internal/m2;

    move-result-object p1

    invoke-direct {p2, p1}, Lhg/c;-><init>(Lio/grpc/internal/m2;)V

    iput-object p2, p0, Lhg/i$k;->a:Lhg/c;

    return-void
.end method

.method static synthetic b(Lhg/i$k;Lio/grpc/Status;)V
    .locals 0

    invoke-direct {p0, p1}, Lhg/i$k;->h(Lio/grpc/Status;)V

    return-void
.end method

.method static synthetic c(Lhg/i$k;)V
    .locals 0

    invoke-direct {p0}, Lhg/i$k;->k()V

    return-void
.end method

.method static synthetic d(Lhg/i$k;Lio/grpc/lb/v1/LoadBalanceResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lhg/i$k;->g(Lio/grpc/lb/v1/LoadBalanceResponse;)V

    return-void
.end method

.method private e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lhg/i$k;->g:Lio/grpc/d1$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/grpc/d1$c;->a()V

    .line 3
    iput-object v1, p0, Lhg/i$k;->g:Lio/grpc/d1$c;

    .line 4
    :cond_0
    iget-object v0, p0, Lhg/i$k;->h:Lhg/i;

    invoke-static {v0}, Lhg/i;->r(Lhg/i;)Lhg/i$k;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 5
    iget-object v0, p0, Lhg/i$k;->h:Lhg/i;

    invoke-static {v0, v1}, Lhg/i;->s(Lhg/i;Lhg/i$k;)Lhg/i$k;

    :cond_1
    return-void
.end method

.method private g(Lio/grpc/lb/v1/LoadBalanceResponse;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lhg/i$k;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/lb/v1/LoadBalanceResponse;->getLoadBalanceResponseTypeCase()Lio/grpc/lb/v1/LoadBalanceResponse$LoadBalanceResponseTypeCase;

    move-result-object v0

    .line 3
    iget-boolean v1, p0, Lhg/i$k;->d:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_2

    .line 4
    iget-object v1, p0, Lhg/i$k;->h:Lhg/i;

    invoke-static {v1}, Lhg/i;->d(Lhg/i;)Lio/grpc/ChannelLogger;

    move-result-object v1

    sget-object v5, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lhg/i$k;->h:Lhg/i;

    .line 5
    invoke-static {v6}, Lhg/i;->c(Lhg/i;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    aput-object p1, v2, v4

    const-string v6, "[grpclb-<{0}>] Got an LB initial response: {1}"

    .line 6
    invoke-virtual {v1, v5, v6, v2}, Lio/grpc/ChannelLogger;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    sget-object v1, Lio/grpc/lb/v1/LoadBalanceResponse$LoadBalanceResponseTypeCase;->INITIAL_RESPONSE:Lio/grpc/lb/v1/LoadBalanceResponse$LoadBalanceResponseTypeCase;

    if-eq v0, v1, :cond_1

    .line 8
    iget-object p1, p0, Lhg/i$k;->h:Lhg/i;

    invoke-static {p1}, Lhg/i;->d(Lhg/i;)Lio/grpc/ChannelLogger;

    move-result-object p1

    sget-object v0, Lio/grpc/ChannelLogger$ChannelLogLevel;->WARNING:Lio/grpc/ChannelLogger$ChannelLogLevel;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lhg/i$k;->h:Lhg/i;

    .line 9
    invoke-static {v2}, Lhg/i;->c(Lhg/i;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "[grpclb-<{0}>] Received a response without initial response"

    .line 10
    invoke-virtual {p1, v0, v2, v1}, Lio/grpc/ChannelLogger;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 11
    :cond_1
    iput-boolean v4, p0, Lhg/i$k;->d:Z

    .line 12
    invoke-virtual {p1}, Lio/grpc/lb/v1/LoadBalanceResponse;->getInitialResponse()Lio/grpc/lb/v1/InitialLoadBalanceResponse;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lio/grpc/lb/v1/InitialLoadBalanceResponse;->getClientStatsReportInterval()Lcom/google/protobuf/Duration;

    move-result-object p1

    invoke-static {p1}, Lv6/a;->g(Lcom/google/protobuf/Duration;)J

    move-result-wide v0

    iput-wide v0, p0, Lhg/i$k;->f:J

    .line 14
    invoke-direct {p0}, Lhg/i$k;->j()V

    return-void

    .line 15
    :cond_2
    sget-boolean v1, Lhg/i;->B:Z

    if-eqz v1, :cond_3

    .line 16
    iget-object v1, p0, Lhg/i$k;->h:Lhg/i;

    invoke-static {v1}, Lhg/i;->d(Lhg/i;)Lio/grpc/ChannelLogger;

    move-result-object v1

    sget-object v5, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lhg/i$k;->h:Lhg/i;

    .line 17
    invoke-static {v7}, Lhg/i;->c(Lhg/i;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    aput-object p1, v6, v4

    const-string v7, "[grpclb-<{0}>] Got an LB response: {1}"

    .line 18
    invoke-virtual {v1, v5, v7, v6}, Lio/grpc/ChannelLogger;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 19
    :cond_3
    iget-object v1, p0, Lhg/i$k;->h:Lhg/i;

    invoke-static {v1}, Lhg/i;->d(Lhg/i;)Lio/grpc/ChannelLogger;

    move-result-object v1

    sget-object v5, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lhg/i$k;->h:Lhg/i;

    invoke-static {v7}, Lhg/i;->c(Lhg/i;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, "[grpclb-<{0}>] Got an LB response"

    invoke-virtual {v1, v5, v7, v6}, Lio/grpc/ChannelLogger;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    :goto_0
    sget-object v1, Lio/grpc/lb/v1/LoadBalanceResponse$LoadBalanceResponseTypeCase;->FALLBACK_RESPONSE:Lio/grpc/lb/v1/LoadBalanceResponse$LoadBalanceResponseTypeCase;

    if-ne v0, v1, :cond_4

    .line 21
    iget-object p1, p0, Lhg/i$k;->h:Lhg/i;

    invoke-static {p1}, Lhg/i;->e(Lhg/i;)V

    .line 22
    iget-object p1, p0, Lhg/i$k;->h:Lhg/i;

    sget-object v0, Lhg/i;->F:Lio/grpc/Status;

    invoke-static {p1, v0}, Lhg/i;->t(Lhg/i;Lio/grpc/Status;)Lio/grpc/Status;

    .line 23
    iget-object p1, p0, Lhg/i$k;->h:Lhg/i;

    invoke-static {p1}, Lhg/i;->f(Lhg/i;)V

    .line 24
    iget-object p1, p0, Lhg/i$k;->h:Lhg/i;

    invoke-static {p1}, Lhg/i;->v(Lhg/i;)V

    return-void

    .line 25
    :cond_4
    sget-object v1, Lio/grpc/lb/v1/LoadBalanceResponse$LoadBalanceResponseTypeCase;->SERVER_LIST:Lio/grpc/lb/v1/LoadBalanceResponse$LoadBalanceResponseTypeCase;

    if-eq v0, v1, :cond_5

    .line 26
    iget-object p1, p0, Lhg/i$k;->h:Lhg/i;

    invoke-static {p1}, Lhg/i;->d(Lhg/i;)Lio/grpc/ChannelLogger;

    move-result-object p1

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->WARNING:Lio/grpc/ChannelLogger$ChannelLogLevel;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lhg/i$k;->h:Lhg/i;

    .line 27
    invoke-static {v5}, Lhg/i;->c(Lhg/i;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    aput-object v0, v2, v4

    const-string v0, "[grpclb-<{0}>] Ignoring unexpected response type: {1}"

    .line 28
    invoke-virtual {p1, v1, v0, v2}, Lio/grpc/ChannelLogger;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 29
    :cond_5
    iget-object v0, p0, Lhg/i$k;->h:Lhg/i;

    invoke-static {v0, v4}, Lhg/i;->g(Lhg/i;Z)Z

    .line 30
    invoke-virtual {p1}, Lio/grpc/lb/v1/LoadBalanceResponse;->getServerList()Lio/grpc/lb/v1/ServerList;

    move-result-object p1

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-virtual {p1}, Lio/grpc/lb/v1/ServerList;->getServersList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/lb/v1/Server;

    .line 34
    invoke-virtual {v2}, Lio/grpc/lb/v1/Server;->getLoadBalanceToken()Ljava/lang/String;

    move-result-object v5

    .line 35
    invoke-virtual {v2}, Lio/grpc/lb/v1/Server;->getDrop()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 36
    new-instance v2, Lhg/i$f;

    iget-object v4, p0, Lhg/i$k;->a:Lhg/c;

    invoke-direct {v2, v4, v5}, Lhg/i$f;-><init>(Lhg/c;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 37
    :cond_6
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    :try_start_0
    new-instance v4, Ljava/net/InetSocketAddress;

    .line 39
    invoke-virtual {v2}, Lio/grpc/lb/v1/Server;->getIpAddress()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v2}, Lio/grpc/lb/v1/Server;->getPort()I

    move-result v7

    invoke-direct {v4, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    new-instance v2, Lio/grpc/x;

    .line 41
    invoke-static {}, Lhg/i;->h()Lio/grpc/a;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Lio/grpc/x;-><init>(Ljava/net/SocketAddress;Lio/grpc/a;)V

    .line 42
    new-instance v4, Lhg/a;

    invoke-direct {v4, v2, v5}, Lhg/a;-><init>(Lio/grpc/x;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v4

    .line 43
    iget-object v5, p0, Lhg/i$k;->h:Lhg/i;

    sget-object v6, Lio/grpc/Status;->u:Lio/grpc/Status;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid backend address: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {v6, v2}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 45
    invoke-virtual {v2, v4}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v2

    .line 46
    invoke-virtual {v5, v2}, Lhg/i;->G(Lio/grpc/Status;)V

    goto :goto_1

    .line 47
    :cond_7
    iget-object p1, p0, Lhg/i$k;->h:Lhg/i;

    invoke-static {p1, v3}, Lhg/i;->m(Lhg/i;Z)Z

    .line 48
    iget-object p1, p0, Lhg/i$k;->h:Lhg/i;

    invoke-static {p1, v4}, Lhg/i;->t(Lhg/i;Lio/grpc/Status;)Lio/grpc/Status;

    .line 49
    iget-object p1, p0, Lhg/i$k;->h:Lhg/i;

    invoke-static {p1}, Lhg/i;->e(Lhg/i;)V

    .line 50
    iget-object p1, p0, Lhg/i$k;->h:Lhg/i;

    iget-object v2, p0, Lhg/i$k;->a:Lhg/c;

    invoke-static {p1, v0, v1, v2}, Lhg/i;->i(Lhg/i;Ljava/util/List;Ljava/util/List;Lhg/c;)V

    .line 51
    iget-object p1, p0, Lhg/i$k;->h:Lhg/i;

    invoke-static {p1}, Lhg/i;->v(Lhg/i;)V

    return-void
.end method

.method private h(Lio/grpc/Status;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Lio/grpc/Status;->p()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "unexpected OK status"

    invoke-static {v0, v2}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lhg/i$k;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iput-boolean v1, p0, Lhg/i$k;->e:Z

    .line 4
    invoke-direct {p0}, Lhg/i$k;->e()V

    .line 5
    iget-object v0, p0, Lhg/i$k;->h:Lhg/i;

    invoke-virtual {v0, p1}, Lhg/i;->G(Lio/grpc/Status;)V

    .line 6
    iget-object v0, p0, Lhg/i$k;->h:Lhg/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhg/i;->g(Lhg/i;Z)Z

    .line 7
    iget-object v0, p0, Lhg/i$k;->h:Lhg/i;

    invoke-static {v0, p1}, Lhg/i;->t(Lhg/i;Lio/grpc/Status;)Lio/grpc/Status;

    .line 8
    iget-object p1, p0, Lhg/i$k;->h:Lhg/i;

    invoke-static {p1}, Lhg/i;->e(Lhg/i;)V

    .line 9
    iget-object p1, p0, Lhg/i$k;->h:Lhg/i;

    invoke-static {p1}, Lhg/i;->u(Lhg/i;)V

    .line 10
    iget-object p1, p0, Lhg/i$k;->h:Lhg/i;

    invoke-static {p1}, Lhg/i;->v(Lhg/i;)V

    .line 11
    iget-boolean p1, p0, Lhg/i$k;->d:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lhg/i$k;->h:Lhg/i;

    invoke-static {p1}, Lhg/i;->k(Lhg/i;)Lio/grpc/internal/k;

    move-result-object p1

    if-nez p1, :cond_2

    .line 12
    :cond_1
    iget-object p1, p0, Lhg/i$k;->h:Lhg/i;

    invoke-static {p1}, Lhg/i;->n(Lhg/i;)Lio/grpc/internal/k$a;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/k$a;->get()Lio/grpc/internal/k;

    move-result-object v0

    invoke-static {p1, v0}, Lhg/i;->l(Lhg/i;Lio/grpc/internal/k;)Lio/grpc/internal/k;

    .line 13
    :cond_2
    iget-boolean p1, p0, Lhg/i$k;->d:Z

    const-wide/16 v0, 0x0

    if-nez p1, :cond_3

    .line 14
    iget-object p1, p0, Lhg/i$k;->h:Lhg/i;

    .line 15
    invoke-static {p1}, Lhg/i;->k(Lhg/i;)Lio/grpc/internal/k;

    move-result-object p1

    invoke-interface {p1}, Lio/grpc/internal/k;->a()J

    move-result-wide v2

    iget-object p1, p0, Lhg/i$k;->h:Lhg/i;

    invoke-static {p1}, Lhg/i;->o(Lhg/i;)Lcom/google/common/base/u;

    move-result-object p1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v4}, Lcom/google/common/base/u;->d(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    move-wide v6, v2

    goto :goto_0

    :cond_3
    move-wide v6, v0

    :goto_0
    cmp-long p1, v6, v0

    if-gtz p1, :cond_4

    .line 16
    iget-object p1, p0, Lhg/i$k;->h:Lhg/i;

    invoke-static {p1}, Lhg/i;->w(Lhg/i;)V

    goto :goto_1

    .line 17
    :cond_4
    iget-object p1, p0, Lhg/i$k;->h:Lhg/i;

    .line 18
    invoke-static {p1}, Lhg/i;->a(Lhg/i;)Lio/grpc/d1;

    move-result-object v4

    new-instance v5, Lhg/i$j;

    iget-object v0, p0, Lhg/i$k;->h:Lhg/i;

    invoke-direct {v5, v0}, Lhg/i$j;-><init>(Lhg/i;)V

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lhg/i$k;->h:Lhg/i;

    .line 19
    invoke-static {v0}, Lhg/i;->b(Lhg/i;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v9

    .line 20
    invoke-virtual/range {v4 .. v9}, Lio/grpc/d1;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/d1$c;

    move-result-object v0

    .line 21
    invoke-static {p1, v0}, Lhg/i;->p(Lhg/i;Lio/grpc/d1$c;)Lio/grpc/d1$c;

    .line 22
    :goto_1
    iget-object p1, p0, Lhg/i$k;->h:Lhg/i;

    invoke-static {p1}, Lhg/i;->q(Lhg/i;)Lio/grpc/n0$d;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/n0$d;->j()V

    return-void
.end method

.method private j()V
    .locals 7

    .line 1
    iget-wide v0, p0, Lhg/i$k;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    iget-object v0, p0, Lhg/i$k;->h:Lhg/i;

    invoke-static {v0}, Lhg/i;->a(Lhg/i;)Lio/grpc/d1;

    move-result-object v1

    new-instance v2, Lhg/i$l;

    invoke-direct {v2, p0}, Lhg/i$l;-><init>(Lhg/i$k;)V

    iget-wide v3, p0, Lhg/i$k;->f:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lhg/i$k;->h:Lhg/i;

    .line 3
    invoke-static {v0}, Lhg/i;->b(Lhg/i;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    .line 4
    invoke-virtual/range {v1 .. v6}, Lio/grpc/d1;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/d1$c;

    move-result-object v0

    iput-object v0, p0, Lhg/i$k;->g:Lio/grpc/d1$c;

    :cond_0
    return-void
.end method

.method private k()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lhg/i$k;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lhg/i$k;->a:Lhg/c;

    invoke-virtual {v0}, Lhg/c;->e()Lio/grpc/lb/v1/ClientStats;

    move-result-object v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lhg/i$k;->c:Lio/grpc/stub/h;

    invoke-static {}, Lio/grpc/lb/v1/LoadBalanceRequest;->newBuilder()Lio/grpc/lb/v1/LoadBalanceRequest$c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/grpc/lb/v1/LoadBalanceRequest$c;->k0(Lio/grpc/lb/v1/ClientStats;)Lio/grpc/lb/v1/LoadBalanceRequest$c;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/lb/v1/LoadBalanceRequest$c;->X()Lio/grpc/lb/v1/LoadBalanceRequest;

    move-result-object v0

    invoke-interface {v1, v0}, Lio/grpc/stub/h;->onNext(Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0}, Lhg/i$k;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {p0, v0}, Lhg/i$k;->f(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method


# virtual methods
.method f(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lhg/i$k;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lhg/i$k;->e:Z

    .line 3
    invoke-direct {p0}, Lhg/i$k;->e()V

    .line 4
    iget-object v0, p0, Lhg/i$k;->c:Lio/grpc/stub/h;

    invoke-interface {v0, p1}, Lio/grpc/stub/h;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public i(Lio/grpc/lb/v1/LoadBalanceResponse;)V
    .locals 2

    iget-object v0, p0, Lhg/i$k;->h:Lhg/i;

    invoke-static {v0}, Lhg/i;->a(Lhg/i;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Lhg/i$k$a;

    invoke-direct {v1, p0, p1}, Lhg/i$k$a;-><init>(Lhg/i$k;Lio/grpc/lb/v1/LoadBalanceResponse;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method l()V
    .locals 1

    iget-object v0, p0, Lhg/i$k;->b:Lio/grpc/lb/v1/f$d;

    invoke-virtual {v0}, Lio/grpc/stub/b;->e()Lio/grpc/stub/b;

    move-result-object v0

    check-cast v0, Lio/grpc/lb/v1/f$d;

    invoke-virtual {v0, p0}, Lio/grpc/lb/v1/f$d;->h(Lio/grpc/stub/h;)Lio/grpc/stub/h;

    move-result-object v0

    iput-object v0, p0, Lhg/i$k;->c:Lio/grpc/stub/h;

    return-void
.end method

.method public onCompleted()V
    .locals 2

    iget-object v0, p0, Lhg/i$k;->h:Lhg/i;

    invoke-static {v0}, Lhg/i;->a(Lhg/i;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Lhg/i$k$c;

    invoke-direct {v1, p0}, Lhg/i$k$c;-><init>(Lhg/i$k;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lhg/i$k;->h:Lhg/i;

    invoke-static {v0}, Lhg/i;->a(Lhg/i;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Lhg/i$k$b;

    invoke-direct {v1, p0, p1}, Lhg/i$k$b;-><init>(Lhg/i$k;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/grpc/lb/v1/LoadBalanceResponse;

    invoke-virtual {p0, p1}, Lhg/i$k;->i(Lio/grpc/lb/v1/LoadBalanceResponse;)V

    return-void
.end method
