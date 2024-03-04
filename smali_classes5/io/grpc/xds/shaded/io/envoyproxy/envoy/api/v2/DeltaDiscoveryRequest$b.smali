.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;",
        ">;",
        "Lcom/google/protobuf/r1;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;

.field private g:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/e0;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Object;

.field private i:Lcom/google/protobuf/z0;

.field private j:Lcom/google/protobuf/z0;

.field private k:Lcom/google/protobuf/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/Object;

.field private m:Lcom/google/rpc/Status;

.field private n:Lcom/google/protobuf/q2;
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
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->h:Ljava/lang/Object;

    .line 5
    sget-object v1, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->i:Lcom/google/protobuf/z0;

    .line 6
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->j:Lcom/google/protobuf/z0;

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->l:Ljava/lang/Object;

    .line 8
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->h0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 1

    .line 9
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const-string p1, ""

    .line 10
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->h:Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->i:Lcom/google/protobuf/z0;

    .line 12
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->j:Lcom/google/protobuf/z0;

    .line 13
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->l:Ljava/lang/Object;

    .line 14
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->h0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->i:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->i:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->e:I

    :cond_0
    return-void
.end method

.method private b0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->e:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->j:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->j:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->e:I

    :cond_0
    return-void
.end method

.method private e0()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->k:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$c;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->g(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private g0()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->k:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$c;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->p(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->k:Lcom/google/protobuf/g1;

    .line 4
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->k:Lcom/google/protobuf/g1;

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->k:Lcom/google/protobuf/g1;

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->f()Lcom/google/protobuf/g1;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->k:Lcom/google/protobuf/g1;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->k:Lcom/google/protobuf/g1;

    return-object v0
.end method

.method private h0()V
    .locals 0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/d;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;

    move-result-object p1

    return-object p1
.end method

.method protected M(I)Lcom/google/protobuf/g1;
    .locals 3

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->e0()Lcom/google/protobuf/g1;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map field number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected N(I)Lcom/google/protobuf/g1;
    .locals 3

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->g0()Lcom/google/protobuf/g1;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map field number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->k0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->q0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;

    return-object p1
.end method

.method public X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$a;)V

    .line 2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->g:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->f:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;->access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;->access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;

    .line 5
    :goto_0
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->h:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;->access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->i:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->i:Lcom/google/protobuf/z0;

    .line 8
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->e:I

    .line 9
    :cond_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->i:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 10
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 11
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->j:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->j:Lcom/google/protobuf/z0;

    .line 12
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->e:I

    .line 13
    :cond_2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->j:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;->access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 14
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->e0()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;->access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;Lcom/google/protobuf/g1;)Lcom/google/protobuf/g1;

    .line 15
    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;->access$800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;)Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->n()V

    .line 16
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->l:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;->access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->n:Lcom/google/protobuf/q2;

    if-nez v1, :cond_3

    .line 18
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->m:Lcom/google/rpc/Status;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;->access$1002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;Lcom/google/rpc/Status;)Lcom/google/rpc/Status;

    goto :goto_1

    .line 19
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/Status;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;->access$1002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;Lcom/google/rpc/Status;)Lcom/google/rpc/Status;

    .line 20
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;

    move-result-object v0

    return-object v0
.end method

.method public d0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->j0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->q0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->d0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->d0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/d;->e:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->j0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/rpc/Status;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->n:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->m:Lcom/google/rpc/Status;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/rpc/Status;->newBuilder(Lcom/google/rpc/Status;)Lcom/google/rpc/Status$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/rpc/Status$b;->i0(Lcom/google/rpc/Status;)Lcom/google/rpc/Status$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/rpc/Status$b;->Y()Lcom/google/rpc/Status;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->m:Lcom/google/rpc/Status;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->m:Lcom/google/rpc/Status;

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

.method public j0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;->access$1300()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->l0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;

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

    check-cast p2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;
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
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->l0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;

    :cond_1
    throw p1
.end method

.method public k0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->l0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public l0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;->hasNode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;->getNode()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->m0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;

    .line 4
    :cond_1
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;->access$500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->h:Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 7
    :cond_2
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;->access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->i:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;->access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->i:Lcom/google/protobuf/z0;

    .line 10
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->e:I

    goto :goto_0

    .line 11
    :cond_3
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->a0()V

    .line 12
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->i:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;->access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 14
    :cond_4
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;->access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 15
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->j:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;->access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->j:Lcom/google/protobuf/z0;

    .line 17
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->e:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->e:I

    goto :goto_1

    .line 18
    :cond_5
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->b0()V

    .line 19
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->j:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;->access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 21
    :cond_6
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->g0()Lcom/google/protobuf/g1;

    move-result-object v0

    .line 22
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;->access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;)Lcom/google/protobuf/g1;

    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/google/protobuf/g1;->o(Lcom/google/protobuf/g1;)V

    .line 24
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;->getResponseNonce()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 25
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;->access$900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->l:Ljava/lang/Object;

    .line 26
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 27
    :cond_7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;->hasErrorDetail()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 28
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;->getErrorDetail()Lcom/google/rpc/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->i0(Lcom/google/rpc/Status;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;

    .line 29
    :cond_8
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;->access$1200(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;

    .line 30
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public m0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->g:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->f:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->n0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node$c;->a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->f:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->f:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Node;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;

    move-result-object v0

    return-object v0
.end method

.method public final n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;

    return-object p1
.end method

.method public o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;

    return-object p1
.end method

.method public final q0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->j0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->k0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;->n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/DeltaDiscoveryRequest$b;

    move-result-object p1

    return-object p1
.end method
