.class public final Lio/grpc/internal/b2;
.super Lio/grpc/t0$h;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:I

.field private final d:Lio/grpc/internal/j;


# direct methods
.method public constructor <init>(ZIILio/grpc/internal/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/t0$h;-><init>()V

    .line 2
    iput-boolean p1, p0, Lio/grpc/internal/b2;->a:Z

    .line 3
    iput p2, p0, Lio/grpc/internal/b2;->b:I

    .line 4
    iput p3, p0, Lio/grpc/internal/b2;->c:I

    const-string p1, "autoLoadBalancerFactory"

    .line 5
    invoke-static {p4, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/j;

    iput-object p1, p0, Lio/grpc/internal/b2;->d:Lio/grpc/internal/j;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lio/grpc/t0$c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lio/grpc/t0$c;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/b2;->d:Lio/grpc/internal/j;

    .line 2
    invoke-virtual {v0, p1}, Lio/grpc/internal/j;->f(Ljava/util/Map;)Lio/grpc/t0$c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lio/grpc/t0$c;->d()Lio/grpc/Status;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lio/grpc/t0$c;->d()Lio/grpc/Status;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/t0$c;->b(Lio/grpc/Status;)Lio/grpc/t0$c;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {v0}, Lio/grpc/t0$c;->c()Ljava/lang/Object;

    move-result-object v0

    .line 6
    :goto_0
    iget-boolean v1, p0, Lio/grpc/internal/b2;->a:Z

    iget v2, p0, Lio/grpc/internal/b2;->b:I

    iget v3, p0, Lio/grpc/internal/b2;->c:I

    .line 7
    invoke-static {p1, v1, v2, v3, v0}, Lio/grpc/internal/j1;->b(Ljava/util/Map;ZIILjava/lang/Object;)Lio/grpc/internal/j1;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lio/grpc/t0$c;->a(Ljava/lang/Object;)Lio/grpc/t0$c;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 9
    sget-object v0, Lio/grpc/Status;->h:Lio/grpc/Status;

    const-string v1, "failed to parse service config"

    .line 10
    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lio/grpc/t0$c;->b(Lio/grpc/Status;)Lio/grpc/t0$c;

    move-result-object p1

    return-object p1
.end method
