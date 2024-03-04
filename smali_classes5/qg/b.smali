.class public abstract Lqg/b;
.super Lio/grpc/netty/shaded/io/netty/channel/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqg/b$c;
    }
.end annotation


# static fields
.field private static final m:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;


# instance fields
.field private final b:Ljava/net/SocketAddress;

.field private volatile c:Ljava/net/SocketAddress;

.field private volatile d:J

.field private volatile e:Lio/grpc/netty/shaded/io/netty/channel/m;

.field private f:Lio/grpc/netty/shaded/io/netty/channel/u0;

.field private g:Z

.field private h:Z

.field private i:Z

.field private final j:Lqg/b$c;

.field private k:Lug/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lug/q<",
            "*>;"
        }
    .end annotation
.end field

.field private final l:Lio/grpc/netty/shaded/io/netty/channel/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lqg/b;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lqg/b;->m:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    return-void
.end method

.method protected constructor <init>(Ljava/net/SocketAddress;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/g;-><init>()V

    const-wide/16 v0, 0x2710

    .line 2
    iput-wide v0, p0, Lqg/b;->d:J

    .line 3
    new-instance v0, Lqg/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lqg/b$c;-><init>(Lqg/b;Lqg/b$a;)V

    iput-object v0, p0, Lqg/b;->j:Lqg/b$c;

    .line 4
    new-instance v0, Lqg/b$a;

    invoke-direct {v0, p0}, Lqg/b$a;-><init>(Lqg/b;)V

    iput-object v0, p0, Lqg/b;->l:Lio/grpc/netty/shaded/io/netty/channel/j;

    const-string v0, "proxyAddress"

    .line 5
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/SocketAddress;

    iput-object p1, p0, Lqg/b;->b:Ljava/net/SocketAddress;

    return-void
.end method

.method private G(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lqg/b;->f:Lio/grpc/netty/shaded/io/netty/channel/u0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/u0;->g(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lqg/b;->f:Lio/grpc/netty/shaded/io/netty/channel/u0;

    :cond_0
    return-void
.end method

.method private H(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lqg/b;->G(Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lqg/b;->j:Lqg/b$c;

    invoke-virtual {v0, p1}, Lug/h;->z(Ljava/lang/Throwable;)Z

    .line 3
    iget-object v0, p0, Lqg/b;->e:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/m;

    .line 4
    iget-object p1, p0, Lqg/b;->e:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->close()Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void
.end method

.method private static L(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->b0()Lio/grpc/netty/shaded/io/netty/channel/f;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/f;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/m;->read()Lio/grpc/netty/shaded/io/netty/channel/m;

    :cond_0
    return-void
.end method

.method private O()Z
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lqg/b;->e:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-virtual {p0, v0}, Lqg/b;->M(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Lqg/b;->m:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v2, "Failed to remove proxy decoders:"

    invoke-interface {v1, v2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private P()Z
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lqg/b;->e:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-virtual {p0, v0}, Lqg/b;->N(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Lqg/b;->m:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v2, "Failed to remove proxy encoders:"

    invoke-interface {v1, v2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private Q(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lqg/b;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->m0()Lug/j;

    move-result-object v2

    new-instance v3, Lqg/b$b;

    invoke-direct {v3, p0}, Lqg/b$b;-><init>(Lqg/b;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, v4}, Lug/l;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lug/d0;

    move-result-object v0

    iput-object v0, p0, Lqg/b;->k:Lug/q;

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lqg/b;->J(Lio/grpc/netty/shaded/io/netty/channel/m;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lqg/b;->R(Ljava/lang/Object;)V

    .line 5
    :cond_1
    invoke-static {p1}, Lqg/b;->L(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    return-void
.end method

.method private S(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lqg/b;->g:Z

    .line 2
    invoke-direct {p0}, Lqg/b;->z()V

    .line 3
    iget-object v0, p0, Lqg/b;->j:Lqg/b$c;

    invoke-virtual {v0}, Lug/h;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/handler/proxy/ProxyConnectException;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/proxy/ProxyConnectException;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lqg/b;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lio/grpc/netty/shaded/io/netty/handler/proxy/ProxyConnectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    .line 7
    :cond_0
    invoke-direct {p0}, Lqg/b;->O()Z

    .line 8
    invoke-direct {p0}, Lqg/b;->P()Z

    .line 9
    invoke-direct {p0, p1}, Lqg/b;->H(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private T()V
    .locals 7

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lqg/b;->g:Z

    .line 2
    invoke-direct {p0}, Lqg/b;->z()V

    .line 3
    iget-object v1, p0, Lqg/b;->j:Lqg/b$c;

    invoke-virtual {v1}, Lug/h;->isDone()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    invoke-direct {p0}, Lqg/b;->P()Z

    move-result v1

    and-int/2addr v0, v1

    .line 5
    iget-object v1, p0, Lqg/b;->e:Lio/grpc/netty/shaded/io/netty/channel/m;

    new-instance v2, Lqg/a;

    .line 6
    invoke-virtual {p0}, Lqg/b;->K()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lqg/b;->y()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lqg/b;->b:Ljava/net/SocketAddress;

    iget-object v6, p0, Lqg/b;->c:Ljava/net/SocketAddress;

    invoke-direct {v2, v3, v4, v5, v6}, Lqg/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/SocketAddress;Ljava/net/SocketAddress;)V

    .line 7
    invoke-interface {v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/m;->s(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;

    .line 8
    invoke-direct {p0}, Lqg/b;->O()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 9
    invoke-direct {p0}, Lqg/b;->U()V

    .line 10
    iget-boolean v0, p0, Lqg/b;->i:Z

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lqg/b;->e:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->flush()Lio/grpc/netty/shaded/io/netty/channel/m;

    .line 12
    :cond_0
    iget-object v0, p0, Lqg/b;->j:Lqg/b$c;

    iget-object v1, p0, Lqg/b;->e:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lug/h;->B(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/proxy/ProxyConnectException;

    const-string v1, "failed to remove all codec handlers added by the proxy handler; bug?"

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/proxy/ProxyConnectException;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, v0}, Lqg/b;->H(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private U()V
    .locals 1

    .line 1
    iget-object v0, p0, Lqg/b;->f:Lio/grpc/netty/shaded/io/netty/channel/u0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/u0;->h()Lio/grpc/netty/shaded/io/netty/channel/i;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lqg/b;->f:Lio/grpc/netty/shaded/io/netty/channel/u0;

    :cond_0
    return-void
.end method

.method static synthetic s(Lqg/b;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lqg/b;->S(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic u(Lqg/b;)Lqg/b$c;
    .locals 0

    iget-object p0, p0, Lqg/b;->j:Lqg/b$c;

    return-object p0
.end method

.method static synthetic v(Lqg/b;)Lio/grpc/netty/shaded/io/netty/channel/m;
    .locals 0

    iget-object p0, p0, Lqg/b;->e:Lio/grpc/netty/shaded/io/netty/channel/m;

    return-object p0
.end method

.method private x(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lqg/b;->f:Lio/grpc/netty/shaded/io/netty/channel/u0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/u0;

    invoke-direct {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/u0;-><init>(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    iput-object v0, p0, Lqg/b;->f:Lio/grpc/netty/shaded/io/netty/channel/u0;

    .line 3
    :cond_0
    invoke-virtual {v0, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/u0;->a(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    return-void
.end method

.method private z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lqg/b;->k:Lug/q;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Lug/q;->cancel(Z)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lqg/b;->k:Lug/q;

    :cond_0
    return-void
.end method


# virtual methods
.method public final A(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lqg/b;->e:Lio/grpc/netty/shaded/io/netty/channel/m;

    .line 2
    invoke-virtual {p0, p1}, Lqg/b;->w(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lqg/b;->Q(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    :cond_0
    return-void
.end method

.method public final B()Ljava/net/SocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/net/SocketAddress;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lqg/b;->c:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public final D(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lqg/b;->Q(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 2
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->q()Lio/grpc/netty/shaded/io/netty/channel/m;

    return-void
.end method

.method protected final F(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v1, v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    invoke-virtual {p0}, Lqg/b;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lqg/b;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lqg/b;->b:Ljava/net/SocketAddress;

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " => "

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lqg/b;->c:Ljava/net/SocketAddress;

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract I(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract J(Lio/grpc/netty/shaded/io/netty/channel/m;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract K()Ljava/lang/String;
.end method

.method protected abstract M(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract N(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected final R(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lqg/b;->e:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->g(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    iget-object v0, p0, Lqg/b;->l:Lio/grpc/netty/shaded/io/netty/channel/j;

    invoke-interface {p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/i;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void
.end method

.method public final V(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lqg/b;->c:Ljava/net/SocketAddress;

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {p1}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    invoke-interface {p4, p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    return-void

    .line 3
    :cond_0
    iput-object p2, p0, Lqg/b;->c:Ljava/net/SocketAddress;

    .line 4
    iget-object p2, p0, Lqg/b;->b:Ljava/net/SocketAddress;

    invoke-interface {p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/channel/v;->Q(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void
.end method

.method public final Z(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lqg/b;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lqg/b;->h:Z

    .line 3
    invoke-static {p1}, Lqg/b;->L(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->k()Lio/grpc/netty/shaded/io/netty/channel/m;

    :goto_0
    return-void
.end method

.method public final a(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lqg/b;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/m;->v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/m;

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p2}, Lqg/b;->S(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final e(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lqg/b;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lqg/b;->U()V

    .line 3
    invoke-interface {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lqg/b;->x(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    :goto_0
    return-void
.end method

.method public final h(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lqg/b;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lqg/b;->h:Z

    .line 3
    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/m;->p(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lqg/b;->h:Z

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lqg/b;->I(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-direct {p0}, Lqg/b;->T()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_1
    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/util/r;->a(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/util/r;->a(Ljava/lang/Object;)Z

    .line 8
    invoke-direct {p0, p1}, Lqg/b;->S(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final n(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lqg/b;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lqg/b;->U()V

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->flush()Lio/grpc/netty/shaded/io/netty/channel/m;

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lqg/b;->i:Z

    :goto_0
    return-void
.end method

.method public final t(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lqg/b;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->n0()Lio/grpc/netty/shaded/io/netty/channel/m;

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/proxy/ProxyConnectException;

    const-string v0, "disconnected"

    invoke-virtual {p0, v0}, Lqg/b;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/proxy/ProxyConnectException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lqg/b;->S(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected abstract w(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract y()Ljava/lang/String;
.end method
