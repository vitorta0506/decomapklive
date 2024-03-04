.class public final Lio/opencensus/proto/agent/common/v1/a;
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

.field static final i:Lcom/google/protobuf/Descriptors$b;

.field static final j:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static k:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "\n-opencensus/proto/agent/common/v1/common.proto\u0012 opencensus.proto.agent.common.v1\u001a\u001fgoogle/protobuf/timestamp.proto\"\u00d8\u0002\n\u0004Node\u0012G\n\nidentifier\u0018\u0001 \u0001(\u000b23.opencensus.proto.agent.common.v1.ProcessIdentifier\u0012C\n\u000clibrary_info\u0018\u0002 \u0001(\u000b2-.opencensus.proto.agent.common.v1.LibraryInfo\u0012C\n\u000cservice_info\u0018\u0003 \u0001(\u000b2-.opencensus.proto.agent.common.v1.ServiceInfo\u0012J\n\nattributes\u0018\u0004 \u0003(\u000b26.opencensus.proto.agent.common.v1.Node.AttributesEntry\u001a1\n\u000fAttributesEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\"h\n\u0011ProcessIdentifier\u0012\u0011\n\thost_name\u0018\u0001 \u0001(\t\u0012\u000b\n\u0003pid\u0018\u0002 \u0001(\r\u00123\n\u000fstart_timestamp\u0018\u0003 \u0001(\u000b2\u001a.google.protobuf.Timestamp\"\u009b\u0002\n\u000bLibraryInfo\u0012H\n\u0008language\u0018\u0001 \u0001(\u000e26.opencensus.proto.agent.common.v1.LibraryInfo.Language\u0012\u0018\n\u0010exporter_version\u0018\u0002 \u0001(\t\u0012\u001c\n\u0014core_library_version\u0018\u0003 \u0001(\t\"\u0089\u0001\n\u0008Language\u0012\u0018\n\u0014LANGUAGE_UNSPECIFIED\u0010\u0000\u0012\u0007\n\u0003CPP\u0010\u0001\u0012\u000b\n\u0007C_SHARP\u0010\u0002\u0012\n\n\u0006ERLANG\u0010\u0003\u0012\u000b\n\u0007GO_LANG\u0010\u0004\u0012\u0008\n\u0004JAVA\u0010\u0005\u0012\u000b\n\u0007NODE_JS\u0010\u0006\u0012\u0007\n\u0003PHP\u0010\u0007\u0012\n\n\u0006PYTHON\u0010\u0008\u0012\u0008\n\u0004RUBY\u0010\t\"\u001b\n\u000bServiceInfo\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\tB\u007f\n#io.opencensus.proto.agent.common.v1B\u000bCommonProtoP\u0001ZIgithub.com/census-instrumentation/opencensus-proto/gen-go/agent/common/v1b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lio/opencensus/proto/agent/common/v1/a$a;

    invoke-direct {v1}, Lio/opencensus/proto/agent/common/v1/a$a;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3
    invoke-static {}, Lcom/google/protobuf/a3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 4
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->t([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$a;)V

    .line 5
    invoke-static {}, Lio/opencensus/proto/agent/common/v1/a;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/agent/common/v1/a;->a:Lcom/google/protobuf/Descriptors$b;

    .line 6
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Identifier"

    const-string v4, "LibraryInfo"

    const-string v6, "ServiceInfo"

    const-string v7, "Attributes"

    filled-new-array {v3, v4, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/agent/common/v1/a;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 7
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/agent/common/v1/a;->c:Lcom/google/protobuf/Descriptors$b;

    .line 8
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Key"

    const-string v4, "Value"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/agent/common/v1/a;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 9
    invoke-static {}, Lio/opencensus/proto/agent/common/v1/a;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/agent/common/v1/a;->e:Lcom/google/protobuf/Descriptors$b;

    .line 10
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "HostName"

    const-string v3, "Pid"

    const-string v4, "StartTimestamp"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/agent/common/v1/a;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 11
    invoke-static {}, Lio/opencensus/proto/agent/common/v1/a;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/agent/common/v1/a;->g:Lcom/google/protobuf/Descriptors$b;

    .line 12
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Language"

    const-string v3, "ExporterVersion"

    const-string v4, "CoreLibraryVersion"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/agent/common/v1/a;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 13
    invoke-static {}, Lio/opencensus/proto/agent/common/v1/a;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/agent/common/v1/a;->i:Lcom/google/protobuf/Descriptors$b;

    .line 14
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Name"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/agent/common/v1/a;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 15
    invoke-static {}, Lcom/google/protobuf/a3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lio/opencensus/proto/agent/common/v1/a;->k:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static b()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/opencensus/proto/agent/common/v1/a;->k:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
