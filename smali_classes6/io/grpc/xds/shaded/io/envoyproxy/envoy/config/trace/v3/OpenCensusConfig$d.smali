.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;",
        ">;",
        "Lcom/google/protobuf/r1;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Lio/opencensus/proto/trace/v1/TraceConfig;

.field private g:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/opencensus/proto/trace/v1/TraceConfig;",
            "Lio/opencensus/proto/trace/v1/TraceConfig$c;",
            "Lio/opencensus/proto/trace/v1/h;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

.field private m:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$c;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/w;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:Ljava/lang/Object;

.field private p:Z

.field private q:Ljava/lang/Object;

.field private r:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

.field private s:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$c;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/w;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
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
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->j:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->k:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->o:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->q:Ljava/lang/Object;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->t:Ljava/util/List;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->u:Ljava/util/List;

    .line 10
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->e0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const-string p1, ""

    .line 12
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->j:Ljava/lang/Object;

    .line 13
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->k:Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->o:Ljava/lang/Object;

    .line 15
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->q:Ljava/lang/Object;

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->t:Ljava/util/List;

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->u:Ljava/util/List;

    .line 18
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->t:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->t:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->e:I

    :cond_0
    return-void
.end method

.method private b0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->e:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->u:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->u:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->e:I

    :cond_0
    return-void
.end method

.method private e0()V
    .locals 0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/e;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->m0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->h0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->n0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->s0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    return-object p1
.end method

.method public X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$a;)V

    .line 2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->g:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->f:Lio/opencensus/proto/trace/v1/TraceConfig;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;Lio/opencensus/proto/trace/v1/TraceConfig;)Lio/opencensus/proto/trace/v1/TraceConfig;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/opencensus/proto/trace/v1/TraceConfig;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;Lio/opencensus/proto/trace/v1/TraceConfig;)Lio/opencensus/proto/trace/v1/TraceConfig;

    .line 5
    :goto_0
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->h:Z

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;Z)Z

    .line 6
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->i:Z

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;Z)Z

    .line 7
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->j:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->k:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->m:Lcom/google/protobuf/q2;

    if-nez v1, :cond_1

    .line 10
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->l:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    .line 12
    :goto_1
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->n:Z

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->access$1002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;Z)Z

    .line 13
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->o:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->access$1102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->p:Z

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->access$1202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;Z)Z

    .line 15
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->q:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->access$1302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->s:Lcom/google/protobuf/q2;

    if-nez v1, :cond_2

    .line 17
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->r:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->access$1402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    goto :goto_2

    .line 18
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->access$1402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    .line 19
    :goto_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 20
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->t:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->t:Ljava/util/List;

    .line 21
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->e:I

    .line 22
    :cond_3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->t:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->access$1502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;Ljava/util/List;)Ljava/util/List;

    .line 23
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 24
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->u:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->u:Ljava/util/List;

    .line 25
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->e:I

    .line 26
    :cond_4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->u:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->access$1602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;Ljava/util/List;)Ljava/util/List;

    .line 27
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->n0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    move-result-object v0

    return-object v0
.end method

.method public d0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->s0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->access$1800()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

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

    check-cast p2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;
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
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    :cond_1
    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->d0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->d0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/e;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->hasTraceConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getTraceConfig()Lio/opencensus/proto/trace/v1/TraceConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->l0(Lio/opencensus/proto/trace/v1/TraceConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    .line 4
    :cond_1
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getStdoutExporterEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getStdoutExporterEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->r0(Z)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    .line 6
    :cond_2
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getStackdriverExporterEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getStackdriverExporterEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->q0(Z)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    .line 8
    :cond_3
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getStackdriverProjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->j:Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 11
    :cond_4
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getStackdriverAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 12
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->access$800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->k:Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 14
    :cond_5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->hasStackdriverGrpcService()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getStackdriverGrpcService()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    .line 16
    :cond_6
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getZipkinExporterEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getZipkinExporterEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->t0(Z)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    .line 18
    :cond_7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getZipkinUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 19
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->o:Ljava/lang/Object;

    .line 20
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 21
    :cond_8
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getOcagentExporterEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 22
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getOcagentExporterEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->o0(Z)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    .line 23
    :cond_9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getOcagentAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 24
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->access$1300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->q:Ljava/lang/Object;

    .line 25
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 26
    :cond_a
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->hasOcagentGrpcService()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 27
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getOcagentGrpcService()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    .line 28
    :cond_b
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->access$1500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 29
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 30
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->access$1500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->t:Ljava/util/List;

    .line 31
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->e:I

    goto :goto_0

    .line 32
    :cond_c
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->a0()V

    .line 33
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->t:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->access$1500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 35
    :cond_d
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->access$1600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 36
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 37
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->access$1600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->u:Ljava/util/List;

    .line 38
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->e:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->e:I

    goto :goto_1

    .line 39
    :cond_e
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->b0()V

    .line 40
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->u:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->access$1600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 42
    :cond_f
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->access$1700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->m0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    .line 43
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->s:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->r:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$c;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$c;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->r:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->r:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

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

.method public k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->m:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->l:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$c;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$c;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->l:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->l:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

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

.method public l0(Lio/opencensus/proto/trace/v1/TraceConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->g:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->f:Lio/opencensus/proto/trace/v1/TraceConfig;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/opencensus/proto/trace/v1/TraceConfig;->newBuilder(Lio/opencensus/proto/trace/v1/TraceConfig;)Lio/opencensus/proto/trace/v1/TraceConfig$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/opencensus/proto/trace/v1/TraceConfig$c;->h0(Lio/opencensus/proto/trace/v1/TraceConfig;)Lio/opencensus/proto/trace/v1/TraceConfig$c;

    move-result-object p1

    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/TraceConfig$c;->Y()Lio/opencensus/proto/trace/v1/TraceConfig;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->f:Lio/opencensus/proto/trace/v1/TraceConfig;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->f:Lio/opencensus/proto/trace/v1/TraceConfig;

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

.method public final m0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    move-result-object v0

    return-object v0
.end method

.method public n0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    return-object p1
.end method

.method public o0(Z)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->p:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public q0(Z)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->i:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public r0(Z)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->h:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final s0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    return-object p1
.end method

.method public t0(Z)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->n:Z

    .line 2
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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->h0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->m0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    move-result-object p1

    return-object p1
.end method