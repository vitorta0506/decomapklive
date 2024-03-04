.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$TraceContext;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

.field public static final INCOMING_TRACE_CONTEXT_FIELD_NUMBER:I = 0x8

.field public static final OCAGENT_ADDRESS_FIELD_NUMBER:I = 0xc

.field public static final OCAGENT_EXPORTER_ENABLED_FIELD_NUMBER:I = 0xb

.field public static final OCAGENT_GRPC_SERVICE_FIELD_NUMBER:I = 0xe

.field public static final OUTGOING_TRACE_CONTEXT_FIELD_NUMBER:I = 0x9

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final STACKDRIVER_ADDRESS_FIELD_NUMBER:I = 0xa

.field public static final STACKDRIVER_EXPORTER_ENABLED_FIELD_NUMBER:I = 0x3

.field public static final STACKDRIVER_GRPC_SERVICE_FIELD_NUMBER:I = 0xd

.field public static final STACKDRIVER_PROJECT_ID_FIELD_NUMBER:I = 0x4

.field public static final STDOUT_EXPORTER_ENABLED_FIELD_NUMBER:I = 0x2

.field public static final TRACE_CONFIG_FIELD_NUMBER:I = 0x1

.field public static final ZIPKIN_EXPORTER_ENABLED_FIELD_NUMBER:I = 0x5

.field public static final ZIPKIN_URL_FIELD_NUMBER:I = 0x6

.field private static final incomingTraceContext_converter_:Lcom/google/protobuf/u0$h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/u0$h$a<",
            "Ljava/lang/Integer;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$TraceContext;",
            ">;"
        }
    .end annotation
.end field

.field private static final outgoingTraceContext_converter_:Lcom/google/protobuf/u0$h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/u0$h$a<",
            "Ljava/lang/Integer;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$TraceContext;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private incomingTraceContextMemoizedSerializedSize:I

.field private incomingTraceContext_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private volatile ocagentAddress_:Ljava/lang/Object;

.field private ocagentExporterEnabled_:Z

.field private ocagentGrpcService_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

.field private outgoingTraceContextMemoizedSerializedSize:I

.field private outgoingTraceContext_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile stackdriverAddress_:Ljava/lang/Object;

.field private stackdriverExporterEnabled_:Z

.field private stackdriverGrpcService_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

.field private volatile stackdriverProjectId_:Ljava/lang/Object;

.field private stdoutExporterEnabled_:Z

.field private traceConfig_:Lio/opencensus/proto/trace/v1/TraceConfig;

.field private zipkinExporterEnabled_:Z

