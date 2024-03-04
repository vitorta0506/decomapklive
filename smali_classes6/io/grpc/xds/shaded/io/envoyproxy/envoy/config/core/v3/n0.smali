.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final A:Lcom/google/protobuf/Descriptors$b;

.field static final B:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static C:Lcom/google/protobuf/Descriptors$FileDescriptor;

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

.field static final y:Lcom/google/protobuf/Descriptors$b;

.field static final z:Lcom/google/protobuf/GeneratedMessageV3$e;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    const-string v0, "\n#envoy/config/core/v3/protocol.proto\u0012\u0014envoy.config.core.v3\u001a$envoy/config/core/v3/extension.proto\u001a\u001benvoy/type/v3/percent.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"A\n\u0012TcpProtocolOptions:+\u009a\u00c5\u0088\u001e&\n$envoy.api.v2.core.TcpProtocolOptions\"\u00f7\u0001\n\u0013QuicProtocolOptions\u0012<\n\u0016max_concurrent_streams\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012N\n\u001ainitial_stream_window_size\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u000c\u00faB\t*\u0007\u0018\u0080\u0080\u0080\u0008(\u0001\u0012R\n\u001einitial_connection_window_size\u0018\u0003 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u000c\u00faB\t*\u0007\u0018\u0080\u0080\u0080\u000c(\u0001\"\u0082\u0001\n\u001bUpstreamHttpProtocolOptions\u0012\u0010\n\u0008auto_sni\u0018\u0001 \u0001(\u0008\u0012\u001b\n\u0013auto_san_validation\u0018\u0002 \u0001(\u0008:4\u009a\u00c5\u0088\u001e/\n-envoy.api.v2.core.UpstreamHttpProtocolOptions\"s\n\u001eAlternateProtocolsCacheOptions\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u0012:\n\u000bmax_entries\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007\u00faB\u0004*\u0002 \u0000\"\u00ae\u0004\n\u0013HttpProtocolOptions\u0012/\n\u000cidle_timeout\u0018\u0001 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012:\n\u0017max_connection_duration\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012@\n\u0011max_headers_count\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007\u00faB\u0004*\u0002(\u0001\u00126\n\u0013max_stream_duration\u0018\u0004 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012o\n\u001fheaders_with_underscores_action\u0018\u0005 \u0001(\u000e2F.envoy.config.core.v3.HttpProtocolOptions.HeadersWithUnderscoresAction\u0012A\n\u001bmax_requests_per_connection\u0018\u0006 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\"N\n\u001cHeadersWithUnderscoresAction\u0012\t\n\u0005ALLOW\u0010\u0000\u0012\u0012\n\u000eREJECT_REQUEST\u0010\u0001\u0012\u000f\n\u000bDROP_HEADER\u0010\u0002:,\u009a\u00c5\u0088\u001e\'\n%envoy.api.v2.core.HttpProtocolOptions\"\u0096\u0006\n\u0014Http1ProtocolOptions\u00126\n\u0012allow_absolute_url\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012\u0016\n\u000eaccept_http_10\u0018\u0002 \u0001(\u0008\u0012 \n\u0018default_host_for_http_10\u0018\u0003 \u0001(\t\u0012U\n\u0011header_key_format\u0018\u0004 \u0001(\u000b2:.envoy.config.core.v3.Http1ProtocolOptions.HeaderKeyFormat\u0012\u0017\n\u000fenable_trailers\u0018\u0005 \u0001(\u0008\u0012\u001c\n\u0014allow_chunked_length\u0018\u0006 \u0001(\u0008\u0012Q\n-override_stream_error_on_invalid_http_message\u0018\u0007 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u001a\u00fb\u0002\n\u000fHeaderKeyFormat\u0012g\n\u0011proper_case_words\u0018\u0001 \u0001(\u000b2J.envoy.config.core.v3.Http1ProtocolOptions.HeaderKeyFormat.ProperCaseWordsH\u0000\u0012H\n\u0012stateful_formatter\u0018\u0008 \u0001(\u000b2*.envoy.config.core.v3.TypedExtensionConfigH\u0000\u001a`\n\u000fProperCaseWords:M\u009a\u00c5\u0088\u001eH\nFenvoy.api.v2.core.Http1ProtocolOptions.HeaderKeyFormat.ProperCaseWords:=\u009a\u00c5\u0088\u001e8\n6envoy.api.v2.core.Http1ProtocolOptions.HeaderKeyFormatB\u0014\n\rheader_format\u0012\u0003\u00f8B\u0001:-\u009a\u00c5\u0088\u001e(\n&envoy.api.v2.core.Http1ProtocolOptions\"\u0086\u0002\n\u0011KeepaliveSettings\u00129\n\u0008interval\u0018\u0001 \u0001(\u000b2\u0019.google.protobuf.DurationB\u000c\u00faB\t\u00aa\u0001\u00062\u0004\u0010\u00c0\u0084=\u0012:\n\u0007timeout\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.DurationB\u000e\u00faB\u000b\u00aa\u0001\u0008\u0008\u00012\u0004\u0010\u00c0\u0084=\u0012/\n\u000finterval_jitter\u0018\u0003 \u0001(\u000b2\u0016.envoy.type.v3.Percent\u0012I\n\u0018connection_idle_interval\u0018\u0004 \u0001(\u000b2\u0019.google.protobuf.DurationB\u000c\u00faB\t\u00aa\u0001\u00062\u0004\u0010\u00c0\u0084=\"\u00cd\n\n\u0014Http2ProtocolOptions\u00126\n\u0010hpack_table_size\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012K\n\u0016max_concurrent_streams\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\r\u00faB\n*\u0008\u0018\u00ff\u00ff\u00ff\u00ff\u0007(\u0001\u0012Q\n\u001ainitial_stream_window_size\u0018\u0003 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u000f\u00faB\u000c*\n\u0018\u00ff\u00ff\u00ff\u00ff\u0007(\u00ff\u00ff\u0003\u0012U\n\u001einitial_connection_window_size\u0018\u0004 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u000f\u00faB\u000c*\n\u0018\u00ff\u00ff\u00ff\u00ff\u0007(\u00ff\u00ff\u0003\u0012\u0015\n\rallow_connect\u0018\u0005 \u0001(\u0008\u0012\u0016\n\u000eallow_metadata\u0018\u0006 \u0001(\u0008\u0012B\n\u0013max_outbound_frames\u0018\u0007 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007\u00faB\u0004*\u0002(\u0001\u0012J\n\u001bmax_outbound_control_frames\u0018\u0008 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007\u00faB\u0004*\u0002(\u0001\u0012W\n1max_consecutive_inbound_frames_with_empty_payload\u0018\t \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012L\n&max_inbound_priority_frames_per_stream\u0018\n \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012c\n4max_inbound_window_update_frames_per_data_frame_sent\u0018\u000b \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007\u00faB\u0004*\u0002(\u0001\u0012;\n&stream_error_on_invalid_http_messaging\u0018\u000c \u0001(\u0008B\u000b\u0018\u0001\u0092\u00c7\u0086\u00d8\u0004\u00033.0\u0012Q\n-override_stream_error_on_invalid_http_message\u0018\u000e \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012`\n\u001acustom_settings_parameters\u0018\r \u0003(\u000b2<.envoy.config.core.v3.Http2ProtocolOptions.SettingsParameter\u0012E\n\u0014connection_keepalive\u0018\u000f \u0001(\u000b2\'.envoy.config.core.v3.KeepaliveSettings\u001a\u00d2\u0001\n\u0011SettingsParameter\u0012E\n\nidentifier\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0013\u00faB\u0008*\u0006\u0018\u00ff\u00ff\u0003(\u0000\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\u00125\n\u0005value\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001:?\u009a\u00c5\u0088\u001e:\n8envoy.api.v2.core.Http2ProtocolOptions.SettingsParameter:-\u009a\u00c5\u0088\u001e(\n&envoy.api.v2.core.Http2ProtocolOptions\"\u008f\u0001\n\u0013GrpcProtocolOptions\u0012J\n\u0016http2_protocol_options\u0018\u0001 \u0001(\u000b2*.envoy.config.core.v3.Http2ProtocolOptions:,\u009a\u00c5\u0088\u001e\'\n%envoy.api.v2.core.GrpcProtocolOptions\"\u00b3\u0001\n\u0014Http3ProtocolOptions\u0012H\n\u0015quic_protocol_options\u0018\u0001 \u0001(\u000b2).envoy.config.core.v3.QuicProtocolOptions\u0012Q\n-override_stream_error_on_invalid_http_message\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.BoolValue\"a\n\u001aSchemeHeaderTransformation\u00121\n\u0013scheme_to_overwrite\u0018\u0001 \u0001(\tB\u0012\u00faB\u000fr\rR\u0004httpR\u0005httpsH\u0000B\u0010\n\u000etransformationB=\n\"io.envoyproxy.envoy.config.core.v3B\rProtocolProtoP\u0001\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0002b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/v;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 4
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 5
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/envoy/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v8, 0x4

    aput-object v3, v2, v8

    .line 7
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v9, 0x5

    aput-object v3, v2, v9

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v10, 0x6

    aput-object v3, v2, v10

    .line 9
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v11, 0x7

    aput-object v3, v2, v11

    .line 10
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->C:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 11
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->a:Lcom/google/protobuf/Descriptors$b;

    .line 12
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    new-array v3, v4, [Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 13
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->c:Lcom/google/protobuf/Descriptors$b;

    .line 14
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "MaxConcurrentStreams"

    const-string v5, "InitialStreamWindowSize"

    const-string v12, "InitialConnectionWindowSize"

    filled-new-array {v3, v5, v12}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 15
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->e:Lcom/google/protobuf/Descriptors$b;

    .line 16
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "AutoSni"

    const-string v5, "AutoSanValidation"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 17
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->g:Lcom/google/protobuf/Descriptors$b;

    .line 18
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Name"

    const-string v5, "MaxEntries"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 19
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->i:Lcom/google/protobuf/Descriptors$b;

    .line 20
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v12, "IdleTimeout"

    const-string v13, "MaxConnectionDuration"

    const-string v14, "MaxHeadersCount"

    const-string v15, "MaxStreamDuration"

    const-string v16, "HeadersWithUnderscoresAction"

    const-string v17, "MaxRequestsPerConnection"

    filled-new-array/range {v12 .. v17}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 21
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->k:Lcom/google/protobuf/Descriptors$b;

    .line 22
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v12, "AllowAbsoluteUrl"

    const-string v13, "AcceptHttp10"

    const-string v14, "DefaultHostForHttp10"

    const-string v15, "HeaderKeyFormat"

    const-string v16, "EnableTrailers"

    const-string v17, "AllowChunkedLength"

    const-string v18, "OverrideStreamErrorOnInvalidHttpMessage"

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 23
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->m:Lcom/google/protobuf/Descriptors$b;

    .line 24
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "ProperCaseWords"

    const-string v5, "StatefulFormatter"

    const-string v6, "HeaderFormat"

    filled-new-array {v3, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 25
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->o:Lcom/google/protobuf/Descriptors$b;

    .line 26
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    new-array v3, v4, [Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 27
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->q:Lcom/google/protobuf/Descriptors$b;

    .line 28
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Interval"

    const-string v5, "Timeout"

    const-string v6, "IntervalJitter"

    const-string v7, "ConnectionIdleInterval"

    filled-new-array {v3, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->r:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 29
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->s:Lcom/google/protobuf/Descriptors$b;

    .line 30
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

    const-string v17, "OverrideStreamErrorOnInvalidHttpMessage"

    const-string v18, "CustomSettingsParameters"

    const-string v19, "ConnectionKeepalive"

    filled-new-array/range {v5 .. v19}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->t:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 31
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->u:Lcom/google/protobuf/Descriptors$b;

    .line 32
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Identifier"

    const-string v4, "Value"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->v:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 33
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->w:Lcom/google/protobuf/Descriptors$b;

    .line 34
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Http2ProtocolOptions"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->x:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 35
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->y:Lcom/google/protobuf/Descriptors$b;

    .line 36
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "QuicProtocolOptions"

    const-string v3, "OverrideStreamErrorOnInvalidHttpMessage"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->z:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 37
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->A:Lcom/google/protobuf/Descriptors$b;

    .line 38
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "SchemeToOverwrite"

    const-string v3, "Transformation"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->B:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 39
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 40
    sget-object v1, Lio/grpc/xds/shaded/envoy/annotations/a;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 41
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 42
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 43
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 44
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 45
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->C:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 46
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 47
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/v;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 48
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 49
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 50
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 51
    invoke-static {}, Lio/grpc/xds/shaded/envoy/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 52
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 53
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 54
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/n0;->C:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
