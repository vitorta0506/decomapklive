.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;",
        ">;",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/b;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/UpstreamLocalityStats;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/UpstreamLocalityStats;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/UpstreamLocalityStats$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/l;",
            ">;"
        }
    .end annotation
.end field

.field private j:J

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$DroppedRequests;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$DroppedRequests;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$DroppedRequests$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$c;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/google/protobuf/Duration;

.field private n:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/protobuf/Duration;",
            "Lcom/google/protobuf/Duration$b;",
            "Lcom/google/protobuf/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->f:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->g:Ljava/lang/Object;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->h:Ljava/util/List;

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->k:Ljava/util/List;

    .line 8
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->j0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const-string p1, ""

    .line 10
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->f:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->g:Ljava/lang/Object;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->h:Ljava/util/List;

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->k:Ljava/util/List;

    .line 14
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->j0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;-><init>()V

    return-void
.end method

.method private d0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->e:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->k:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->e:I

    :cond_0
    return-void
.end method

.method private e0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->h:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->e:I

    :cond_0
    return-void
.end method

.method private h0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$DroppedRequests;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$DroppedRequests$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->l:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->k:Ljava/util/List;

    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->e:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->H()Lcom/google/protobuf/GeneratedMessageV3$c;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->O()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/l2;-><init>(Ljava/util/List;ZLcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->l:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->k:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->l:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private i0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/UpstreamLocalityStats;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/UpstreamLocalityStats$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/l;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->i:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->h:Ljava/util/List;

    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->e:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->H()Lcom/google/protobuf/GeneratedMessageV3$c;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->O()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/protobuf/l2;-><init>(Ljava/util/List;ZLcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->i:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->h:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->i:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private j0()V
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->i0()Lcom/google/protobuf/l2;

    .line 3
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->h0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->X(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->b0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/i;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->X(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->o0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->l0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->s0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->v0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$DroppedRequests$b;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->l:Lcom/google/protobuf/l2;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->d0()V

    .line 3
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->k:Ljava/util/List;

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$DroppedRequests$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$DroppedRequests;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$DroppedRequests$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$DroppedRequests;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/l2;->d(Lcom/google/protobuf/a;)Lcom/google/protobuf/l2;

    :goto_0
    return-object p0
.end method

.method public X(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;

    return-object p1
.end method

.method public Y(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/UpstreamLocalityStats$b;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->i:Lcom/google/protobuf/l2;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->e0()V

    .line 3
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->h:Ljava/util/List;

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/UpstreamLocalityStats$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/UpstreamLocalityStats;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/UpstreamLocalityStats$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/UpstreamLocalityStats;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/l2;->d(Lcom/google/protobuf/a;)Lcom/google/protobuf/l2;

    :goto_0
    return-object p0
.end method

.method public Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$a;)V

    .line 2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->access$1402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->g:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->access$1502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->i:Lcom/google/protobuf/l2;

    if-nez v1, :cond_1

    .line 5
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->h:Ljava/util/List;

    .line 7
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->e:I

    .line 8
    :cond_0
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->h:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->access$1602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->access$1602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;Ljava/util/List;)Ljava/util/List;

    .line 10
    :goto_0
    iget-wide v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->j:J

    invoke-static {v0, v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->access$1702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;J)J

    .line 11
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->l:Lcom/google/protobuf/l2;

    if-nez v1, :cond_3

    .line 12
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 13
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->k:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->k:Ljava/util/List;

    .line 14
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->e:I

    .line 15
    :cond_2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->k:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->access$1802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->access$1802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;Ljava/util/List;)Ljava/util/List;

    .line 17
    :goto_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->n:Lcom/google/protobuf/q2;

    if-nez v1, :cond_4

    .line 18
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->m:Lcom/google/protobuf/Duration;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->access$1902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;

    goto :goto_2

    .line 19
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Duration;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->access$1902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;

    .line 20
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public b0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->s0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->b0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic f0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->k0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->v0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;

    move-result-object p1

    return-object p1
.end method

.method public g0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->g0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->g0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/i;->g:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->k0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;

    move-result-object p1

    return-object p1
.end method

.method public k0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->access$2300()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->m0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/o1;

    move-result-object p2

    check-cast p2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->m0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;

    :cond_1
    throw p1
.end method

.method public l0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->m0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public m0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;
    .locals 6

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->getClusterName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->access$1400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->f:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->getClusterServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->access$1500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->g:Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 8
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->i:Lcom/google/protobuf/l2;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 9
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->access$1600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 10
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->access$1600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->h:Ljava/util/List;

    .line 12
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->e:I

    goto :goto_0

    .line 13
    :cond_3
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->e0()V

    .line 14
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->h:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->access$1600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_2

    .line 16
    :cond_4
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->access$1600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 17
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->i:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->i:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    .line 19
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->i:Lcom/google/protobuf/l2;

    .line 20
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->access$1600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->h:Ljava/util/List;

    .line 21
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->e:I

    .line 22
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->access$2000()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 23
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->i0()Lcom/google/protobuf/l2;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->i:Lcom/google/protobuf/l2;

    goto :goto_2

    .line 24
    :cond_6
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->i:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->access$1600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 25
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->getTotalDroppedRequests()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_8

    .line 26
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->getTotalDroppedRequests()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->u0(J)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;

    .line 27
    :cond_8
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->l:Lcom/google/protobuf/l2;

    if-nez v0, :cond_a

    .line 28
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->access$1800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 29
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 30
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->access$1800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->k:Ljava/util/List;

    .line 31
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->e:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->e:I

    goto :goto_3

    .line 32
    :cond_9
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->d0()V

    .line 33
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->k:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->access$1800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_4

    .line 35
    :cond_a
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->access$1800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 36
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->l:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 37
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->l:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    .line 38
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->l:Lcom/google/protobuf/l2;

    .line 39
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->access$1800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->k:Ljava/util/List;

    .line 40
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->e:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->e:I

    .line 41
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->access$2100()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 42
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->h0()Lcom/google/protobuf/l2;

    move-result-object v1

    :cond_b
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->l:Lcom/google/protobuf/l2;

    goto :goto_4

    .line 43
    :cond_c
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->l:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->access$1800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 44
    :cond_d
    :goto_4
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->hasLoadReportInterval()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 45
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->getLoadReportInterval()Lcom/google/protobuf/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->n0(Lcom/google/protobuf/Duration;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;

    .line 46
    :cond_e
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;->access$2200(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->o0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;

    .line 47
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->b0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(Lcom/google/protobuf/Duration;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->n:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->m:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Duration;->newBuilder(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->m:Lcom/google/protobuf/Duration;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->m:Lcom/google/protobuf/Duration;

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    :goto_1
    return-object p0
.end method

.method public final o0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;

    return-object p1
.end method

.method public q0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->f:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public r0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->g:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public s0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;

    return-object p1
.end method

.method public t0(Lcom/google/protobuf/Duration;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->n:Lcom/google/protobuf/q2;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->m:Lcom/google/protobuf/Duration;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->k0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;

    move-result-object p1

    return-object p1
.end method

.method public u0(J)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->j:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->l0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;

    move-result-object p1

    return-object p1
.end method

.method public final v0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;->o0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/ClusterStats$b;

    move-result-object p1

    return-object p1
.end method
