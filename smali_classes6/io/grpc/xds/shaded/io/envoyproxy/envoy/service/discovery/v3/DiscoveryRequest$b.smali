.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;",
        ">;",
        "Lcom/google/protobuf/r1;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;

.field private h:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node$c;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/l0;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/protobuf/z0;

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:Lcom/google/rpc/Status;

.field private m:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/rpc/Status;",
            "Lcom/google/rpc/Status$b;",
            "Lcom/google/rpc/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->f:Ljava/lang/Object;

    .line 5
    sget-object v1, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->i:Lcom/google/protobuf/z0;

    .line 6
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->j:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->k:Ljava/lang/Object;

    .line 8
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->e0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 1

    .line 9
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const-string p1, ""

    .line 10
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->f:Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->i:Lcom/google/protobuf/z0;

    .line 12
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->j:Ljava/lang/Object;

    .line 13
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->k:Ljava/lang/Object;

    .line 14
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;-><init>()V

    return-void
.end method

.method private b0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->i:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->i:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->e:I

    :cond_0
    return-void
.end method

.method private e0()V
    .locals 0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->X(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/c;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->X(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->l0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->i0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->n0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->s0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Ljava/lang/Iterable;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->b0()V

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->i:Lcom/google/protobuf/z0;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public X(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

    return-object p1
.end method

.method public Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$a;)V

    .line 2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;->access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->h:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->g:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;->access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;->access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;

    .line 6
    :goto_0
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->i:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->i:Lcom/google/protobuf/z0;

    .line 8
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->e:I

    .line 9
    :cond_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->i:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 10
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->j:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;->access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->k:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;->access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->m:Lcom/google/protobuf/q2;

    if-nez v1, :cond_2

    .line 13
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->l:Lcom/google/rpc/Status;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;->access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;Lcom/google/rpc/Status;)Lcom/google/rpc/Status;

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/Status;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;->access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;Lcom/google/rpc/Status;)Lcom/google/rpc/Status;

    .line 15
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->n0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

    move-result-object v0

    return-object v0
.end method

.method public d0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->s0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/rpc/Status;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->m:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->l:Lcom/google/rpc/Status;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/rpc/Status;->newBuilder(Lcom/google/rpc/Status;)Lcom/google/rpc/Status$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/rpc/Status$b;->i0(Lcom/google/rpc/Status;)Lcom/google/rpc/Status$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/rpc/Status$b;->Y()Lcom/google/rpc/Status;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->l:Lcom/google/rpc/Status;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->l:Lcom/google/rpc/Status;

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
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->d0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->d0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/c;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;->access$1100()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

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

    check-cast p2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;
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
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;->getVersionInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;->access$400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->f:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;->hasNode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;->getNode()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

    .line 7
    :cond_2
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;->access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->i:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;->access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->i:Lcom/google/protobuf/z0;

    .line 10
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->e:I

    goto :goto_0

    .line 11
    :cond_3
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->b0()V

    .line 12
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->i:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;->access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 14
    :cond_4
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 15
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;->access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->j:Ljava/lang/Object;

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 17
    :cond_5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;->getResponseNonce()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 18
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;->access$800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->k:Ljava/lang/Object;

    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 20
    :cond_6
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;->hasErrorDetail()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 21
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;->getErrorDetail()Lcom/google/rpc/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->g0(Lcom/google/rpc/Status;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

    .line 22
    :cond_7
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;->access$1000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->l0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

    .line 23
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->h:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->g:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node$c;->q0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node$c;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node$c;->a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->g:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->g:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;

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

.method public final l0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

    return-object p1
.end method

.method public m0(Lcom/google/rpc/Status;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->m:Lcom/google/protobuf/q2;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->l:Lcom/google/rpc/Status;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

    return-object p1
.end method

.method public o0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->h:Lcom/google/protobuf/q2;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->g:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    :goto_0
    return-object p0
.end method

.method public q0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->k:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public r0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->j:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final s0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

    return-object p1
.end method

.method public t0(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->f:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->i0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;->l0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/discovery/v3/DiscoveryRequest$b;

    move-result-object p1

    return-object p1
.end method
