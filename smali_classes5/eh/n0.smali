.class final Leh/n0;
.super Leh/p2;
.source "SourceFile"

# interfaces
.implements Leh/p2$n;
.implements Leh/p2$k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/n0$r;,
        Leh/n0$q;,
        Leh/n0$o;,
        Leh/n0$p;,
        Leh/n0$n;
    }
.end annotation


# static fields
.field private static final A:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/grpc/Status$Code;",
            ">;"
        }
    .end annotation
.end field

.field static v:Z

.field static w:Z

.field static x:Z

.field static y:Z

.field static z:Z


# instance fields
.field private final a:Lio/grpc/d1;

.field private final b:Leh/m1;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Leh/j0$d;",
            "Leh/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/n0$p;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/n0$p;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/n0$p;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/n0$p;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Leh/s1;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Leh/j0$d;",
            "Leh/r1;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Leh/n0$r;

.field private final k:Leh/j0$b;

.field private final l:Lio/grpc/r;

.field private final m:Ljava/util/concurrent/ScheduledExecutorService;

.field private final n:Lio/grpc/internal/k$a;

.field private final o:Lcom/google/common/base/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/w<",
            "Lcom/google/common/base/u;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lio/grpc/internal/m2;

.field private q:Z

.field private final r:Leh/k2;

.field private final s:Lio/grpc/g0;

.field private final t:Leh/q2;

.field private volatile u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "GRPC_XDS_EXPERIMENTAL_FAULT_INJECTION"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/v;->b(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 2
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Leh/n0;->v:Z

    const-string v0, "GRPC_XDS_EXPERIMENTAL_ENABLE_RETRY"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/v;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    sput-boolean v0, Leh/n0;->w:Z

    const-string v0, "GRPC_XDS_EXPERIMENTAL_RBAC"

    .line 5
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/v;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 6
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v0, 0x1

    :goto_5
    sput-boolean v0, Leh/n0;->x:Z

    const-string v0, "GRPC_EXPERIMENTAL_XDS_RLS_LB"

    .line 7
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/v;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 8
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    :cond_6
    sput-boolean v2, Leh/n0;->y:Z

    const-string v0, "GRPC_EXPERIMENTAL_ENABLE_LEAST_REQUEST"

    .line 9
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/v;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 10
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_6

    :cond_7
    const-string v0, "io.grpc.xds.experimentalEnableLeastRequest"

    .line 11
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_6
    sput-boolean v0, Leh/n0;->z:Z

    .line 12
    sget-object v0, Lio/grpc/Status$Code;->CANCELLED:Lio/grpc/Status$Code;

    sget-object v1, Lio/grpc/Status$Code;->DEADLINE_EXCEEDED:Lio/grpc/Status$Code;

    sget-object v2, Lio/grpc/Status$Code;->INTERNAL:Lio/grpc/Status$Code;

    sget-object v3, Lio/grpc/Status$Code;->RESOURCE_EXHAUSTED:Lio/grpc/Status$Code;

    sget-object v4, Lio/grpc/Status$Code;->UNAVAILABLE:Lio/grpc/Status$Code;

    .line 13
    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Leh/n0;->A:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Leh/n0$r;Leh/j0$b;Lio/grpc/r;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/internal/k$a;Lcom/google/common/base/w;Lio/grpc/internal/m2;Leh/k2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leh/n0$r;",
            "Leh/j0$b;",
            "Lio/grpc/r;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lio/grpc/internal/k$a;",
            "Lcom/google/common/base/w<",
            "Lcom/google/common/base/u;",
            ">;",
            "Lio/grpc/internal/m2;",
            "Leh/k2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Leh/p2;-><init>()V

    .line 2
    new-instance v0, Lio/grpc/d1;

    new-instance v1, Leh/n0$f;

    invoke-direct {v1, p0}, Leh/n0$f;-><init>(Leh/n0;)V

    invoke-direct {v0, v1}, Lio/grpc/d1;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v0, p0, Leh/n0;->a:Lio/grpc/d1;

    .line 3
    invoke-static {}, Leh/m1;->b()Leh/m1;

    move-result-object v0

    iput-object v0, p0, Leh/n0;->b:Leh/m1;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Leh/n0;->c:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Leh/n0;->d:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Leh/n0;->e:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Leh/n0;->f:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Leh/n0;->g:Ljava/util/Map;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Leh/n0;->i:Ljava/util/Map;

    .line 10
    iput-object p1, p0, Leh/n0;->j:Leh/n0$r;

    .line 11
    iput-object p2, p0, Leh/n0;->k:Leh/j0$b;

    .line 12
    iput-object p3, p0, Leh/n0;->l:Lio/grpc/r;

    .line 13
    iput-object p4, p0, Leh/n0;->m:Ljava/util/concurrent/ScheduledExecutorService;

    .line 14
    new-instance p1, Leh/s1;

    invoke-direct {p1, p6}, Leh/s1;-><init>(Lcom/google/common/base/w;)V

    iput-object p1, p0, Leh/n0;->h:Leh/s1;

    .line 15
    iput-object p5, p0, Leh/n0;->n:Lio/grpc/internal/k$a;

    .line 16
    iput-object p6, p0, Leh/n0;->o:Lcom/google/common/base/w;

    .line 17
    iput-object p7, p0, Leh/n0;->p:Lio/grpc/internal/m2;

    const-string p1, "tlsContextManager"

    .line 18
    invoke-static {p8, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/k2;

    iput-object p1, p0, Leh/n0;->r:Leh/k2;

    const-string p1, "xds-client"

    const/4 p2, 0x0

    .line 19
    invoke-static {p1, p2}, Lio/grpc/g0;->b(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/g0;

    move-result-object p1

    iput-object p1, p0, Leh/n0;->s:Lio/grpc/g0;

    .line 20
    invoke-static {p1}, Leh/q2;->f(Lio/grpc/g0;)Leh/q2;

    move-result-object p1

    iput-object p1, p0, Leh/n0;->t:Leh/q2;

    .line 21
    sget-object p2, Leh/q2$b;->b:Leh/q2$b;

    const-string p3, "Created"

    invoke-virtual {p1, p2, p3}, Leh/q2;->b(Leh/q2$b;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic A(Leh/n0;Z)Z
    .locals 0

    iput-boolean p1, p0, Leh/n0;->q:Z

    return p1
.end method

.method static A0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;Ljava/util/Set;Ljava/util/Set;Leh/j0$d;)Leh/p2$c;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Leh/j0$d;",
            ")",
            "Leh/p2$c;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leh/n0$o;
        }
    .end annotation

    .line 1
    sget-object v0, Leh/n0$e;->i:[I

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;->getClusterDiscoveryTypeCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$ClusterDiscoveryTypeCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    const-string v3, "Cluster "

    const/4 v4, 0x0

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    .line 2
    invoke-static {p0}, Leh/n0;->d0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;)Leh/n0$q;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Leh/n0$o;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": unspecified cluster discovery type"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v4}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p1

    .line 5
    :cond_1
    invoke-static {p0, p1, p2, p3}, Leh/n0;->q0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;Ljava/util/Set;Ljava/util/Set;Leh/j0$d;)Leh/n0$q;

    move-result-object p1

    .line 6
    :goto_0
    invoke-virtual {p1}, Leh/n0$q;->g()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_a

    .line 7
    invoke-virtual {p1}, Leh/n0$q;->h()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/p2$c$a;

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;->getLbPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbPolicy;

    move-result-object p2

    sget-object p3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbPolicy;->RING_HASH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbPolicy;

    if-ne p2, p3, :cond_5

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;->getRingHashLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->hasMinimumRingSize()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 11
    invoke-virtual {p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->getMinimumRingSize()Lcom/google/protobuf/UInt64Value;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/protobuf/UInt64Value;->getValue()J

    move-result-wide v0

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x400

    .line 12
    :goto_1
    invoke-virtual {p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->hasMaximumRingSize()Z

    move-result p3

    const-wide/32 v5, 0x800000

    if-eqz p3, :cond_3

    .line 13
    invoke-virtual {p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->getMaximumRingSize()Lcom/google/protobuf/UInt64Value;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/protobuf/UInt64Value;->getValue()J

    move-result-wide v7

    goto :goto_2

    :cond_3
    move-wide v7, v5

    .line 14
    :goto_2
    invoke-virtual {p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig;->getHashFunction()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$HashFunction;

    move-result-object p3

    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$HashFunction;->XX_HASH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$RingHashLbConfig$HashFunction;

    if-ne p3, v2, :cond_4

    cmp-long p3, v0, v7

    if-gtz p3, :cond_4

    cmp-long p3, v7, v5

    if-gtz p3, :cond_4

    .line 15
    invoke-virtual {p1, v0, v1, v7, v8}, Leh/p2$c$a;->m(JJ)Leh/p2$c$a;

    goto :goto_4

    .line 16
    :cond_4
    new-instance p1, Leh/n0$o;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": invalid ring_hash_lb_config: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v4}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p1

    .line 18
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;->getLbPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbPolicy;

    move-result-object p2

    sget-object p3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbPolicy;->ROUND_ROBIN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbPolicy;

    if-ne p2, p3, :cond_6

    .line 19
    invoke-virtual {p1}, Leh/p2$c$a;->n()Leh/p2$c$a;

    goto :goto_4

    .line 20
    :cond_6
    sget-boolean p2, Leh/n0;->z:Z

    if-eqz p2, :cond_9

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;->getLbPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbPolicy;

    move-result-object p2

    sget-object p3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbPolicy;->LEAST_REQUEST:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbPolicy;

    if-ne p2, p3, :cond_9

    .line 21
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;->getLeastRequestLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LeastRequestLbConfig;

    move-result-object p2

    .line 22
    invoke-virtual {p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LeastRequestLbConfig;->hasChoiceCount()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 23
    invoke-virtual {p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LeastRequestLbConfig;->getChoiceCount()Lcom/google/protobuf/UInt32Value;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/protobuf/UInt32Value;->getValue()I

    move-result p3

    goto :goto_3

    :cond_7
    const/4 p3, 0x2

    :goto_3
    if-lt p3, v2, :cond_8

    .line 24
    invoke-virtual {p1, p3}, Leh/p2$c$a;->g(I)Leh/p2$c$a;

    .line 25
    :goto_4
    invoke-virtual {p1}, Leh/p2$c$a;->a()Leh/p2$c;

    move-result-object p0

    return-object p0

    .line 26
    :cond_8
    new-instance p1, Leh/n0$o;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": invalid least_request_lb_config: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v4}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p1

    .line 28
    :cond_9
    new-instance p1, Leh/n0$o;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": unsupported lb policy: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;->getLbPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$LbPolicy;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v4}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p1

    .line 30
    :cond_a
    new-instance p0, Leh/n0$o;

    invoke-virtual {p1}, Leh/n0$q;->g()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0
.end method

.method static synthetic B(Leh/n0;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Leh/n0;->i:Ljava/util/Map;

    return-object p0
.end method

.method private static B0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterLoadAssignment;)Leh/p2$e;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leh/n0$o;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterLoadAssignment;->getEndpointsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, -0x1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    .line 5
    invoke-static {v5}, Leh/n0;->p0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;)Leh/n0$q;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v7}, Leh/n0$q;->g()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    .line 7
    invoke-virtual {v7}, Leh/n0$q;->h()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Leh/z0;

    .line 8
    invoke-virtual {v6}, Leh/z0;->d()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 9
    invoke-virtual {v6}, Leh/z0;->d()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLocality()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;

    move-result-object v5

    invoke-static {v5}, Leh/n0;->o0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;)Leh/t1;

    move-result-object v5

    .line 11
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_1
    new-instance p0, Leh/n0$o;

    invoke-virtual {v7}, Leh/n0$q;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    .line 13
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    add-int/lit8 v4, v4, 0x1

    if-ne v0, v4, :cond_4

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterLoadAssignment;->getPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterLoadAssignment$Policy;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterLoadAssignment$Policy;->getDropOverloadsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterLoadAssignment$Policy$DropOverload;

    .line 15
    invoke-static {v3}, Leh/n0;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterLoadAssignment$Policy$DropOverload;)Leh/x0;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_3
    new-instance v0, Leh/p2$e;

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterLoadAssignment;->getClusterName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v1, v2}, Leh/p2$e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    return-object v0

    .line 17
    :cond_4
    new-instance p0, Leh/n0$o;

    const-string v0, "ClusterLoadAssignment has sparse priorities"

    invoke-direct {p0, v0, v6}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0
.end method

.method static synthetic C(Leh/n0;)V
    .locals 0

    invoke-direct {p0}, Leh/n0;->O()V

    return-void
.end method

.method private static C0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;Leh/m1;Z)Leh/p2$i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leh/n0$o;
        }
    .end annotation

    new-instance v0, Leh/p2$i;

    invoke-static {p0, p1, p2}, Leh/n0;->U(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;Leh/m1;Z)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Leh/p2$i;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static synthetic D(Leh/n0;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Leh/n0;->d:Ljava/util/Map;

    return-object p0
.end method

.method private D0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Listener;Ljava/util/Set;Z)Leh/p2$g;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Listener;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)",
            "Leh/p2$g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leh/n0$o;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Leh/n0;->o()Leh/j0$b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Leh/n0;->o()Leh/j0$b;

    move-result-object v0

    invoke-virtual {v0}, Leh/j0$b;->c()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Leh/n0;->o()Leh/j0$b;

    move-result-object v0

    invoke-virtual {v0}, Leh/j0$b;->c()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    .line 3
    iget-object v3, p0, Leh/n0;->r:Leh/k2;

    iget-object v4, p0, Leh/n0;->b:Leh/m1;

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Leh/n0;->x0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Listener;Ljava/util/Set;Leh/k2;Leh/m1;Ljava/util/Set;Z)Leh/h1;

    move-result-object p1

    invoke-static {p1}, Leh/p2$g;->b(Leh/h1;)Leh/p2$g;

    move-result-object p1

    return-object p1
.end method

