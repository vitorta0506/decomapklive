.class final Leh/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leh/l1;
.implements Leh/l1$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/k1$d;,
        Leh/k1$c;
    }
.end annotation


# static fields
.field static final c:Leh/k1;

.field static final d:Lio/grpc/s0$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/s0$i<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final e:Lio/grpc/s0$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/s0$i<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final f:Lio/grpc/s0$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/s0$i<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final g:Lio/grpc/s0$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/s0$i<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final h:Lio/grpc/s0$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/s0$i<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Leh/j2;

.field private final b:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Leh/k1;

    sget-object v1, Leh/j2$a;->a:Leh/j2;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    invoke-direct {v0, v1, v2}, Leh/k1;-><init>(Leh/j2;Ljava/util/concurrent/atomic/AtomicLong;)V

    sput-object v0, Leh/k1;->c:Leh/k1;

    .line 2
    sget-object v0, Lio/grpc/s0;->e:Lio/grpc/s0$d;

    const-string v1, "x-envoy-fault-delay-request"

    .line 3
    invoke-static {v1, v0}, Lio/grpc/s0$i;->e(Ljava/lang/String;Lio/grpc/s0$d;)Lio/grpc/s0$i;

    move-result-object v1

    sput-object v1, Leh/k1;->d:Lio/grpc/s0$i;

    const-string v1, "x-envoy-fault-delay-request-percentage"

    .line 4
    invoke-static {v1, v0}, Lio/grpc/s0$i;->e(Ljava/lang/String;Lio/grpc/s0$d;)Lio/grpc/s0$i;

    move-result-object v1

    sput-object v1, Leh/k1;->e:Lio/grpc/s0$i;

    const-string v1, "x-envoy-fault-abort-request"

    .line 5
    invoke-static {v1, v0}, Lio/grpc/s0$i;->e(Ljava/lang/String;Lio/grpc/s0$d;)Lio/grpc/s0$i;

    move-result-object v1

    sput-object v1, Leh/k1;->f:Lio/grpc/s0$i;

    const-string v1, "x-envoy-fault-abort-grpc-request"

    .line 6
    invoke-static {v1, v0}, Lio/grpc/s0$i;->e(Ljava/lang/String;Lio/grpc/s0$d;)Lio/grpc/s0$i;

    move-result-object v1

    sput-object v1, Leh/k1;->g:Lio/grpc/s0$i;

    const-string v1, "x-envoy-fault-abort-request-percentage"

    .line 7
    invoke-static {v1, v0}, Lio/grpc/s0$i;->e(Ljava/lang/String;Lio/grpc/s0$d;)Lio/grpc/s0$i;

    move-result-object v0

    sput-object v0, Leh/k1;->h:Lio/grpc/s0$i;

    return-void
.end method

