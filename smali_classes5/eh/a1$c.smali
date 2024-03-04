.class public final Leh/a1$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/a1$c$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private final d:Leh/t1;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leh/a1$b;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Leh/t1;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Leh/t1;",
            "Ljava/util/List<",
            "Leh/a1$b;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Leh/a1$c;->a:Ljava/lang/String;

    const-string p1, "cluster"

    .line 4
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Leh/a1$c;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Leh/a1$c;->c:Ljava/util/Map;

    .line 6
    iput-object p4, p0, Leh/a1$c;->d:Leh/t1;

    const-string p1, "listeningAddresses"

    .line 7
    invoke-static {p5, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 8
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Leh/a1$c;->e:Ljava/util/List;

    const-string p1, "buildVersion"

    .line 9
    invoke-static {p6, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Leh/a1$c;->f:Ljava/lang/String;

    const-string p1, "userAgentName"

    .line 10
    invoke-static {p7, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Leh/a1$c;->g:Ljava/lang/String;

    .line 11
    iput-object p8, p0, Leh/a1$c;->h:Ljava/lang/String;

    const-string p1, "clientFeatures"

    .line 12
    invoke-static {p9, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 13
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Leh/a1$c;->i:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Leh/t1;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Leh/a1$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Leh/a1$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Leh/t1;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static a()Leh/a1$c$a;
    .locals 2

    new-instance v0, Leh/a1$c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Leh/a1$c$a;-><init>(Leh/a1$a;)V

    return-object v0
.end method


# virtual methods
.method b()Leh/a1$c$a;
    .locals 3

    .line 1
    new-instance v0, Leh/a1$c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Leh/a1$c$a;-><init>(Leh/a1$a;)V

    .line 2
    iget-object v1, p0, Leh/a1$c;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Leh/a1$c$a;->b(Leh/a1$c$a;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v1, p0, Leh/a1$c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Leh/a1$c$a;->c(Leh/a1$c$a;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object v1, p0, Leh/a1$c;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Leh/a1$c$a;->d(Leh/a1$c$a;Ljava/util/Map;)Ljava/util/Map;

    .line 5
    iget-object v1, p0, Leh/a1$c;->d:Leh/t1;

    invoke-static {v0, v1}, Leh/a1$c$a;->e(Leh/a1$c$a;Leh/t1;)Leh/t1;

    .line 6
    iget-object v1, p0, Leh/a1$c;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Leh/a1$c$a;->f(Leh/a1$c$a;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    invoke-static {v0}, Leh/a1$c$a;->g(Leh/a1$c$a;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Leh/a1$c;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget-object v1, p0, Leh/a1$c;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Leh/a1$c$a;->h(Leh/a1$c$a;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    iget-object v1, p0, Leh/a1$c;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Leh/a1$c$a;->i(Leh/a1$c$a;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    invoke-static {v0}, Leh/a1$c$a;->a(Leh/a1$c$a;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Leh/a1$c;->i:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public c()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;
    .locals 5

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node$c;

    move-result-object v0

    .line 2
    iget-object v1, p0, Leh/a1$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node$c;->y0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node$c;

    .line 3
    iget-object v1, p0, Leh/a1$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node$c;->v0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node$c;

    .line 4
    iget-object v1, p0, Leh/a1$c;->c:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Lcom/google/protobuf/Struct;->newBuilder()Lcom/google/protobuf/Struct$b;

    move-result-object v1

    .line 6
    iget-object v2, p0, Leh/a1$c;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Leh/a1;->a(Ljava/lang/Object;)Lcom/google/protobuf/Value;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/google/protobuf/Struct$b;->k0(Ljava/lang/String;Lcom/google/protobuf/Value;)Lcom/google/protobuf/Struct$b;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node$c;->B0(Lcom/google/protobuf/Struct$b;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node$c;

    .line 9
    :cond_1
    iget-object v1, p0, Leh/a1$c;->d:Leh/t1;

    if-eqz v1, :cond_2

    .line 10
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality$b;

    move-result-object v1

    iget-object v2, p0, Leh/a1$c;->d:Leh/t1;

    .line 11
    invoke-virtual {v2}, Leh/t1;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality$b;->j0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality$b;

    move-result-object v1

    iget-object v2, p0, Leh/a1$c;->d:Leh/t1;

    .line 12
    invoke-virtual {v2}, Leh/t1;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality$b;->m0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality$b;

    move-result-object v1

    iget-object v2, p0, Leh/a1$c;->d:Leh/t1;

    .line 13
    invoke-virtual {v2}, Leh/t1;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality$b;->k0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality$b;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node$c;->z0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality$b;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node$c;

    .line 15
    :cond_2
    iget-object v1, p0, Leh/a1$c;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leh/a1$b;

    .line 16
    invoke-virtual {v2}, Leh/a1$b;->a()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Address;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node$c;->X(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Address;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node$c;

    goto :goto_1

    .line 17
    :cond_3
    iget-object v1, p0, Leh/a1$c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node$c;->H0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node$c;

    .line 18
    iget-object v1, p0, Leh/a1$c;->h:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 19
    invoke-virtual {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node$c;->I0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node$c;

    .line 20
    :cond_4
    iget-object v1, p0, Leh/a1$c;->i:Ljava/util/List;

    invoke-virtual {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node$c;->W(Ljava/lang/Iterable;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node$c;

    .line 21
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node$c;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;

    move-result-object v0

    return-object v0
.end method

.method public d()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;
    .locals 5

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    move-result-object v0

    .line 2
    iget-object v1, p0, Leh/a1$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->x0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    .line 3
    iget-object v1, p0, Leh/a1$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->u0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    .line 4
    iget-object v1, p0, Leh/a1$c;->c:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Lcom/google/protobuf/Struct;->newBuilder()Lcom/google/protobuf/Struct$b;

    move-result-object v1

    .line 6
    iget-object v2, p0, Leh/a1$c;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Leh/a1;->a(Ljava/lang/Object;)Lcom/google/protobuf/Value;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/google/protobuf/Struct$b;->k0(Ljava/lang/String;Lcom/google/protobuf/Value;)Lcom/google/protobuf/Struct$b;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->z0(Lcom/google/protobuf/Struct$b;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    .line 9
    :cond_1
    iget-object v1, p0, Leh/a1$c;->d:Leh/t1;

    if-eqz v1, :cond_2

    .line 10
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality$b;

    move-result-object v1

    iget-object v2, p0, Leh/a1$c;->d:Leh/t1;

    .line 11
    invoke-virtual {v2}, Leh/t1;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality$b;->j0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality$b;

    move-result-object v1

    iget-object v2, p0, Leh/a1$c;->d:Leh/t1;

    .line 12
    invoke-virtual {v2}, Leh/t1;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality$b;->m0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality$b;

    move-result-object v1

    iget-object v2, p0, Leh/a1$c;->d:Leh/t1;

    .line 13
    invoke-virtual {v2}, Leh/t1;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality$b;->k0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality$b;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->y0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality$b;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    .line 15
    :cond_2
    iget-object v1, p0, Leh/a1$c;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leh/a1$b;

    .line 16
    invoke-virtual {v2}, Leh/a1$b;->b()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->X(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    goto :goto_1

    .line 17
    :cond_3
    iget-object v1, p0, Leh/a1$c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->t0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    .line 18
    iget-object v1, p0, Leh/a1$c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->D0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    .line 19
    iget-object v1, p0, Leh/a1$c;->h:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 20
    invoke-virtual {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->H0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    .line 21
    :cond_4
    iget-object v1, p0, Leh/a1$c;->i:Ljava/util/List;

    invoke-virtual {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->W(Ljava/lang/Iterable;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    .line 22
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Leh/a1$c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Leh/a1$c;

    .line 3
    iget-object v2, p0, Leh/a1$c;->a:Ljava/lang/String;

    iget-object v3, p1, Leh/a1$c;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Leh/a1$c;->b:Ljava/lang/String;

    iget-object v3, p1, Leh/a1$c;->b:Ljava/lang/String;

    .line 4
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Leh/a1$c;->c:Ljava/util/Map;

    iget-object v3, p1, Leh/a1$c;->c:Ljava/util/Map;

    .line 5
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Leh/a1$c;->d:Leh/t1;

    iget-object v3, p1, Leh/a1$c;->d:Leh/t1;

    .line 6
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Leh/a1$c;->e:Ljava/util/List;

    iget-object v3, p1, Leh/a1$c;->e:Ljava/util/List;

    .line 7
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Leh/a1$c;->f:Ljava/lang/String;

    iget-object v3, p1, Leh/a1$c;->f:Ljava/lang/String;

    .line 8
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Leh/a1$c;->g:Ljava/lang/String;

    iget-object v3, p1, Leh/a1$c;->g:Ljava/lang/String;

    .line 9
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Leh/a1$c;->h:Ljava/lang/String;

    iget-object v3, p1, Leh/a1$c;->h:Ljava/lang/String;

    .line 10
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Leh/a1$c;->i:Ljava/util/List;

    iget-object p1, p1, Leh/a1$c;->i:Ljava/util/List;

    .line 11
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Leh/a1$c;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Leh/a1$c;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Leh/a1$c;->c:Ljava/util/Map;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Leh/a1$c;->d:Leh/t1;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Leh/a1$c;->e:Ljava/util/List;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Leh/a1$c;->f:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Leh/a1$c;->g:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Leh/a1$c;->h:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Leh/a1$c;->i:Ljava/util/List;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Leh/a1$c;->a:Ljava/lang/String;

    const-string v2, "id"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Leh/a1$c;->b:Ljava/lang/String;

    const-string v2, "cluster"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Leh/a1$c;->c:Ljava/util/Map;

    const-string v2, "metadata"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Leh/a1$c;->d:Leh/t1;

    const-string v2, "locality"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Leh/a1$c;->e:Ljava/util/List;

    const-string v2, "listeningAddresses"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Leh/a1$c;->f:Ljava/lang/String;

    const-string v2, "buildVersion"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Leh/a1$c;->g:Ljava/lang/String;

    const-string v2, "userAgentName"

    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Leh/a1$c;->h:Ljava/lang/String;

    const-string v2, "userAgentVersion"

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Leh/a1$c;->i:Ljava/util/List;

    const-string v2, "clientFeatures"

    .line 10
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
