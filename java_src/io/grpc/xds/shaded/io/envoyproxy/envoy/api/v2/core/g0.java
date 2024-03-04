package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.p3;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class g0 {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f46718a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f46719b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f46720c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f46721d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f46722e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f46723f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f46724g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f46725h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f46726i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f46727j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f46728k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f46729l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f46730m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f46731n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f46732o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f46733p;

    /* renamed from: q  reason: collision with root package name */
    static final Descriptors.b f46734q;

    /* renamed from: r  reason: collision with root package name */
    static final GeneratedMessageV3.e f46735r;

    /* renamed from: s  reason: collision with root package name */
    private static Descriptors.FileDescriptor f46736s = Descriptors.FileDescriptor.s(new String[]{"\n envoy/api/v2/core/protocol.proto\u0012\u0011envoy.api.v2.core\u001a\u001egoogle/protobuf/duration.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"\u0014\n\u0012TcpProtocolOptions\"L\n\u001bUpstreamHttpProtocolOptions\u0012\u0010\n\bauto_sni\u0018\u0001 \u0001(\b\u0012\u001b\n\u0013auto_san_validation\u0018\u0002 \u0001(\b\"º\u0003\n\u0013HttpProtocolOptions\u0012/\n\fidle_timeout\u0018\u0001 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012:\n\u0017max_connection_duration\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012@\n\u0011max_headers_count\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002(\u0001\u00126\n\u0013max_stream_duration\u0018\u0004 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012l\n\u001fheaders_with_underscores_action\u0018\u0005 \u0001(\u000e2C.envoy.api.v2.core.HttpProtocolOptions.HeadersWithUnderscoresAction\"N\n\u001cHeadersWithUnderscoresAction\u0012\t\n\u0005ALLOW\u0010\u0000\u0012\u0012\n\u000eREJECT_REQUEST\u0010\u0001\u0012\u000f\n\u000bDROP_HEADER\u0010\u0002\"\u0098\u0003\n\u0014Http1ProtocolOptions\u00126\n\u0012allow_absolute_url\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012\u0016\n\u000eaccept_http_10\u0018\u0002 \u0001(\b\u0012 \n\u0018default_host_for_http_10\u0018\u0003 \u0001(\t\u0012R\n\u0011header_key_format\u0018\u0004 \u0001(\u000b27.envoy.api.v2.core.Http1ProtocolOptions.HeaderKeyFormat\u0012\u0017\n\u000fenable_trailers\u0018\u0005 \u0001(\b\u001a \u0001\n\u000fHeaderKeyFormat\u0012d\n\u0011proper_case_words\u0018\u0001 \u0001(\u000b2G.envoy.api.v2.core.Http1ProtocolOptions.HeaderKeyFormat.ProperCaseWordsH\u0000\u001a\u0011\n\u000fProperCaseWordsB\u0014\n\rheader_format\u0012\u0003øB\u0001\"³\b\n\u0014Http2ProtocolOptions\u00126\n\u0010hpack_table_size\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012K\n\u0016max_concurrent_streams\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\rúB\n*\b\u0018ÿÿÿÿ\u0007(\u0001\u0012Q\n\u001ainitial_stream_window_size\u0018\u0003 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u000fúB\f*\n\u0018ÿÿÿÿ\u0007(ÿÿ\u0003\u0012U\n\u001einitial_connection_window_size\u0018\u0004 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u000fúB\f*\n\u0018ÿÿÿÿ\u0007(ÿÿ\u0003\u0012\u0015\n\rallow_connect\u0018\u0005 \u0001(\b\u0012\u0016\n\u000eallow_metadata\u0018\u0006 \u0001(\b\u0012B\n\u0013max_outbound_frames\u0018\u0007 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002(\u0001\u0012J\n\u001bmax_outbound_control_frames\u0018\b \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002(\u0001\u0012W\n1max_consecutive_inbound_frames_with_empty_payload\u0018\t \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012L\n&max_inbound_priority_frames_per_stream\u0018\n \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012c\n4max_inbound_window_update_frames_per_data_frame_sent\u0018\u000b \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002(\u0001\u0012.\n&stream_error_on_invalid_http_messaging\u0018\f \u0001(\b\u0012]\n\u001acustom_settings_parameters\u0018\r \u0003(\u000b29.envoy.api.v2.core.Http2ProtocolOptions.SettingsParameter\u001a\u0091\u0001\n\u0011SettingsParameter\u0012E\n\nidentifier\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0013úB\b*\u0006\u0018\u0080\u0080\u0004(\u0001úB\u0005\u008a\u0001\u0002\u0010\u0001\u00125\n\u0005value\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\búB\u0005\u008a\u0001\u0002\u0010\u0001\"^\n\u0013GrpcProtocolOptions\u0012G\n\u0016http2_protocol_options\u0018\u0001 \u0001(\u000b2'.envoy.api.v2.core.Http2ProtocolOptionsBV\n\u001fio.envoyproxy.envoy.api.v2.coreB\rProtocolProtoP\u0001ò\u0098þ\u008f\u0005\u0016\u0012\u0014envoy.config.core.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{com.google.protobuf.w.a(), p3.a(), Migrate.g(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f46718a = bVar;
        f46719b = new GeneratedMessageV3.e(bVar, new String[0]);
        Descriptors.b bVar2 = a().m().get(1);
        f46720c = bVar2;
        f46721d = new GeneratedMessageV3.e(bVar2, new String[]{"AutoSni", "AutoSanValidation"});
        Descriptors.b bVar3 = a().m().get(2);
        f46722e = bVar3;
        f46723f = new GeneratedMessageV3.e(bVar3, new String[]{"IdleTimeout", "MaxConnectionDuration", "MaxHeadersCount", "MaxStreamDuration", "HeadersWithUnderscoresAction"});
        Descriptors.b bVar4 = a().m().get(3);
        f46724g = bVar4;
        f46725h = new GeneratedMessageV3.e(bVar4, new String[]{"AllowAbsoluteUrl", "AcceptHttp10", "DefaultHostForHttp10", "HeaderKeyFormat", "EnableTrailers"});
        Descriptors.b bVar5 = bVar4.o().get(0);
        f46726i = bVar5;
        f46727j = new GeneratedMessageV3.e(bVar5, new String[]{"ProperCaseWords", "HeaderFormat"});
        Descriptors.b bVar6 = bVar5.o().get(0);
        f46728k = bVar6;
        f46729l = new GeneratedMessageV3.e(bVar6, new String[0]);
        Descriptors.b bVar7 = a().m().get(4);
        f46730m = bVar7;
        f46731n = new GeneratedMessageV3.e(bVar7, new String[]{"HpackTableSize", "MaxConcurrentStreams", "InitialStreamWindowSize", "InitialConnectionWindowSize", "AllowConnect", "AllowMetadata", "MaxOutboundFrames", "MaxOutboundControlFrames", "MaxConsecutiveInboundFramesWithEmptyPayload", "MaxInboundPriorityFramesPerStream", "MaxInboundWindowUpdateFramesPerDataFrameSent", "StreamErrorOnInvalidHttpMessaging", "CustomSettingsParameters"});
        Descriptors.b bVar8 = bVar7.o().get(0);
        f46732o = bVar8;
        f46733p = new GeneratedMessageV3.e(bVar8, new String[]{"Identifier", "Value"});
        Descriptors.b bVar9 = a().m().get(5);
        f46734q = bVar9;
        f46735r = new GeneratedMessageV3.e(bVar9, new String[]{"Http2ProtocolOptions"});
        com.google.protobuf.d0 k10 = com.google.protobuf.d0.k();
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f46736s, k10);
        com.google.protobuf.w.a();
        p3.a();
        Migrate.g();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f46736s;
    }
}