.method constructor <init>(Leh/j2;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Leh/k1;->a:Leh/j2;

    .line 3
    iput-object p2, p0, Leh/k1;->b:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method static synthetic e(Leh/k1;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    iget-object p0, p0, Leh/k1;->b:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method private f(Leh/j1$a;Lio/grpc/s0;)Lio/grpc/Status;
    .locals 4

    .line 1
    invoke-virtual {p1}, Leh/j1$a;->e()Leh/j1$c;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Leh/j1$a;->d()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 3
    :try_start_0
    sget-object p1, Leh/k1;->g:Lio/grpc/s0$i;

    invoke-virtual {p2, p1}, Lio/grpc/s0;->k(Lio/grpc/s0$i;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 5
    invoke-static {p1}, Lio/grpc/Status;->i(I)Lio/grpc/Status;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    .line 6
    :goto_0
    sget-object v1, Leh/k1;->f:Lio/grpc/s0$i;

    invoke-virtual {p2, v1}, Lio/grpc/s0;->k(Lio/grpc/s0$i;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 8
    invoke-static {p1}, Lio/grpc/internal/GrpcUtil;->n(I)Lio/grpc/Status;

    move-result-object p1

    .line 9
    :cond_1
    sget-object v1, Leh/k1;->h:Lio/grpc/s0$i;

    invoke-virtual {p2, v1}, Lio/grpc/s0;->k(Lio/grpc/s0$i;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 10
    invoke-virtual {p2, v1}, Lio/grpc/s0;->k(Lio/grpc/s0$i;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_3

    .line 11
    invoke-virtual {v0}, Leh/j1$c;->c()I

    move-result v1

    if-ge p2, v1, :cond_3

    .line 12
    invoke-virtual {v0}, Leh/j1$c;->b()Leh/j1$c$a;

    move-result-object v0

    .line 13
    invoke-static {p2, v0}, Leh/j1$c;->a(ILeh/j1$c$a;)Leh/j1$c;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p2

    goto :goto_1

    :catch_0
    return-object v2

    .line 14
    :cond_2
    invoke-virtual {p1}, Leh/j1$a;->f()Lio/grpc/Status;

    move-result-object p1

    .line 15
    :cond_3
    :goto_1
    iget-object p2, p0, Leh/k1;->a:Leh/j2;

    const v1, 0xf4240

    invoke-interface {p2, v1}, Leh/j2;->b(I)I

    move-result p2

    invoke-static {v0}, Leh/k1;->i(Leh/j1$c;)I

    move-result v0

    if-lt p2, v0, :cond_4

    return-object v2

    :cond_4
    return-object p1
.end method

.method private g(Leh/j1$b;Lio/grpc/s0;)Ljava/lang/Long;
    .locals 5

    .line 1
    invoke-virtual {p1}, Leh/j1$b;->f()Leh/j1$c;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Leh/j1$b;->e()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    sget-object p1, Leh/k1;->d:Lio/grpc/s0$i;

    invoke-virtual {p2, p1}, Lio/grpc/s0;->k(Lio/grpc/s0$i;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 4
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v3, p1

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 5
    sget-object v1, Leh/k1;->e:Lio/grpc/s0$i;

    invoke-virtual {p2, v1}, Lio/grpc/s0;->k(Lio/grpc/s0$i;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_1

    .line 7
    invoke-virtual {v0}, Leh/j1$c;->c()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 8
    invoke-virtual {v0}, Leh/j1$c;->b()Leh/j1$c$a;

    move-result-object v0

    .line 9
    invoke-static {p2, v0}, Leh/j1$c;->a(ILeh/j1$c$a;)Leh/j1$c;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p2

    goto :goto_0

    :catch_0
    return-object v2

    .line 10
    :cond_0
    invoke-virtual {p1}, Leh/j1$b;->b()Ljava/lang/Long;

    move-result-object p1

    .line 11
    :cond_1
    :goto_0
    iget-object p2, p0, Leh/k1;->a:Leh/j2;

    const v1, 0xf4240

    invoke-interface {p2, v1}, Leh/j2;->b(I)I

    move-result p2

    invoke-static {v0}, Leh/k1;->i(Leh/j1$c;)I

    move-result v0

    if-lt p2, v0, :cond_2

    return-object v2

    :cond_2
    return-object p1
.end method

.method private static h(Lio/grpc/Status;)Lio/grpc/Status;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "RPC terminated due to fault injection"

    .line 1
    invoke-virtual {p0}, Lio/grpc/Status;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/grpc/Status;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static i(Leh/j1$c;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Leh/j1$c;->c()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Leh/j1$c;->b()Leh/j1$c$a;

    move-result-object p0

    .line 3
    sget-object v1, Leh/k1$a;->c:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit16 v0, v0, 0x2710

    goto :goto_0

    :cond_1
    mul-int/lit8 v0, v0, 0x64

    :goto_0
    const p0, 0xf4240

    if-gt v0, p0, :cond_2

    if-gez v0, :cond_3

    :cond_2
    const v0, 0xf4240

    :cond_3
    return v0
.end method

.method static j(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;)Leh/w0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;",
            ")",
            "Leh/w0<",
            "Leh/j1$a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;->getPercentage()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent;

    move-result-object v0

    invoke-static {v0}, Leh/k1;->m(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent;)Leh/j1$c;

    move-result-object v0

    .line 2
    sget-object v1, Leh/k1$a;->a:[I

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;->getErrorTypeCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort$ErrorTypeCase;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown error type case: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;->getErrorTypeCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort$ErrorTypeCase;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0}, Leh/w0;->b(Ljava/lang/String;)Leh/w0;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;->getGrpcStatus()I

    move-result p0

    invoke-static {p0}, Lio/grpc/Status;->i(I)Lio/grpc/Status;

    move-result-object p0

    .line 7
    invoke-static {p0, v0}, Leh/j1$a;->c(Lio/grpc/Status;Leh/j1$c;)Leh/j1$a;

    move-result-object p0

    invoke-static {p0}, Leh/w0;->a(Ljava/lang/Object;)Leh/w0;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;->getHttpStatus()I

    move-result p0

    invoke-static {p0}, Lio/grpc/internal/GrpcUtil;->n(I)Lio/grpc/Status;

    move-result-object p0

    .line 9
    invoke-static {p0, v0}, Leh/j1$a;->c(Lio/grpc/Status;Leh/j1$c;)Leh/j1$a;

    move-result-object p0

    invoke-static {p0}, Leh/w0;->a(Ljava/lang/Object;)Leh/w0;

    move-result-object p0

    return-object p0

    .line 10
    :cond_2
    invoke-static {v0}, Leh/j1$a;->b(Leh/j1$c;)Leh/j1$a;

    move-result-object p0

    invoke-static {p0}, Leh/w0;->a(Ljava/lang/Object;)Leh/w0;

    move-result-object p0

    return-object p0
.end method

.method private static k(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;)Leh/j1$b;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;->getPercentage()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent;

    move-result-object v0

    invoke-static {v0}, Leh/k1;->m(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent;)Leh/j1$c;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;->hasHeaderDelay()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Leh/j1$b;->d(Leh/j1$c;)Leh/j1$b;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;->getFixedDelay()Lcom/google/protobuf/Duration;

    move-result-object p0

    invoke-static {p0}, Lv6/a;->h(Lcom/google/protobuf/Duration;)J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Leh/j1$b;->c(JLeh/j1$c;)Leh/j1$b;

    move-result-object p0

    return-object p0
.end method

.method private static l(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;)Leh/w0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;",
            ")",
            "Leh/w0<",
            "Leh/j1;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->hasDelay()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getDelay()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;

    move-result-object v0

    invoke-static {v0}, Leh/k1;->k(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;)Leh/j1$b;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->hasAbort()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getAbort()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;

    move-result-object v2

    invoke-static {v2}, Leh/k1;->j(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;)Leh/w0;

    move-result-object v2

    .line 5
    iget-object v3, v2, Leh/w0;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HttpFault contains invalid FaultAbort: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Leh/w0;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leh/w0;->b(Ljava/lang/String;)Leh/w0;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    iget-object v2, v2, Leh/w0;->b:Ljava/lang/Object;

    check-cast v2, Leh/j1$a;

    goto :goto_1

    :cond_2
    move-object v2, v1

    .line 8
    :goto_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->hasMaxActiveFaults()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getMaxActiveFaults()Lcom/google/protobuf/UInt32Value;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/UInt32Value;->getValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gez p0, :cond_3

    const p0, 0x7fffffff

    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 12
    :cond_3
    invoke-static {v0, v2, v1}, Leh/j1;->b(Leh/j1$b;Leh/j1$a;Ljava/lang/Integer;)Leh/j1;

    move-result-object p0

    invoke-static {p0}, Leh/w0;->a(Ljava/lang/Object;)Leh/w0;

    move-result-object p0

    return-object p0
.end method

.method private static m(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent;)Leh/j1$c;
    .locals 3

    .line 1
    sget-object v0, Leh/k1$a;->b:[I

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent;->getDenominator()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent$DenominatorType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent;->getNumerator()I

    move-result p0

    invoke-static {p0}, Leh/j1$c;->e(I)Leh/j1$c;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown denominator type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent;->getDenominator()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent$DenominatorType;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent;->getNumerator()I

    move-result p0

    invoke-static {p0}, Leh/j1$c;->f(I)Leh/j1$c;

    move-result-object p0

    return-object p0

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent;->getNumerator()I

    move-result p0

    invoke-static {p0}, Leh/j1$c;->d(I)Leh/j1$c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/envoy.extensions.filters.http.fault.v3.HTTPFault"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Leh/l1$b;Leh/l1$b;Lio/grpc/n0$f;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/h;
    .locals 5

    const-string v0, "config"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    move-object p1, p2

    .line 2
    :cond_0
    check-cast p1, Leh/j1;

    .line 3
    invoke-virtual {p1}, Leh/j1;->e()Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p0, Leh/k1;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {p1}, Leh/j1;->e()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v3, p2

    cmp-long p2, v1, v3

    if-gez p2, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    move-object p3, p1

    goto :goto_2

    .line 5
    :cond_2
    :goto_0
    invoke-virtual {p3}, Lio/grpc/n0$f;->b()Lio/grpc/s0;

    move-result-object p2

    .line 6
    invoke-virtual {p1}, Leh/j1;->d()Leh/j1$b;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 7
    invoke-virtual {p1}, Leh/j1;->d()Leh/j1$b;

    move-result-object p3

    invoke-direct {p0, p3, p2}, Leh/k1;->g(Leh/j1$b;Lio/grpc/s0;)Ljava/lang/Long;

    move-result-object p3

    goto :goto_1

    :cond_3
    move-object p3, v0

    .line 8
    :goto_1
    invoke-virtual {p1}, Leh/j1;->c()Leh/j1$a;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {p1}, Leh/j1;->c()Leh/j1$a;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Leh/k1;->f(Leh/j1$a;Lio/grpc/s0;)Lio/grpc/Status;

    move-result-object p1

    goto :goto_2

    :cond_4
    move-object p1, v0

    :goto_2
    if-nez p3, :cond_5

    if-nez p1, :cond_5

    return-object v0

    .line 10
    :cond_5
    invoke-static {p1}, Leh/k1;->h(Lio/grpc/Status;)Lio/grpc/Status;

    move-result-object p1

    .line 11
    new-instance p2, Leh/k1$b;

    invoke-direct {p2, p0, p3, p1, p4}, Leh/k1$b;-><init>(Leh/k1;Ljava/lang/Long;Lio/grpc/Status;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object p2
.end method

.method public c(Lcom/google/protobuf/l1;)Leh/w0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/l1;",
            ")",
            "Leh/w0<",
            "Leh/j1;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Leh/k1;->d(Lcom/google/protobuf/l1;)Leh/w0;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/google/protobuf/l1;)Leh/w0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/l1;",
            ")",
            "Leh/w0<",
            "Leh/j1;",
            ">;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/Any;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid config type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Leh/w0;->b(Ljava/lang/String;)Leh/w0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    check-cast p1, Lcom/google/protobuf/Any;

    .line 4
    :try_start_0
    const-class v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/Any;->unpack(Ljava/lang/Class;)Lcom/google/protobuf/l1;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-static {p1}, Leh/k1;->l(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;)Leh/w0;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid proto: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Leh/w0;->b(Ljava/lang/String;)Leh/w0;

    move-result-object p1

    return-object p1
.end method