.field private volatile zipkinUrl_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->incomingTraceContext_converter_:Lcom/google/protobuf/u0$h$a;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$b;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$b;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->outgoingTraceContext_converter_:Lcom/google/protobuf/u0$h$a;

    .line 3
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$c;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$c;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverProjectId_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverAddress_:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->zipkinUrl_:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->ocagentAddress_:Ljava/lang/Object;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->incomingTraceContext_:Ljava/util/List;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->outgoingTraceContext_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$b<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;-><init>()V

    .line 14
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_c

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 17
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    goto/16 :goto_4

    .line 18
    :sswitch_0
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->ocagentGrpcService_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    if-eqz v3, :cond_1

    .line 19
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$c;

    move-result-object v4

    .line 20
    :cond_1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->ocagentGrpcService_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    if-eqz v4, :cond_0

    .line 21
    invoke-virtual {v4, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$c;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$c;

    .line 22
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->ocagentGrpcService_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    goto :goto_0

    .line 23
    :sswitch_1
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverGrpcService_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    if-eqz v3, :cond_2

    .line 24
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$c;

    move-result-object v4

    .line 25
    :cond_2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverGrpcService_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    if-eqz v4, :cond_0

    .line 26
    invoke-virtual {v4, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$c;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$c;

    .line 27
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverGrpcService_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    goto :goto_0

    .line 28
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 29
    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->ocagentAddress_:Ljava/lang/Object;

    goto :goto_0

    .line 30
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v3

    iput-boolean v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->ocagentExporterEnabled_:Z

    goto :goto_0

    .line 31
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 32
    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverAddress_:Ljava/lang/Object;

    goto :goto_0

    .line 33
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/p;->D()I

    move-result v3

    .line 34
    invoke-virtual {p1, v3}, Lcom/google/protobuf/p;->q(I)I

    move-result v3

    .line 35
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->e()I

    move-result v4

    if-lez v4, :cond_4

    .line 36
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v4

    and-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_3

    .line 37
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->outgoingTraceContext_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 38
    :cond_3
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->outgoingTraceContext_:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 39
    :cond_4
    invoke-virtual {p1, v3}, Lcom/google/protobuf/p;->p(I)V

    goto/16 :goto_0

    .line 40
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v3

    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_5

    .line 41
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->outgoingTraceContext_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 42
    :cond_5
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->outgoingTraceContext_:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 43
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/p;->D()I

    move-result v3

    .line 44
    invoke-virtual {p1, v3}, Lcom/google/protobuf/p;->q(I)I

    move-result v3

    .line 45
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/p;->e()I

    move-result v4

    if-lez v4, :cond_7

    .line 46
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v4

    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_6

    .line 47
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->incomingTraceContext_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 48
    :cond_6
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->incomingTraceContext_:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 49
    :cond_7
    invoke-virtual {p1, v3}, Lcom/google/protobuf/p;->p(I)V

    goto/16 :goto_0

    .line 50
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v3

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_8

    .line 51
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->incomingTraceContext_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 52
    :cond_8
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->incomingTraceContext_:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 53
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 54
    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->zipkinUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 55
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v3

    iput-boolean v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->zipkinExporterEnabled_:Z

    goto/16 :goto_0

    .line 56
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 57
    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverProjectId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 58
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v3

    iput-boolean v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverExporterEnabled_:Z

    goto/16 :goto_0

    .line 59
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v3

    iput-boolean v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stdoutExporterEnabled_:Z

    goto/16 :goto_0

    .line 60
    :sswitch_e
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->traceConfig_:Lio/opencensus/proto/trace/v1/TraceConfig;

    if-eqz v3, :cond_9

    .line 61
    invoke-virtual {v3}, Lio/opencensus/proto/trace/v1/TraceConfig;->toBuilder()Lio/opencensus/proto/trace/v1/TraceConfig$c;

    move-result-object v4

    .line 62
    :cond_9
    invoke-static {}, Lio/opencensus/proto/trace/v1/TraceConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/opencensus/proto/trace/v1/TraceConfig;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->traceConfig_:Lio/opencensus/proto/trace/v1/TraceConfig;

    if-eqz v4, :cond_0

    .line 63
    invoke-virtual {v4, v3}, Lio/opencensus/proto/trace/v1/TraceConfig$c;->h0(Lio/opencensus/proto/trace/v1/TraceConfig;)Lio/opencensus/proto/trace/v1/TraceConfig$c;

    .line 64
    invoke-virtual {v4}, Lio/opencensus/proto/trace/v1/TraceConfig$c;->Y()Lio/opencensus/proto/trace/v1/TraceConfig;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->traceConfig_:Lio/opencensus/proto/trace/v1/TraceConfig;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_3
    :sswitch_f
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_4
    if-nez v3, :cond_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 65
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 66
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 67
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_a

    .line 68
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->incomingTraceContext_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->incomingTraceContext_:Ljava/util/List;

    :cond_a
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_b

    .line 69
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->outgoingTraceContext_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->outgoingTraceContext_:Ljava/util/List;

    .line 70
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 71
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_c
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_d

    .line 72
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->incomingTraceContext_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->incomingTraceContext_:Ljava/util/List;

    :cond_d
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_e

    .line 73
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->outgoingTraceContext_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->outgoingTraceContext_:Ljava/util/List;

    .line 74
    :cond_e
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 75
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_e
        0x10 -> :sswitch_d
        0x18 -> :sswitch_c
        0x22 -> :sswitch_b
        0x28 -> :sswitch_a
        0x32 -> :sswitch_9
        0x40 -> :sswitch_8
        0x42 -> :sswitch_7
        0x48 -> :sswitch_6
        0x4a -> :sswitch_5
        0x52 -> :sswitch_4
        0x58 -> :sswitch_3
        0x62 -> :sswitch_2
        0x6a -> :sswitch_1
        0x72 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->zipkinExporterEnabled_:Z

    return p1
.end method

.method static synthetic access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->zipkinUrl_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->zipkinUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->ocagentExporterEnabled_:Z

    return p1
.end method

.method static synthetic access$1300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->ocagentAddress_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->ocagentAddress_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->ocagentGrpcService_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    return-object p1
.end method

.method static synthetic access$1500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->incomingTraceContext_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->incomingTraceContext_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->outgoingTraceContext_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->outgoingTraceContext_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$1800()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2300()Lcom/google/protobuf/u0$h$a;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->incomingTraceContext_converter_:Lcom/google/protobuf/u0$h$a;

    return-object v0
.end method

.method static synthetic access$2400()Lcom/google/protobuf/u0$h$a;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->outgoingTraceContext_converter_:Lcom/google/protobuf/u0$h$a;

    return-object v0
.end method

.method static synthetic access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;Lio/opencensus/proto/trace/v1/TraceConfig;)Lio/opencensus/proto/trace/v1/TraceConfig;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->traceConfig_:Lio/opencensus/proto/trace/v1/TraceConfig;

    return-object p1
.end method

.method static synthetic access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stdoutExporterEnabled_:Z

    return p1
.end method

.method static synthetic access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverExporterEnabled_:Z

    return p1
.end method

.method static synthetic access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverProjectId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverProjectId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverAddress_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverAddress_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverGrpcService_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/e;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->hasTraceConfig()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->hasTraceConfig()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->hasTraceConfig()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getTraceConfig()Lio/opencensus/proto/trace/v1/TraceConfig;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getTraceConfig()Lio/opencensus/proto/trace/v1/TraceConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/opencensus/proto/trace/v1/TraceConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getStdoutExporterEnabled()Z

    move-result v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getStdoutExporterEnabled()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 10
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getStackdriverExporterEnabled()Z

    move-result v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getStackdriverExporterEnabled()Z

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    .line 12
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getStackdriverProjectId()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getStackdriverProjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 14
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getStackdriverAddress()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getStackdriverAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 16
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->hasStackdriverGrpcService()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->hasStackdriverGrpcService()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 17
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->hasStackdriverGrpcService()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getStackdriverGrpcService()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getStackdriverGrpcService()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 20
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getZipkinExporterEnabled()Z

    move-result v1

    .line 21
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getZipkinExporterEnabled()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 22
    :cond_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getZipkinUrl()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getZipkinUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 24
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getOcagentExporterEnabled()Z

    move-result v1

    .line 25
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getOcagentExporterEnabled()Z

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    .line 26
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getOcagentAddress()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getOcagentAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    .line 28
    :cond_d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->hasOcagentGrpcService()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->hasOcagentGrpcService()Z

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    .line 29
    :cond_e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->hasOcagentGrpcService()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 30
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getOcagentGrpcService()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    move-result-object v1

    .line 31
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getOcagentGrpcService()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v3

    .line 32
    :cond_f
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->incomingTraceContext_:Ljava/util/List;

    iget-object v2, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->incomingTraceContext_:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v3

    .line 33
    :cond_10
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->outgoingTraceContext_:Ljava/util/List;

    iget-object v2, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->outgoingTraceContext_:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v3

    .line 34
    :cond_11
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v3

    :cond_12
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    return-object v0
.end method

.method public getIncomingTraceContext(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$TraceContext;
    .locals 2

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->incomingTraceContext_converter_:Lcom/google/protobuf/u0$h$a;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->incomingTraceContext_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {v0, p1}, Lcom/google/protobuf/u0$h$a;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$TraceContext;

    return-object p1
.end method

.method public getIncomingTraceContextCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->incomingTraceContext_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIncomingTraceContextList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$TraceContext;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/u0$h;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->incomingTraceContext_:Ljava/util/List;

    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->incomingTraceContext_converter_:Lcom/google/protobuf/u0$h$a;

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/u0$h;-><init>(Ljava/util/List;Lcom/google/protobuf/u0$h$a;)V

    return-object v0
.end method

.method public getIncomingTraceContextValue(I)I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->incomingTraceContext_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getIncomingTraceContextValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->incomingTraceContext_:Ljava/util/List;

    return-object v0
.end method

.method public getOcagentAddress()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->ocagentAddress_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->ocagentAddress_:Ljava/lang/Object;

    return-object v0
.end method

.method public getOcagentAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->ocagentAddress_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->ocagentAddress_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getOcagentExporterEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->ocagentExporterEnabled_:Z

    return v0
.end method

.method public getOcagentGrpcService()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->ocagentGrpcService_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOcagentGrpcServiceOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/w;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getOcagentGrpcService()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    move-result-object v0

    return-object v0
.end method

.method public getOutgoingTraceContext(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$TraceContext;
    .locals 2

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->outgoingTraceContext_converter_:Lcom/google/protobuf/u0$h$a;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->outgoingTraceContext_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {v0, p1}, Lcom/google/protobuf/u0$h$a;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$TraceContext;

    return-object p1
.end method

.method public getOutgoingTraceContextCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->outgoingTraceContext_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOutgoingTraceContextList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$TraceContext;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/u0$h;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->outgoingTraceContext_:Ljava/util/List;

    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->outgoingTraceContext_converter_:Lcom/google/protobuf/u0$h$a;

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/u0$h;-><init>(Ljava/util/List;Lcom/google/protobuf/u0$h$a;)V

    return-object v0
.end method

.method public getOutgoingTraceContextValue(I)I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->outgoingTraceContext_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getOutgoingTraceContextValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->outgoingTraceContext_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->traceConfig_:Lio/opencensus/proto/trace/v1/TraceConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getTraceConfig()Lio/opencensus/proto/trace/v1/TraceConfig;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-boolean v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stdoutExporterEnabled_:Z

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    .line 5
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 6
    :cond_2
    iget-boolean v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverExporterEnabled_:Z

    if-eqz v2, :cond_3

    const/4 v3, 0x3

    .line 7
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 8
    :cond_3
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverProjectId_:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x4

    .line 9
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverProjectId_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10
    :cond_4
    iget-boolean v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->zipkinExporterEnabled_:Z

    if-eqz v2, :cond_5

    const/4 v3, 0x5

    .line 11
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 12
    :cond_5
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->zipkinUrl_:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x6

    .line 13
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->zipkinUrl_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 14
    :goto_1
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->incomingTraceContext_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 15
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->incomingTraceContext_:Ljava/util/List;

    .line 16
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->m(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    add-int/2addr v0, v3

    .line 17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getIncomingTraceContextList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    add-int/lit8 v0, v0, 0x1

    .line 18
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 19
    :cond_8
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->incomingTraceContextMemoizedSerializedSize:I

    const/4 v2, 0x0

    .line 20
    :goto_2
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->outgoingTraceContext_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 21
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->outgoingTraceContext_:Ljava/util/List;

    .line 22
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->m(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    add-int/2addr v0, v2

    .line 23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getOutgoingTraceContextList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    add-int/lit8 v0, v0, 0x1

    .line 24
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_a
    iput v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->outgoingTraceContextMemoizedSerializedSize:I

    .line 26
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverAddress_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0xa

    .line 27
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverAddress_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    :cond_b
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->ocagentExporterEnabled_:Z

    if-eqz v1, :cond_c

    const/16 v2, 0xb

    .line 29
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_c
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->ocagentAddress_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0xc

    .line 31
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->ocagentAddress_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    :cond_d
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverGrpcService_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    if-eqz v1, :cond_e

    const/16 v1, 0xd

    .line 33
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getStackdriverGrpcService()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    :cond_e
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->ocagentGrpcService_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    if-eqz v1, :cond_f

    const/16 v1, 0xe

    .line 35
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getOcagentGrpcService()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    :cond_f
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getStackdriverAddress()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverAddress_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverAddress_:Ljava/lang/Object;

    return-object v0
.end method

.method public getStackdriverAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverAddress_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverAddress_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStackdriverExporterEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverExporterEnabled_:Z

    return v0
.end method

.method public getStackdriverGrpcService()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverGrpcService_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStackdriverGrpcServiceOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/w;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getStackdriverGrpcService()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    move-result-object v0

    return-object v0
.end method

.method public getStackdriverProjectId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverProjectId_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverProjectId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getStackdriverProjectIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverProjectId_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverProjectId_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStdoutExporterEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stdoutExporterEnabled_:Z

    return v0
.end method

.method public getTraceConfig()Lio/opencensus/proto/trace/v1/TraceConfig;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->traceConfig_:Lio/opencensus/proto/trace/v1/TraceConfig;

    if-nez v0, :cond_0

    invoke-static {}, Lio/opencensus/proto/trace/v1/TraceConfig;->getDefaultInstance()Lio/opencensus/proto/trace/v1/TraceConfig;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTraceConfigOrBuilder()Lio/opencensus/proto/trace/v1/h;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getTraceConfig()Lio/opencensus/proto/trace/v1/TraceConfig;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getZipkinExporterEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->zipkinExporterEnabled_:Z

    return v0
.end method

.method public getZipkinUrl()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->zipkinUrl_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->zipkinUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method public getZipkinUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->zipkinUrl_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->zipkinUrl_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasOcagentGrpcService()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->ocagentGrpcService_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStackdriverGrpcService()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverGrpcService_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTraceConfig()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->traceConfig_:Lio/opencensus/proto/trace/v1/TraceConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->hasTraceConfig()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getTraceConfig()Lio/opencensus/proto/trace/v1/TraceConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/proto/trace/v1/TraceConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getStdoutExporterEnabled()Z

    move-result v1

    .line 6
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getStackdriverExporterEnabled()Z

    move-result v1

    .line 8
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getStackdriverProjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getStackdriverAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->hasStackdriverGrpcService()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getStackdriverGrpcService()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getZipkinExporterEnabled()Z

    move-result v1

    .line 14
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getZipkinUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getOcagentExporterEnabled()Z

    move-result v1

    .line 17
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getOcagentAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->hasOcagentGrpcService()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getOcagentGrpcService()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getIncomingTraceContextCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 22
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->incomingTraceContext_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getOutgoingTraceContextCount()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 24
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->outgoingTraceContext_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    mul-int/lit8 v0, v0, 0x1d

    .line 25
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
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

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig$d;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getSerializedSize()I

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->traceConfig_:Lio/opencensus/proto/trace/v1/TraceConfig;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getTraceConfig()Lio/opencensus/proto/trace/v1/TraceConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stdoutExporterEnabled_:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 6
    :cond_1
    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverExporterEnabled_:Z

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 7
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 8
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverProjectId_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 9
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverProjectId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 10
    :cond_3
    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->zipkinExporterEnabled_:Z

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 11
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 12
    :cond_4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->zipkinUrl_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 13
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->zipkinUrl_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 14
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getIncomingTraceContextList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    const/16 v0, 0x42

    .line 15
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->d1(I)V

    .line 16
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->incomingTraceContextMemoizedSerializedSize:I

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->d1(I)V

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 17
    :goto_0
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->incomingTraceContext_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 18
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->incomingTraceContext_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedOutputStream;->w0(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getOutgoingTraceContextList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    const/16 v1, 0x4a

    .line 20
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedOutputStream;->d1(I)V

    .line 21
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->outgoingTraceContextMemoizedSerializedSize:I

    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedOutputStream;->d1(I)V

    .line 22
    :cond_8
    :goto_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->outgoingTraceContext_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 23
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->outgoingTraceContext_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedOutputStream;->w0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 24
    :cond_9
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverAddress_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xa

    .line 25
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverAddress_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 26
    :cond_a
    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->ocagentExporterEnabled_:Z

    if-eqz v0, :cond_b

    const/16 v1, 0xb

    .line 27
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 28
    :cond_b
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->ocagentAddress_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xc

    .line 29
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->ocagentAddress_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 30
    :cond_c
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->stackdriverGrpcService_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    if-eqz v0, :cond_d

    const/16 v0, 0xd

    .line 31
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getStackdriverGrpcService()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 32
    :cond_d
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->ocagentGrpcService_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    if-eqz v0, :cond_e

    const/16 v0, 0xe

    .line 33
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/OpenCensusConfig;->getOcagentGrpcService()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 34
    :cond_e
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
