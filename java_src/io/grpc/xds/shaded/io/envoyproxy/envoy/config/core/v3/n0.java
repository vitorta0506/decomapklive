package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.p3;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class n0 {
    static final Descriptors.b A;
    static final GeneratedMessageV3.e B;
    private static Descriptors.FileDescriptor C = Descriptors.FileDescriptor.s(new String[]{"\n#envoy/config/core/v3/protocol.proto\u0012\u0014envoy.config.core.v3\u001a$envoy/config/core/v3/extension.proto\u001a\u001benvoy/type/v3/percent.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"A\n\u0012TcpProtocolOptions:+\u009aÅ\u0088\u001e&\n$envoy.api.v2.core.TcpProtocolOptions\"÷\u0001\n\u0013QuicProtocolOptions\u0012<\n\u0016max_concurrent_streams\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012N\n\u001ainitial_stream_window_size\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\fúB\t*\u0007\u0018\u0080\u0080\u0080\b(\u0001\u0012R\n\u001einitial_connection_window_size\u0018\u0003 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\fúB\t*\u0007\u0018\u0080\u0080\u0080\f(\u0001\"\u0082\u0001\n\u001bUpstreamHttpProtocolOptions\u0012\u0010\n\bauto_sni\u0018\u0001 \u0001(\b\u0012\u001b\n\u0013auto_san_validation\u0018\u0002 \u0001(\b:4\u009aÅ\u0088\u001e/\n-envoy.api.v2.core.UpstreamHttpProtocolOptions\"s\n\u001eAlternateProtocolsCacheOptions\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012:\n\u000bmax_entries\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002 \u0000\"®\u0004\n\u0013HttpProtocolOptions\u0012/\n\fidle_timeout\u0018\u0001 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012:\n\u0017max_connection_duration\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012@\n\u0011max_headers_count\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002(\u0001\u00126\n\u0013max_stream_duration\u0018\u0004 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012o\n\u001fheaders_with_underscores_action\u0018\u0005 \u0001(\u000e2F.envoy.config.core.v3.HttpProtocolOptions.HeadersWithUnderscoresAction\u0012A\n\u001bmax_requests_per_connection\u0018\u0006 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\"N\n\u001cHeadersWithUnderscoresAction\u0012\t\n\u0005ALLOW\u0010\u0000\u0012\u0012\n\u000eREJECT_REQUEST\u0010\u0001\u0012\u000f\n\u000bDROP_HEADER\u0010\u0002:,\u009aÅ\u0088\u001e'\n%envoy.api.v2.core.HttpProtocolOptions\"\u0096\u0006\n\u0014Http1ProtocolOptions\u00126\n\u0012allow_absolute_url\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012\u0016\n\u000eaccept_http_10\u0018\u0002 \u0001(\b\u0012 \n\u0018default_host_for_http_10\u0018\u0003 \u0001(\t\u0012U\n\u0011header_key_format\u0018\u0004 \u0001(\u000b2:.envoy.config.core.v3.Http1ProtocolOptions.HeaderKeyFormat\u0012\u0017\n\u000fenable_trailers\u0018\u0005 \u0001(\b\u0012\u001c\n\u0014allow_chunked_length\u0018\u0006 \u0001(\b\u0012Q\n-override_stream_error_on_invalid_http_message\u0018\u0007 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u001aû\u0002\n\u000fHeaderKeyFormat\u0012g\n\u0011proper_case_words\u0018\u0001 \u0001(\u000b2J.envoy.config.core.v3.Http1ProtocolOptions.HeaderKeyFormat.ProperCaseWordsH\u0000\u0012H\n\u0012stateful_formatter\u0018\b \u0001(\u000b2*.envoy.config.core.v3.TypedExtensionConfigH\u0000\u001a`\n\u000fProperCaseWords:M\u009aÅ\u0088\u001eH\nFenvoy.api.v2.core.Http1ProtocolOptions.HeaderKeyFormat.ProperCaseWords:=\u009aÅ\u0088\u001e8\n6envoy.api.v2.core.Http1ProtocolOptions.HeaderKeyFormatB\u0014\n\rheader_format\u0012\u0003øB\u0001:-\u009aÅ\u0088\u001e(\n&envoy.api.v2.core.Http1ProtocolOptions\"\u0086\u0002\n\u0011KeepaliveSettings\u00129\n\binterval\u0018\u0001 \u0001(\u000b2\u0019.google.protobuf.DurationB\fúB\tª\u0001\u00062\u0004\u0010À\u0084=\u0012:\n\u0007timeout\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.DurationB\u000eúB\u000bª\u0001\b\b\u00012\u0004\u0010À\u0084=\u0012/\n\u000finterval_jitter\u0018\u0003 \u0001(\u000b2\u0016.envoy.type.v3.Percent\u0012I\n\u0018connection_idle_interval\u0018\u0004 \u0001(\u000b2\u0019.google.protobuf.DurationB\fúB\tª\u0001\u00062\u0004\u0010À\u0084=\"Í\n\n\u0014Http2ProtocolOptions\u00126\n\u0010hpack_table_size\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012K\n\u0016max_concurrent_streams\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\rúB\n*\b\u0018ÿÿÿÿ\u0007(\u0001\u0012Q\n\u001ainitial_stream_window_size\u0018\u0003 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u000fúB\f*\n\u0018ÿÿÿÿ\u0007(ÿÿ\u0003\u0012U\n\u001einitial_connection_window_size\u0018\u0004 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u000fúB\f*\n\u0018ÿÿÿÿ\u0007(ÿÿ\u0003\u0012\u0015\n\rallow_connect\u0018\u0005 \u0001(\b\u0012\u0016\n\u000eallow_metadata\u0018\u0006 \u0001(\b\u0012B\n\u0013max_outbound_frames\u0018\u0007 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002(\u0001\u0012J\n\u001bmax_outbound_control_frames\u0018\b \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002(\u0001\u0012W\n1max_consecutive_inbound_frames_with_empty_payload\u0018\t \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012L\n&max_inbound_priority_frames_per_stream\u0018\n \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012c\n4max_inbound_window_update_frames_per_data_frame_sent\u0018\u000b \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002(\u0001\u0012;\n&stream_error_on_invalid_http_messaging\u0018\f \u0001(\bB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0\u0012Q\n-override_stream_error_on_invalid_http_message\u0018\u000e \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012`\n\u001acustom_settings_parameters\u0018\r \u0003(\u000b2<.envoy.config.core.v3.Http2ProtocolOptions.SettingsParameter\u0012E\n\u0014connection_keepalive\u0018\u000f \u0001(\u000b2'.envoy.config.core.v3.KeepaliveSettings\u001aÒ\u0001\n\u0011SettingsParameter\u0012E\n\nidentifier\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0013úB\b*\u0006\u0018ÿÿ\u0003(\u0000úB\u0005\u008a\u0001\u0002\u0010\u0001\u00125\n\u0005value\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\búB\u0005\u008a\u0001\u0002\u0010\u0001:?\u009aÅ\u0088\u001e:\n8envoy.api.v2.core.Http2ProtocolOptions.SettingsParameter:-\u009aÅ\u0088\u001e(\n&envoy.api.v2.core.Http2ProtocolOptions\"\u008f\u0001\n\u0013GrpcProtocolOptions\u0012J\n\u0016http2_protocol_options\u0018\u0001 \u0001(\u000b2*.envoy.config.core.v3.Http2ProtocolOptions:,\u009aÅ\u0088\u001e'\n%envoy.api.v2.core.GrpcProtocolOptions\"³\u0001\n\u0014Http3ProtocolOptions\u0012H\n\u0015quic_protocol_options\u0018\u0001 \u0001(\u000b2).envoy.config.core.v3.QuicProtocolOptions\u0012Q\n-override_stream_error_on_invalid_http_message\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.BoolValue\"a\n\u001aSchemeHeaderTransformation\u00121\n\u0013scheme_to_overwrite\u0018\u0001 \u0001(\tB\u0012úB\u000fr\rR\u0004httpR\u0005httpsH\u0000B\u0010\n\u000etransformationB=\n\"io.envoyproxy.envoy.config.core.v3B\rProtocolProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{v.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.g.a(), com.google.protobuf.w.a(), p3.a(), io.grpc.xds.shaded.envoy.annotations.a.a(), Status.c(), Versioning.c(), Validate.U()});

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f48253a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f48254b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f48255c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f48256d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f48257e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f48258f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f48259g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f48260h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f48261i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f48262j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f48263k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f48264l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f48265m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f48266n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f48267o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f48268p;

    /* renamed from: q  reason: collision with root package name */
    static final Descriptors.b f48269q;

    /* renamed from: r  reason: collision with root package name */
    static final GeneratedMessageV3.e f48270r;

    /* renamed from: s  reason: collision with root package name */
    static final Descriptors.b f48271s;

    /* renamed from: t  reason: collision with root package name */
    static final GeneratedMessageV3.e f48272t;

    /* renamed from: u  reason: collision with root package name */
    static final Descriptors.b f48273u;

    /* renamed from: v  reason: collision with root package name */
    static final GeneratedMessageV3.e f48274v;

    /* renamed from: w  reason: collision with root package name */
    static final Descriptors.b f48275w;

    /* renamed from: x  reason: collision with root package name */
    static final GeneratedMessageV3.e f48276x;

    /* renamed from: y  reason: collision with root package name */
    static final Descriptors.b f48277y;

    /* renamed from: z  reason: collision with root package name */
    static final GeneratedMessageV3.e f48278z;

    static {
        Descriptors.b bVar = a().m().get(0);
        f48253a = bVar;
        f48254b = new GeneratedMessageV3.e(bVar, new String[0]);
        Descriptors.b bVar2 = a().m().get(1);
        f48255c = bVar2;
        f48256d = new GeneratedMessageV3.e(bVar2, new String[]{"MaxConcurrentStreams", "InitialStreamWindowSize", "InitialConnectionWindowSize"});
        Descriptors.b bVar3 = a().m().get(2);
        f48257e = bVar3;
        f48258f = new GeneratedMessageV3.e(bVar3, new String[]{"AutoSni", "AutoSanValidation"});
        Descriptors.b bVar4 = a().m().get(3);
        f48259g = bVar4;
        f48260h = new GeneratedMessageV3.e(bVar4, new String[]{"Name", "MaxEntries"});
        Descriptors.b bVar5 = a().m().get(4);
        f48261i = bVar5;
        f48262j = new GeneratedMessageV3.e(bVar5, new String[]{"IdleTimeout", "MaxConnectionDuration", "MaxHeadersCount", "MaxStreamDuration", "HeadersWithUnderscoresAction", "MaxRequestsPerConnection"});
        Descriptors.b bVar6 = a().m().get(5);
        f48263k = bVar6;
        f48264l = new GeneratedMessageV3.e(bVar6, new String[]{"AllowAbsoluteUrl", "AcceptHttp10", "DefaultHostForHttp10", "HeaderKeyFormat", "EnableTrailers", "AllowChunkedLength", "OverrideStreamErrorOnInvalidHttpMessage"});
        Descriptors.b bVar7 = bVar6.o().get(0);
        f48265m = bVar7;
        f48266n = new GeneratedMessageV3.e(bVar7, new String[]{"ProperCaseWords", "StatefulFormatter", "HeaderFormat"});
        Descriptors.b bVar8 = bVar7.o().get(0);
        f48267o = bVar8;
        f48268p = new GeneratedMessageV3.e(bVar8, new String[0]);
        Descriptors.b bVar9 = a().m().get(6);
        f48269q = bVar9;
        f48270r = new GeneratedMessageV3.e(bVar9, new String[]{"Interval", "Timeout", "IntervalJitter", "ConnectionIdleInterval"});
        Descriptors.b bVar10 = a().m().get(7);
        f48271s = bVar10;
        f48272t = new GeneratedMessageV3.e(bVar10, new String[]{"HpackTableSize", "MaxConcurrentStreams", "InitialStreamWindowSize", "InitialConnectionWindowSize", "AllowConnect", "AllowMetadata", "MaxOutboundFrames", "MaxOutboundControlFrames", "MaxConsecutiveInboundFramesWithEmptyPayload", "MaxInboundPriorityFramesPerStream", "MaxInboundWindowUpdateFramesPerDataFrameSent", "StreamErrorOnInvalidHttpMessaging", "OverrideStreamErrorOnInvalidHttpMessage", "CustomSettingsParameters", "ConnectionKeepalive"});
        Descriptors.b bVar11 = bVar10.o().get(0);
        f48273u = bVar11;
        f48274v = new GeneratedMessageV3.e(bVar11, new String[]{"Identifier", "Value"});
        Descriptors.b bVar12 = a().m().get(8);
        f48275w = bVar12;
        f48276x = new GeneratedMessageV3.e(bVar12, new String[]{"Http2ProtocolOptions"});
        Descriptors.b bVar13 = a().m().get(9);
        f48277y = bVar13;
        f48278z = new GeneratedMessageV3.e(bVar13, new String[]{"QuicProtocolOptions", "OverrideStreamErrorOnInvalidHttpMessage"});
        Descriptors.b bVar14 = a().m().get(10);
        A = bVar14;
        B = new GeneratedMessageV3.e(bVar14, new String[]{"SchemeToOverwrite", "Transformation"});
        com.google.protobuf.d0 k10 = com.google.protobuf.d0.k();
        k10.f(io.grpc.xds.shaded.envoy.annotations.a.f45758b);
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(C, k10);
        v.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.g.a();
        com.google.protobuf.w.a();
        p3.a();
        io.grpc.xds.shaded.envoy.annotations.a.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return C;
    }
}
