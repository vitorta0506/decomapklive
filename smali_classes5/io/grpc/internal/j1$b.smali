.class final Lio/grpc/internal/j1$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field static final g:Lio/grpc/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/c$a<",
            "Lio/grpc/internal/j1$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Ljava/lang/Long;

.field final b:Ljava/lang/Boolean;

.field final c:Ljava/lang/Integer;

.field final d:Ljava/lang/Integer;

.field final e:Lio/grpc/internal/a2;

.field final f:Lio/grpc/internal/t0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "io.grpc.internal.ManagedChannelServiceConfig.MethodInfo"

    invoke-static {v0}, Lio/grpc/c$a;->b(Ljava/lang/String;)Lio/grpc/c$a;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/j1$b;->g:Lio/grpc/c$a;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;ZII)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;ZII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lio/grpc/internal/e2;->x(Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/j1$b;->a:Ljava/lang/Long;

    .line 3
    invoke-static {p1}, Lio/grpc/internal/e2;->y(Ljava/util/Map;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/j1$b;->b:Ljava/lang/Boolean;

    .line 4
    invoke-static {p1}, Lio/grpc/internal/e2;->m(Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/j1$b;->c:Ljava/lang/Integer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "maxInboundMessageSize %s exceeds bounds"

    .line 6
    invoke-static {v3, v4, v0}, Lcom/google/common/base/o;->m(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 7
    :cond_1
    invoke-static {p1}, Lio/grpc/internal/e2;->l(Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/j1$b;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const-string v2, "maxOutboundMessageSize %s exceeds bounds"

    .line 9
    invoke-static {v1, v2, v0}, Lcom/google/common/base/o;->m(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 10
    invoke-static {p1}, Lio/grpc/internal/e2;->s(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    if-nez v1, :cond_5

    move-object p3, v0

    goto :goto_3

    .line 11
    :cond_5
    invoke-static {v1, p3}, Lio/grpc/internal/j1$b;->b(Ljava/util/Map;I)Lio/grpc/internal/a2;

    move-result-object p3

    :goto_3
    iput-object p3, p0, Lio/grpc/internal/j1$b;->e:Lio/grpc/internal/a2;

    if-eqz p2, :cond_6

    .line 12
    invoke-static {p1}, Lio/grpc/internal/e2;->e(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    goto :goto_4

    :cond_6
    move-object p1, v0

    :goto_4
    if-nez p1, :cond_7

    goto :goto_5

    .line 13
    :cond_7
    invoke-static {p1, p4}, Lio/grpc/internal/j1$b;->a(Ljava/util/Map;I)Lio/grpc/internal/t0;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lio/grpc/internal/j1$b;->f:Lio/grpc/internal/t0;

    return-void
.end method

.method private static a(Ljava/util/Map;I)Lio/grpc/internal/t0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;I)",
            "Lio/grpc/internal/t0;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/grpc/internal/e2;->i(Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "maxAttempts cannot be empty"

    .line 2
    invoke-static {v0, v1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "maxAttempts must be greater than 1: %s"

    .line 3
    invoke-static {v3, v4, v0}, Lcom/google/common/base/o;->h(ZLjava/lang/String;I)V

    .line 4
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 5
    invoke-static {p0}, Lio/grpc/internal/e2;->d(Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "hedgingDelay cannot be empty"

    .line 6
    invoke-static {v0, v3}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v0, "hedgingDelay must not be negative: %s"

    .line 7
    invoke-static {v1, v0, v3, v4}, Lcom/google/common/base/o;->j(ZLjava/lang/String;J)V

    .line 8
    new-instance v0, Lio/grpc/internal/t0;

    .line 9
    invoke-static {p0}, Lio/grpc/internal/e2;->q(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p1, v3, v4, p0}, Lio/grpc/internal/t0;-><init>(IJLjava/util/Set;)V

    return-object v0
.end method

.method private static b(Ljava/util/Map;I)Lio/grpc/internal/a2;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;I)",
            "Lio/grpc/internal/a2;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/grpc/internal/e2;->j(Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "maxAttempts cannot be empty"

    .line 2
    invoke-static {v0, v1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "maxAttempts must be greater than 1: %s"

    .line 3
    invoke-static {v3, v4, v0}, Lcom/google/common/base/o;->h(ZLjava/lang/String;I)V

    move/from16 v3, p1

    .line 4
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 5
    invoke-static {p0}, Lio/grpc/internal/e2;->f(Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "initialBackoff cannot be empty"

    .line 6
    invoke-static {v0, v3}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v3, "initialBackoffNanos must be greater than 0: %s"

    .line 7
    invoke-static {v0, v3, v5, v6}, Lcom/google/common/base/o;->j(ZLjava/lang/String;J)V

    .line 8
    invoke-static {p0}, Lio/grpc/internal/e2;->k(Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "maxBackoff cannot be empty"

    .line 9
    invoke-static {v0, v3}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v0, v9, v7

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const-string v3, "maxBackoff must be greater than 0: %s"

    .line 10
    invoke-static {v0, v3, v9, v10}, Lcom/google/common/base/o;->j(ZLjava/lang/String;J)V

    .line 11
    invoke-static {p0}, Lio/grpc/internal/e2;->a(Ljava/util/Map;)Ljava/lang/Double;

    move-result-object v0

    const-string v3, "backoffMultiplier cannot be empty"

    .line 12
    invoke-static {v0, v3}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v0, v11, v13

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 13
    :goto_3
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v13, "backoffMultiplier must be greater than 0: %s"

    .line 14
    invoke-static {v0, v13, v3}, Lcom/google/common/base/o;->m(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 15
    invoke-static {p0}, Lio/grpc/internal/e2;->r(Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v3, v13, v7

    if-ltz v3, :cond_4

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v3, 0x1

    :goto_5
    const-string v7, "perAttemptRecvTimeout cannot be negative: %s"

    .line 17
    invoke-static {v3, v7, v0}, Lcom/google/common/base/o;->m(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 18
    invoke-static {p0}, Lio/grpc/internal/e2;->t(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v13

    if-nez v0, :cond_7

    .line 19
    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_6
    const-string v2, "retryableStatusCodes cannot be empty without perAttemptRecvTimeout"

    .line 20
    invoke-static {v1, v2}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 21
    new-instance v1, Lio/grpc/internal/a2;

    move-object v3, v1

    move-wide v7, v9

    move-wide v9, v11

    move-object v11, v0

    move-object v12, v13

    invoke-direct/range {v3 .. v12}, Lio/grpc/internal/a2;-><init>(IJJDLjava/lang/Long;Ljava/util/Set;)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lio/grpc/internal/j1$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lio/grpc/internal/j1$b;

    .line 3
    iget-object v0, p0, Lio/grpc/internal/j1$b;->a:Ljava/lang/Long;

    iget-object v2, p1, Lio/grpc/internal/j1$b;->a:Ljava/lang/Long;

    invoke-static {v0, v2}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/j1$b;->b:Ljava/lang/Boolean;

    iget-object v2, p1, Lio/grpc/internal/j1$b;->b:Ljava/lang/Boolean;

    .line 4
    invoke-static {v0, v2}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/j1$b;->c:Ljava/lang/Integer;

    iget-object v2, p1, Lio/grpc/internal/j1$b;->c:Ljava/lang/Integer;

    .line 5
    invoke-static {v0, v2}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/j1$b;->d:Ljava/lang/Integer;

    iget-object v2, p1, Lio/grpc/internal/j1$b;->d:Ljava/lang/Integer;

    .line 6
    invoke-static {v0, v2}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/j1$b;->e:Lio/grpc/internal/a2;

    iget-object v2, p1, Lio/grpc/internal/j1$b;->e:Lio/grpc/internal/a2;

    .line 7
    invoke-static {v0, v2}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/j1$b;->f:Lio/grpc/internal/t0;

    iget-object p1, p1, Lio/grpc/internal/j1$b;->f:Lio/grpc/internal/t0;

    .line 8
    invoke-static {v0, p1}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lio/grpc/internal/j1$b;->a:Ljava/lang/Long;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/internal/j1$b;->b:Ljava/lang/Boolean;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/internal/j1$b;->c:Ljava/lang/Integer;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/internal/j1$b;->d:Ljava/lang/Integer;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/internal/j1$b;->e:Lio/grpc/internal/a2;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/internal/j1$b;->f:Lio/grpc/internal/t0;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/l;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/j1$b;->a:Ljava/lang/Long;

    const-string v2, "timeoutNanos"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/j1$b;->b:Ljava/lang/Boolean;

    const-string v2, "waitForReady"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/j1$b;->c:Ljava/lang/Integer;

    const-string v2, "maxInboundMessageSize"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/j1$b;->d:Ljava/lang/Integer;

    const-string v2, "maxOutboundMessageSize"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/j1$b;->e:Lio/grpc/internal/a2;

    const-string v2, "retryPolicy"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/j1$b;->f:Lio/grpc/internal/t0;

    const-string v2, "hedgingPolicy"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
