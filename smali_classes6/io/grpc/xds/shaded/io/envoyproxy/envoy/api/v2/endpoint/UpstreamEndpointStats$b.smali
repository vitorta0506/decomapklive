.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;",
        ">;",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/h;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

.field private g:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address$c;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/google/protobuf/Struct;

.field private i:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/protobuf/Struct;",
            "Lcom/google/protobuf/Struct$b;",
            "Lcom/google/protobuf/u2;",
            ">;"
        }
    .end annotation
.end field

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/EndpointLoadMetricStats;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/EndpointLoadMetricStats;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/EndpointLoadMetricStats$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->n:Ljava/util/List;

    .line 5
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->e0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->n:Ljava/util/List;

    .line 8
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->n:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->n:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->e:I

    :cond_0
    return-void
.end method

.method private d0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/EndpointLoadMetricStats;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/EndpointLoadMetricStats$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->o:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->n:Ljava/util/List;

    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->e:I

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

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->o:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->n:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->o:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private e0()V
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->d0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/f;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->l0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->i0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->s0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;

    return-object p1
.end method

.method public X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$a;)V

    .line 2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->g:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->f:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

    .line 5
    :goto_0
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->i:Lcom/google/protobuf/q2;

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->h:Lcom/google/protobuf/Struct;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct;

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Struct;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct;

    .line 8
    :goto_1
    iget-wide v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->j:J

    invoke-static {v0, v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;J)J

    .line 9
    iget-wide v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->k:J

    invoke-static {v0, v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;J)J

    .line 10
    iget-wide v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->l:J

    invoke-static {v0, v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;J)J

    .line 11
    iget-wide v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->m:J

    invoke-static {v0, v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;J)J

    .line 12
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->o:Lcom/google/protobuf/l2;

    if-nez v1, :cond_3

    .line 13
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 14
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->n:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->n:Ljava/util/List;

    .line 15
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->e:I

    .line 16
    :cond_2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->n:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->access$1002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 17
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->access$1002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;Ljava/util/List;)Ljava/util/List;

    .line 18
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;

    return-object v0
.end method

.method public b0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->s0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->g:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->f:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address$c;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address$c;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->f:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->f:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->b0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->b0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/f;->c:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->access$1300()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;

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

    check-cast p2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;
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
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;

    :cond_1
    throw p1
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;
    .locals 5

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->getAddress()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;

    .line 4
    :cond_1
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->hasMetadata()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->getMetadata()Lcom/google/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->k0(Lcom/google/protobuf/Struct;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;

    .line 6
    :cond_2
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->getTotalSuccessfulRequests()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->getTotalSuccessfulRequests()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->r0(J)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;

    .line 8
    :cond_3
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->getTotalRequestsInProgress()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->getTotalRequestsInProgress()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->q0(J)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;

    .line 10
    :cond_4
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->getTotalErrorRequests()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->getTotalErrorRequests()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->n0(J)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;

    .line 12
    :cond_5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->getTotalIssuedRequests()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    .line 13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->getTotalIssuedRequests()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->o0(J)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;

    .line 14
    :cond_6
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->o:Lcom/google/protobuf/l2;

    if-nez v0, :cond_8

    .line 15
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->access$1000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 16
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->access$1000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->n:Ljava/util/List;

    .line 18
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->e:I

    goto :goto_0

    .line 19
    :cond_7
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->a0()V

    .line 20
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->n:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->access$1000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 22
    :cond_8
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->access$1000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 23
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->o:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 24
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->o:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->o:Lcom/google/protobuf/l2;

    .line 26
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->access$1000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->n:Ljava/util/List;

    .line 27
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->e:I

    .line 28
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 29
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->d0()Lcom/google/protobuf/l2;

    move-result-object v0

    :cond_9
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->o:Lcom/google/protobuf/l2;

    goto :goto_1

    .line 30
    :cond_a
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->o:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->access$1000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 31
    :cond_b
    :goto_1
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->access$1200(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->l0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;

    .line 32
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public k0(Lcom/google/protobuf/Struct;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->i:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->h:Lcom/google/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Struct;->newBuilder(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Struct$b;->i0(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Struct$b;->Y()Lcom/google/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->h:Lcom/google/protobuf/Struct;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->h:Lcom/google/protobuf/Struct;

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

.method public final l0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;

    return-object p1
.end method

.method public m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(J)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->l:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public o0(J)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->m:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public q0(J)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->k:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public r0(J)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->j:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final s0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->i0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;->l0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats$b;

    move-result-object p1

    return-object p1
.end method
