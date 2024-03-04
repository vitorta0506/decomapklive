.class public final Lcom/google/rpc/context/a;
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

.field static final k:Lcom/google/protobuf/Descriptors$b;

.field static final l:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final m:Lcom/google/protobuf/Descriptors$b;

.field static final n:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final o:Lcom/google/protobuf/Descriptors$b;

.field static final p:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final q:Lcom/google/protobuf/Descriptors$b;

.field static final r:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final s:Lcom/google/protobuf/Descriptors$b;

.field static final t:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final u:Lcom/google/protobuf/Descriptors$b;

.field static final v:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final w:Lcom/google/protobuf/Descriptors$b;

.field static final x:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static y:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    const-string v0, "\n*google/rpc/context/attribute_context.proto\u0012\u0012google.rpc.context\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001fgoogle/protobuf/timestamp.proto\"\u0083\u0010\n\u0010AttributeContext\u00129\n\u0006origin\u0018\u0007 \u0001(\u000b2).google.rpc.context.AttributeContext.Peer\u00129\n\u0006source\u0018\u0001 \u0001(\u000b2).google.rpc.context.AttributeContext.Peer\u0012>\n\u000bdestination\u0018\u0002 \u0001(\u000b2).google.rpc.context.AttributeContext.Peer\u0012=\n\u0007request\u0018\u0003 \u0001(\u000b2,.google.rpc.context.AttributeContext.Request\u0012?\n\u0008response\u0018\u0004 \u0001(\u000b2-.google.rpc.context.AttributeContext.Response\u0012?\n\u0008resource\u0018\u0005 \u0001(\u000b2-.google.rpc.context.AttributeContext.Resource\u00125\n\u0003api\u0018\u0006 \u0001(\u000b2(.google.rpc.context.AttributeContext.Api\u0012(\n\nextensions\u0018\u0008 \u0003(\u000b2\u0014.google.protobuf.Any\u001a\u00be\u0001\n\u0004Peer\u0012\n\n\u0002ip\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004port\u0018\u0002 \u0001(\u0003\u0012E\n\u0006labels\u0018\u0006 \u0003(\u000b25.google.rpc.context.AttributeContext.Peer.LabelsEntry\u0012\u0011\n\tprincipal\u0018\u0007 \u0001(\t\u0012\u0013\n\u000bregion_code\u0018\u0008 \u0001(\t\u001a-\n\u000bLabelsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\u001aL\n\u0003Api\u0012\u000f\n\u0007service\u0018\u0001 \u0001(\t\u0012\u0011\n\toperation\u0018\u0002 \u0001(\t\u0012\u0010\n\u0008protocol\u0018\u0003 \u0001(\t\u0012\u000f\n\u0007version\u0018\u0004 \u0001(\t\u001a\u007f\n\u0004Auth\u0012\u0011\n\tprincipal\u0018\u0001 \u0001(\t\u0012\u0011\n\taudiences\u0018\u0002 \u0003(\t\u0012\u0011\n\tpresenter\u0018\u0003 \u0001(\t\u0012\'\n\u0006claims\u0018\u0004 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012\u0015\n\raccess_levels\u0018\u0005 \u0003(\t\u001a\u00ef\u0002\n\u0007Request\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\u000e\n\u0006method\u0018\u0002 \u0001(\t\u0012J\n\u0007headers\u0018\u0003 \u0003(\u000b29.google.rpc.context.AttributeContext.Request.HeadersEntry\u0012\u000c\n\u0004path\u0018\u0004 \u0001(\t\u0012\u000c\n\u0004host\u0018\u0005 \u0001(\t\u0012\u000e\n\u0006scheme\u0018\u0006 \u0001(\t\u0012\r\n\u0005query\u0018\u0007 \u0001(\t\u0012(\n\u0004time\u0018\t \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012\u000c\n\u0004size\u0018\n \u0001(\u0003\u0012\u0010\n\u0008protocol\u0018\u000b \u0001(\t\u0012\u000e\n\u0006reason\u0018\u000c \u0001(\t\u00127\n\u0004auth\u0018\r \u0001(\u000b2).google.rpc.context.AttributeContext.Auth\u001a.\n\u000cHeadersEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\u001a\u0081\u0002\n\u0008Response\u0012\u000c\n\u0004code\u0018\u0001 \u0001(\u0003\u0012\u000c\n\u0004size\u0018\u0002 \u0001(\u0003\u0012K\n\u0007headers\u0018\u0003 \u0003(\u000b2:.google.rpc.context.AttributeContext.Response.HeadersEntry\u0012(\n\u0004time\u0018\u0004 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u00122\n\u000fbackend_latency\u0018\u0005 \u0001(\u000b2\u0019.google.protobuf.Duration\u001a.\n\u000cHeadersEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\u001a\u0090\u0004\n\u0008Resource\u0012\u000f\n\u0007service\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004name\u0018\u0002 \u0001(\t\u0012\u000c\n\u0004type\u0018\u0003 \u0001(\t\u0012I\n\u0006labels\u0018\u0004 \u0003(\u000b29.google.rpc.context.AttributeContext.Resource.LabelsEntry\u0012\u000b\n\u0003uid\u0018\u0005 \u0001(\t\u0012S\n\u000bannotations\u0018\u0006 \u0003(\u000b2>.google.rpc.context.AttributeContext.Resource.AnnotationsEntry\u0012\u0014\n\u000cdisplay_name\u0018\u0007 \u0001(\t\u0012/\n\u000bcreate_time\u0018\u0008 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012/\n\u000bupdate_time\u0018\t \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012/\n\u000bdelete_time\u0018\n \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012\u000c\n\u0004etag\u0018\u000b \u0001(\t\u0012\u0010\n\u0008location\u0018\u000c \u0001(\t\u001a-\n\u000bLabelsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\u001a2\n\u0010AnnotationsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001B\u008b\u0001\n\u0016com.google.rpc.contextB\u0015AttributeContextProtoP\u0001ZUgoogle.golang.org/genproto/googleapis/rpc/context/attribute_context;attribute_context\u00f8\u0001\u0001b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 4
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 5
    invoke-static {}, Lcom/google/protobuf/a3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    .line 6
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/rpc/context/a;->y:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 7
    invoke-static {}, Lcom/google/rpc/context/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/rpc/context/a;->a:Lcom/google/protobuf/Descriptors$b;

    .line 8
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v8, "Origin"

    const-string v9, "Source"

    const-string v10, "Destination"

    const-string v11, "Request"

    const-string v12, "Response"

    const-string v13, "Resource"

    const-string v14, "Api"

    const-string v15, "Extensions"

    filled-new-array/range {v8 .. v15}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/rpc/context/a;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lcom/google/rpc/context/a;->c:Lcom/google/protobuf/Descriptors$b;

    .line 10
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v8, "Ip"

    const-string v9, "Port"

    const-string v10, "Labels"

    const-string v11, "Principal"

    const-string v12, "RegionCode"

    filled-new-array {v8, v9, v10, v11, v12}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v2, v8}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lcom/google/rpc/context/a;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 11
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lcom/google/rpc/context/a;->e:Lcom/google/protobuf/Descriptors$b;

    .line 12
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v8, "Key"

    const-string v9, "Value"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v2, v10}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lcom/google/rpc/context/a;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 13
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lcom/google/rpc/context/a;->g:Lcom/google/protobuf/Descriptors$b;

    .line 14
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v10, "Service"

    const-string v12, "Operation"

    const-string v13, "Protocol"

    const-string v14, "Version"

    filled-new-array {v10, v12, v13, v14}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v2, v10}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lcom/google/rpc/context/a;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 15
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lcom/google/rpc/context/a;->i:Lcom/google/protobuf/Descriptors$b;

    .line 16
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "Audiences"

    const-string v10, "Presenter"

    const-string v12, "Claims"

    const-string v13, "AccessLevels"

    filled-new-array {v11, v6, v10, v12, v13}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v2, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lcom/google/rpc/context/a;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 17
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lcom/google/rpc/context/a;->k:Lcom/google/protobuf/Descriptors$b;

    .line 18
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v10, "Id"

    const-string v11, "Method"

    const-string v12, "Headers"

    const-string v13, "Path"

    const-string v14, "Host"

    const-string v15, "Scheme"

    const-string v16, "Query"

    const-string v17, "Time"

    const-string v18, "Size"

    const-string v19, "Protocol"

    const-string v20, "Reason"

    const-string v21, "Auth"

    filled-new-array/range {v10 .. v21}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v2, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lcom/google/rpc/context/a;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 19
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    .line 20
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lcom/google/rpc/context/a;->m:Lcom/google/protobuf/Descriptors$b;

    .line 21
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v2, v6}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lcom/google/rpc/context/a;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 22
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lcom/google/rpc/context/a;->o:Lcom/google/protobuf/Descriptors$b;

    .line 23
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Code"

    const-string v6, "Size"

    const-string v7, "Headers"

    const-string v10, "Time"

    const-string v11, "BackendLatency"

    filled-new-array {v3, v6, v7, v10, v11}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/rpc/context/a;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 24
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    .line 25
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lcom/google/rpc/context/a;->q:Lcom/google/protobuf/Descriptors$b;

    .line 26
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/rpc/context/a;->r:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 27
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/rpc/context/a;->s:Lcom/google/protobuf/Descriptors$b;

    .line 28
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v10, "Service"

    const-string v11, "Name"

    const-string v12, "Type"

    const-string v13, "Labels"

    const-string v14, "Uid"

    const-string v15, "Annotations"

    const-string v16, "DisplayName"

    const-string v17, "CreateTime"

    const-string v18, "UpdateTime"

    const-string v19, "DeleteTime"

    const-string v20, "Etag"

    const-string v21, "Location"

    filled-new-array/range {v10 .. v21}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/rpc/context/a;->t:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 29
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    .line 30
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lcom/google/rpc/context/a;->u:Lcom/google/protobuf/Descriptors$b;

    .line 31
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/rpc/context/a;->v:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 32
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    .line 33
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/rpc/context/a;->w:Lcom/google/protobuf/Descriptors$b;

    .line 34
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/rpc/context/a;->x:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 35
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 36
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 37
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 38
    invoke-static {}, Lcom/google/protobuf/a3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/google/rpc/context/a;->y:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
