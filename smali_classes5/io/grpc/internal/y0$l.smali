.class Lio/grpc/internal/y0$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/k1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "l"
.end annotation


# instance fields
.field final a:Lio/grpc/internal/u;

.field final b:Ljava/net/SocketAddress;

.field c:Z

.field final synthetic d:Lio/grpc/internal/y0;


# direct methods
.method constructor <init>(Lio/grpc/internal/y0;Lio/grpc/internal/u;Ljava/net/SocketAddress;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/internal/y0$l;->d:Lio/grpc/internal/y0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lio/grpc/internal/y0$l;->c:Z

    .line 3
    iput-object p2, p0, Lio/grpc/internal/y0$l;->a:Lio/grpc/internal/u;

    .line 4
    iput-object p3, p0, Lio/grpc/internal/y0$l;->b:Ljava/net/SocketAddress;

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/Status;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/grpc/internal/y0$l;->d:Lio/grpc/internal/y0;

    invoke-static {v0}, Lio/grpc/internal/y0;->z(Lio/grpc/internal/y0;)Lio/grpc/ChannelLogger;

    move-result-object v0

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lio/grpc/internal/y0$l;->a:Lio/grpc/internal/u;

    .line 2
    invoke-interface {v3}, Lio/grpc/l0;->c()Lio/grpc/g0;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lio/grpc/internal/y0$l;->d:Lio/grpc/internal/y0;

    invoke-static {v3, p1}, Lio/grpc/internal/y0;->C(Lio/grpc/internal/y0;Lio/grpc/Status;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "{0} SHUTDOWN with {1}"

    .line 3
    invoke-virtual {v0, v1, v3, v2}, Lio/grpc/ChannelLogger;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iput-boolean v4, p0, Lio/grpc/internal/y0$l;->c:Z

    .line 5
    iget-object v0, p0, Lio/grpc/internal/y0$l;->d:Lio/grpc/internal/y0;

    invoke-static {v0}, Lio/grpc/internal/y0;->t(Lio/grpc/internal/y0;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/y0$l$b;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/y0$l$b;-><init>(Lio/grpc/internal/y0$l;Lio/grpc/Status;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/internal/y0$l;->d:Lio/grpc/internal/y0;

    invoke-static {v0}, Lio/grpc/internal/y0;->z(Lio/grpc/internal/y0;)Lio/grpc/ChannelLogger;

    move-result-object v0

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v2, "READY"

    invoke-virtual {v0, v1, v2}, Lio/grpc/ChannelLogger;->a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/grpc/internal/y0$l;->d:Lio/grpc/internal/y0;

    invoke-static {v0}, Lio/grpc/internal/y0;->t(Lio/grpc/internal/y0;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/y0$l$a;

    invoke-direct {v1, p0}, Lio/grpc/internal/y0$l$a;-><init>(Lio/grpc/internal/y0$l;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Z)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/y0$l;->d:Lio/grpc/internal/y0;

    iget-object v1, p0, Lio/grpc/internal/y0$l;->a:Lio/grpc/internal/u;

    invoke-static {v0, v1, p1}, Lio/grpc/internal/y0;->B(Lio/grpc/internal/y0;Lio/grpc/internal/u;Z)V

    return-void
.end method

.method public d()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lio/grpc/internal/y0$l;->c:Z

    const-string v1, "transportShutdown() must be called before transportTerminated()."

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lio/grpc/internal/y0$l;->d:Lio/grpc/internal/y0;

    invoke-static {v0}, Lio/grpc/internal/y0;->z(Lio/grpc/internal/y0;)Lio/grpc/ChannelLogger;

    move-result-object v0

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lio/grpc/internal/y0$l;->a:Lio/grpc/internal/u;

    invoke-interface {v3}, Lio/grpc/l0;->c()Lio/grpc/g0;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "{0} Terminated"

    invoke-virtual {v0, v1, v3, v2}, Lio/grpc/ChannelLogger;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lio/grpc/internal/y0$l;->d:Lio/grpc/internal/y0;

    invoke-static {v0}, Lio/grpc/internal/y0;->E(Lio/grpc/internal/y0;)Lio/grpc/c0;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/y0$l;->a:Lio/grpc/internal/u;

    invoke-virtual {v0, v1}, Lio/grpc/c0;->i(Lio/grpc/f0;)V

    .line 4
    iget-object v0, p0, Lio/grpc/internal/y0$l;->d:Lio/grpc/internal/y0;

    iget-object v1, p0, Lio/grpc/internal/y0$l;->a:Lio/grpc/internal/u;

    invoke-static {v0, v1, v4}, Lio/grpc/internal/y0;->B(Lio/grpc/internal/y0;Lio/grpc/internal/u;Z)V

    .line 5
    iget-object v0, p0, Lio/grpc/internal/y0$l;->d:Lio/grpc/internal/y0;

    invoke-static {v0}, Lio/grpc/internal/y0;->t(Lio/grpc/internal/y0;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/y0$l$c;

    invoke-direct {v1, p0}, Lio/grpc/internal/y0$l$c;-><init>(Lio/grpc/internal/y0$l;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
