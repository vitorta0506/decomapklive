.class public final Lio/opencensus/proto/trace/v1/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/protobuf/Descriptors$b;

.field static final b:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final c:Lcom/google/protobuf/Descriptors$b;

.field static final d:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final e:Lcom/google/protobuf/Descriptors$b;

.field static final f:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final g:Lcom/google/protobuf/Descriptors$b;

.field static final h:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static i:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "\n,opencensus/proto/trace/v1/trace_config.proto\u0012\u0019opencensus.proto.trace.v1\"\u0087\u0003\n\u000bTraceConfig\u0012L\n\u0013probability_sampler\u0018\u0001 \u0001(\u000b2-.opencensus.proto.trace.v1.ProbabilitySamplerH\u0000\u0012F\n\u0010constant_sampler\u0018\u0002 \u0001(\u000b2*.opencensus.proto.trace.v1.ConstantSamplerH\u0000\u0012O\n\u0015rate_limiting_sampler\u0018\u0003 \u0001(\u000b2..opencensus.proto.trace.v1.RateLimitingSamplerH\u0000\u0012 \n\u0018max_number_of_attributes\u0018\u0004 \u0001(\u0003\u0012!\n\u0019max_number_of_annotations\u0018\u0005 \u0001(\u0003\u0012$\n\u001cmax_number_of_message_events\u0018\u0006 \u0001(\u0003\u0012\u001b\n\u0013max_number_of_links\u0018\u0007 \u0001(\u0003B\t\n\u0007sampler\"1\n\u0012ProbabilitySampler\u0012\u001b\n\u0013samplingProbability\u0018\u0001 \u0001(\u0001\"\u00a6\u0001\n\u000fConstantSampler\u0012M\n\u0008decision\u0018\u0001 \u0001(\u000e2;.opencensus.proto.trace.v1.ConstantSampler.ConstantDecision\"D\n\u0010ConstantDecision\u0012\u000e\n\nALWAYS_OFF\u0010\u0000\u0012\r\n\tALWAYS_ON\u0010\u0001\u0012\u0011\n\rALWAYS_PARENT\u0010\u0002\"\"\n\u0013RateLimitingSampler\u0012\u000b\n\u0003qps\u0018\u0001 \u0001(\u0003Bv\n\u001cio.opencensus.proto.trace.v1B\u0010TraceConfigProtoP\u0001ZBgithub.com/census-instrumentation/opencensus-proto/gen-go/trace/v1b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lio/opencensus/proto/trace/v1/i$a;

    invoke-direct {v1}, Lio/opencensus/proto/trace/v1/i$a;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->t([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$a;)V

    .line 4
    invoke-static {}, Lio/opencensus/proto/trace/v1/i;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/trace/v1/i;->a:Lcom/google/protobuf/Descriptors$b;

    .line 5
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "ProbabilitySampler"

    const-string v3, "ConstantSampler"

    const-string v4, "RateLimitingSampler"

    const-string v5, "MaxNumberOfAttributes"

    const-string v6, "MaxNumberOfAnnotations"

    const-string v7, "MaxNumberOfMessageEvents"

    const-string v8, "MaxNumberOfLinks"

    const-string v9, "Sampler"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/trace/v1/i;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 6
    invoke-static {}, Lio/opencensus/proto/trace/v1/i;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/trace/v1/i;->c:Lcom/google/protobuf/Descriptors$b;

    .line 7
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "SamplingProbability"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/trace/v1/i;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 8
    invoke-static {}, Lio/opencensus/proto/trace/v1/i;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/trace/v1/i;->e:Lcom/google/protobuf/Descriptors$b;

    .line 9
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Decision"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/trace/v1/i;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 10
    invoke-static {}, Lio/opencensus/proto/trace/v1/i;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/trace/v1/i;->g:Lcom/google/protobuf/Descriptors$b;

    .line 11
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Qps"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/trace/v1/i;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lio/opencensus/proto/trace/v1/i;->i:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static b()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/opencensus/proto/trace/v1/i;->i:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
