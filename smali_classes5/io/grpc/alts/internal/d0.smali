.class public final Lio/grpc/alts/internal/d0;
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
    .locals 5

    const-string v0, "\n(grpc/gcp/transport_security_common.proto\u0012\u0008grpc.gcp\"\u00be\u0001\n\u0013RpcProtocolVersions\u0012>\n\u000fmax_rpc_version\u0018\u0001 \u0001(\u000b2%.grpc.gcp.RpcProtocolVersions.Version\u0012>\n\u000fmin_rpc_version\u0018\u0002 \u0001(\u000b2%.grpc.gcp.RpcProtocolVersions.Version\u001a\'\n\u0007Version\u0012\r\n\u0005major\u0018\u0001 \u0001(\r\u0012\r\n\u0005minor\u0018\u0002 \u0001(\r*Q\n\rSecurityLevel\u0012\u0011\n\rSECURITY_NONE\u0010\u0000\u0012\u0012\n\u000eINTEGRITY_ONLY\u0010\u0001\u0012\u0019\n\u0015INTEGRITY_AND_PRIVACY\u0010\u0002Bx\n\u0015io.grpc.alts.internalB\u001cTransportSecurityCommonProtoP\u0001Z?google.golang.org/grpc/credentials/alts/internal/proto/grpc_gcpb\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/alts/internal/d0;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3
    invoke-static {}, Lio/grpc/alts/internal/d0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/alts/internal/d0;->a:Lcom/google/protobuf/Descriptors$b;

    .line 4
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "MaxRpcVersion"

    const-string v4, "MinRpcVersion"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/alts/internal/d0;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/alts/internal/d0;->c:Lcom/google/protobuf/Descriptors$b;

    .line 6
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Major"

    const-string v3, "Minor"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/alts/internal/d0;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/alts/internal/d0;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
