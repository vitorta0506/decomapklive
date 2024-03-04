.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g0;
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

.field private static s:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const-string v0, "\n envoy/api/v2/core/protocol.proto\u0012\u0011envoy.api.v2.core\u001a\u001egoogle/protobuf/duration.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"\u0014\n\u0012TcpProtocolOptions\"L\n\u001bUpstreamHttpProtocolOptions\u0012\u0010\n\u0008auto_sni\u0018\u0001 \u0001(\u0008\u0012\u001b\n\u0013auto_san_validation\u0018\u0002 \u0001(\u0008\"\u00ba\u0003\n\u0013HttpProtocolOptions\u0012/\n\u000cidle_timeout\u0018\u0001 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012:\n\u0017max_connection_duration\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012@\n\u0011max_headers_count\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007\u00faB\u0004*\u0002(\u0001\u00126\n\u0013max_stream_duration\u0018\u0004 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012l\n\u001fheaders_with_underscores_action\u0018\u0005 \u0001(\u000e2C.envoy.api.v2.core.HttpProtocolOptions.HeadersWithUnderscoresAction\"N\n\u001cHeadersWithUnderscoresAction\u0012\t\n\u0005ALLOW\u0010\u0000\u0012\u0012\n\u000eREJECT_REQUEST\u0010\u0001\u0012\u000f\n\u000bDROP_HEADER\u0010\u0002\"\u0098\u0003\n\u0014Http1ProtocolOptions\u00126\n\u0012allow_absolute_url\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012\u0016\n\u000eaccept_http_10\u0018\u0002 \u0001(\u0008\u0012 \n\u0018default_host_for_http_10\u0018\u0003 \u0001(\t\u0012R\n\u0011header_key_format\u0018\u0004 \u0001(\u000b27.envoy.api.v2.core.Http1ProtocolOptions.HeaderKeyFormat\u0012\u0017\n\u000fenable_trailers\u0018\u0005 \u0001(\u0008\u001a\u00a0\u0001\n\u000fHeaderKeyFormat\u0012d\n\u0011proper_case_words\u0018\u0001 \u0001(\u000b2G.envoy.api.v2.core.Http1ProtocolOptions.HeaderKeyFormat.ProperCaseWordsH\u0000\u001a\u0011\n\u000fProperCaseWordsB\u0014\n\rheader_format\u0012\u0003\u00f8B\u0001\"\u00b3\u0008\n\u0014Http2ProtocolOptions\u00126\n\u0010hpack_table_size\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012K\n\u0016max_concurrent_streams\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\r\u00faB\n*\u0008\u0018\u00ff\u00ff\u00ff\u00ff\u0007(\u0001\u0012Q\n\u001ainitial_stream_window_size\u0018\u0003 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u000f\u00faB\u000c*\n\u0018\u00ff\u00ff\u00ff\u00ff\u0007(\u00ff\u00ff\u0003\u0012U\n\u001einitial_connection_window_size\u0018\u0004 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u000f\u00faB\u000c*\n\u0018\u00ff\u00ff\u00ff\u00ff\u0007(\u00ff\u00ff\u0003\u0012\u0015\n\rallow_connect\u0018\u0005 \u0001(\u0008\u0012\u0016\n\u000eallow_metadata\u0018\u0006 \u0001(\u0008\u0012B\n\u0013max_outbound_frames\u0018\u0007 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007\u00faB\u0004*\u0002(\u0001\u0012J\n\u001bmax_outbound_control_frames\u0018\u0008 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007\u00faB\u0004*\u0002(\u0001\u0012W\n1max_consecutive_inbound_frames_with_empty_payload\u0018\t \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012L\n&max_inbound_priority_frames_per_stream\u0018\n \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012c\n4max_inbound_window_update_frames_per_data_frame_sent\u0018\u000b \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007\u00faB\u0004*\u0002(\u0001\u0012.\n&stream_error_on_invalid_http_messaging\u0018\u000c \u0001(\u0008\u0012]\n\u001acustom_settings_parameters\u0018\r \u0003(\u000b29.envoy.api.v2.core.Http2ProtocolOptions.SettingsParameter\u001a\u0091\u0001\n\u0011SettingsParameter\u0012E\n\nidentifier\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0013\u00faB\u0008*\u0006\u0018\u0080\u0080\u0004(\u0001\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\u00125\n\u0005value\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\"^\n\u0013GrpcProtocolOptions\u0012G\n\u0016http2_protocol_options\u0018\u0001 \u0001(\u000b2\'.envoy.api.v2.core.Http2ProtocolOptionsBV\n\u001fio.envoyproxy.envoy.api.v2.coreB\rProtocolProtoP\u0001\u00f2\u0098\u00fe\u008f\u0005\u0016\u0012\u0014envoy.config.core.v3\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0001b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 5
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v8, 0x4

    aput-object v3, v2, v8

    .line 7
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g0;->s:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g0;->a:Lcom/google/protobuf/Descriptors$b;

    .line 9
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    new-array v3, v4, [Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g0;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 10
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g0;->c:Lcom/google/protobuf/Descriptors$b;

    .line 11
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "AutoSni"

    const-string v5, "AutoSanValidation"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g0;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 12
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g0;->e:Lcom/google/protobuf/Descriptors$b;

    .line 13
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "IdleTimeout"

    const-string v5, "MaxConnectionDuration"

    const-string v6, "MaxHeadersCount"

    const-string v9, "MaxStreamDuration"

    const-string v10, "HeadersWithUnderscoresAction"

    filled-new-array {v3, v5, v6, v9, v10}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g0;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 14
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g0;->g:Lcom/google/protobuf/Descriptors$b;

    .line 15
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "AllowAbsoluteUrl"

    const-string v5, "AcceptHttp10"

    const-string v6, "DefaultHostForHttp10"

    const-string v7, "HeaderKeyFormat"

    const-string v9, "EnableTrailers"

    filled-new-array {v3, v5, v6, v7, v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g0;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 16
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g0;->i:Lcom/google/protobuf/Descriptors$b;

    .line 17
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "ProperCaseWords"

    const-string v5, "HeaderFormat"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g0;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 18
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g0;->k:Lcom/google/protobuf/Descriptors$b;

    .line 19
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    new-array v3, v4, [Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g0;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 20
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g0;->m:Lcom/google/protobuf/Descriptors$b;

    .line 21
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v5, "HpackTableSize"

    const-string v6, "MaxConcurrentStreams"

    const-string v7, "InitialStreamWindowSize"

    const-string v8, "InitialConnectionWindowSize"

    const-string v9, "AllowConnect"

    const-string v10, "AllowMetadata"

    const-string v11, "MaxOutboundFrames"

    const-string v12, "MaxOutboundControlFrames"

    const-string v13, "MaxConsecutiveInboundFramesWithEmptyPayload"

    const-string v14, "MaxInboundPriorityFramesPerStream"

    const-string v15, "MaxInboundWindowUpdateFramesPerDataFrameSent"

    const-string v16, "StreamErrorOnInvalidHttpMessaging"

    const-string v17, "CustomSettingsParameters"

    filled-new-array/range {v5 .. v17}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g0;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 22
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g0;->o:Lcom/google/protobuf/Descriptors$b;

    .line 23
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Identifier"

    const-string v4, "Value"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g0;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 24
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g0;->q:Lcom/google/protobuf/Descriptors$b;

    .line 25
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Http2ProtocolOptions"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g0;->r:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 26
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 27
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->e:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 28
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 29
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 30
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 31
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g0;->s:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 32
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 33
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 34
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 35
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 36
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 37
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g0;->s:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
