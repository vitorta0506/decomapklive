.class public final Lcom/google/api/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/protobuf/Descriptors$b;

.field static final b:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static c:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    const-string v0, "\n\u0018google/api/service.proto\u0012\ngoogle.api\u001a\u0015google/api/auth.proto\u001a\u0018google/api/backend.proto\u001a\u0018google/api/billing.proto\u001a\u0018google/api/context.proto\u001a\u0018google/api/control.proto\u001a\u001egoogle/api/documentation.proto\u001a\u0019google/api/endpoint.proto\u001a\u0015google/api/http.proto\u001a\u0016google/api/label.proto\u001a\u0014google/api/log.proto\u001a\u0018google/api/logging.proto\u001a\u0017google/api/metric.proto\u001a#google/api/monitored_resource.proto\u001a\u001bgoogle/api/monitoring.proto\u001a\u0016google/api/quota.proto\u001a\u0019google/api/resource.proto\u001a\u001cgoogle/api/source_info.proto\u001a!google/api/system_parameter.proto\u001a\u0016google/api/usage.proto\u001a\u0019google/protobuf/any.proto\u001a\u0019google/protobuf/api.proto\u001a\u001agoogle/protobuf/type.proto\u001a\u001egoogle/protobuf/wrappers.proto\"\u00da\u0007\n\u0007Service\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\r\n\u0005title\u0018\u0002 \u0001(\t\u0012\u001b\n\u0013producer_project_id\u0018\u0016 \u0001(\t\u0012\n\n\u0002id\u0018! \u0001(\t\u0012\"\n\u0004apis\u0018\u0003 \u0003(\u000b2\u0014.google.protobuf.Api\u0012$\n\u0005types\u0018\u0004 \u0003(\u000b2\u0015.google.protobuf.Type\u0012$\n\u0005enums\u0018\u0005 \u0003(\u000b2\u0015.google.protobuf.Enum\u00120\n\rdocumentation\u0018\u0006 \u0001(\u000b2\u0019.google.api.Documentation\u0012$\n\u0007backend\u0018\u0008 \u0001(\u000b2\u0013.google.api.Backend\u0012\u001e\n\u0004http\u0018\t \u0001(\u000b2\u0010.google.api.Http\u0012 \n\u0005quota\u0018\n \u0001(\u000b2\u0011.google.api.Quota\u00122\n\u000eauthentication\u0018\u000b \u0001(\u000b2\u001a.google.api.Authentication\u0012$\n\u0007context\u0018\u000c \u0001(\u000b2\u0013.google.api.Context\u0012 \n\u0005usage\u0018\u000f \u0001(\u000b2\u0011.google.api.Usage\u0012\'\n\tendpoints\u0018\u0012 \u0003(\u000b2\u0014.google.api.Endpoint\u0012$\n\u0007control\u0018\u0015 \u0001(\u000b2\u0013.google.api.Control\u0012\'\n\u0004logs\u0018\u0017 \u0003(\u000b2\u0019.google.api.LogDescriptor\u0012-\n\u0007metrics\u0018\u0018 \u0003(\u000b2\u001c.google.api.MetricDescriptor\u0012D\n\u0013monitored_resources\u0018\u0019 \u0003(\u000b2\'.google.api.MonitoredResourceDescriptor\u0012$\n\u0007billing\u0018\u001a \u0001(\u000b2\u0013.google.api.Billing\u0012$\n\u0007logging\u0018\u001b \u0001(\u000b2\u0013.google.api.Logging\u0012*\n\nmonitoring\u0018\u001c \u0001(\u000b2\u0016.google.api.Monitoring\u00127\n\u0011system_parameters\u0018\u001d \u0001(\u000b2\u001c.google.api.SystemParameters\u0012+\n\u000bsource_info\u0018% \u0001(\u000b2\u0016.google.api.SourceInfo\u00128\n\u000econfig_version\u0018\u0014 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0002\u0018\u0001Bn\n\u000ecom.google.apiB\u000cServiceProtoP\u0001ZEgoogle.golang.org/genproto/googleapis/api/serviceconfig;serviceconfig\u00a2\u0002\u0004GAPIb\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x17

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lcom/google/api/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lcom/google/api/i;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {}, Lcom/google/api/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 5
    invoke-static {}, Lcom/google/api/q;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    .line 6
    invoke-static {}, Lcom/google/api/t;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    .line 7
    invoke-static {}, Lcom/google/api/x;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    .line 8
    invoke-static {}, Lcom/google/api/a0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x6

    aput-object v2, v1, v4

    .line 9
    invoke-static {}, Lcom/google/api/f0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x7

    aput-object v2, v1, v4

    .line 10
    invoke-static {}, Lcom/google/api/j0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v4, 0x8

    aput-object v2, v1, v4

    .line 11
    invoke-static {}, Lcom/google/api/m0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v4, 0x9

    aput-object v2, v1, v4

    .line 12
    invoke-static {}, Lcom/google/api/o0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v4, 0xa

    aput-object v2, v1, v4

    .line 13
    invoke-static {}, Lcom/google/api/q0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v4, 0xb

    aput-object v2, v1, v4

    .line 14
    invoke-static {}, Lcom/google/api/t0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v4, 0xc

    aput-object v2, v1, v4

    .line 15
    invoke-static {}, Lcom/google/api/v0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v4, 0xd

    aput-object v2, v1, v4

    .line 16
    invoke-static {}, Lcom/google/api/b1;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v4, 0xe

    aput-object v2, v1, v4

    .line 17
    invoke-static {}, Lcom/google/api/c1;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v4, 0xf

    aput-object v2, v1, v4

    .line 18
    invoke-static {}, Lcom/google/api/h1;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v4, 0x10

    aput-object v2, v1, v4

    .line 19
    invoke-static {}, Lcom/google/api/j1;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v4, 0x11

    aput-object v2, v1, v4

    .line 20
    invoke-static {}, Lcom/google/api/n1;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v4, 0x12

    aput-object v2, v1, v4

    .line 21
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v4, 0x13

    aput-object v2, v1, v4

    .line 22
    invoke-static {}, Lcom/google/protobuf/i;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v4, 0x14

    aput-object v2, v1, v4

    .line 23
    invoke-static {}, Lcom/google/protobuf/c3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v4, 0x15

    aput-object v2, v1, v4

    .line 24
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v4, 0x16

    aput-object v2, v1, v4

    .line 25
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/api/f1;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 26
    invoke-static {}, Lcom/google/api/f1;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/api/f1;->a:Lcom/google/protobuf/Descriptors$b;

    .line 27
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Name"

    const-string v3, "Title"

    const-string v4, "ProducerProjectId"

    const-string v5, "Id"

    const-string v6, "Apis"

    const-string v7, "Types"

    const-string v8, "Enums"

    const-string v9, "Documentation"

    const-string v10, "Backend"

    const-string v11, "Http"

    const-string v12, "Quota"

    const-string v13, "Authentication"

    const-string v14, "Context"

    const-string v15, "Usage"

    const-string v16, "Endpoints"

    const-string v17, "Control"

    const-string v18, "Logs"

    const-string v19, "Metrics"

    const-string v20, "MonitoredResources"

    const-string v21, "Billing"

    const-string v22, "Logging"

    const-string v23, "Monitoring"

    const-string v24, "SystemParameters"

    const-string v25, "SourceInfo"

    const-string v26, "ConfigVersion"

    filled-new-array/range {v2 .. v26}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/api/f1;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 28
    invoke-static {}, Lcom/google/api/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 29
    invoke-static {}, Lcom/google/api/i;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 30
    invoke-static {}, Lcom/google/api/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 31
    invoke-static {}, Lcom/google/api/q;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 32
    invoke-static {}, Lcom/google/api/t;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 33
    invoke-static {}, Lcom/google/api/x;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 34
    invoke-static {}, Lcom/google/api/a0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 35
    invoke-static {}, Lcom/google/api/f0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 36
    invoke-static {}, Lcom/google/api/j0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 37
    invoke-static {}, Lcom/google/api/m0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 38
    invoke-static {}, Lcom/google/api/o0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 39
    invoke-static {}, Lcom/google/api/q0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 40
    invoke-static {}, Lcom/google/api/t0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 41
    invoke-static {}, Lcom/google/api/v0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 42
    invoke-static {}, Lcom/google/api/b1;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 43
    invoke-static {}, Lcom/google/api/c1;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 44
    invoke-static {}, Lcom/google/api/h1;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 45
    invoke-static {}, Lcom/google/api/j1;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 46
    invoke-static {}, Lcom/google/api/n1;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 47
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 48
    invoke-static {}, Lcom/google/protobuf/i;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 49
    invoke-static {}, Lcom/google/protobuf/c3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 50
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/google/api/f1;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
