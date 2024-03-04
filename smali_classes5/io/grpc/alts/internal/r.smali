.class public final Lio/grpc/alts/internal/r;
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
    .locals 15

    const-string v0, "\n\u0019grpc/gcp/handshaker.proto\u0012\u0008grpc.gcp\u001a(grpc/gcp/transport_security_common.proto\"Y\n\u0008Endpoint\u0012\u0012\n\nip_address\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004port\u0018\u0002 \u0001(\u0005\u0012+\n\u0008protocol\u0018\u0003 \u0001(\u000e2\u0019.grpc.gcp.NetworkProtocol\"\u00b6\u0001\n\u0008Identity\u0012\u0019\n\u000fservice_account\u0018\u0001 \u0001(\tH\u0000\u0012\u0012\n\u0008hostname\u0018\u0002 \u0001(\tH\u0000\u00126\n\nattributes\u0018\u0003 \u0003(\u000b2\".grpc.gcp.Identity.AttributesEntry\u001a1\n\u000fAttributesEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001B\u0010\n\u000eidentity_oneof\"\u00aa\u0003\n\u0017StartClientHandshakeReq\u0012@\n\u001bhandshake_security_protocol\u0018\u0001 \u0001(\u000e2\u001b.grpc.gcp.HandshakeProtocol\u0012\u001d\n\u0015application_protocols\u0018\u0002 \u0003(\t\u0012\u0018\n\u0010record_protocols\u0018\u0003 \u0003(\t\u0012-\n\u0011target_identities\u0018\u0004 \u0003(\u000b2\u0012.grpc.gcp.Identity\u0012*\n\u000elocal_identity\u0018\u0005 \u0001(\u000b2\u0012.grpc.gcp.Identity\u0012*\n\u000elocal_endpoint\u0018\u0006 \u0001(\u000b2\u0012.grpc.gcp.Endpoint\u0012+\n\u000fremote_endpoint\u0018\u0007 \u0001(\u000b2\u0012.grpc.gcp.Endpoint\u0012\u0013\n\u000btarget_name\u0018\u0008 \u0001(\t\u00123\n\u000crpc_versions\u0018\t \u0001(\u000b2\u001d.grpc.gcp.RpcProtocolVersions\u0012\u0016\n\u000emax_frame_size\u0018\n \u0001(\r\"c\n\u0019ServerHandshakeParameters\u0012\u0018\n\u0010record_protocols\u0018\u0001 \u0003(\t\u0012,\n\u0010local_identities\u0018\u0002 \u0003(\u000b2\u0012.grpc.gcp.Identity\"\u00ab\u0003\n\u0017StartServerHandshakeReq\u0012\u001d\n\u0015application_protocols\u0018\u0001 \u0003(\t\u0012X\n\u0014handshake_parameters\u0018\u0002 \u0003(\u000b2:.grpc.gcp.StartServerHandshakeReq.HandshakeParametersEntry\u0012\u0010\n\u0008in_bytes\u0018\u0003 \u0001(\u000c\u0012*\n\u000elocal_endpoint\u0018\u0004 \u0001(\u000b2\u0012.grpc.gcp.Endpoint\u0012+\n\u000fremote_endpoint\u0018\u0005 \u0001(\u000b2\u0012.grpc.gcp.Endpoint\u00123\n\u000crpc_versions\u0018\u0006 \u0001(\u000b2\u001d.grpc.gcp.RpcProtocolVersions\u0012\u0016\n\u000emax_frame_size\u0018\u0007 \u0001(\r\u001a_\n\u0018HandshakeParametersEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\u0005\u00122\n\u0005value\u0018\u0002 \u0001(\u000b2#.grpc.gcp.ServerHandshakeParameters:\u00028\u0001\"+\n\u0017NextHandshakeMessageReq\u0012\u0010\n\u0008in_bytes\u0018\u0001 \u0001(\u000c\"\u00c5\u0001\n\rHandshakerReq\u00129\n\u000cclient_start\u0018\u0001 \u0001(\u000b2!.grpc.gcp.StartClientHandshakeReqH\u0000\u00129\n\u000cserver_start\u0018\u0002 \u0001(\u000b2!.grpc.gcp.StartServerHandshakeReqH\u0000\u00121\n\u0004next\u0018\u0003 \u0001(\u000b2!.grpc.gcp.NextHandshakeMessageReqH\u0000B\u000b\n\treq_oneof\"\u009f\u0002\n\u0010HandshakerResult\u0012\u001c\n\u0014application_protocol\u0018\u0001 \u0001(\t\u0012\u0017\n\u000frecord_protocol\u0018\u0002 \u0001(\t\u0012\u0010\n\u0008key_data\u0018\u0003 \u0001(\u000c\u0012)\n\rpeer_identity\u0018\u0004 \u0001(\u000b2\u0012.grpc.gcp.Identity\u0012*\n\u000elocal_identity\u0018\u0005 \u0001(\u000b2\u0012.grpc.gcp.Identity\u0012\u0019\n\u0011keep_channel_open\u0018\u0006 \u0001(\u0008\u00128\n\u0011peer_rpc_versions\u0018\u0007 \u0001(\u000b2\u001d.grpc.gcp.RpcProtocolVersions\u0012\u0016\n\u000emax_frame_size\u0018\u0008 \u0001(\r\"1\n\u0010HandshakerStatus\u0012\u000c\n\u0004code\u0018\u0001 \u0001(\r\u0012\u000f\n\u0007details\u0018\u0002 \u0001(\t\"\u0094\u0001\n\u000eHandshakerResp\u0012\u0012\n\nout_frames\u0018\u0001 \u0001(\u000c\u0012\u0016\n\u000ebytes_consumed\u0018\u0002 \u0001(\r\u0012*\n\u0006result\u0018\u0003 \u0001(\u000b2\u001a.grpc.gcp.HandshakerResult\u0012*\n\u0006status\u0018\u0004 \u0001(\u000b2\u001a.grpc.gcp.HandshakerStatus*J\n\u0011HandshakeProtocol\u0012\"\n\u001eHANDSHAKE_PROTOCOL_UNSPECIFIED\u0010\u0000\u0012\u0007\n\u0003TLS\u0010\u0001\u0012\u0008\n\u0004ALTS\u0010\u0002*E\n\u000fNetworkProtocol\u0012 \n\u001cNETWORK_PROTOCOL_UNSPECIFIED\u0010\u0000\u0012\u0007\n\u0003TCP\u0010\u0001\u0012\u0007\n\u0003UDP\u0010\u00022[\n\u0011HandshakerService\u0012F\n\u000bDoHandshake\u0012\u0017.grpc.gcp.HandshakerReq\u001a\u0018.grpc.gcp.HandshakerResp\"\u0000(\u00010\u0001Bk\n\u0015io.grpc.alts.internalB\u000fHandshakerProtoP\u0001Z?google.golang.org/grpc/credentials/alts/internal/proto/grpc_gcpb\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/alts/internal/d0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/alts/internal/r;->y:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 4
    invoke-static {}, Lio/grpc/alts/internal/r;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/alts/internal/r;->a:Lcom/google/protobuf/Descriptors$b;

    .line 5
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "IpAddress"

    const-string v5, "Port"

    const-string v6, "Protocol"

    filled-new-array {v3, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/alts/internal/r;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 6
    invoke-static {}, Lio/grpc/alts/internal/r;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/alts/internal/r;->c:Lcom/google/protobuf/Descriptors$b;

    .line 7
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "ServiceAccount"

    const-string v3, "Hostname"

    const-string v5, "Attributes"

    const-string v6, "IdentityOneof"

    filled-new-array {v2, v3, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/alts/internal/r;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/alts/internal/r;->e:Lcom/google/protobuf/Descriptors$b;

    .line 9
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Key"

    const-string v3, "Value"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/alts/internal/r;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 10
    invoke-static {}, Lio/grpc/alts/internal/r;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/alts/internal/r;->g:Lcom/google/protobuf/Descriptors$b;

    .line 11
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v5, "HandshakeSecurityProtocol"

    const-string v6, "ApplicationProtocols"

    const-string v7, "RecordProtocols"

    const-string v8, "TargetIdentities"

    const-string v9, "LocalIdentity"

    const-string v10, "LocalEndpoint"

    const-string v11, "RemoteEndpoint"

    const-string v12, "TargetName"

    const-string v13, "RpcVersions"

    const-string v14, "MaxFrameSize"

    filled-new-array/range {v5 .. v14}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/alts/internal/r;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 12
    invoke-static {}, Lio/grpc/alts/internal/r;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/alts/internal/r;->i:Lcom/google/protobuf/Descriptors$b;

    .line 13
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v5, "RecordProtocols"

    const-string v6, "LocalIdentities"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/alts/internal/r;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 14
    invoke-static {}, Lio/grpc/alts/internal/r;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/alts/internal/r;->k:Lcom/google/protobuf/Descriptors$b;

    .line 15
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v5, "ApplicationProtocols"

    const-string v6, "HandshakeParameters"

    const-string v7, "InBytes"

    const-string v8, "LocalEndpoint"

    const-string v9, "RemoteEndpoint"

    const-string v10, "RpcVersions"

    const-string v11, "MaxFrameSize"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/alts/internal/r;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 16
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/alts/internal/r;->m:Lcom/google/protobuf/Descriptors$b;

    .line 17
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/alts/internal/r;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 18
    invoke-static {}, Lio/grpc/alts/internal/r;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/alts/internal/r;->o:Lcom/google/protobuf/Descriptors$b;

    .line 19
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "InBytes"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/alts/internal/r;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 20
    invoke-static {}, Lio/grpc/alts/internal/r;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/alts/internal/r;->q:Lcom/google/protobuf/Descriptors$b;

    .line 21
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "ClientStart"

    const-string v3, "ServerStart"

    const-string v4, "Next"

    const-string v5, "ReqOneof"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/alts/internal/r;->r:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 22
    invoke-static {}, Lio/grpc/alts/internal/r;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/alts/internal/r;->s:Lcom/google/protobuf/Descriptors$b;

    .line 23
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "ApplicationProtocol"

    const-string v3, "RecordProtocol"

    const-string v4, "KeyData"

    const-string v5, "PeerIdentity"

    const-string v6, "LocalIdentity"

    const-string v7, "KeepChannelOpen"

    const-string v8, "PeerRpcVersions"

    const-string v9, "MaxFrameSize"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/alts/internal/r;->t:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 24
    invoke-static {}, Lio/grpc/alts/internal/r;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/alts/internal/r;->u:Lcom/google/protobuf/Descriptors$b;

    .line 25
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Code"

    const-string v3, "Details"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/alts/internal/r;->v:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 26
    invoke-static {}, Lio/grpc/alts/internal/r;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/alts/internal/r;->w:Lcom/google/protobuf/Descriptors$b;

    .line 27
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "OutFrames"

    const-string v3, "BytesConsumed"

    const-string v4, "Result"

    const-string v5, "Status"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/alts/internal/r;->x:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 28
    invoke-static {}, Lio/grpc/alts/internal/d0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/alts/internal/r;->y:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