.method static synthetic E(Leh/n0;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Leh/n0;->e:Ljava/util/Map;

    return-object p0
.end method

.method private static E0(Lcom/google/protobuf/Any;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/protobuf/l1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/l1;",
            ">(",
            "Lcom/google/protobuf/Any;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Any;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/Any;->toBuilder()Lcom/google/protobuf/Any$b;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/protobuf/Any$b;->j0(Ljava/lang/String;)Lcom/google/protobuf/Any$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/Any$b;->X()Lcom/google/protobuf/Any;

    move-result-object p0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Any;->unpack(Ljava/lang/Class;)Lcom/google/protobuf/l1;

    move-result-object p0

    return-object p0
.end method

.method static synthetic F(Leh/n0;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Leh/n0;->f:Ljava/util/Map;

    return-object p0
.end method

.method static F0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;Ljava/util/Set;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leh/n0$o;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->hasCustomHandshaker()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->hasTlsParams()Z

    move-result v0

    if-nez v0, :cond_16

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->hasValidationContextSdsSecretConfig()Z

    move-result v0

    if-nez v0, :cond_15

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->hasValidationContextCertificateProvider()Z

    move-result v0

    if-nez v0, :cond_14

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->hasValidationContextCertificateProviderInstance()Z

    move-result v0

    if-nez v0, :cond_13

    .line 6
    invoke-static {p0}, Leh/n0;->W(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\' not defined in the bootstrap file."

    if-nez v0, :cond_4

    if-nez p2, :cond_3

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsCertificatesCount()I

    move-result v0

    const-string v3, "tls_certificate_provider_instance is unset"

    if-gtz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsCertificateSdsSecretConfigsCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->hasTlsCertificateCertificateProvider()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Leh/n0$o;

    invoke-direct {p0, v3, v1}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    .line 11
    :cond_1
    new-instance p0, Leh/n0$o;

    invoke-direct {p0, v3, v1}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    .line 12
    :cond_2
    new-instance p0, Leh/n0$o;

    invoke-direct {p0, v3, v1}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    .line 13
    :cond_3
    new-instance p0, Leh/n0$o;

    const-string p1, "tls_certificate_provider_instance is required in downstream-tls-context"

    invoke-direct {p0, p1, v1}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    :cond_4
    if-eqz p1, :cond_12

    .line 14
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 15
    :goto_0
    invoke-static {p0}, Leh/n0;->Y(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    if-eqz p2, :cond_5

    goto/16 :goto_3

    .line 16
    :cond_5
    new-instance p0, Leh/n0$o;

    const-string p1, "ca_certificate_provider_instance is required in upstream-tls-context"

    invoke-direct {p0, p1, v1}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    :cond_6
    if-eqz p1, :cond_11

    .line 17
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->hasValidationContext()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getValidationContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    move-result-object p0

    goto :goto_1

    .line 20
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->hasCombinedValidationContext()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 21
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getCombinedValidationContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->hasDefaultValidationContext()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getCombinedValidationContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getDefaultValidationContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    move-result-object p0

    goto :goto_1

    :cond_8
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_10

    .line 24
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;->getMatchSubjectAltNamesCount()I

    move-result p1

    if-lez p1, :cond_a

    if-nez p2, :cond_9

    goto :goto_2

    .line 25
    :cond_9
    new-instance p0, Leh/n0$o;

    const-string p1, "match_subject_alt_names only allowed in upstream_tls_context"

    invoke-direct {p0, p1, v1}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    .line 26
    :cond_a
    :goto_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;->getVerifyCertificateSpkiCount()I

    move-result p1

    if-gtz p1, :cond_f

    .line 27
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;->getVerifyCertificateHashCount()I

    move-result p1

    if-gtz p1, :cond_e

    .line 28
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;->hasRequireSignedCertificateTimestamp()Z

    move-result p1

    if-nez p1, :cond_d

    .line 29
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;->hasCrl()Z

    move-result p1

    if-nez p1, :cond_c

    .line 30
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;->hasCustomValidatorConfig()Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_3

    .line 31
    :cond_b
    new-instance p0, Leh/n0$o;

    const-string p1, "custom_validator_config in default_validation_context is not supported"

    invoke-direct {p0, p1, v1}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    .line 32
    :cond_c
    new-instance p0, Leh/n0$o;

    const-string p1, "crl in default_validation_context is not supported"

    invoke-direct {p0, p1, v1}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    .line 33
    :cond_d
    new-instance p0, Leh/n0$o;

    const-string p1, "require_signed_certificate_timestamp in default_validation_context is not supported"

    invoke-direct {p0, p1, v1}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    .line 34
    :cond_e
    new-instance p0, Leh/n0$o;

    const-string p1, "verify_certificate_hash in default_validation_context is not supported"

    invoke-direct {p0, p1, v1}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    .line 35
    :cond_f
    new-instance p0, Leh/n0$o;

    const-string p1, "verify_certificate_spki in default_validation_context is not supported"

    invoke-direct {p0, p1, v1}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    :cond_10
    :goto_3
    return-void

    .line 36
    :cond_11
    new-instance p0, Leh/n0$o;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ca_certificate_provider_instance name \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    .line 37
    :cond_12
    new-instance p0, Leh/n0$o;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CertificateProvider instance name \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    .line 38
    :cond_13
    new-instance p0, Leh/n0$o;

    const-string p1, "common-tls-context with validation_context_certificate_provider_instance is not supported"

    invoke-direct {p0, p1, v1}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    .line 39
    :cond_14
    new-instance p0, Leh/n0$o;

    const-string p1, "common-tls-context with validation_context_certificate_provider is not supported"

    invoke-direct {p0, p1, v1}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    .line 40
    :cond_15
    new-instance p0, Leh/n0$o;

    const-string p1, "common-tls-context with validation_context_sds_secret_config is not supported"

    invoke-direct {p0, p1, v1}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    .line 41
    :cond_16
    new-instance p0, Leh/n0$o;

    const-string p1, "common-tls-context with tls_params is not supported"

    invoke-direct {p0, p1, v1}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    .line 42
    :cond_17
    new-instance p0, Leh/n0$o;

    const-string p1, "common-tls-context with custom_handshaker is not supported"

    invoke-direct {p0, p1, v1}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0
.end method

.method static synthetic G(Leh/n0;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Leh/n0;->g:Ljava/util/Map;

    return-object p0
.end method

.method static G0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/DownstreamTlsContext;Ljava/util/Set;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/DownstreamTlsContext;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/DownstreamTlsContext;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/DownstreamTlsContext;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leh/n0$o;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/DownstreamTlsContext;->hasCommonTlsContext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/DownstreamTlsContext;->getCommonTlsContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2}, Leh/n0;->F0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;Ljava/util/Set;Z)V

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/DownstreamTlsContext;->hasRequireSni()Z

    move-result p1

    if-nez p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/DownstreamTlsContext;->getOcspStaplePolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/DownstreamTlsContext$OcspStaplePolicy;

    move-result-object p1

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/DownstreamTlsContext$OcspStaplePolicy;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/DownstreamTlsContext$OcspStaplePolicy;

    if-eq p1, v0, :cond_1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/DownstreamTlsContext$OcspStaplePolicy;->LENIENT_STAPLING:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/DownstreamTlsContext$OcspStaplePolicy;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Leh/n0$o;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downstream-tls-context with ocsp_staple_policy value "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not supported"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    :cond_1
    :goto_0
    return-object p0

    .line 8
    :cond_2
    new-instance p0, Leh/n0$o;

    const-string p1, "downstream-tls-context with require-sni is not supported"

    invoke-direct {p0, p1, v1}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    .line 9
    :cond_3
    new-instance p0, Leh/n0$o;

    const-string p1, "common-tls-context is required in downstream-tls-context"

    invoke-direct {p0, p1, v1}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0
.end method

.method static synthetic H(Leh/n0;)Lio/grpc/d1;
    .locals 0

    iget-object p0, p0, Leh/n0;->a:Lio/grpc/d1;

    return-object p0
.end method

.method static H0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/UpstreamTlsContext;Ljava/util/Set;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/UpstreamTlsContext;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/UpstreamTlsContext;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/UpstreamTlsContext;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leh/n0$o;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/UpstreamTlsContext;->hasCommonTlsContext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/UpstreamTlsContext;->getCommonTlsContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Leh/n0;->F0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;Ljava/util/Set;Z)V

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Leh/n0$o;

    const/4 p1, 0x0

    const-string v0, "common-tls-context is required in upstream-tls-context"

    invoke-direct {p0, v0, p1}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0
.end method

.method static synthetic I(Leh/n0;Leh/j0$d;)V
    .locals 0

    invoke-direct {p0, p1}, Leh/n0;->c0(Leh/j0$d;)V

    return-void
.end method

.method static synthetic J(Leh/n0;)Leh/j0$b;
    .locals 0

    iget-object p0, p0, Leh/n0;->k:Leh/j0$b;

    return-object p0
.end method

.method static synthetic K(Leh/n0;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Leh/n0;->m:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic L(Leh/n0;)Z
    .locals 0

    iget-boolean p0, p0, Leh/n0;->u:Z

    return p0
.end method

.method static synthetic M(Leh/n0;Z)Z
    .locals 0

    iput-boolean p1, p0, Leh/n0;->u:Z

    return p1
.end method

.method private static N(Ljava/util/Set;Leh/g1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Leh/g1;",
            ">;",
            "Leh/g1;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leh/n0$o;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    invoke-static {p1}, Leh/n0;->V(Leh/g1;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh/g1;

    .line 3
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Leh/n0$o;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FilterChainMatch must be unique. Found duplicate: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    :cond_1
    return-void
.end method

.method private O()V
    .locals 2

    .line 1
    iget-object v0, p0, Leh/n0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/n0$p;

    .line 2
    invoke-virtual {v1}, Leh/n0$p;->q()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Leh/n0;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/n0$p;

    .line 4
    invoke-virtual {v1}, Leh/n0$p;->q()V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Leh/n0;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/n0$p;

    .line 6
    invoke-virtual {v1}, Leh/n0$p;->q()V

    goto :goto_2

    .line 7
    :cond_2
    iget-object v0, p0, Leh/n0;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/n0$p;

    .line 8
    invoke-virtual {v1}, Leh/n0$p;->q()V

    goto :goto_3

    :cond_3
    return-void
.end method

.method private static P(Ljava/util/Collection;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Leh/g1;",
            ">;)",
            "Ljava/util/List<",
            "Leh/g1;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/g1;

    .line 3
    invoke-virtual {v1}, Leh/g1;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v1}, Leh/g1;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/e9;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    invoke-virtual {v1}, Leh/g1;->d()I

    move-result v4

    .line 7
    invoke-virtual {v1}, Leh/g1;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    .line 8
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    .line 9
    invoke-virtual {v1}, Leh/g1;->h()Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    .line 10
    invoke-virtual {v1}, Leh/g1;->b()Leh/d1;

    move-result-object v8

    .line 11
    invoke-virtual {v1}, Leh/g1;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    .line 12
    invoke-virtual {v1}, Leh/g1;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v10

    .line 13
    invoke-virtual {v1}, Leh/g1;->i()Ljava/lang/String;

    move-result-object v11

    .line 14
    invoke-static/range {v4 .. v11}, Leh/g1;->c(ILcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Leh/d1;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Ljava/lang/String;)Leh/g1;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private static Q(Leh/g1;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leh/g1;",
            ")",
            "Ljava/util/List<",
            "Leh/g1;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Leh/g1;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Leh/g1;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/e9;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leh/c1;

    .line 5
    invoke-virtual {p0}, Leh/g1;->d()I

    move-result v3

    .line 6
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 7
    invoke-virtual {p0}, Leh/g1;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    .line 8
    invoke-virtual {p0}, Leh/g1;->h()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    .line 9
    invoke-virtual {p0}, Leh/g1;->b()Leh/d1;

    move-result-object v7

    .line 10
    invoke-virtual {p0}, Leh/g1;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    .line 11
    invoke-virtual {p0}, Leh/g1;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    .line 12
    invoke-virtual {p0}, Leh/g1;->i()Ljava/lang/String;

    move-result-object v10

    .line 13
    invoke-static/range {v3 .. v10}, Leh/g1;->c(ILcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Leh/d1;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Ljava/lang/String;)Leh/g1;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static R(Ljava/util/Collection;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Leh/g1;",
            ">;)",
            "Ljava/util/List<",
            "Leh/g1;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/g1;

    .line 3
    invoke-virtual {v1}, Leh/g1;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v1}, Leh/g1;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/e9;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    invoke-virtual {v1}, Leh/g1;->d()I

    move-result v4

    .line 7
    invoke-virtual {v1}, Leh/g1;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    .line 8
    invoke-virtual {v1}, Leh/g1;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    .line 9
    invoke-virtual {v1}, Leh/g1;->h()Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    .line 10
    invoke-virtual {v1}, Leh/g1;->b()Leh/d1;

    move-result-object v8

    .line 11
    invoke-virtual {v1}, Leh/g1;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    .line 12
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v10

    .line 13
    invoke-virtual {v1}, Leh/g1;->i()Ljava/lang/String;

    move-result-object v11

    .line 14
    invoke-static/range {v4 .. v11}, Leh/g1;->c(ILcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Leh/d1;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Ljava/lang/String;)Leh/g1;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private static S(Ljava/util/Collection;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Leh/g1;",
            ">;)",
            "Ljava/util/List<",
            "Leh/g1;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/g1;

    .line 3
    invoke-virtual {v1}, Leh/g1;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v1}, Leh/g1;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/e9;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 6
    invoke-virtual {v1}, Leh/g1;->d()I

    move-result v4

    .line 7
    invoke-virtual {v1}, Leh/g1;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    .line 8
    invoke-virtual {v1}, Leh/g1;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    .line 9
    invoke-virtual {v1}, Leh/g1;->h()Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    .line 10
    invoke-virtual {v1}, Leh/g1;->b()Leh/d1;

    move-result-object v8

    .line 11
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    .line 12
    invoke-virtual {v1}, Leh/g1;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v10

    .line 13
    invoke-virtual {v1}, Leh/g1;->i()Ljava/lang/String;

    move-result-object v11

    .line 14
    invoke-static/range {v4 .. v11}, Leh/g1;->c(ILcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Leh/d1;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Ljava/lang/String;)Leh/g1;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private static T(Ljava/util/Collection;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Leh/g1;",
            ">;)",
            "Ljava/util/List<",
            "Leh/g1;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/g1;

    .line 3
    invoke-virtual {v1}, Leh/g1;->h()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v1}, Leh/g1;->h()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/e9;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leh/c1;

    .line 6
    invoke-virtual {v1}, Leh/g1;->d()I

    move-result v4

    .line 7
    invoke-virtual {v1}, Leh/g1;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    .line 8
    invoke-virtual {v1}, Leh/g1;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    .line 9
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    .line 10
    invoke-virtual {v1}, Leh/g1;->b()Leh/d1;

    move-result-object v8

    .line 11
    invoke-virtual {v1}, Leh/g1;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    .line 12
    invoke-virtual {v1}, Leh/g1;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v10

    .line 13
    invoke-virtual {v1}, Leh/g1;->i()Ljava/lang/String;

    move-result-object v11

    .line 14
    invoke-static/range {v4 .. v11}, Leh/g1;->c(ILcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Leh/d1;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Ljava/lang/String;)Leh/g1;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private static U(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;Leh/m1;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;",
            "Leh/m1;",
            "Z)",
            "Ljava/util/List<",
            "Leh/l2;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leh/n0$o;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-boolean v1, Leh/n0;->y:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getClusterSpecifierPluginsList()Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/ClusterSpecifierPlugin;

    .line 5
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/ClusterSpecifierPlugin;->getExtension()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v4

    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Leh/n0;->e0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/ClusterSpecifierPlugin;)Leh/u0$b;

    move-result-object v5

    .line 6
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leh/u0$b;

    if-nez v4, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Leh/n0$o;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Multiple ClusterSpecifierPlugins with the same name: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/ClusterSpecifierPlugin;->getExtension()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    .line 9
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getVirtualHostsCount()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getVirtualHostsList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/VirtualHost;

    .line 11
    invoke-static {v3, p1, p2, v0}, Leh/n0;->y0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/VirtualHost;Leh/m1;ZLjava/util/Map;)Leh/n0$q;

    move-result-object v3

    .line 12
    invoke-virtual {v3}, Leh/n0$q;->g()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 13
    invoke-virtual {v3}, Leh/n0$q;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leh/l2;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_2
    new-instance p0, Leh/n0$o;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RouteConfiguration contains invalid virtual host: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v3}, Leh/n0$q;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    :cond_3
    return-object v1
.end method

.method private static V(Leh/g1;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leh/g1;",
            ")",
            "Ljava/util/List<",
            "Leh/g1;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Leh/n0;->Q(Leh/g1;)Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-static {p0}, Leh/n0;->P(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-static {p0}, Leh/n0;->T(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    .line 4
    invoke-static {p0}, Leh/n0;->S(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    .line 5
    invoke-static {p0}, Leh/n0;->R(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static W(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->hasTlsCertificateProviderInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsCertificateProviderInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;->getInstanceName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->hasTlsCertificateCertificateProviderInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsCertificateCertificateProviderInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;->getInstanceName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static X(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent;->getNumerator()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent;->getDenominator()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent$DenominatorType;

    move-result-object v1

    .line 3
    sget-object v2, Leh/n0$e;->e:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown denominator type of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    mul-int/lit8 v0, v0, 0x64

    goto :goto_0

    :cond_2
    mul-int/lit16 v0, v0, 0x2710

    :goto_0
    const p0, 0xf4240

    if-gt v0, p0, :cond_3

    if-gez v0, :cond_4

    :cond_3
    const v0, 0xf4240

    :cond_4
    return v0
.end method

.method private static Y(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->hasValidationContext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getValidationContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;->hasCaCertificateProviderInstance()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getValidationContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;->getCaCertificateProviderInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;->getInstanceName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->hasCombinedValidationContext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getCombinedValidationContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->hasDefaultValidationContext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getDefaultValidationContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;->hasCaCertificateProviderInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getDefaultValidationContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;->getCaCertificateProviderInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;->getInstanceName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->hasValidationContextCertificateProviderInstance()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getValidationContextCertificateProviderInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;->getInstanceName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private Z(Leh/a$f;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leh/a$f;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/n0$p;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Leh/n0$e;->j:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Leh/n0;->g:Ljava/util/Map;

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Unknown resource type"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 4
    :cond_1
    iget-object p1, p0, Leh/n0;->f:Ljava/util/Map;

    return-object p1

    .line 5
    :cond_2
    iget-object p1, p0, Leh/n0;->e:Ljava/util/Map;

    return-object p1

    .line 6
    :cond_3
    iget-object p1, p0, Leh/n0;->d:Ljava/util/Map;

    return-object p1
.end method

.method private a0(Leh/j0$d;Leh/a$f;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leh/j0$d;",
            "Leh/a$f;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/n0$n;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p8

    const-string v0, "found invalid resources but missing errors"

    invoke-static {p8, v0}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 3
    iget-object p8, p0, Leh/n0;->c:Ljava/util/Map;

    invoke-interface {p8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/a;

    invoke-virtual {p1, p2, p6, p7}, Leh/a;->t(Leh/a$f;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 4
    invoke-static {v0}, Lcom/google/common/base/i;->g(C)Lcom/google/common/base/i;

    move-result-object v0

    invoke-virtual {v0, p8}, Lcom/google/common/base/i;->d(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p8

    .line 5
    iget-object v0, p0, Leh/n0;->t:Leh/q2;

    sget-object v1, Leh/q2$b;->c:Leh/q2$b;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p6, v2, v3

    const/4 v3, 0x2

    aput-object p7, v2, v3

    const/4 v3, 0x3

    aput-object p8, v2, v3

    const-string v3, "Failed processing {0} Response version {1} nonce {2}. Errors:\n{3}"

    invoke-virtual {v0, v1, v3, v2}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Leh/n0;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/a;

    invoke-virtual {p1, p2, p7, p8}, Leh/a;->y(Leh/a$f;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, p8

    .line 7
    :goto_0
    iget-object p7, p0, Leh/n0;->p:Lio/grpc/internal/m2;

    invoke-interface {p7}, Lio/grpc/internal/m2;->a()J

    move-result-wide p7

    .line 8
    invoke-direct {p0, p2}, Leh/n0;->Z(Leh/a$f;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/n0$p;

    .line 11
    invoke-interface {p4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {v1, p6, p7, p8, p1}, Leh/n0$p;->n(Ljava/lang/String;JLjava/lang/String;)V

    .line 13
    :cond_2
    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 14
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leh/n0$n;

    invoke-virtual {v1, v2, p6, p7, p8}, Leh/n0$p;->l(Leh/n0$n;Ljava/lang/String;J)V

    goto :goto_1

    .line 15
    :cond_3
    sget-object v3, Leh/a$f;->b:Leh/a$f;

    if-eq p2, v3, :cond_4

    sget-object v4, Leh/a$f;->d:Leh/a$f;

    if-ne p2, v4, :cond_1

    .line 16
    :cond_4
    invoke-static {v1}, Leh/n0$p;->b(Leh/n0$p;)Leh/p2$l;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {p4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-ne p2, v3, :cond_5

    .line 17
    invoke-static {v1}, Leh/n0$p;->b(Leh/n0$p;)Leh/p2$l;

    move-result-object v1

    check-cast v1, Leh/p2$g;

    .line 18
    invoke-virtual {v1}, Leh/p2$g;->c()Leh/n1;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 19
    invoke-virtual {v1}, Leh/n1;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 20
    invoke-interface {p5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :cond_5
    invoke-static {v1}, Leh/n0$p;->b(Leh/n0$p;)Leh/p2$l;

    move-result-object v1

    check-cast v1, Leh/p2$c;

    .line 22
    invoke-virtual {v1}, Leh/p2$c;->e()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    .line 23
    invoke-virtual {v1}, Leh/p2$c;->b()Ljava/lang/String;

    move-result-object v2

    .line 24
    :cond_6
    invoke-interface {p5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 25
    :cond_7
    invoke-interface {p4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 26
    sget-object v2, Lio/grpc/Status;->u:Lio/grpc/Status;

    invoke-virtual {v2, p1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Leh/n0$p;->m(Lio/grpc/Status;)V

    goto/16 :goto_1

    .line 27
    :cond_8
    invoke-virtual {v1}, Leh/n0$p;->k()V

    goto/16 :goto_1

    .line 28
    :cond_9
    sget-object p1, Leh/a$f;->b:Leh/a$f;

    if-eq p2, p1, :cond_a

    sget-object p3, Leh/a$f;->d:Leh/a$f;

    if-ne p2, p3, :cond_d

    :cond_a
    if-ne p2, p1, :cond_b

    .line 29
    iget-object p1, p0, Leh/n0;->e:Ljava/util/Map;

    goto :goto_2

    :cond_b
    iget-object p1, p0, Leh/n0;->g:Ljava/util/Map;

    .line 30
    :goto_2
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 31
    invoke-interface {p5, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_c

    .line 32
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Leh/n0$p;

    invoke-virtual {p3}, Leh/n0$p;->k()V

    goto :goto_3

    :cond_d
    return-void
.end method

.method private static b0(Leh/l1$b;)Z
    .locals 1

    sget-object v0, Leh/d2;->b:Leh/l1$b;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private c0(Leh/j0$d;)V
    .locals 24

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 1
    iget-object v0, v11, Leh/n0;->a:Lio/grpc/d1;

    invoke-virtual {v0}, Lio/grpc/d1;->e()V

    .line 2
    iget-object v0, v11, Leh/n0;->c:Ljava/util/Map;

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v13, Leh/a;

    iget-object v1, v11, Leh/n0;->j:Leh/n0$r;

    iget-object v0, v11, Leh/n0;->k:Leh/j0$b;

    .line 4
    invoke-virtual {v0}, Leh/j0$b;->e()Leh/a1$c;

    move-result-object v3

    iget-object v6, v11, Leh/n0;->l:Lio/grpc/r;

    iget-object v7, v11, Leh/n0;->m:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v8, v11, Leh/n0;->a:Lio/grpc/d1;

    iget-object v9, v11, Leh/n0;->n:Lio/grpc/internal/k$a;

    iget-object v10, v11, Leh/n0;->o:Lcom/google/common/base/w;

    move-object v0, v13

    move-object/from16 v2, p1

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v10}, Leh/a;-><init>(Leh/n0$r;Leh/j0$d;Leh/a1$c;Leh/p2$n;Leh/p2$k;Lio/grpc/r;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/d1;Lio/grpc/internal/k$a;Lcom/google/common/base/w;)V

    .line 5
    new-instance v0, Leh/r1;

    iget-object v15, v11, Leh/n0;->h:Leh/s1;

    .line 6
    invoke-virtual {v13}, Leh/a;->v()Lio/grpc/d;

    move-result-object v16

    iget-object v1, v11, Leh/n0;->l:Lio/grpc/r;

    invoke-virtual/range {p1 .. p1}, Leh/j0$d;->d()Z

    move-result v18

    iget-object v2, v11, Leh/n0;->k:Leh/j0$b;

    .line 7
    invoke-virtual {v2}, Leh/j0$b;->e()Leh/a1$c;

    move-result-object v19

    iget-object v2, v11, Leh/n0;->a:Lio/grpc/d1;

    iget-object v3, v11, Leh/n0;->m:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v4, v11, Leh/n0;->n:Lio/grpc/internal/k$a;

    iget-object v5, v11, Leh/n0;->o:Lcom/google/common/base/w;

    move-object v14, v0

    move-object/from16 v17, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    invoke-direct/range {v14 .. v23}, Leh/r1;-><init>(Leh/s1;Lio/grpc/d;Lio/grpc/r;ZLeh/a1$c;Lio/grpc/d1;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/internal/k$a;Lcom/google/common/base/w;)V

    .line 8
    iget-object v1, v11, Leh/n0;->c:Ljava/util/Map;

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, v11, Leh/n0;->i:Ljava/util/Map;

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static d0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;)Leh/n0$q;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;",
            ")",
            "Leh/n0$q<",
            "Leh/p2$c$a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;->getClusterType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$CustomClusterType;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$CustomClusterType;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "envoy.clusters.aggregate"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Cluster "

    if-nez v2, :cond_0

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": unsupported custom cluster type: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$CustomClusterType;->getTypedConfig()Lcom/google/protobuf/Any;

    move-result-object p0

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/clusters/aggregate/v3/ClusterConfig;

    const-string v2, "type.googleapis.com/envoy.extensions.clusters.aggregate.v3.ClusterConfig"

    const-string v4, "type.googleapis.com/envoy.config.cluster.aggregate.v2alpha.ClusterConfig"

    invoke-static {p0, v1, v2, v4}, Leh/n0;->E0(Lcom/google/protobuf/Any;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/clusters/aggregate/v3/ClusterConfig;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/clusters/aggregate/v3/ClusterConfig;->getClustersList()Lcom/google/protobuf/i2;

    move-result-object p0

    .line 8
    invoke-static {v0, p0}, Leh/p2$c;->f(Ljava/lang/String;Ljava/util/List;)Leh/p2$c$a;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->c(Ljava/lang/Object;)Leh/n0$q;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": malformed ClusterConfig: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0
.end method

.method private static e0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/ClusterSpecifierPlugin;)Leh/u0$b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leh/n0$o;
        }
    .end annotation

    .line 1
    invoke-static {}, Leh/v0;->b()Leh/v0;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Leh/n0;->f0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/ClusterSpecifierPlugin;Leh/v0;)Leh/u0$b;

    move-result-object p0

    return-object p0
.end method

.method static f0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/ClusterSpecifierPlugin;Leh/v0;)Leh/u0$b;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leh/n0$o;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/ClusterSpecifierPlugin;->getExtension()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;->getTypedConfig()Lcom/google/protobuf/Any;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/Any;->getTypeUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type.googleapis.com/udpa.type.v1.TypedStruct"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "type.googleapis.com/xds.type.v3.TypedStruct"

    const/4 v5, 0x0

    if-nez v3, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    :cond_0
    :try_start_0
    const-class v1, Lio/grpc/xds/shaded/com/github/udpa/udpa/type/v1/TypedStruct;

    invoke-static {p0, v1, v2, v4}, Leh/n0;->E0(Lcom/google/protobuf/Any;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/github/udpa/udpa/type/v1/TypedStruct;

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/github/udpa/udpa/type/v1/TypedStruct;->getTypeUrl()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/github/udpa/udpa/type/v1/TypedStruct;->getValue()Lcom/google/protobuf/Struct;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :cond_1
    invoke-virtual {p1, v1}, Leh/v0;->a(Ljava/lang/String;)Leh/u0;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10
    invoke-interface {p1, p0}, Leh/u0;->b(Lcom/google/protobuf/l1;)Leh/w0;

    move-result-object p0

    .line 11
    iget-object p1, p0, Leh/w0;->a:Ljava/lang/String;

    if-nez p1, :cond_2

    .line 12
    iget-object p0, p0, Leh/w0;->b:Ljava/lang/Object;

    check-cast p0, Leh/u0$b;

    return-object p0

    .line 13
    :cond_2
    new-instance p1, Leh/n0$o;

    iget-object p0, p0, Leh/w0;->a:Ljava/lang/String;

    invoke-direct {p1, p0, v5}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p1

    .line 14
    :cond_3
    new-instance p0, Leh/n0$o;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported ClusterSpecifierPlugin type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v5}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    :catch_0
    move-exception p0

    .line 15
    new-instance p1, Leh/n0$o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClusterSpecifierPlugin ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] contains invalid proto"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0, v5}, Leh/n0$o;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Leh/n0$f;)V

    throw p1
.end method

.method static g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;Leh/m1;Z)Leh/n0$q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;",
            "Leh/m1;",
            "Z)",
            "Leh/n0$q<",
            "Leh/l2$a$a$a;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getWeight()Lcom/google/protobuf/UInt32Value;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/UInt32Value;->getValue()I

    move-result p0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p1, p0, p2}, Leh/l2$a$a$a;->a(Ljava/lang/String;ILjava/util/Map;)Leh/l2$a$a$a;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->c(Ljava/lang/Object;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getTypedPerFilterConfigMap()Ljava/util/Map;

    move-result-object p2

    invoke-static {p2, p1}, Leh/n0;->r0(Ljava/util/Map;Leh/m1;)Leh/n0$q;

    move-result-object p1

    .line 4
    invoke-static {p1}, Leh/n0$q;->d(Leh/n0$q;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ClusterWeight ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] contains invalid HttpFilter config: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {p1}, Leh/n0$q;->d(Leh/n0$q;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getWeight()Lcom/google/protobuf/UInt32Value;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/UInt32Value;->getValue()I

    move-result p0

    invoke-static {p1}, Leh/n0$q;->a(Leh/n0$q;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 10
    invoke-static {p2, p0, p1}, Leh/l2$a$a$a;->a(Ljava/lang/String;ILjava/util/Map;)Leh/l2$a$a$a;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->c(Ljava/lang/Object;)Leh/n0$q;

    move-result-object p0

    return-object p0
.end method

.method private static h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterLoadAssignment$Policy$DropOverload;)Leh/x0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterLoadAssignment$Policy$DropOverload;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterLoadAssignment$Policy$DropOverload;->getDropPercentage()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent;

    move-result-object p0

    invoke-static {p0}, Leh/n0;->X(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent;)I

    move-result p0

    invoke-static {v0, p0}, Leh/x0;->b(Ljava/lang/String;I)Leh/x0;

    move-result-object p0

    return-object p0
.end method

.method static i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChain;Ljava/util/Set;Leh/k2;Leh/m1;Ljava/util/Set;Ljava/util/Set;Z)Leh/f1;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChain;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Leh/k2;",
            "Leh/m1;",
            "Ljava/util/Set<",
            "Leh/g1;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)",
            "Leh/f1;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leh/n0$o;
        }
    .end annotation

    const-string v0, " failed to unpack message"

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChain;->getFiltersCount()I

    move-result v1

    const-string v2, "FilterChain "

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChain;->getFiltersList()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Filter;

    .line 3
    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Filter;->hasTypedConfig()Z

    move-result v5

    const-string v6, " contains filter "

    if-eqz v5, :cond_3

    .line 4
    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Filter;->getTypedConfig()Lcom/google/protobuf/Any;

    move-result-object v5

    .line 5
    invoke-virtual {v5}, Lcom/google/protobuf/Any;->getTypeUrl()Ljava/lang/String;

    move-result-object v7

    const-string v8, "type.googleapis.com/envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 6
    :try_start_0
    const-class v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;

    invoke-virtual {v5, v6}, Lcom/google/protobuf/Any;->unpack(Ljava/lang/Class;)Lcom/google/protobuf/l1;

    move-result-object v5

    check-cast v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    invoke-static {v5, p1, p3, p6, v4}, Leh/n0;->m0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Ljava/util/Set;Leh/m1;ZZ)Leh/n1;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChain;->hasTransportSocket()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChain;->getTransportSocket()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TransportSocket;

    move-result-object p3

    invoke-virtual {p3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TransportSocket;->getName()Ljava/lang/String;

    move-result-object p3

    const-string p6, "envoy.transport_sockets.tls"

    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 10
    :try_start_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChain;->getTransportSocket()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TransportSocket;

    move-result-object p3

    invoke-virtual {p3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TransportSocket;->getTypedConfig()Lcom/google/protobuf/Any;

    move-result-object p3

    const-class p6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/DownstreamTlsContext;

    invoke-virtual {p3, p6}, Lcom/google/protobuf/Any;->unpack(Ljava/lang/Class;)Lcom/google/protobuf/l1;

    move-result-object p3

    check-cast p3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/DownstreamTlsContext;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    .line 11
    invoke-static {p3, p5}, Leh/n0;->G0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/DownstreamTlsContext;Ljava/util/Set;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/DownstreamTlsContext;

    move-result-object p3

    .line 12
    invoke-static {p3}, Leh/e1;->a(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/DownstreamTlsContext;)Leh/e1;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    new-instance p2, Leh/n0$o;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChain;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1, v3}, Leh/n0$o;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Leh/n0$f;)V

    throw p2

    .line 14
    :cond_0
    new-instance p1, Leh/n0$o;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "transport-socket with name "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChain;->getTransportSocket()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TransportSocket;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TransportSocket;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not supported."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v3}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p1

    .line 16
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChain;->getFilterChainMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;

    move-result-object p3

    invoke-static {p3}, Leh/n0;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Leh/g1;

    move-result-object p3

    .line 17
    invoke-static {p4, p3}, Leh/n0;->N(Ljava/util/Set;Leh/g1;)V

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChain;->getName()Ljava/lang/String;

    move-result-object p0

    .line 19
    invoke-static {p0, p3, p1, v3, p2}, Leh/f1;->a(Ljava/lang/String;Leh/g1;Leh/n1;Leh/e1;Leh/k2;)Leh/f1;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p1

    .line 20
    new-instance p2, Leh/n0$o;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChain;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with filter "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Filter;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1, v3}, Leh/n0$o;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Leh/n0$f;)V

    throw p2

    .line 22
    :cond_2
    new-instance p1, Leh/n0$o;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChain;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Filter;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with unsupported typed_config type "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v5}, Lcom/google/protobuf/Any;->getTypeUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v3}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p1

    .line 25
    :cond_3
    new-instance p1, Leh/n0$o;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChain;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Filter;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " without typed_config"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v3}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p1

    .line 27
    :cond_4
    new-instance p1, Leh/n0$o;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChain;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " should contain exact one HttpConnectionManager filter"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v3}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p1
.end method

.method private static j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Leh/g1;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leh/n0$o;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$b;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$b;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->getPrefixRangesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    .line 4
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;->getAddressPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;->getPrefixLen()Lcom/google/protobuf/UInt32Value;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value;->getValue()I

    move-result v4

    invoke-static {v5, v4}, Leh/c1;->b(Ljava/lang/String;I)Leh/c1;

    move-result-object v4

    .line 5
    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableList$b;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$b;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->getSourcePrefixRangesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;

    .line 7
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;->getAddressPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;->getPrefixLen()Lcom/google/protobuf/UInt32Value;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value;->getValue()I

    move-result v4

    invoke-static {v5, v4}, Leh/c1;->b(Ljava/lang/String;I)Leh/c1;

    move-result-object v4

    .line 8
    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList$b;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$b;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 9
    :cond_1
    sget-object v3, Leh/n0$e;->b:[I

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->getSourceType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$ConnectionSourceType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 10
    sget-object v2, Leh/d1;->b:Leh/d1;

    goto :goto_2

    .line 11
    :cond_2
    new-instance v0, Leh/n0$o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown source-type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->getSourceType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$ConnectionSourceType;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v2}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw v0

    .line 12
    :cond_3
    sget-object v2, Leh/d1;->c:Leh/d1;

    goto :goto_2

    .line 13
    :cond_4
    sget-object v2, Leh/d1;->a:Leh/d1;

    :goto_2
    move-object v7, v2

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->getDestinationPort()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UInt32Value;->getValue()I

    move-result v3

    .line 15
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$b;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->getApplicationProtocolsList()Lcom/google/protobuf/i2;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    .line 17
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$b;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->getSourcePortsList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    .line 19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->getServerNamesList()Lcom/google/protobuf/i2;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    .line 20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->getTransportProtocol()Ljava/lang/String;

    move-result-object v10

    .line 21
    invoke-static/range {v3 .. v10}, Leh/g1;->c(ILcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Leh/d1;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Ljava/lang/String;)Leh/g1;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 22
    new-instance v0, Leh/n0$o;

    const-string v1, "Failed to create CidrRange"

    invoke-direct {v0, v1, p0, v2}, Leh/n0$o;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Leh/n0$f;)V

    throw v0
.end method

.method private static k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent;)Leh/n0$q;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent;",
            ")",
            "Leh/n0$q<",
            "Lfh/h;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent;->getNumerator()I

    move-result v0

    .line 2
    sget-object v1, Leh/n0$e;->e:[I

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent;->getDenominator()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent$DenominatorType;

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

    const-string v1, "Unrecognized fractional percent denominator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent;->getDenominator()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent$DenominatorType;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    :cond_0
    const p0, 0xf4240

    goto :goto_0

    :cond_1
    const/16 p0, 0x2710

    goto :goto_0

    :cond_2
    const/16 p0, 0x64

    .line 6
    :goto_0
    invoke-static {v0, p0}, Lfh/h;->a(II)Lfh/h;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->c(Ljava/lang/Object;)Leh/n0$q;

    move-result-object p0

    return-object p0
.end method

.method static l0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;)Leh/n0$q;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;",
            ")",
            "Leh/n0$q<",
            "Lfh/i;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Leh/n0$e;->f:[I

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getHeaderMatchSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p0, "Unknown header matcher type"

    .line 2
    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 3
    :pswitch_0
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getSuffixMatch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getInvertMatch()Z

    move-result p0

    .line 4
    invoke-static {v0, v1, p0}, Lfh/i;->h(Ljava/lang/String;Ljava/lang/String;Z)Lfh/i;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->c(Ljava/lang/Object;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 5
    :pswitch_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getPrefixMatch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getInvertMatch()Z

    move-result p0

    .line 6
    invoke-static {v0, v1, p0}, Lfh/i;->d(Ljava/lang/String;Ljava/lang/String;Z)Lfh/i;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->c(Ljava/lang/Object;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getPresentMatch()Z

    move-result v1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getInvertMatch()Z

    move-result p0

    .line 8
    invoke-static {v0, v1, p0}, Lfh/i;->e(Ljava/lang/String;ZZ)Lfh/i;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->c(Ljava/lang/Object;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getRangeMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/Int64Range;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/Int64Range;->getStart()J

    move-result-wide v0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getRangeMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/Int64Range;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/Int64Range;->getEnd()J

    move-result-wide v2

    .line 10
    invoke-static {v0, v1, v2, v3}, Lfh/i$a;->a(JJ)Lfh/i$a;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getInvertMatch()Z

    move-result p0

    .line 12
    invoke-static {v1, v0, p0}, Lfh/i;->f(Ljava/lang/String;Lfh/i$a;Z)Lfh/i;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->c(Ljava/lang/Object;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 13
    :pswitch_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getSafeRegexMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatcher;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatcher;->getRegex()Ljava/lang/String;

    move-result-object v0

    .line 14
    :try_start_0
    invoke-static {v0}, Lcom/google/re2j/Pattern;->compile(Ljava/lang/String;)Lcom/google/re2j/Pattern;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/re2j/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getInvertMatch()Z

    move-result p0

    .line 16
    invoke-static {v1, v0, p0}, Lfh/i;->g(Ljava/lang/String;Lcom/google/re2j/Pattern;Z)Lfh/i;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->c(Ljava/lang/Object;)Leh/n0$q;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HeaderMatcher ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] contains malformed safe regex pattern: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 20
    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 21
    :pswitch_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getExactMatch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->getInvertMatch()Z

    move-result p0

    .line 22
    invoke-static {v0, v1, p0}, Lfh/i;->c(Ljava/lang/String;Ljava/lang/String;Z)Lfh/i;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->c(Ljava/lang/Object;)Leh/n0$q;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static m0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Ljava/util/Set;Leh/m1;ZZ)Leh/n1;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Leh/m1;",
            "ZZ)",
            "Leh/n1;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leh/n0$o;
        }
    .end annotation

    .line 1
    sget-boolean v0, Leh/n0;->x:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getXffNumTrustedHops()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Leh/n0$o;

    const-string p1, "HttpConnectionManager with xff_num_trusted_hops unsupported"

    invoke-direct {p0, p1, v1}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    .line 3
    :cond_1
    :goto_0
    sget-boolean v0, Leh/n0;->x:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getOriginalIpDetectionExtensionsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    new-instance p0, Leh/n0$o;

    const-string p1, "HttpConnectionManager with original_ip_detection_extensions unsupported"

    invoke-direct {p0, p1, v1}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    :cond_3
    :goto_1
    const-wide/16 v2, 0x0

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasCommonHttpProtocolOptions()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getCommonHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions;->hasMaxStreamDuration()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 8
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HttpProtocolOptions;->getMaxStreamDuration()Lcom/google/protobuf/Duration;

    move-result-object v0

    invoke-static {v0}, Lv6/a;->h(Lcom/google/protobuf/Duration;)J

    move-result-wide v2

    :cond_4
    if-eqz p3, :cond_d

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getHttpFiltersList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    .line 12
    :goto_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getHttpFiltersCount()I

    move-result v6

    if-ge v5, v6, :cond_e

    .line 13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getHttpFiltersList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpFilter;

    .line 14
    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpFilter;->getName()Ljava/lang/String;

    move-result-object v7

    .line 15
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 16
    invoke-static {v6, p2, p4}, Leh/n0;->n0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpFilter;Leh/m1;Z)Leh/n0$q;

    move-result-object v6

    .line 17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getHttpFiltersCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_6

    if-eqz v6, :cond_5

    .line 18
    invoke-static {v6}, Leh/n0$q;->a(Leh/n0$q;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Leh/l1$b;

    invoke-static {v8}, Leh/n0;->b0(Leh/l1$b;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_3

    .line 19
    :cond_5
    new-instance p0, Leh/n0$o;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The last HttpFilter must be a terminal filter: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    :cond_6
    :goto_3
    if-nez v6, :cond_7

    goto :goto_5

    .line 20
    :cond_7
    invoke-virtual {v6}, Leh/n0$q;->g()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_a

    .line 21
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getHttpFiltersCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_9

    invoke-virtual {v6}, Leh/n0$q;->h()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Leh/l1$b;

    invoke-static {v8}, Leh/n0;->b0(Leh/l1$b;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_4

    .line 22
    :cond_8
    new-instance p0, Leh/n0$o;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "A terminal HttpFilter must be the last filter: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    .line 23
    :cond_9
    :goto_4
    new-instance v8, Leh/l1$c;

    invoke-static {v6}, Leh/n0$q;->a(Leh/n0$q;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Leh/l1$b;

    invoke-direct {v8, v7, v6}, Leh/l1$c;-><init>(Ljava/lang/String;Leh/l1$b;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 24
    :cond_a
    new-instance p0, Leh/n0$o;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "HttpConnectionManager contains invalid HttpFilter: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v6}, Leh/n0$q;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    .line 26
    :cond_b
    new-instance p0, Leh/n0$o;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "HttpConnectionManager contains duplicate HttpFilter: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    .line 27
    :cond_c
    new-instance p0, Leh/n0$o;

    const-string p1, "Missing HttpFilter in HttpConnectionManager."

    invoke-direct {p0, p1, v1}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    :cond_d
    move-object v0, v1

    .line 28
    :cond_e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasRouteConfig()Z

    move-result p4

    if-eqz p4, :cond_f

    .line 29
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getRouteConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    move-result-object p0

    .line 30
    invoke-static {p0, p2, p3}, Leh/n0;->U(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;Leh/m1;Z)Ljava/util/List;

    move-result-object p0

    .line 31
    invoke-static {v2, v3, p0, v0}, Leh/n1;->c(JLjava/util/List;Ljava/util/List;)Leh/n1;

    move-result-object p0

    return-object p0

    .line 32
    :cond_f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->hasRds()Z

    move-result p2

    if-eqz p2, :cond_13

    .line 33
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;->getRds()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/Rds;

    move-result-object p0

    .line 34
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/Rds;->hasConfigSource()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 35
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/Rds;->getConfigSource()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->hasAds()Z

    move-result p2

    if-nez p2, :cond_11

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/Rds;->getConfigSource()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->hasSelf()Z

    move-result p2

    if-eqz p2, :cond_10

    goto :goto_6

    .line 36
    :cond_10
    new-instance p0, Leh/n0$o;

    const-string p1, "HttpConnectionManager contains invalid RDS: must specify ADS or self ConfigSource"

    invoke-direct {p0, p1, v1}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    .line 37
    :cond_11
    :goto_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/Rds;->getRouteConfigName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/Rds;->getRouteConfigName()Ljava/lang/String;

    move-result-object p0

    .line 39
    invoke-static {v2, v3, p0, v0}, Leh/n1;->b(JLjava/lang/String;Ljava/util/List;)Leh/n1;

    move-result-object p0

    return-object p0

    .line 40
    :cond_12
    new-instance p0, Leh/n0$o;

    const-string p1, "HttpConnectionManager contains invalid RDS: missing config_source"

    invoke-direct {p0, p1, v1}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0

    .line 41
    :cond_13
    new-instance p0, Leh/n0$o;

    const-string p1, "HttpConnectionManager neither has inlined route_config nor RDS"

    invoke-direct {p0, p1, v1}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw p0
.end method

.method static n0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpFilter;Leh/m1;Z)Leh/n0$q;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpFilter;",
            "Leh/m1;",
            "Z)",
            "Leh/n0$q<",
            "Leh/l1$b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpFilter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpFilter;->getIsOptional()Z

    move-result v1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpFilter;->hasTypedConfig()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "HttpFilter ["

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    return-object v3

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] is not optional and has no typed config"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpFilter;->getTypedConfig()Lcom/google/protobuf/Any;

    move-result-object v2

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpFilter;->getTypedConfig()Lcom/google/protobuf/Any;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/Any;->getTypeUrl()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    const-string v6, "type.googleapis.com/udpa.type.v1.TypedStruct"

    .line 7
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpFilter;->getTypedConfig()Lcom/google/protobuf/Any;

    move-result-object p0

    const-class v2, Lio/grpc/xds/shaded/com/github/udpa/udpa/type/v1/TypedStruct;

    invoke-virtual {p0, v2}, Lcom/google/protobuf/Any;->unpack(Ljava/lang/Class;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/github/udpa/udpa/type/v1/TypedStruct;

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/github/udpa/udpa/type/v1/TypedStruct;->getTypeUrl()Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/github/udpa/udpa/type/v1/TypedStruct;->getValue()Lcom/google/protobuf/Struct;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v6, "type.googleapis.com/xds.type.v3.TypedStruct"

    .line 11
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpFilter;->getTypedConfig()Lcom/google/protobuf/Any;

    move-result-object p0

    const-class v2, Lio/grpc/xds/shaded/com/github/xds/type/v3/TypedStruct;

    invoke-virtual {p0, v2}, Lcom/google/protobuf/Any;->unpack(Ljava/lang/Class;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/github/xds/type/v3/TypedStruct;

    .line 13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/github/xds/type/v3/TypedStruct;->getTypeUrl()Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/github/xds/type/v3/TypedStruct;->getValue()Lcom/google/protobuf/Struct;

    move-result-object v2
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :cond_3
    :goto_0
    invoke-virtual {p1, v5}, Leh/m1;->a(Ljava/lang/String;)Leh/l1;

    move-result-object p0

    if-eqz p2, :cond_4

    .line 16
    instance-of p1, p0, Leh/l1$a;

    if-eqz p1, :cond_5

    :cond_4
    if-nez p2, :cond_8

    instance-of p1, p0, Leh/l1$d;

    if-nez p1, :cond_8

    :cond_5
    if-eqz v1, :cond_6

    return-object v3

    .line 17
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is required but unsupported for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_7

    const-string p1, "client"

    goto :goto_1

    :cond_7
    const-string p1, "server"

    .line 18
    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 19
    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 20
    :cond_8
    invoke-interface {p0, v2}, Leh/l1;->d(Lcom/google/protobuf/l1;)Leh/w0;

    move-result-object p0

    .line 21
    iget-object p1, p0, Leh/w0;->a:Ljava/lang/String;

    if-eqz p1, :cond_9

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid filter config for HttpFilter ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Leh/w0;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 23
    :cond_9
    iget-object p0, p0, Leh/w0;->b:Ljava/lang/Object;

    check-cast p0, Leh/l1$b;

    invoke-static {p0}, Leh/n0$q;->c(Ljava/lang/Object;)Leh/n0$q;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] contains invalid proto: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0
.end method

.method private static o0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;)Leh/t1;
    .locals 2

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;->getZone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;->getSubZone()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Leh/t1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Leh/t1;

    move-result-object p0

    return-object p0
.end method

.method static p0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;)Leh/n0$q;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;",
            ")",
            "Leh/n0$q<",
            "Leh/z0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->hasLoadBalancingWeight()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLoadBalancingWeight()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UInt32Value;->getValue()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getPriority()I

    move-result v0

    if-gez v0, :cond_1

    const-string p0, "negative priority"

    .line 3
    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLbEndpointsCount()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLbEndpointsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LbEndpoint;

    .line 6
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LbEndpoint;->hasEndpoint()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LbEndpoint;->getEndpoint()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/Endpoint;

    move-result-object v4

    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/Endpoint;->hasAddress()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_3

    .line 7
    :cond_2
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LbEndpoint;->getEndpoint()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/Endpoint;

    move-result-object v4

    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/Endpoint;->getAddress()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Address;

    move-result-object v4

    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Address;->getSocketAddress()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress;

    move-result-object v4

    .line 8
    new-instance v5, Ljava/net/InetSocketAddress;

    .line 9
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress;->getPortValue()I

    move-result v4

    invoke-direct {v5, v6, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LbEndpoint;->getHealthStatus()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthStatus;

    move-result-object v4

    sget-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthStatus;->HEALTHY:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthStatus;

    if-eq v4, v6, :cond_4

    .line 11
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LbEndpoint;->getHealthStatus()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthStatus;

    move-result-object v4

    sget-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthStatus;->UNKNOWN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthStatus;

    if-ne v4, v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v4, 0x1

    .line 12
    :goto_2
    new-instance v6, Lio/grpc/x;

    .line 13
    invoke-static {v5}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-direct {v6, v5}, Lio/grpc/x;-><init>(Ljava/util/List;)V

    .line 14
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LbEndpoint;->getLoadBalancingWeight()Lcom/google/protobuf/UInt32Value;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UInt32Value;->getValue()I

    move-result v3

    .line 15
    invoke-static {v6, v3, v4}, Leh/y0;->a(Lio/grpc/x;IZ)Leh/y0;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    :goto_3
    const-string p0, "LbEndpoint with no endpoint/address"

    .line 16
    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 17
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLoadBalancingWeight()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getPriority()I

    move-result p0

    .line 18
    invoke-static {v0, v1, p0}, Leh/z0;->a(Ljava/util/List;II)Leh/z0;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->c(Ljava/lang/Object;)Leh/n0$q;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static q0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;Ljava/util/Set;Ljava/util/Set;Leh/j0$d;)Leh/n0$q;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Leh/j0$d;",
            ")",
            "Leh/n0$q<",
            "Leh/p2$c$a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;->hasLrsServer()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "Cluster "

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;->getLrsServer()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->hasSelf()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": only support LRS for the same management server"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    :cond_0
    move-object p3, v2

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;->hasCircuitBreakers()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;->getCircuitBreakers()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers;->getThresholdsList()Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v4, v2

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;

    .line 8
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getPriority()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RoutingPriority;

    move-result-object v6

    sget-object v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RoutingPriority;->DEFAULT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RoutingPriority;

    if-eq v6, v7, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->hasMaxRequests()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 10
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getMaxRequests()Lcom/google/protobuf/UInt32Value;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value;->getValue()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_0

    :cond_4
    move-object v4, v2

    .line 11
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;->getTransportSocketMatchesCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": transport-socket-matches not supported."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 13
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;->hasTransportSocket()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;->getTransportSocket()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TransportSocket;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TransportSocket;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "envoy.transport_sockets.tls"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "transport-socket with name "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;->getTransportSocket()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TransportSocket;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TransportSocket;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not supported."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 18
    :cond_7
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;->getTransportSocket()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TransportSocket;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TransportSocket;->getTypedConfig()Lcom/google/protobuf/Any;

    move-result-object v1

    const-class v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/UpstreamTlsContext;

    const-string v6, "type.googleapis.com/envoy.extensions.transport_sockets.tls.v3.UpstreamTlsContext"

    const-string v7, "type.googleapis.com/envoy.api.v2.auth.UpstreamTlsContext"

    invoke-static {v1, v5, v6, v7}, Leh/n0;->E0(Lcom/google/protobuf/Any;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/protobuf/l1;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/UpstreamTlsContext;

    .line 19
    invoke-static {v1, p2}, Leh/n0;->H0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/UpstreamTlsContext;Ljava/util/Set;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/UpstreamTlsContext;

    move-result-object p2

    .line 20
    invoke-static {p2}, Leh/i1;->a(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/UpstreamTlsContext;)Leh/i1;

    move-result-object p2
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Leh/n0$o; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 21
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": malformed UpstreamTlsContext: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    :cond_8
    move-object p2, v2

    .line 22
    :goto_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;->getType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$DiscoveryType;

    move-result-object v1

    .line 23
    sget-object v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$DiscoveryType;->EDS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$DiscoveryType;

    if-ne v1, v5, :cond_b

    .line 24
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;->getEdsClusterConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$EdsClusterConfig;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$EdsClusterConfig;->getEdsConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->hasAds()Z

    move-result v1

    if-nez v1, :cond_9

    .line 26
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$EdsClusterConfig;->getEdsConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->hasSelf()Z

    move-result v1

    if-nez v1, :cond_9

    .line 27
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": field eds_cluster_config must be set to indicate to use EDS over ADS or self ConfigSource"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 28
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$EdsClusterConfig;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 29
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$EdsClusterConfig;->getServiceName()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 31
    :cond_a
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    :goto_3
    invoke-static {v0, v2, p3, v4, p2}, Leh/p2$c;->g(Ljava/lang/String;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;)Leh/p2$c$a;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->c(Ljava/lang/Object;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 33
    :cond_b
    sget-object p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$DiscoveryType;->LOGICAL_DNS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$DiscoveryType;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 34
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;->hasLoadAssignment()Z

    move-result p1

    if-nez p1, :cond_c

    .line 35
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": LOGICAL_DNS clusters must have a single host"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 36
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;->getLoadAssignment()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterLoadAssignment;

    move-result-object p0

    .line 37
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterLoadAssignment;->getEndpointsCount()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_12

    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterLoadAssignment;->getEndpoints(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLbEndpointsCount()I

    move-result v2

    if-eq v2, v1, :cond_d

    goto/16 :goto_5

    .line 39
    :cond_d
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterLoadAssignment;->getEndpoints(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLbEndpoints(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LbEndpoint;

    move-result-object p0

    .line 40
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LbEndpoint;->hasEndpoint()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LbEndpoint;->getEndpoint()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/Endpoint;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/Endpoint;->hasAddress()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 41
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LbEndpoint;->getEndpoint()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/Endpoint;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/Endpoint;->getAddress()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Address;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Address;->hasSocketAddress()Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_4

    .line 42
    :cond_e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LbEndpoint;->getEndpoint()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/Endpoint;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/Endpoint;->getAddress()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Address;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Address;->getSocketAddress()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress;

    move-result-object p0

    .line 43
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress;->getResolverName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 44
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": LOGICAL DNS clusters must NOT have a custom resolver name set"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 45
    :cond_f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress;->getPortSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;

    move-result-object v2

    sget-object v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;->PORT_VALUE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;

    if-eq v2, v5, :cond_10

    .line 46
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": LOGICAL DNS clusters socket_address must have port_value"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    :cond_10
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 47
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress;->getPortValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "%s:%d"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 48
    invoke-static {v0, p0, p3, v4, p2}, Leh/p2$c;->h(Ljava/lang/String;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;)Leh/p2$c$a;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->c(Ljava/lang/Object;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 49
    :cond_11
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": LOGICAL_DNS clusters must have an endpoint with address and socket_address"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 50
    :cond_12
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": LOGICAL_DNS clusters must have a single locality_lb_endpoint and a single lb_endpoint"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 51
    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": unsupported built-in discovery type: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0
.end method

.method static r0(Ljava/util/Map;Leh/m1;)Leh/n0$q;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Any;",
            ">;",
            "Leh/m1;",
            ")",
            "Leh/n0$q<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/l1$b;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Any;

    .line 4
    invoke-virtual {v3}, Lcom/google/protobuf/Any;->getTypeUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "type.googleapis.com/envoy.config.route.v3.FilterConfig"

    .line 5
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "] contains invalid proto: "

    const-string v8, "FilterConfig ["

    if-eqz v6, :cond_0

    .line 6
    :try_start_0
    const-class v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/FilterConfig;

    .line 7
    invoke-virtual {v3, v4}, Lcom/google/protobuf/Any;->unpack(Ljava/lang/Class;)Lcom/google/protobuf/l1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/FilterConfig;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/FilterConfig;->getIsOptional()Z

    move-result v5

    .line 9
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/FilterConfig;->getConfig()Lcom/google/protobuf/Any;

    move-result-object v3

    .line 10
    invoke-virtual {v3}, Lcom/google/protobuf/Any;->getTypeUrl()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :catch_0
    move-exception p0

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    :cond_0
    :goto_1
    :try_start_1
    const-string v6, "type.googleapis.com/udpa.type.v1.TypedStruct"

    .line 12
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 13
    const-class v4, Lio/grpc/xds/shaded/com/github/udpa/udpa/type/v1/TypedStruct;

    invoke-virtual {v3, v4}, Lcom/google/protobuf/Any;->unpack(Ljava/lang/Class;)Lcom/google/protobuf/l1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/com/github/udpa/udpa/type/v1/TypedStruct;

    .line 14
    invoke-virtual {v3}, Lio/grpc/xds/shaded/com/github/udpa/udpa/type/v1/TypedStruct;->getTypeUrl()Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {v3}, Lio/grpc/xds/shaded/com/github/udpa/udpa/type/v1/TypedStruct;->getValue()Lcom/google/protobuf/Struct;

    move-result-object v3

    goto :goto_2

    :cond_1
    const-string v6, "type.googleapis.com/xds.type.v3.TypedStruct"

    .line 16
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 17
    const-class v4, Lio/grpc/xds/shaded/com/github/xds/type/v3/TypedStruct;

    .line 18
    invoke-virtual {v3, v4}, Lcom/google/protobuf/Any;->unpack(Ljava/lang/Class;)Lcom/google/protobuf/l1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/com/github/xds/type/v3/TypedStruct;

    .line 19
    invoke-virtual {v3}, Lio/grpc/xds/shaded/com/github/xds/type/v3/TypedStruct;->getTypeUrl()Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-virtual {v3}, Lio/grpc/xds/shaded/com/github/xds/type/v3/TypedStruct;->getValue()Lcom/google/protobuf/Struct;

    move-result-object v3
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1

    .line 21
    :cond_2
    :goto_2
    invoke-virtual {p1, v4}, Leh/m1;->a(Ljava/lang/String;)Leh/l1;

    move-result-object v6

    if-nez v6, :cond_4

    if-eqz v5, :cond_3

    goto/16 :goto_0

    .line 22
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "HttpFilter ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is required but unsupported"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 23
    :cond_4
    invoke-interface {v6, v3}, Leh/l1;->c(Lcom/google/protobuf/l1;)Leh/w0;

    move-result-object v3

    .line 24
    iget-object v4, v3, Leh/w0;->a:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid filter config for HttpFilter ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v3, Leh/w0;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 26
    :cond_5
    iget-object v3, v3, Leh/w0;->b:Ljava/lang/Object;

    check-cast v3, Leh/l1$b;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_1
    move-exception p0

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 28
    :cond_6
    invoke-static {v0}, Leh/n0$q;->c(Ljava/lang/Object;)Leh/n0$q;

    move-result-object p0

    return-object p0
.end method

.method static s0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch;)Leh/n0$q;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch;",
            ")",
            "Leh/n0$q<",
            "Leh/l2$a$b$a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch;->getCaseSensitive()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/BoolValue;->getValue()Z

    move-result v0

    .line 2
    sget-object v1, Leh/n0$e;->d:[I

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch;->getPathSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    const-string p0, "Unknown path match type"

    .line 3
    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch;->getSafeRegex()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatcher;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatcher;->getRegex()Ljava/lang/String;

    move-result-object p0

    .line 5
    :try_start_0
    invoke-static {p0}, Lcom/google/re2j/Pattern;->compile(Ljava/lang/String;)Lcom/google/re2j/Pattern;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/re2j/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-static {p0}, Leh/l2$a$b$a;->e(Lcom/google/re2j/Pattern;)Leh/l2$a$b$a;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->c(Ljava/lang/Object;)Leh/n0$q;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed safe regex pattern: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Leh/l2$a$b$a;->c(Ljava/lang/String;Z)Leh/l2$a$b$a;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->c(Ljava/lang/Object;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch;->getPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Leh/l2$a$b$a;->d(Ljava/lang/String;Z)Leh/l2$a$b$a;

    move-result-object p0

    .line 10
    invoke-static {p0}, Leh/n0$q;->c(Ljava/lang/Object;)Leh/n0$q;

    move-result-object p0

    return-object p0
.end method

.method private static t0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;)Leh/n0$q;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;",
            ")",
            "Leh/n0$q<",
            "Leh/l2$a$a$c;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->hasNumRetries()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getNumRetries()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UInt32Value;->getValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    const-wide/16 v1, 0x19

    .line 3
    invoke-static {v1, v2}, Lv6/a;->c(J)Lcom/google/protobuf/Duration;

    move-result-object v1

    const-wide/16 v2, 0xfa

    .line 4
    invoke-static {v2, v3}, Lv6/a;->c(J)Lcom/google/protobuf/Duration;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->hasRetryBackOff()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetryBackOff()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;->hasBaseInterval()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "No base_interval specified in retry_backoff"

    .line 8
    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;->getBaseInterval()Lcom/google/protobuf/Duration;

    move-result-object v2

    .line 10
    sget-object v3, Lv6/a;->c:Lcom/google/protobuf/Duration;

    invoke-static {v2, v3}, Lv6/a;->b(Lcom/google/protobuf/Duration;Lcom/google/protobuf/Duration;)I

    move-result v3

    if-gtz v3, :cond_2

    const-string p0, "base_interval in retry_backoff must be positive"

    .line 11
    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    :cond_2
    const-wide/16 v3, 0x1

    .line 12
    invoke-static {v3, v4}, Lv6/a;->c(J)Lcom/google/protobuf/Duration;

    move-result-object v5

    invoke-static {v2, v5}, Lv6/a;->b(Lcom/google/protobuf/Duration;Lcom/google/protobuf/Duration;)I

    move-result v5

    if-gez v5, :cond_3

    .line 13
    invoke-static {v3, v4}, Lv6/a;->c(J)Lcom/google/protobuf/Duration;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v2

    .line 14
    :goto_1
    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;->hasMaxInterval()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetryBackOff()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;->getMaxInterval()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 16
    invoke-static {v1, v2}, Lv6/a;->b(Lcom/google/protobuf/Duration;Lcom/google/protobuf/Duration;)I

    move-result v2

    if-gez v2, :cond_4

    const-string p0, "max_interval in retry_backoff cannot be less than base_interval"

    .line 17
    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 18
    :cond_4
    invoke-static {v3, v4}, Lv6/a;->c(J)Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-static {v1, v2}, Lv6/a;->b(Lcom/google/protobuf/Duration;Lcom/google/protobuf/Duration;)I

    move-result v2

    if-gez v2, :cond_5

    .line 19
    invoke-static {v3, v4}, Lv6/a;->c(J)Lcom/google/protobuf/Duration;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object v2, v1

    goto :goto_2

    .line 20
    :cond_6
    invoke-static {v5}, Lv6/a;->h(Lcom/google/protobuf/Duration;)J

    move-result-wide v1

    const-wide/16 v3, 0xa

    mul-long v1, v1, v3

    invoke-static {v1, v2}, Lv6/a;->d(J)Lcom/google/protobuf/Duration;

    move-result-object v2

    :goto_2
    move-object v1, v5

    :cond_7
    const/16 v3, 0x2c

    .line 21
    invoke-static {v3}, Lcom/google/common/base/t;->f(C)Lcom/google/common/base/t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/base/t;->e()Lcom/google/common/base/t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/base/t;->l()Lcom/google/common/base/t;

    move-result-object v3

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetryOn()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/google/common/base/t;->i(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object p0

    .line 22
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$b;

    move-result-object v3

    .line 23
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 24
    :try_start_0
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2d

    const/16 v6, 0x5f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/grpc/Status$Code;->valueOf(Ljava/lang/String;)Lio/grpc/Status$Code;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    sget-object v5, Leh/n0;->A:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_3

    .line 26
    :cond_8
    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList$b;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$b;

    goto :goto_3

    :catch_0
    nop

    goto :goto_3

    .line 27
    :cond_9
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$b;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    const/4 v3, 0x0

    .line 28
    invoke-static {v0, p0, v1, v2, v3}, Leh/l2$a$a$c;->a(ILjava/util/List;Lcom/google/protobuf/Duration;Lcom/google/protobuf/Duration;Lcom/google/protobuf/Duration;)Leh/l2$a$a$c;

    move-result-object p0

    .line 29
    invoke-static {p0}, Leh/n0$q;->c(Ljava/lang/Object;)Leh/n0$q;

    move-result-object p0

    return-object p0
.end method

.method static u0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Route;Leh/m1;ZLjava/util/Map;)Leh/n0$q;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Route;",
            "Leh/m1;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/u0$b;",
            ">;)",
            "Leh/n0$q<",
            "Leh/l2$a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Route;->getMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch;

    move-result-object v0

    invoke-static {v0}, Leh/n0;->w0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch;)Leh/n0$q;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Leh/n0$q;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Route ["

    if-eqz v2, :cond_1

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Route;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] contains invalid RouteMatch: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Leh/n0$q;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    if-eqz p2, :cond_3

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Route;->getTypedPerFilterConfigMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2, p1}, Leh/n0;->r0(Ljava/util/Map;Leh/m1;)Leh/n0$q;

    move-result-object v2

    .line 9
    invoke-static {v2}, Leh/n0$q;->d(Leh/n0$q;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Route;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] contains invalid HttpFilter config: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {v2}, Leh/n0$q;->d(Leh/n0$q;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 13
    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 14
    :cond_2
    invoke-static {v2}, Leh/n0$q;->a(Leh/n0$q;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 15
    :cond_3
    sget-object v4, Leh/n0$e;->c:[I

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Route;->getActionCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Route$ActionCase;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    const/4 p1, 0x2

    if-eq v4, p1, :cond_4

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Route;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] with unknown action type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Route;->getActionCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Route$ActionCase;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 19
    :cond_4
    invoke-static {v0}, Leh/n0$q;->a(Leh/n0$q;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Leh/l2$a$b;

    invoke-static {p0, v2}, Leh/l2$a;->d(Leh/l2$a$b;Ljava/util/Map;)Leh/l2$a;

    move-result-object p0

    .line 20
    invoke-static {p0}, Leh/n0$q;->c(Ljava/lang/Object;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 21
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Route;->getRoute()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;

    move-result-object v4

    invoke-static {v4, p1, p2, p3}, Leh/n0;->v0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;Leh/m1;ZLjava/util/Map;)Leh/n0$q;

    move-result-object p1

    if-nez p1, :cond_6

    return-object v1

    .line 22
    :cond_6
    invoke-static {p1}, Leh/n0$q;->d(Leh/n0$q;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Route;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] contains invalid RouteAction: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p1}, Leh/n0$q;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 26
    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 27
    :cond_7
    invoke-static {v0}, Leh/n0$q;->a(Leh/n0$q;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Leh/l2$a$b;

    invoke-static {p1}, Leh/n0$q;->a(Leh/n0$q;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/l2$a$a;

    invoke-static {p0, p1, v2}, Leh/l2$a;->c(Leh/l2$a$b;Leh/l2$a$a;Ljava/util/Map;)Leh/l2$a;

    move-result-object p0

    .line 28
    invoke-static {p0}, Leh/n0$q;->c(Ljava/lang/Object;)Leh/n0$q;

    move-result-object p0

    return-object p0
.end method

.method static v0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;Leh/m1;ZLjava/util/Map;)Leh/n0$q;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;",
            "Leh/m1;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/u0$b;",
            ">;)",
            "Leh/n0$q<",
            "Leh/l2$a$a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasMaxStreamDuration()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getMaxStreamDuration()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;->hasGrpcTimeoutHeaderMax()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;->getGrpcTimeoutHeaderMax()Lcom/google/protobuf/Duration;

    move-result-object v0

    invoke-static {v0}, Lv6/a;->h(Lcom/google/protobuf/Duration;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;->hasMaxStreamDuration()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;->getMaxStreamDuration()Lcom/google/protobuf/Duration;

    move-result-object v0

    invoke-static {v0}, Lv6/a;->h(Lcom/google/protobuf/Duration;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 7
    :goto_0
    sget-boolean v2, Leh/n0;->w:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasRetryPolicy()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getRetryPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    move-result-object v2

    invoke-static {v2}, Leh/n0;->t0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;)Leh/n0$q;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 9
    invoke-static {v2}, Leh/n0$q;->d(Leh/n0$q;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 10
    invoke-static {v2}, Leh/n0$q;->d(Leh/n0$q;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 11
    :cond_2
    invoke-static {v2}, Leh/n0$q;->a(Leh/n0$q;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leh/l2$a$a$c;

    goto :goto_1

    :cond_3
    move-object v2, v1

    .line 12
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getHashPolicyList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;

    .line 14
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->getTerminal()Z

    move-result v8

    .line 15
    sget-object v9, Leh/n0$e;->g:[I

    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->getPolicySpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$PolicySpecifierCase;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    if-eq v9, v7, :cond_7

    if-eq v9, v6, :cond_5

    goto :goto_3

    .line 16
    :cond_5
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->getFilterState()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$FilterState;

    move-result-object v5

    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$FilterState;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "io.grpc.channel_id"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 17
    invoke-static {v8}, Leh/l2$a$a$b;->b(Z)Leh/l2$a$a$b;

    move-result-object v5

    goto :goto_5

    :cond_6
    :goto_3
    move-object v5, v1

    goto :goto_5

    .line 18
    :cond_7
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->getHeader()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Header;

    move-result-object v5

    .line 19
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Header;->hasRegexRewrite()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Header;->getRegexRewrite()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    move-result-object v6

    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;->hasPattern()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 20
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Header;->getRegexRewrite()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    move-result-object v6

    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;->getPattern()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatcher;

    move-result-object v6

    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatcher;->hasGoogleRe2()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 21
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Header;->getRegexRewrite()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    move-result-object v6

    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;->getPattern()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatcher;

    move-result-object v6

    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatcher;->getRegex()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/re2j/Pattern;->compile(Ljava/lang/String;)Lcom/google/re2j/Pattern;

    move-result-object v6

    .line 22
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Header;->getRegexRewrite()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    move-result-object v7

    invoke-virtual {v7}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;->getSubstitution()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_8
    move-object v6, v1

    move-object v7, v6

    .line 23
    :goto_4
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Header;->getHeaderName()Ljava/lang/String;

    move-result-object v5

    .line 24
    invoke-static {v8, v5, v6, v7}, Leh/l2$a$a$b;->c(ZLjava/lang/String;Lcom/google/re2j/Pattern;Ljava/lang/String;)Leh/l2$a$a$b;

    move-result-object v5

    :goto_5
    if-eqz v5, :cond_4

    .line 25
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 26
    :cond_9
    sget-object v4, Leh/n0$e;->h:[I

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getClusterSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$ClusterSpecifierCase;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v7, :cond_12

    if-eq v4, v6, :cond_11

    const/4 v1, 0x3

    if-eq v4, v1, :cond_d

    const/4 p1, 0x4

    if-eq v4, p1, :cond_a

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown cluster specifier: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getClusterSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$ClusterSpecifierCase;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 29
    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 30
    :cond_a
    sget-boolean p1, Leh/n0;->y:Z

    if-eqz p1, :cond_c

    .line 31
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getClusterSpecifierPlugin()Ljava/lang/String;

    move-result-object p0

    .line 32
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/u0$b;

    if-nez p1, :cond_b

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ClusterSpecifierPlugin for ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] not found"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 34
    :cond_b
    invoke-static {p0, p1}, Leh/u0$a;->b(Ljava/lang/String;Leh/u0$b;)Leh/u0$a;

    move-result-object p0

    .line 35
    invoke-static {p0, v3, v0, v2}, Leh/l2$a$a;->d(Leh/u0$a;Ljava/util/List;Ljava/lang/Long;Leh/l2$a$a$c;)Leh/l2$a$a;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->c(Ljava/lang/Object;)Leh/n0$q;

    move-result-object p0

    return-object p0

    :cond_c
    const-string p0, "Support for ClusterSpecifierPlugin not enabled"

    .line 36
    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 37
    :cond_d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getWeightedClusters()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster;->getClustersList()Ljava/util/List;

    move-result-object p0

    .line 38
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_e

    const-string p0, "No cluster found in weighted cluster list"

    .line 39
    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 40
    :cond_e
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    .line 42
    invoke-static {v1, p1, p2}, Leh/n0;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;Leh/m1;Z)Leh/n0$q;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Leh/n0$q;->g()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 44
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "RouteAction contains invalid ClusterWeight: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v1}, Leh/n0$q;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 46
    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 47
    :cond_f
    invoke-virtual {v1}, Leh/n0$q;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/l2$a$a$a;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 48
    :cond_10
    invoke-static {p3, v3, v0, v2}, Leh/l2$a$a;->e(Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Leh/l2$a$a$c;)Leh/l2$a$a;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->c(Ljava/lang/Object;)Leh/n0$q;

    move-result-object p0

    return-object p0

    :cond_11
    return-object v1

    .line 49
    :cond_12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getCluster()Ljava/lang/String;

    move-result-object p0

    .line 50
    invoke-static {p0, v3, v0, v2}, Leh/l2$a$a;->c(Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;Leh/l2$a$a$c;)Leh/l2$a$a;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->c(Ljava/lang/Object;)Leh/n0$q;

    move-result-object p0

    return-object p0
.end method

.method static w0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch;)Leh/n0$q;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch;",
            ")",
            "Leh/n0$q<",
            "Leh/l2$a$b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch;->getQueryParametersCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {p0}, Leh/n0;->s0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch;)Leh/n0$q;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Leh/n0$q;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v0}, Leh/n0$q;->g()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch;->hasRuntimeFraction()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch;->getRuntimeFraction()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent;->getDefaultValue()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent;

    move-result-object v1

    invoke-static {v1}, Leh/n0;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent;)Leh/n0$q;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Leh/n0$q;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v1}, Leh/n0$q;->g()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 9
    :cond_2
    invoke-virtual {v1}, Leh/n0$q;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfh/h;

    .line 10
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch;->getHeadersList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;

    .line 12
    invoke-static {v3}, Leh/n0;->l0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;)Leh/n0$q;

    move-result-object v3

    .line 13
    invoke-virtual {v3}, Leh/n0$q;->g()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 14
    invoke-virtual {v3}, Leh/n0$q;->g()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 15
    :cond_4
    invoke-virtual {v3}, Leh/n0$q;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfh/i;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {v0}, Leh/n0$q;->h()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Leh/l2$a$b$a;

    .line 17
    invoke-static {p0, v2, v1}, Leh/l2$a$b;->a(Leh/l2$a$b$a;Ljava/util/List;Lfh/h;)Leh/l2$a$b;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->c(Ljava/lang/Object;)Leh/n0$q;

    move-result-object p0

    return-object p0
.end method

.method static synthetic x(Leh/n0;)Leh/q2;
    .locals 0

    iget-object p0, p0, Leh/n0;->t:Leh/q2;

    return-object p0
.end method

.method static x0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Listener;Ljava/util/Set;Leh/k2;Leh/m1;Ljava/util/Set;Z)Leh/h1;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Listener;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Leh/k2;",
            "Leh/m1;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)",
            "Leh/h1;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leh/n0$o;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Listener;->getTrafficDirection()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TrafficDirection;

    move-result-object v0

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TrafficDirection;->INBOUND:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TrafficDirection;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Listener "

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Listener;->getListenerFiltersList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Listener;->hasUseOriginalDst()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Listener;->getAddress()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Address;->hasSocketAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Listener;->getAddress()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Address;->getSocketAddress()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 7
    sget-object v3, Leh/n0$e;->a:[I

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress;->getPortSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    const-string v5, ":"

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress;->getPortValue()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 9
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress;->getNamedPort()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 10
    :goto_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$b;

    move-result-object v0

    .line 11
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Listener;->getFilterChainsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChain;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, v10

    move-object/from16 v8, p4

    move/from16 v9, p5

    .line 13
    invoke-static/range {v3 .. v9}, Leh/n0;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChain;Ljava/util/Set;Leh/k2;Leh/m1;Ljava/util/Set;Ljava/util/Set;Z)Leh/f1;

    move-result-object v3

    .line 14
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$b;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$b;

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Listener;->hasDefaultFilterChain()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Listener;->getDefaultFilterChain()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChain;

    move-result-object v4

    const/4 v8, 0x0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    .line 17
    invoke-static/range {v4 .. v10}, Leh/n0;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChain;Ljava/util/Set;Leh/k2;Leh/m1;Ljava/util/Set;Ljava/util/Set;Z)Leh/f1;

    move-result-object v2

    .line 18
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Listener;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$b;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 19
    invoke-static {v3, v1, v0, v2}, Leh/h1;->b(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Leh/f1;)Leh/h1;

    move-result-object v0

    return-object v0

    .line 20
    :cond_5
    new-instance v0, Leh/n0$o;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Listener;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cannot have use_original_dst set to true"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw v0

    .line 22
    :cond_6
    new-instance v0, Leh/n0$o;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Listener;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cannot have listener_filters"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw v0

    .line 24
    :cond_7
    new-instance v0, Leh/n0$o;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Listener;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with invalid traffic direction: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Listener;->getTrafficDirection()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TrafficDirection;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Leh/n0$o;-><init>(Ljava/lang/String;Leh/n0$f;)V

    throw v0
.end method

.method static synthetic y(Leh/n0;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Leh/n0;->c:Ljava/util/Map;

    return-object p0
.end method

.method private static y0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/VirtualHost;Leh/m1;ZLjava/util/Map;)Leh/n0$q;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/VirtualHost;",
            "Leh/m1;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/u0$b;",
            ">;)",
            "Leh/n0$q<",
            "Leh/l2;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/VirtualHost;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/VirtualHost;->getRoutesCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/VirtualHost;->getRoutesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Route;

    .line 4
    invoke-static {v3, p1, p2, p3}, Leh/n0;->u0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Route;Leh/m1;ZLjava/util/Map;)Leh/n0$q;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v3}, Leh/n0$q;->g()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Virtual host ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] contains invalid route : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v3}, Leh/n0$q;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    invoke-virtual {v3}, Leh/n0$q;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leh/l2$a;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/VirtualHost;->getDomainsList()Lcom/google/protobuf/i2;

    move-result-object p0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 11
    invoke-static {v0, p0, v1, p1}, Leh/l2;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)Leh/l2;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->c(Ljava/lang/Object;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 12
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/VirtualHost;->getTypedPerFilterConfigMap()Ljava/util/Map;

    move-result-object p2

    invoke-static {p2, p1}, Leh/n0;->r0(Ljava/util/Map;Leh/m1;)Leh/n0$q;

    move-result-object p1

    .line 13
    invoke-static {p1}, Leh/n0$q;->d(Leh/n0$q;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "VirtualHost ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/VirtualHost;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] contains invalid HttpFilter config: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-static {p1}, Leh/n0$q;->d(Leh/n0$q;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-static {p0}, Leh/n0$q;->b(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0

    .line 18
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/VirtualHost;->getDomainsList()Lcom/google/protobuf/i2;

    move-result-object p0

    invoke-static {p1}, Leh/n0$q;->a(Leh/n0$q;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 19
    invoke-static {v0, p0, v1, p1}, Leh/l2;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)Leh/l2;

    move-result-object p0

    invoke-static {p0}, Leh/n0$q;->c(Ljava/lang/Object;)Leh/n0$q;

    move-result-object p0

    return-object p0
.end method

.method static synthetic z(Leh/n0;)Z
    .locals 0

    iget-boolean p0, p0, Leh/n0;->q:Z

    return p0
.end method

.method private z0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Listener;Ljava/util/Set;Z)Leh/p2$g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Listener;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)",
            "Leh/p2$g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leh/n0$o;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Listener;->getApiListener()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ApiListener;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ApiListener;->getApiListener()Lcom/google/protobuf/Any;

    move-result-object p1

    const-class v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;

    const-string v1, "type.googleapis.com/envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager"

    const-string v2, "type.googleapis.com/envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager"

    .line 2
    invoke-static {p1, v0, v1, v2}, Leh/n0;->E0(Lcom/google/protobuf/Any;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/protobuf/l1;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget-object v0, p0, Leh/n0;->b:Leh/m1;

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, p3, v1}, Leh/n0;->m0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;Ljava/util/Set;Leh/m1;ZZ)Leh/n1;

    move-result-object p1

    invoke-static {p1}, Leh/p2$g;->a(Leh/n1;)Leh/p2$g;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Leh/n0$o;

    const/4 p3, 0x0

    const-string v0, "Could not parse HttpConnectionManager config from ApiListener"

    invoke-direct {p2, v0, p1, p3}, Leh/n0$o;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Leh/n0$f;)V

    throw p2
.end method


# virtual methods
.method public a(Leh/j0$d;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leh/j0$d;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Any;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Leh/n0;->a:Lio/grpc/d1;

    invoke-virtual {v0}, Lio/grpc/d1;->e()V

    .line 2
    new-instance v4, Ljava/util/HashMap;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 4
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 7
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Any;

    .line 8
    :try_start_0
    const-class v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterLoadAssignment;

    sget-object v7, Leh/a$f;->e:Leh/a$f;

    .line 9
    invoke-virtual {v7}, Leh/a$f;->b()Ljava/lang/String;

    move-result-object v8

    .line 10
    invoke-virtual {v7}, Leh/a$f;->c()Ljava/lang/String;

    move-result-object v10

    .line 11
    invoke-static {v3, v6, v8, v10}, Leh/n0;->E0(Lcom/google/protobuf/Any;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/protobuf/l1;

    move-result-object v6

    check-cast v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterLoadAssignment;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1

    .line 12
    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterLoadAssignment;->getClusterName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/google/protobuf/Any;->getTypeUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Leh/p2;->q(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported resource name: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterLoadAssignment;->getClusterName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for type: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterLoadAssignment;->getClusterName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Leh/p2;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 15
    iget-object v8, p0, Leh/n0;->g:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    :try_start_1
    invoke-static {v6}, Leh/n0;->B0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterLoadAssignment;)Leh/p2$e;

    move-result-object v6
    :try_end_1
    .catch Leh/n0$o; {:try_start_1 .. :try_end_1} :catch_0

    .line 18
    new-instance v8, Leh/n0$n;

    const/4 v10, 0x0

    invoke-direct {v8, v6, v3, v10}, Leh/n0$n;-><init>(Leh/p2$l;Lcom/google/protobuf/Any;Leh/n0$f;)V

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v3

    .line 19
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EDS response ClusterLoadAssignment \'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' validation error: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_1
    move-exception v3

    .line 23
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EDS response Resource index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " - can\'t decode ClusterLoadAssignment: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 24
    :cond_2
    iget-object p3, p0, Leh/n0;->t:Leh/q2;

    sget-object v2, Leh/q2$b;->b:Leh/q2$b;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v1

    const/4 v1, 0x1

    aput-object p4, v3, v1

    const/4 v1, 0x2

    aput-object v0, v3, v1

    const-string v0, "Received EDS Response version {0} nonce {1}. Parsed resources: {2}"

    invoke-virtual {p3, v2, v0, v3}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    sget-object v3, Leh/a$f;->e:Leh/a$f;

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v7, p2

    move-object v8, p4

    .line 27
    invoke-direct/range {v1 .. v9}, Leh/n0;->a0(Leh/j0$d;Leh/a$f;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public b(Lio/grpc/Status;)V
    .locals 2

    .line 1
    iget-object v0, p0, Leh/n0;->a:Lio/grpc/d1;

    invoke-virtual {v0}, Lio/grpc/d1;->e()V

    .line 2
    invoke-direct {p0}, Leh/n0;->O()V

    .line 3
    iget-object v0, p0, Leh/n0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/n0$p;

    .line 4
    invoke-virtual {v1, p1}, Leh/n0$p;->m(Lio/grpc/Status;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Leh/n0;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/n0$p;

    .line 6
    invoke-virtual {v1, p1}, Leh/n0$p;->m(Lio/grpc/Status;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Leh/n0;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/n0$p;

    .line 8
    invoke-virtual {v1, p1}, Leh/n0$p;->m(Lio/grpc/Status;)V

    goto :goto_2

    .line 9
    :cond_2
    iget-object v0, p0, Leh/n0;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/n0$p;

    .line 10
    invoke-virtual {v1, p1}, Leh/n0$p;->m(Lio/grpc/Status;)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public c(Leh/j0$d;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leh/j0$d;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Any;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v10, p0

    .line 1
    iget-object v0, v10, Leh/n0;->a:Lio/grpc/d1;

    invoke-virtual {v0}, Lio/grpc/d1;->e()V

    .line 2
    new-instance v4, Ljava/util/HashMap;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    new-instance v1, Ljava/util/HashSet;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 4
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 7
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    move-object/from16 v7, p3

    .line 8
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Any;

    .line 9
    :try_start_0
    const-class v8, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;

    sget-object v11, Leh/a$f;->d:Leh/a$f;

    .line 10
    invoke-virtual {v11}, Leh/a$f;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Leh/a$f;->c()Ljava/lang/String;

    move-result-object v13

    .line 11
    invoke-static {v0, v8, v12, v13}, Leh/n0;->E0(Lcom/google/protobuf/Any;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/protobuf/l1;

    move-result-object v8

    check-cast v8, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_2

    .line 12
    invoke-virtual {v8}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lcom/google/protobuf/Any;->getTypeUrl()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Leh/p2;->q(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unsupported resource name: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v8}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for type: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    move-object/from16 v14, p1

    goto/16 :goto_4

    .line 16
    :cond_0
    invoke-virtual {v8}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Leh/p2;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 17
    iget-object v12, v10, Leh/n0;->f:Ljava/util/Map;

    invoke-interface {v12, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    goto :goto_1

    .line 18
    :cond_1
    invoke-interface {v1, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    :try_start_1
    invoke-virtual {p0}, Leh/n0;->o()Leh/j0$b;

    move-result-object v12

    const/4 v13, 0x0

    if-eqz v12, :cond_2

    invoke-virtual {p0}, Leh/n0;->o()Leh/j0$b;

    move-result-object v12

    invoke-virtual {v12}, Leh/j0$b;->c()Lcom/google/common/collect/ImmutableMap;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 20
    invoke-virtual {p0}, Leh/n0;->o()Leh/j0$b;

    move-result-object v12

    invoke-virtual {v12}, Leh/j0$b;->c()Lcom/google/common/collect/ImmutableMap;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v12
    :try_end_1
    .catch Leh/n0$o; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v14, p1

    goto :goto_2

    :cond_2
    move-object/from16 v14, p1

    move-object v12, v13

    .line 21
    :goto_2
    :try_start_2
    invoke-static {v8, v6, v12, v14}, Leh/n0;->A0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster;Ljava/util/Set;Ljava/util/Set;Leh/j0$d;)Leh/p2$c;

    move-result-object v8
    :try_end_2
    .catch Leh/n0$o; {:try_start_2 .. :try_end_2} :catch_0

    .line 22
    new-instance v12, Leh/n0$n;

    invoke-direct {v12, v8, v0, v13}, Leh/n0$n;-><init>(Leh/p2$l;Lcom/google/protobuf/Any;Leh/n0$f;)V

    invoke-interface {v4, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v14, p1

    .line 23
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CDS response Cluster \'"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\' validation error: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-interface {v5, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v14, p1

    .line 27
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CDS response Resource index "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " - can\'t decode Cluster: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    move-object/from16 v14, p1

    .line 28
    iget-object v0, v10, Leh/n0;->t:Leh/q2;

    sget-object v3, Leh/q2$b;->b:Leh/q2$b;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v2

    const/4 v2, 0x1

    aput-object p4, v7, v2

    const/4 v2, 0x2

    aput-object v1, v7, v2

    const-string v1, "Received CDS Response version {0} nonce {1}. Parsed resources: {2}"

    invoke-virtual {v0, v3, v1, v7}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    sget-object v3, Leh/a$f;->d:Leh/a$f;

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v9}, Leh/n0;->a0(Leh/j0$d;Leh/a$f;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public d(Leh/j0$d;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leh/j0$d;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Any;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v10, p0

    .line 1
    iget-object v0, v10, Leh/n0;->a:Lio/grpc/d1;

    invoke-virtual {v0}, Lio/grpc/d1;->e()V

    .line 2
    new-instance v4, Ljava/util/HashMap;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    new-instance v1, Ljava/util/HashSet;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 4
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 7
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v7, 0x1

    if-ge v3, v0, :cond_4

    move-object/from16 v8, p3

    .line 8
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Any;

    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/Any;->getTypeUrl()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Leh/a$f;->b:Leh/a$f;

    invoke-virtual {v12}, Leh/a$f;->b()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 10
    :try_start_0
    const-class v13, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Listener;

    invoke-virtual {v12}, Leh/a$f;->b()Ljava/lang/String;

    move-result-object v14

    .line 11
    invoke-virtual {v12}, Leh/a$f;->c()Ljava/lang/String;

    move-result-object v15

    .line 12
    invoke-static {v0, v13, v14, v15}, Leh/n0;->E0(Lcom/google/protobuf/Any;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/protobuf/l1;

    move-result-object v13

    check-cast v13, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Listener;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    invoke-virtual {v13}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Listener;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Lcom/google/protobuf/Any;->getTypeUrl()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Leh/p2;->q(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported resource name: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v13}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Listener;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for type: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 17
    :cond_0
    invoke-virtual {v13}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Listener;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Leh/p2;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 18
    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    :try_start_1
    invoke-virtual {v13}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Listener;->hasApiListener()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 20
    sget-boolean v14, Leh/n0;->v:Z

    if-eqz v14, :cond_1

    if-eqz v11, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-direct {v10, v13, v6, v7}, Leh/n0;->z0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Listener;Ljava/util/Set;Z)Leh/p2$g;

    move-result-object v7

    goto :goto_3

    .line 21
    :cond_2
    sget-boolean v14, Leh/n0;->x:Z

    if-eqz v14, :cond_3

    if-eqz v11, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    invoke-direct {v10, v13, v6, v7}, Leh/n0;->D0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/Listener;Ljava/util/Set;Z)Leh/p2$g;

    move-result-object v7
    :try_end_1
    .catch Leh/n0$o; {:try_start_1 .. :try_end_1} :catch_0

    .line 22
    :goto_3
    new-instance v11, Leh/n0$n;

    const/4 v13, 0x0

    invoke-direct {v11, v7, v0, v13}, Leh/n0$n;-><init>(Leh/p2$l;Lcom/google/protobuf/Any;Leh/n0$f;)V

    invoke-interface {v4, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catch_0
    move-exception v0

    .line 23
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "LDS response Listener \'"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\' validation error: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-interface {v5, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catch_1
    move-exception v0

    .line 27
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "LDS response Resource index "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " - can\'t decode Listener: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 28
    :cond_4
    iget-object v0, v10, Leh/n0;->t:Leh/q2;

    sget-object v3, Leh/q2$b;->b:Leh/q2$b;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v2

    aput-object p4, v8, v7

    const/4 v2, 0x2

    aput-object v1, v8, v2

    const-string v1, "Received LDS Response version {0} nonce {1}. Parsed resources: {2}"

    invoke-virtual {v0, v3, v1, v8}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    sget-object v3, Leh/a$f;->b:Leh/a$f;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v9}, Leh/n0;->a0(Leh/j0$d;Leh/a$f;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public e(Leh/j0$d;Leh/a$f;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leh/j0$d;",
            "Leh/a$f;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Leh/n0;->Z(Leh/a$f;)Ljava/util/Map;

    move-result-object p2

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$a;

    move-result-object v0

    .line 3
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leh/n0$p;

    invoke-static {v3}, Leh/n0$p;->f(Leh/n0$p;)Leh/j0$d;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableSet$a;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$a;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$a;->h()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    :cond_2
    return-object p1
.end method

.method public f(Leh/j0$d;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leh/j0$d;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Any;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v10, p0

    .line 1
    iget-object v0, v10, Leh/n0;->a:Lio/grpc/d1;

    invoke-virtual {v0}, Lio/grpc/d1;->e()V

    .line 2
    new-instance v4, Ljava/util/HashMap;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    new-instance v1, Ljava/util/HashSet;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 4
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v6, 0x1

    if-ge v3, v0, :cond_2

    move-object/from16 v7, p3

    .line 7
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Any;

    .line 8
    :try_start_0
    const-class v8, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    sget-object v11, Leh/a$f;->c:Leh/a$f;

    .line 9
    invoke-virtual {v11}, Leh/a$f;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Leh/a$f;->c()Ljava/lang/String;

    move-result-object v13

    .line 10
    invoke-static {v0, v8, v12, v13}, Leh/n0;->E0(Lcom/google/protobuf/Any;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/protobuf/l1;

    move-result-object v8

    check-cast v8, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    invoke-virtual {v8}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lcom/google/protobuf/Any;->getTypeUrl()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Leh/p2;->q(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported resource name: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v8}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for type: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 15
    :cond_0
    invoke-virtual {v8}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Leh/p2;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 16
    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v0}, Lcom/google/protobuf/Any;->getTypeUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Leh/a$f;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 18
    :try_start_1
    iget-object v13, v10, Leh/n0;->b:Leh/m1;

    sget-boolean v14, Leh/n0;->v:Z

    if-eqz v14, :cond_1

    if-eqz v11, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-static {v8, v13, v6}, Leh/n0;->C0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;Leh/m1;Z)Leh/p2$i;

    move-result-object v6
    :try_end_1
    .catch Leh/n0$o; {:try_start_1 .. :try_end_1} :catch_0

    .line 19
    new-instance v8, Leh/n0$n;

    const/4 v11, 0x0

    invoke-direct {v8, v6, v0, v11}, Leh/n0$n;-><init>(Leh/p2$l;Lcom/google/protobuf/Any;Leh/n0$f;)V

    invoke-interface {v4, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_0
    move-exception v0

    .line 20
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RDS response RouteConfiguration \'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' validation error: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-interface {v5, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_1
    move-exception v0

    .line 24
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RDS response Resource index "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " - can\'t decode RouteConfiguration: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 25
    :cond_2
    iget-object v0, v10, Leh/n0;->t:Leh/q2;

    sget-object v3, Leh/q2$b;->b:Leh/q2$b;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v2

    aput-object p4, v7, v6

    const/4 v2, 0x2

    aput-object v1, v7, v2

    const-string v1, "Received RDS Response version {0} nonce {1}. Parsed resources: {2}"

    invoke-virtual {v0, v3, v1, v7}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    sget-object v3, Leh/a$f;->c:Leh/a$f;

    .line 27
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v6

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    .line 28
    invoke-direct/range {v1 .. v9}, Leh/n0;->a0(Leh/j0$d;Leh/a$f;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public g(Leh/j0$d;)V
    .locals 3

    .line 1
    iget-object v0, p0, Leh/n0;->a:Lio/grpc/d1;

    invoke-virtual {v0}, Lio/grpc/d1;->e()V

    .line 2
    iget-object v0, p0, Leh/n0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/n0$p;

    .line 3
    invoke-static {v1}, Leh/n0$p;->f(Leh/n0$p;)Leh/j0$d;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Leh/n0$p;->p()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Leh/n0;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/n0$p;

    .line 6
    invoke-static {v1}, Leh/n0$p;->f(Leh/n0$p;)Leh/j0$d;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v1}, Leh/n0$p;->p()V

    goto :goto_1

    .line 8
    :cond_3
    iget-object v0, p0, Leh/n0;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/n0$p;

    .line 9
    invoke-static {v1}, Leh/n0$p;->f(Leh/n0$p;)Leh/j0$d;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    invoke-virtual {v1}, Leh/n0$p;->p()V

    goto :goto_2

    .line 11
    :cond_5
    iget-object v0, p0, Leh/n0;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/n0$p;

    .line 12
    invoke-static {v1}, Leh/n0$p;->f(Leh/n0$p;)Leh/j0$d;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 13
    invoke-virtual {v1}, Leh/n0$p;->p()V

    goto :goto_3

    :cond_7
    return-void
.end method

.method h(Leh/j0$d;Ljava/lang/String;Ljava/lang/String;)Leh/s1$b;
    .locals 1

    .line 1
    iget-object v0, p0, Leh/n0;->h:Leh/s1;

    .line 2
    invoke-virtual {v0, p2, p3}, Leh/s1;->d(Ljava/lang/String;Ljava/lang/String;)Leh/s1$b;

    move-result-object p2

    .line 3
    iget-object p3, p0, Leh/n0;->a:Lio/grpc/d1;

    new-instance v0, Leh/n0$c;

    invoke-direct {v0, p0, p1}, Leh/n0$c;-><init>(Leh/n0;Leh/j0$d;)V

    invoke-virtual {p3, v0}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-object p2
.end method

.method i(Leh/j0$d;Ljava/lang/String;Ljava/lang/String;Leh/t1;)Leh/s1$d;
    .locals 1

    .line 1
    iget-object v0, p0, Leh/n0;->h:Leh/s1;

    .line 2
    invoke-virtual {v0, p2, p3, p4}, Leh/s1;->e(Ljava/lang/String;Ljava/lang/String;Leh/t1;)Leh/s1$d;

    move-result-object p2

    .line 3
    iget-object p3, p0, Leh/n0;->a:Lio/grpc/d1;

    new-instance p4, Leh/n0$d;

    invoke-direct {p4, p0, p1}, Leh/n0$d;-><init>(Leh/n0;Leh/j0$d;)V

    invoke-virtual {p3, p4}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-object p2
.end method

.method j(Ljava/lang/String;Leh/p2$b;)V
    .locals 2

    iget-object v0, p0, Leh/n0;->a:Lio/grpc/d1;

    new-instance v1, Leh/n0$m;

    invoke-direct {v1, p0, p1, p2}, Leh/n0$m;-><init>(Leh/n0;Ljava/lang/String;Leh/p2$b;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method k(Ljava/lang/String;Leh/p2$d;)V
    .locals 2

    iget-object v0, p0, Leh/n0;->a:Lio/grpc/d1;

    new-instance v1, Leh/n0$b;

    invoke-direct {v1, p0, p1, p2}, Leh/n0$b;-><init>(Leh/n0;Ljava/lang/String;Leh/p2$d;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method l(Ljava/lang/String;Leh/p2$f;)V
    .locals 2

    iget-object v0, p0, Leh/n0;->a:Lio/grpc/d1;

    new-instance v1, Leh/n0$i;

    invoke-direct {v1, p0, p1, p2}, Leh/n0$i;-><init>(Leh/n0;Ljava/lang/String;Leh/p2$f;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method m(Ljava/lang/String;Leh/p2$h;)V
    .locals 2

    iget-object v0, p0, Leh/n0;->a:Lio/grpc/d1;

    new-instance v1, Leh/n0$k;

    invoke-direct {v1, p0, p1, p2}, Leh/n0$k;-><init>(Leh/n0;Ljava/lang/String;Leh/p2$h;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method o()Leh/j0$b;
    .locals 1

    iget-object v0, p0, Leh/n0;->k:Leh/j0$b;

    return-object v0
.end method

.method p()Leh/k2;
    .locals 1

    iget-object v0, p0, Leh/n0;->r:Leh/k2;

    return-object v0
.end method

.method s()V
    .locals 2

    iget-object v0, p0, Leh/n0;->a:Lio/grpc/d1;

    new-instance v1, Leh/n0$g;

    invoke-direct {v1, p0}, Leh/n0$g;-><init>(Leh/n0;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method t(Ljava/lang/String;Leh/p2$b;)V
    .locals 2

    iget-object v0, p0, Leh/n0;->a:Lio/grpc/d1;

    new-instance v1, Leh/n0$l;

    invoke-direct {v1, p0, p1, p2}, Leh/n0$l;-><init>(Leh/n0;Ljava/lang/String;Leh/p2$b;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leh/n0;->s:Lio/grpc/g0;

    invoke-virtual {v0}, Lio/grpc/g0;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u(Ljava/lang/String;Leh/p2$d;)V
    .locals 2

    iget-object v0, p0, Leh/n0;->a:Lio/grpc/d1;

    new-instance v1, Leh/n0$a;

    invoke-direct {v1, p0, p1, p2}, Leh/n0$a;-><init>(Leh/n0;Ljava/lang/String;Leh/p2$d;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method v(Ljava/lang/String;Leh/p2$f;)V
    .locals 2

    iget-object v0, p0, Leh/n0;->a:Lio/grpc/d1;

    new-instance v1, Leh/n0$h;

    invoke-direct {v1, p0, p1, p2}, Leh/n0$h;-><init>(Leh/n0;Ljava/lang/String;Leh/p2$f;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method w(Ljava/lang/String;Leh/p2$h;)V
    .locals 2

    iget-object v0, p0, Leh/n0;->a:Lio/grpc/d1;

    new-instance v1, Leh/n0$j;

    invoke-direct {v1, p0, p1, p2}, Leh/n0$j;-><init>(Leh/n0;Ljava/lang/String;Leh/p2$h;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
