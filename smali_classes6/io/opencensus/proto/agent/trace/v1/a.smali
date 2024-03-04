.class public final Lio/opencensus/proto/agent/trace/v1/a;
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
    .locals 9

    const-string v0, "\n3opencensus/proto/agent/trace/v1/trace_service.proto\u0012\u001fopencensus.proto.agent.trace.v1\u001a-opencensus/proto/agent/common/v1/common.proto\u001a+opencensus/proto/resource/v1/resource.proto\u001a%opencensus/proto/trace/v1/trace.proto\u001a,opencensus/proto/trace/v1/trace_config.proto\"\u0084\u0001\n\u0014CurrentLibraryConfig\u00124\n\u0004node\u0018\u0001 \u0001(\u000b2&.opencensus.proto.agent.common.v1.Node\u00126\n\u0006config\u0018\u0002 \u0001(\u000b2&.opencensus.proto.trace.v1.TraceConfig\"\u0084\u0001\n\u0014UpdatedLibraryConfig\u00124\n\u0004node\u0018\u0001 \u0001(\u000b2&.opencensus.proto.agent.common.v1.Node\u00126\n\u0006config\u0018\u0002 \u0001(\u000b2&.opencensus.proto.trace.v1.TraceConfig\"\u00bb\u0001\n\u0019ExportTraceServiceRequest\u00124\n\u0004node\u0018\u0001 \u0001(\u000b2&.opencensus.proto.agent.common.v1.Node\u0012.\n\u0005spans\u0018\u0002 \u0003(\u000b2\u001f.opencensus.proto.trace.v1.Span\u00128\n\u0008resource\u0018\u0003 \u0001(\u000b2&.opencensus.proto.resource.v1.Resource\"\u001c\n\u001aExportTraceServiceResponse2\u0096\u0002\n\u000cTraceService\u0012|\n\u0006Config\u00125.opencensus.proto.agent.trace.v1.CurrentLibraryConfig\u001a5.opencensus.proto.agent.trace.v1.UpdatedLibraryConfig\"\u0000(\u00010\u0001\u0012\u0087\u0001\n\u0006Export\u0012:.opencensus.proto.agent.trace.v1.ExportTraceServiceRequest\u001a;.opencensus.proto.agent.trace.v1.ExportTraceServiceResponse\"\u0000(\u00010\u0001B\u0083\u0001\n\"io.opencensus.proto.agent.trace.v1B\u0011TraceServiceProtoP\u0001ZHgithub.com/census-instrumentation/opencensus-proto/gen-go/agent/trace/v1b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lio/opencensus/proto/agent/trace/v1/a$a;

    invoke-direct {v1}, Lio/opencensus/proto/agent/trace/v1/a$a;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3
    invoke-static {}, Lio/opencensus/proto/agent/common/v1/a;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 4
    invoke-static {}, Lio/opencensus/proto/resource/v1/b;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 5
    invoke-static {}, Lio/opencensus/proto/trace/v1/j;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 6
    invoke-static {}, Lio/opencensus/proto/trace/v1/i;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    .line 7
    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->t([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$a;)V

    .line 8
    invoke-static {}, Lio/opencensus/proto/agent/trace/v1/a;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/agent/trace/v1/a;->a:Lcom/google/protobuf/Descriptors$b;

    .line 9
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Node"

    const-string v3, "Config"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v0, v8}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/agent/trace/v1/a;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 10
    invoke-static {}, Lio/opencensus/proto/agent/trace/v1/a;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/agent/trace/v1/a;->c:Lcom/google/protobuf/Descriptors$b;

    .line 11
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/agent/trace/v1/a;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 12
    invoke-static {}, Lio/opencensus/proto/agent/trace/v1/a;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/agent/trace/v1/a;->e:Lcom/google/protobuf/Descriptors$b;

    .line 13
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Spans"

    const-string v5, "Resource"

    filled-new-array {v2, v3, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/agent/trace/v1/a;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 14
    invoke-static {}, Lio/opencensus/proto/agent/trace/v1/a;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/agent/trace/v1/a;->g:Lcom/google/protobuf/Descriptors$b;

    .line 15
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    new-array v2, v4, [Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/agent/trace/v1/a;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 16
    invoke-static {}, Lio/opencensus/proto/agent/common/v1/a;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 17
    invoke-static {}, Lio/opencensus/proto/resource/v1/b;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 18
    invoke-static {}, Lio/opencensus/proto/trace/v1/j;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 19
    invoke-static {}, Lio/opencensus/proto/trace/v1/i;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lio/opencensus/proto/agent/trace/v1/a;->i:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static b()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/opencensus/proto/agent/trace/v1/a;->i:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
