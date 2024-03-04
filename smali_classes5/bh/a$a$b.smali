.class Lbh/a$a$b;
.super Lio/grpc/g$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbh/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/g$a<",
        "Lio/grpc/health/v1/HealthCheckResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/g<",
            "Lio/grpc/health/v1/HealthCheckRequest;",
            "Lio/grpc/health/v1/HealthCheckResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/common/base/u;

.field private d:Z

.field final synthetic e:Lbh/a$a;


# direct methods
.method constructor <init>(Lbh/a$a;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lbh/a$a$b;->e:Lbh/a$a;

    invoke-direct {p0}, Lio/grpc/g$a;-><init>()V

    .line 2
    iget-object v0, p1, Lbh/a$a;->p:Lbh/a;

    invoke-static {v0}, Lbh/a;->b(Lbh/a;)Lcom/google/common/base/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/base/w;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/u;

    invoke-virtual {v0}, Lcom/google/common/base/u;->g()Lcom/google/common/base/u;

    move-result-object v0

    iput-object v0, p0, Lbh/a$a$b;->c:Lcom/google/common/base/u;

    .line 3
    invoke-static {p1}, Lbh/a$a;->h(Lbh/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbh/a$a$b;->b:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lbh/a$a;->i(Lbh/a$a;)Lio/grpc/n0$h;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/n0$h;->a()Lio/grpc/d;

    move-result-object p1

    invoke-static {}, Lio/grpc/health/v1/a;->a()Lio/grpc/MethodDescriptor;

    move-result-object v0

    sget-object v1, Lio/grpc/c;->k:Lio/grpc/c;

    invoke-virtual {p1, v0, v1}, Lio/grpc/d;->i(Lio/grpc/MethodDescriptor;Lio/grpc/c;)Lio/grpc/g;

    move-result-object p1

    iput-object p1, p0, Lbh/a$a$b;->a:Lio/grpc/g;

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/Status;Lio/grpc/s0;)V
    .locals 1

    iget-object p2, p0, Lbh/a$a$b;->e:Lbh/a$a;

    invoke-static {p2}, Lbh/a$a;->l(Lbh/a$a;)Lio/grpc/d1;

    move-result-object p2

    new-instance v0, Lbh/a$a$b$b;

    invoke-direct {v0, p0, p1}, Lbh/a$a$b$b;-><init>(Lbh/a$a$b;Lio/grpc/Status;)V

    invoke-virtual {p2, v0}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/grpc/health/v1/HealthCheckResponse;

    invoke-virtual {p0, p1}, Lbh/a$a$b;->h(Lio/grpc/health/v1/HealthCheckResponse;)V

    return-void
.end method

.method e(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lbh/a$a$b;->a:Lio/grpc/g;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lio/grpc/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method f(Lio/grpc/health/v1/HealthCheckResponse;)V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lbh/a$a$b;->d:Z

    .line 2
    iget-object v1, p0, Lbh/a$a$b;->e:Lbh/a$a;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lbh/a$a;->n(Lbh/a$a;Lio/grpc/internal/k;)Lio/grpc/internal/k;

    .line 3
    invoke-virtual {p1}, Lio/grpc/health/v1/HealthCheckResponse;->getStatus()Lio/grpc/health/v1/HealthCheckResponse$ServingStatus;

    move-result-object p1

    .line 4
    sget-object v1, Lio/grpc/health/v1/HealthCheckResponse$ServingStatus;->SERVING:Lio/grpc/health/v1/HealthCheckResponse$ServingStatus;

    invoke-static {p1, v1}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object p1, p0, Lbh/a$a$b;->e:Lbh/a$a;

    invoke-static {p1}, Lbh/a$a;->o(Lbh/a$a;)Lio/grpc/ChannelLogger;

    move-result-object p1

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v2, "READY: health-check responded SERVING"

    invoke-virtual {p1, v1, v2}, Lio/grpc/ChannelLogger;->a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lbh/a$a$b;->e:Lbh/a$a;

    sget-object v1, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    invoke-static {v1}, Lio/grpc/q;->a(Lio/grpc/ConnectivityState;)Lio/grpc/q;

    move-result-object v1

    invoke-static {p1, v1}, Lbh/a$a;->p(Lbh/a$a;Lio/grpc/q;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lbh/a$a$b;->e:Lbh/a$a;

    invoke-static {v1}, Lbh/a$a;->o(Lbh/a$a;)Lio/grpc/ChannelLogger;

    move-result-object v1

    sget-object v2, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v4, "TRANSIENT_FAILURE: health-check responded {0}"

    invoke-virtual {v1, v2, v4, v3}, Lio/grpc/ChannelLogger;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object v1, p0, Lbh/a$a$b;->e:Lbh/a$a;

    sget-object v2, Lio/grpc/Status;->u:Lio/grpc/Status;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Health-check service responded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for \'"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lbh/a$a$b;->b:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {v2, p1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lio/grpc/q;->b(Lio/grpc/Status;)Lio/grpc/q;

    move-result-object p1

    .line 11
    invoke-static {v1, p1}, Lbh/a$a;->p(Lbh/a$a;Lio/grpc/q;)V

    .line 12
    :goto_0
    iget-object p1, p0, Lbh/a$a$b;->a:Lio/grpc/g;

    invoke-virtual {p1, v0}, Lio/grpc/g;->c(I)V

    return-void
.end method

.method g(Lio/grpc/Status;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Lio/grpc/Status;->n()Lio/grpc/Status$Code;

    move-result-object v0

    sget-object v1, Lio/grpc/Status$Code;->UNIMPLEMENTED:Lio/grpc/Status$Code;

    invoke-static {v0, v1}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lbh/a$a$b;->e:Lbh/a$a;

    invoke-static {v0, v2}, Lbh/a$a;->q(Lbh/a$a;Z)Z

    .line 3
    invoke-static {}, Lbh/a;->c()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lbh/a$a$b;->e:Lbh/a$a;

    .line 4
    invoke-static {v5}, Lbh/a$a;->i(Lbh/a$a;)Lio/grpc/n0$h;

    move-result-object v5

    invoke-virtual {v5}, Lio/grpc/n0$h;->c()Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object p1, v4, v2

    const-string v5, "Health-check with {0} is disabled. Server returned: {1}"

    .line 5
    invoke-virtual {v0, v3, v5, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lbh/a$a$b;->e:Lbh/a$a;

    invoke-static {v0}, Lbh/a$a;->o(Lbh/a$a;)Lio/grpc/ChannelLogger;

    move-result-object v0

    sget-object v3, Lio/grpc/ChannelLogger$ChannelLogLevel;->ERROR:Lio/grpc/ChannelLogger$ChannelLogLevel;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    const-string p1, "Health-check disabled: {0}"

    invoke-virtual {v0, v3, p1, v4}, Lio/grpc/ChannelLogger;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lbh/a$a$b;->e:Lbh/a$a;

    invoke-static {p1}, Lbh/a$a;->o(Lbh/a$a;)Lio/grpc/ChannelLogger;

    move-result-object p1

    sget-object v0, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lbh/a$a$b;->e:Lbh/a$a;

    invoke-static {v3}, Lbh/a$a;->c(Lbh/a$a;)Lio/grpc/q;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "{0} (no health-check)"

    invoke-virtual {p1, v0, v1, v2}, Lio/grpc/ChannelLogger;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lbh/a$a$b;->e:Lbh/a$a;

    invoke-static {p1}, Lbh/a$a;->c(Lbh/a$a;)Lio/grpc/q;

    move-result-object v0

    invoke-static {p1, v0}, Lbh/a$a;->p(Lbh/a$a;Lio/grpc/q;)V

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lbh/a$a$b;->e:Lbh/a$a;

    invoke-static {v0}, Lbh/a$a;->o(Lbh/a$a;)Lio/grpc/ChannelLogger;

    move-result-object v0

    sget-object v3, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    const-string v5, "TRANSIENT_FAILURE: health-check stream closed with {0}"

    invoke-virtual {v0, v3, v5, v4}, Lio/grpc/ChannelLogger;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lbh/a$a$b;->e:Lbh/a$a;

    sget-object v3, Lio/grpc/Status;->u:Lio/grpc/Status;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Health-check stream unexpectedly closed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for \'"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lbh/a$a$b;->b:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {v3, p1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lio/grpc/q;->b(Lio/grpc/Status;)Lio/grpc/q;

    move-result-object p1

    .line 13
    invoke-static {v0, p1}, Lbh/a$a;->p(Lbh/a$a;Lio/grpc/q;)V

    .line 14
    iget-boolean p1, p0, Lbh/a$a$b;->d:Z

    const-wide/16 v3, 0x0

    if-nez p1, :cond_2

    .line 15
    iget-object p1, p0, Lbh/a$a$b;->e:Lbh/a$a;

    invoke-static {p1}, Lbh/a$a;->m(Lbh/a$a;)Lio/grpc/internal/k;

    move-result-object p1

    if-nez p1, :cond_1

    .line 16
    iget-object p1, p0, Lbh/a$a$b;->e:Lbh/a$a;

    iget-object v0, p1, Lbh/a$a;->p:Lbh/a;

    invoke-static {v0}, Lbh/a;->d(Lbh/a;)Lio/grpc/internal/k$a;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/k$a;->get()Lio/grpc/internal/k;

    move-result-object v0

    invoke-static {p1, v0}, Lbh/a$a;->n(Lbh/a$a;Lio/grpc/internal/k;)Lio/grpc/internal/k;

    .line 17
    :cond_1
    iget-object p1, p0, Lbh/a$a$b;->e:Lbh/a$a;

    invoke-static {p1}, Lbh/a$a;->m(Lbh/a$a;)Lio/grpc/internal/k;

    move-result-object p1

    invoke-interface {p1}, Lio/grpc/internal/k;->a()J

    move-result-wide v5

    iget-object p1, p0, Lbh/a$a$b;->c:Lcom/google/common/base/u;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lcom/google/common/base/u;->d(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    move-wide v9, v5

    goto :goto_0

    :cond_2
    move-wide v9, v3

    :goto_0
    cmp-long p1, v9, v3

    if-gtz p1, :cond_3

    .line 18
    iget-object p1, p0, Lbh/a$a$b;->e:Lbh/a$a;

    invoke-static {p1}, Lbh/a$a;->b(Lbh/a$a;)V

    goto :goto_1

    .line 19
    :cond_3
    iget-object p1, p0, Lbh/a$a$b;->e:Lbh/a$a;

    invoke-static {p1}, Lbh/a$a;->d(Lbh/a$a;)Z

    move-result p1

    xor-int/2addr p1, v2

    const-string v0, "Retry double scheduled"

    invoke-static {p1, v0}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 20
    iget-object p1, p0, Lbh/a$a$b;->e:Lbh/a$a;

    invoke-static {p1}, Lbh/a$a;->o(Lbh/a$a;)Lio/grpc/ChannelLogger;

    move-result-object p1

    sget-object v0, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    new-array v2, v2, [Ljava/lang/Object;

    .line 21
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Will retry health-check after {0} ns"

    .line 22
    invoke-virtual {p1, v0, v1, v2}, Lio/grpc/ChannelLogger;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object p1, p0, Lbh/a$a$b;->e:Lbh/a$a;

    invoke-static {p1}, Lbh/a$a;->l(Lbh/a$a;)Lio/grpc/d1;

    move-result-object v7

    iget-object v0, p0, Lbh/a$a$b;->e:Lbh/a$a;

    .line 24
    invoke-static {v0}, Lbh/a$a;->f(Lbh/a$a;)Ljava/lang/Runnable;

    move-result-object v8

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lbh/a$a$b;->e:Lbh/a$a;

    invoke-static {v0}, Lbh/a$a;->g(Lbh/a$a;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v12

    .line 25
    invoke-virtual/range {v7 .. v12}, Lio/grpc/d1;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/d1$c;

    move-result-object v0

    invoke-static {p1, v0}, Lbh/a$a;->e(Lbh/a$a;Lio/grpc/d1$c;)Lio/grpc/d1$c;

    :goto_1
    return-void
.end method

.method public h(Lio/grpc/health/v1/HealthCheckResponse;)V
    .locals 2

    iget-object v0, p0, Lbh/a$a$b;->e:Lbh/a$a;

    invoke-static {v0}, Lbh/a$a;->l(Lbh/a$a;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Lbh/a$a$b$a;

    invoke-direct {v1, p0, p1}, Lbh/a$a$b$a;-><init>(Lbh/a$a$b;Lio/grpc/health/v1/HealthCheckResponse;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lbh/a$a$b;->a:Lio/grpc/g;

    new-instance v1, Lio/grpc/s0;

    invoke-direct {v1}, Lio/grpc/s0;-><init>()V

    invoke-virtual {v0, p0, v1}, Lio/grpc/g;->e(Lio/grpc/g$a;Lio/grpc/s0;)V

    .line 2
    iget-object v0, p0, Lbh/a$a$b;->a:Lio/grpc/g;

    invoke-static {}, Lio/grpc/health/v1/HealthCheckRequest;->newBuilder()Lio/grpc/health/v1/HealthCheckRequest$b;

    move-result-object v1

    iget-object v2, p0, Lbh/a$a$b;->e:Lbh/a$a;

    invoke-static {v2}, Lbh/a$a;->h(Lbh/a$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/health/v1/HealthCheckRequest$b;->j0(Ljava/lang/String;)Lio/grpc/health/v1/HealthCheckRequest$b;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/health/v1/HealthCheckRequest$b;->X()Lio/grpc/health/v1/HealthCheckRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/g;->d(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lbh/a$a$b;->a:Lio/grpc/g;

    invoke-virtual {v0}, Lio/grpc/g;->b()V

    .line 4
    iget-object v0, p0, Lbh/a$a$b;->a:Lio/grpc/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/grpc/g;->c(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lbh/a$a$b;->a:Lio/grpc/g;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "callStarted"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->e(Ljava/lang/String;Z)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lbh/a$a$b;->b:Ljava/lang/String;

    const-string v2, "serviceName"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-boolean v1, p0, Lbh/a$a$b;->d:Z

    const-string v2, "hasResponded"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->e(Ljava/lang/String;Z)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
