.class public final Lio/grpc/binarylog/v1/b;
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

.field private static q:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const-string v0, "\n\u001egrpc/binlog/v1/binarylog.proto\u0012\u0011grpc.binarylog.v1\u001a\u001egoogle/protobuf/duration.proto\u001a\u001fgoogle/protobuf/timestamp.proto\"\u00be\u0006\n\u000cGrpcLogEntry\u0012-\n\ttimestamp\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012\u000f\n\u0007call_id\u0018\u0002 \u0001(\u0004\u0012\u001f\n\u0017sequence_id_within_call\u0018\u0003 \u0001(\u0004\u00127\n\u0004type\u0018\u0004 \u0001(\u000e2).grpc.binarylog.v1.GrpcLogEntry.EventType\u00126\n\u0006logger\u0018\u0005 \u0001(\u000e2&.grpc.binarylog.v1.GrpcLogEntry.Logger\u00128\n\rclient_header\u0018\u0006 \u0001(\u000b2\u001f.grpc.binarylog.v1.ClientHeaderH\u0000\u00128\n\rserver_header\u0018\u0007 \u0001(\u000b2\u001f.grpc.binarylog.v1.ServerHeaderH\u0000\u0012-\n\u0007message\u0018\u0008 \u0001(\u000b2\u001a.grpc.binarylog.v1.MessageH\u0000\u0012-\n\u0007trailer\u0018\t \u0001(\u000b2\u001a.grpc.binarylog.v1.TrailerH\u0000\u0012\u0019\n\u0011payload_truncated\u0018\n \u0001(\u0008\u0012(\n\u0004peer\u0018\u000b \u0001(\u000b2\u001a.grpc.binarylog.v1.Address\"\u00f5\u0001\n\tEventType\u0012\u0016\n\u0012EVENT_TYPE_UNKNOWN\u0010\u0000\u0012\u001c\n\u0018EVENT_TYPE_CLIENT_HEADER\u0010\u0001\u0012\u001c\n\u0018EVENT_TYPE_SERVER_HEADER\u0010\u0002\u0012\u001d\n\u0019EVENT_TYPE_CLIENT_MESSAGE\u0010\u0003\u0012\u001d\n\u0019EVENT_TYPE_SERVER_MESSAGE\u0010\u0004\u0012 \n\u001cEVENT_TYPE_CLIENT_HALF_CLOSE\u0010\u0005\u0012\u001d\n\u0019EVENT_TYPE_SERVER_TRAILER\u0010\u0006\u0012\u0015\n\u0011EVENT_TYPE_CANCEL\u0010\u0007\"B\n\u0006Logger\u0012\u0012\n\u000eLOGGER_UNKNOWN\u0010\u0000\u0012\u0011\n\rLOGGER_CLIENT\u0010\u0001\u0012\u0011\n\rLOGGER_SERVER\u0010\u0002B\t\n\u0007payload\"\u0091\u0001\n\u000cClientHeader\u0012-\n\u0008metadata\u0018\u0001 \u0001(\u000b2\u001b.grpc.binarylog.v1.Metadata\u0012\u0013\n\u000bmethod_name\u0018\u0002 \u0001(\t\u0012\u0011\n\tauthority\u0018\u0003 \u0001(\t\u0012*\n\u0007timeout\u0018\u0004 \u0001(\u000b2\u0019.google.protobuf.Duration\"=\n\u000cServerHeader\u0012-\n\u0008metadata\u0018\u0001 \u0001(\u000b2\u001b.grpc.binarylog.v1.Metadata\"}\n\u0007Trailer\u0012-\n\u0008metadata\u0018\u0001 \u0001(\u000b2\u001b.grpc.binarylog.v1.Metadata\u0012\u0013\n\u000bstatus_code\u0018\u0002 \u0001(\r\u0012\u0016\n\u000estatus_message\u0018\u0003 \u0001(\t\u0012\u0016\n\u000estatus_details\u0018\u0004 \u0001(\u000c\"\'\n\u0007Message\u0012\u000e\n\u0006length\u0018\u0001 \u0001(\r\u0012\u000c\n\u0004data\u0018\u0002 \u0001(\u000c\";\n\u0008Metadata\u0012/\n\u0005entry\u0018\u0001 \u0003(\u000b2 .grpc.binarylog.v1.MetadataEntry\"+\n\rMetadataEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\u000c\"\u00a1\u0001\n\u0007Address\u0012-\n\u0004type\u0018\u0001 \u0001(\u000e2\u001f.grpc.binarylog.v1.Address.Type\u0012\u000f\n\u0007address\u0018\u0002 \u0001(\t\u0012\u000f\n\u0007ip_port\u0018\u0003 \u0001(\r\"E\n\u0004Type\u0012\u0010\n\u000cTYPE_UNKNOWN\u0010\u0000\u0012\r\n\tTYPE_IPV4\u0010\u0001\u0012\r\n\tTYPE_IPV6\u0010\u0002\u0012\r\n\tTYPE_UNIX\u0010\u0003B\\\n\u0014io.grpc.binarylog.v1B\u000eBinaryLogProtoP\u0001Z2google.golang.org/grpc/binarylog/grpc_binarylog_v1b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    invoke-static {}, Lcom/google/protobuf/a3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 4
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/binarylog/v1/b;->q:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 5
    invoke-static {}, Lio/grpc/binarylog/v1/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/binarylog/v1/b;->a:Lcom/google/protobuf/Descriptors$b;

    .line 6
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "Timestamp"

    const-string v7, "CallId"

    const-string v8, "SequenceIdWithinCall"

    const-string v9, "Type"

    const-string v10, "Logger"

    const-string v11, "ClientHeader"

    const-string v12, "ServerHeader"

    const-string v13, "Message"

    const-string v14, "Trailer"

    const-string v15, "PayloadTruncated"

    const-string v16, "Peer"

    const-string v17, "Payload"

    filled-new-array/range {v6 .. v17}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/binarylog/v1/b;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 7
    invoke-static {}, Lio/grpc/binarylog/v1/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/binarylog/v1/b;->c:Lcom/google/protobuf/Descriptors$b;

    .line 8
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Metadata"

    const-string v4, "MethodName"

    const-string v5, "Authority"

    const-string v6, "Timeout"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/binarylog/v1/b;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 9
    invoke-static {}, Lio/grpc/binarylog/v1/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/binarylog/v1/b;->e:Lcom/google/protobuf/Descriptors$b;

    .line 10
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/binarylog/v1/b;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 11
    invoke-static {}, Lio/grpc/binarylog/v1/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/binarylog/v1/b;->g:Lcom/google/protobuf/Descriptors$b;

    .line 12
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "StatusCode"

    const-string v4, "StatusMessage"

    const-string v5, "StatusDetails"

    filled-new-array {v3, v2, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/binarylog/v1/b;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 13
    invoke-static {}, Lio/grpc/binarylog/v1/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/binarylog/v1/b;->i:Lcom/google/protobuf/Descriptors$b;

    .line 14
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Length"

    const-string v3, "Data"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/binarylog/v1/b;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 15
    invoke-static {}, Lio/grpc/binarylog/v1/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/binarylog/v1/b;->k:Lcom/google/protobuf/Descriptors$b;

    .line 16
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Entry"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/binarylog/v1/b;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 17
    invoke-static {}, Lio/grpc/binarylog/v1/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/binarylog/v1/b;->m:Lcom/google/protobuf/Descriptors$b;

    .line 18
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Key"

    const-string v3, "Value"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/binarylog/v1/b;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 19
    invoke-static {}, Lio/grpc/binarylog/v1/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/binarylog/v1/b;->o:Lcom/google/protobuf/Descriptors$b;

    .line 20
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Type"

    const-string v3, "Address"

    const-string v4, "IpPort"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/binarylog/v1/b;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 21
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 22
    invoke-static {}, Lcom/google/protobuf/a3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/binarylog/v1/b;->q:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
