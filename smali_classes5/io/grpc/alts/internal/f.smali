.class public final Lio/grpc/alts/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/protobuf/Descriptors$b;

.field static final b:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final c:Lcom/google/protobuf/Descriptors$b;

.field static final d:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static e:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "\n\u001agrpc/gcp/altscontext.proto\u0012\u0008grpc.gcp\u001a(grpc/gcp/transport_security_common.proto\"\u00e7\u0002\n\u000bAltsContext\u0012\u001c\n\u0014application_protocol\u0018\u0001 \u0001(\t\u0012\u0017\n\u000frecord_protocol\u0018\u0002 \u0001(\t\u0012/\n\u000esecurity_level\u0018\u0003 \u0001(\u000e2\u0017.grpc.gcp.SecurityLevel\u0012\u001c\n\u0014peer_service_account\u0018\u0004 \u0001(\t\u0012\u001d\n\u0015local_service_account\u0018\u0005 \u0001(\t\u00128\n\u0011peer_rpc_versions\u0018\u0006 \u0001(\u000b2\u001d.grpc.gcp.RpcProtocolVersions\u0012B\n\u000fpeer_attributes\u0018\u0007 \u0003(\u000b2).grpc.gcp.AltsContext.PeerAttributesEntry\u001a5\n\u0013PeerAttributesEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001Bl\n\u0015io.grpc.alts.internalB\u0010AltsContextProtoP\u0001Z?google.golang.org/grpc/credentials/alts/internal/proto/grpc_gcpb\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/alts/internal/d0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/alts/internal/f;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 4
    invoke-static {}, Lio/grpc/alts/internal/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/alts/internal/f;->a:Lcom/google/protobuf/Descriptors$b;

    .line 5
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "ApplicationProtocol"

    const-string v5, "RecordProtocol"

    const-string v6, "SecurityLevel"

    const-string v7, "PeerServiceAccount"

    const-string v8, "LocalServiceAccount"

    const-string v9, "PeerRpcVersions"

    const-string v10, "PeerAttributes"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/alts/internal/f;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/alts/internal/f;->c:Lcom/google/protobuf/Descriptors$b;

    .line 7
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Key"

    const-string v3, "Value"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/alts/internal/f;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 8
    invoke-static {}, Lio/grpc/alts/internal/d0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/alts/internal/f;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
