.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;",
        ">;",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/j;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:I

.field private h:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;

.field private i:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/j0;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LbEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LbEndpoint;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LbEndpoint$c;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/g;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$d;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/h;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/google/protobuf/UInt32Value;

.field private o:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/protobuf/UInt32Value;",
            "Lcom/google/protobuf/UInt32Value$b;",
            "Lcom/google/protobuf/e3;",
            ">;"
        }
    .end annotation
.end field

.field private p:I

.field private q:Lcom/google/protobuf/UInt32Value;

.field private r:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/protobuf/UInt32Value;",
            "Lcom/google/protobuf/UInt32Value$b;",
            "Lcom/google/protobuf/e3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->e:I

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->j:Ljava/util/List;

    .line 6
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->e0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->e:I

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->j:Ljava/util/List;

    .line 10
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->g:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->j:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->g:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->g:I

    :cond_0
    return-void
.end method

.method private d0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LbEndpoint;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LbEndpoint$c;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->k:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->j:Ljava/util/List;

    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->g:I

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

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->k:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->j:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->k:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private e0()V
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->d0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/c;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->o0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->h0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->q0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->s0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    return-object p1
.end method

.method public X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$a;)V

    .line 2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->i:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->h:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->access$1302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->access$1302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;

    .line 5
    :goto_0
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->k:Lcom/google/protobuf/l2;

    if-nez v1, :cond_2

    .line 6
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->g:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->j:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->j:Ljava/util/List;

    .line 8
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->g:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->g:I

    .line 9
    :cond_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->j:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->access$1402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->access$1402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;Ljava/util/List;)Ljava/util/List;

    .line 11
    :goto_1
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->e:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    .line 12
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->l:Lcom/google/protobuf/q2;

    if-nez v1, :cond_3

    .line 13
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->access$1502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->access$1502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_4
    :goto_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->e:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_6

    .line 16
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->m:Lcom/google/protobuf/q2;

    if-nez v1, :cond_5

    .line 17
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->access$1502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 18
    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->access$1502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_6
    :goto_3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->o:Lcom/google/protobuf/q2;

    if-nez v1, :cond_7

    .line 20
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->n:Lcom/google/protobuf/UInt32Value;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->access$1602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;

    goto :goto_4

    .line 21
    :cond_7
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/UInt32Value;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->access$1602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;

    .line 22
    :goto_4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->p:I

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->access$1702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;I)I

    .line 23
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->r:Lcom/google/protobuf/q2;

    if-nez v1, :cond_8

    .line 24
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->q:Lcom/google/protobuf/UInt32Value;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->access$1802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;

    goto :goto_5

    .line 25
    :cond_8
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/UInt32Value;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->access$1802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;

    .line 26
    :goto_5
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->e:I

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->access$1902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;I)I

    .line 27
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    return-object v0
.end method

.method public b0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->q0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->s0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->access$2200()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

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

    check-cast p2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;
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
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    :cond_1
    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->b0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->b0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/c;->i:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->hasLocality()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLocality()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->m0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    .line 4
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->k:Lcom/google/protobuf/l2;

    if-nez v0, :cond_3

    .line 5
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->access$1400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 6
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->access$1400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->j:Ljava/util/List;

    .line 8
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->g:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->g:I

    goto :goto_0

    .line 9
    :cond_2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->a0()V

    .line 10
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->j:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->access$1400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 12
    :cond_3
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->access$1400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 13
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->k:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->k:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->k:Lcom/google/protobuf/l2;

    .line 16
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->access$1400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->j:Ljava/util/List;

    .line 17
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->g:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->g:I

    .line 18
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->access$2000()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 19
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->d0()Lcom/google/protobuf/l2;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->k:Lcom/google/protobuf/l2;

    goto :goto_1

    .line 20
    :cond_5
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->k:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->access$1400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 21
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->hasLoadBalancingWeight()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 22
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLoadBalancingWeight()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->l0(Lcom/google/protobuf/UInt32Value;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    .line 23
    :cond_7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getPriority()I

    move-result v0

    if-eqz v0, :cond_8

    .line 24
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->r0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    .line 25
    :cond_8
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->hasProximity()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 26
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getProximity()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->n0(Lcom/google/protobuf/UInt32Value;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    .line 27
    :cond_9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$b;->a:[I

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLbConfigCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    goto :goto_2

    .line 28
    :cond_a
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLedsClusterLocalityConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    goto :goto_2

    .line 29
    :cond_b
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLoadBalancerEndpoints()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    .line 30
    :goto_2
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->access$2100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->o0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    .line 31
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->m:Lcom/google/protobuf/q2;

    const/16 v1, 0x8

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig;

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->m:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->e:I

    return-object p0
.end method

.method public k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->l:Lcom/google/protobuf/q2;

    const/4 v1, 0x7

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList;

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->l:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->e:I

    return-object p0
.end method

.method public l0(Lcom/google/protobuf/UInt32Value;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->o:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->n:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/UInt32Value;->newBuilder(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->n:Lcom/google/protobuf/UInt32Value;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->n:Lcom/google/protobuf/UInt32Value;

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

.method public m0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->i:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->h:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->h:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->h:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;

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

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    move-result-object v0

    return-object v0
.end method

.method public n0(Lcom/google/protobuf/UInt32Value;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->r:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->q:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/UInt32Value;->newBuilder(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->q:Lcom/google/protobuf/UInt32Value;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->q:Lcom/google/protobuf/UInt32Value;

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

.method public final o0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    return-object p1
.end method

.method public q0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    return-object p1
.end method

.method public r0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;
    .locals 0

    .line 1
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->p:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final s0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->h0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->o0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    move-result-object p1

    return-object p1
.end method
