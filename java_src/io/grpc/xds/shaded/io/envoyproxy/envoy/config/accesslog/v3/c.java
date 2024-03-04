package io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class c {
    static final Descriptors.b A;
    static final GeneratedMessageV3.e B;
    static final Descriptors.b C;
    static final GeneratedMessageV3.e D;
    private static Descriptors.FileDescriptor E = Descriptors.FileDescriptor.s(new String[]{"\n)envoy/config/accesslog/v3/accesslog.proto\u0012\u0019envoy.config.accesslog.v3\u001a\u001fenvoy/config/core/v3/base.proto\u001a,envoy/config/route/v3/route_components.proto\u001a$envoy/type/matcher/v3/metadata.proto\u001a\u001benvoy/type/v3/percent.proto\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"Ó\u0001\n\tAccessLog\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012:\n\u0006filter\u0018\u0002 \u0001(\u000b2*.envoy.config.accesslog.v3.AccessLogFilter\u0012,\n\ftyped_config\u0018\u0004 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000:1\u009aÅ\u0088\u001e,\n*envoy.config.filter.accesslog.v2.AccessLogB\r\n\u000bconfig_typeJ\u0004\b\u0003\u0010\u0004R\u0006config\"´\u0007\n\u000fAccessLogFilter\u0012I\n\u0012status_code_filter\u0018\u0001 \u0001(\u000b2+.envoy.config.accesslog.v3.StatusCodeFilterH\u0000\u0012D\n\u000fduration_filter\u0018\u0002 \u0001(\u000b2).envoy.config.accesslog.v3.DurationFilterH\u0000\u0012R\n\u0017not_health_check_filter\u0018\u0003 \u0001(\u000b2/.envoy.config.accesslog.v3.NotHealthCheckFilterH\u0000\u0012F\n\u0010traceable_filter\u0018\u0004 \u0001(\u000b2*.envoy.config.accesslog.v3.TraceableFilterH\u0000\u0012B\n\u000eruntime_filter\u0018\u0005 \u0001(\u000b2(.envoy.config.accesslog.v3.RuntimeFilterH\u0000\u0012:\n\nand_filter\u0018\u0006 \u0001(\u000b2$.envoy.config.accesslog.v3.AndFilterH\u0000\u00128\n\tor_filter\u0018\u0007 \u0001(\u000b2#.envoy.config.accesslog.v3.OrFilterH\u0000\u0012@\n\rheader_filter\u0018\b \u0001(\u000b2'.envoy.config.accesslog.v3.HeaderFilterH\u0000\u0012M\n\u0014response_flag_filter\u0018\t \u0001(\u000b2-.envoy.config.accesslog.v3.ResponseFlagFilterH\u0000\u0012I\n\u0012grpc_status_filter\u0018\n \u0001(\u000b2+.envoy.config.accesslog.v3.GrpcStatusFilterH\u0000\u0012F\n\u0010extension_filter\u0018\u000b \u0001(\u000b2*.envoy.config.accesslog.v3.ExtensionFilterH\u0000\u0012D\n\u000fmetadata_filter\u0018\f \u0001(\u000b2).envoy.config.accesslog.v3.MetadataFilterH\u0000:7\u009aÅ\u0088\u001e2\n0envoy.config.filter.accesslog.v2.AccessLogFilterB\u0017\n\u0010filter_specifier\u0012\u0003øB\u0001\"ä\u0001\n\u0010ComparisonFilter\u0012D\n\u0002op\u0018\u0001 \u0001(\u000e2..envoy.config.accesslog.v3.ComparisonFilter.OpB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u00122\n\u0005value\u0018\u0002 \u0001(\u000b2#.envoy.config.core.v3.RuntimeUInt32\"\u001c\n\u0002Op\u0012\u0006\n\u0002EQ\u0010\u0000\u0012\u0006\n\u0002GE\u0010\u0001\u0012\u0006\n\u0002LE\u0010\u0002:8\u009aÅ\u0088\u001e3\n1envoy.config.filter.accesslog.v2.ComparisonFilter\"\u0097\u0001\n\u0010StatusCodeFilter\u0012I\n\ncomparison\u0018\u0001 \u0001(\u000b2+.envoy.config.accesslog.v3.ComparisonFilterB\búB\u0005\u008a\u0001\u0002\u0010\u0001:8\u009aÅ\u0088\u001e3\n1envoy.config.filter.accesslog.v2.StatusCodeFilter\"\u0093\u0001\n\u000eDurationFilter\u0012I\n\ncomparison\u0018\u0001 \u0001(\u000b2+.envoy.config.accesslog.v3.ComparisonFilterB\búB\u0005\u008a\u0001\u0002\u0010\u0001:6\u009aÅ\u0088\u001e1\n/envoy.config.filter.accesslog.v2.DurationFilter\"T\n\u0014NotHealthCheckFilter:<\u009aÅ\u0088\u001e7\n5envoy.config.filter.accesslog.v2.NotHealthCheckFilter\"J\n\u000fTraceableFilter:7\u009aÅ\u0088\u001e2\n0envoy.config.filter.accesslog.v2.TraceableFilter\"Ã\u0001\n\rRuntimeFilter\u0012\u001c\n\u000bruntime_key\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u00129\n\u000fpercent_sampled\u0018\u0002 \u0001(\u000b2 .envoy.type.v3.FractionalPercent\u0012\"\n\u001ause_independent_randomness\u0018\u0003 \u0001(\b:5\u009aÅ\u0088\u001e0\n.envoy.config.filter.accesslog.v2.RuntimeFilter\"\u0085\u0001\n\tAndFilter\u0012E\n\u0007filters\u0018\u0001 \u0003(\u000b2*.envoy.config.accesslog.v3.AccessLogFilterB\búB\u0005\u0092\u0001\u0002\b\u0002:1\u009aÅ\u0088\u001e,\n*envoy.config.filter.accesslog.v2.AndFilter\"\u0083\u0001\n\bOrFilter\u0012E\n\u0007filters\u0018\u0002 \u0003(\u000b2*.envoy.config.accesslog.v3.AccessLogFilterB\búB\u0005\u0092\u0001\u0002\b\u0002:0\u009aÅ\u0088\u001e+\n)envoy.config.filter.accesslog.v2.OrFilter\"\u0084\u0001\n\fHeaderFilter\u0012>\n\u0006header\u0018\u0001 \u0001(\u000b2$.envoy.config.route.v3.HeaderMatcherB\búB\u0005\u008a\u0001\u0002\u0010\u0001:4\u009aÅ\u0088\u001e/\n-envoy.config.filter.accesslog.v2.HeaderFilter\"ã\u0001\n\u0012ResponseFlagFilter\u0012\u0090\u0001\n\u0005flags\u0018\u0001 \u0003(\tB\u0080\u0001úB}\u0092\u0001z\"xrvR\u0002LHR\u0002UHR\u0002UTR\u0002LRR\u0002URR\u0002UFR\u0002UCR\u0002UOR\u0002NRR\u0002DIR\u0002FIR\u0002RLR\u0004UAEXR\u0004RLSER\u0002DCR\u0003URXR\u0002SIR\u0002IHR\u0003DPER\u0005UMSDRR\u0004RFCFR\u0004NFCFR\u0002DTR\u0003UPER\u0002NCR\u0002OM::\u009aÅ\u0088\u001e5\n3envoy.config.filter.accesslog.v2.ResponseFlagFilter\"í\u0003\n\u0010GrpcStatusFilter\u0012S\n\bstatuses\u0018\u0001 \u0003(\u000e22.envoy.config.accesslog.v3.GrpcStatusFilter.StatusB\rúB\n\u0092\u0001\u0007\"\u0005\u0082\u0001\u0002\u0010\u0001\u0012\u000f\n\u0007exclude\u0018\u0002 \u0001(\b\"¸\u0002\n\u0006Status\u0012\u0006\n\u0002OK\u0010\u0000\u0012\f\n\bCANCELED\u0010\u0001\u0012\u000b\n\u0007UNKNOWN\u0010\u0002\u0012\u0014\n\u0010INVALID_ARGUMENT\u0010\u0003\u0012\u0015\n\u0011DEADLINE_EXCEEDED\u0010\u0004\u0012\r\n\tNOT_FOUND\u0010\u0005\u0012\u0012\n\u000eALREADY_EXISTS\u0010\u0006\u0012\u0015\n\u0011PERMISSION_DENIED\u0010\u0007\u0012\u0016\n\u0012RESOURCE_EXHAUSTED\u0010\b\u0012\u0017\n\u0013FAILED_PRECONDITION\u0010\t\u0012\u000b\n\u0007ABORTED\u0010\n\u0012\u0010\n\fOUT_OF_RANGE\u0010\u000b\u0012\u0011\n\rUNIMPLEMENTED\u0010\f\u0012\f\n\bINTERNAL\u0010\r\u0012\u000f\n\u000bUNAVAILABLE\u0010\u000e\u0012\r\n\tDATA_LOSS\u0010\u000f\u0012\u0013\n\u000fUNAUTHENTICATED\u0010\u0010:8\u009aÅ\u0088\u001e3\n1envoy.config.filter.accesslog.v2.GrpcStatusFilter\"½\u0001\n\u000eMetadataFilter\u00127\n\u0007matcher\u0018\u0001 \u0001(\u000b2&.envoy.type.matcher.v3.MetadataMatcher\u0012:\n\u0016match_if_key_not_found\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.BoolValue:6\u009aÅ\u0088\u001e1\n/envoy.config.filter.accesslog.v2.MetadataFilter\"£\u0001\n\u000fExtensionFilter\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012,\n\ftyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000:7\u009aÅ\u0088\u001e2\n0envoy.config.filter.accesslog.v2.ExtensionFilterB\r\n\u000bconfig_typeJ\u0004\b\u0002\u0010\u0003R\u0006configBC\n'io.envoyproxy.envoy.config.accesslog.v3B\u000eAccesslogProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.o.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.e.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.g.a(), com.google.protobuf.g.a(), p3.a(), Status.c(), Versioning.c(), Validate.U()});

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f47390a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f47391b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f47392c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f47393d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f47394e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f47395f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f47396g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f47397h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f47398i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f47399j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f47400k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f47401l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f47402m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f47403n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f47404o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f47405p;

    /* renamed from: q  reason: collision with root package name */
    static final Descriptors.b f47406q;

    /* renamed from: r  reason: collision with root package name */
    static final GeneratedMessageV3.e f47407r;

    /* renamed from: s  reason: collision with root package name */
    static final Descriptors.b f47408s;

    /* renamed from: t  reason: collision with root package name */
    static final GeneratedMessageV3.e f47409t;

    /* renamed from: u  reason: collision with root package name */
    static final Descriptors.b f47410u;

    /* renamed from: v  reason: collision with root package name */
    static final GeneratedMessageV3.e f47411v;

    /* renamed from: w  reason: collision with root package name */
    static final Descriptors.b f47412w;

    /* renamed from: x  reason: collision with root package name */
    static final GeneratedMessageV3.e f47413x;

    /* renamed from: y  reason: collision with root package name */
    static final Descriptors.b f47414y;

    /* renamed from: z  reason: collision with root package name */
    static final GeneratedMessageV3.e f47415z;

    static {
        Descriptors.b bVar = a().m().get(0);
        f47390a = bVar;
        f47391b = new GeneratedMessageV3.e(bVar, new String[]{"Name", "Filter", "TypedConfig", "ConfigType"});
        Descriptors.b bVar2 = a().m().get(1);
        f47392c = bVar2;
        f47393d = new GeneratedMessageV3.e(bVar2, new String[]{"StatusCodeFilter", "DurationFilter", "NotHealthCheckFilter", "TraceableFilter", "RuntimeFilter", "AndFilter", "OrFilter", "HeaderFilter", "ResponseFlagFilter", "GrpcStatusFilter", "ExtensionFilter", "MetadataFilter", "FilterSpecifier"});
        Descriptors.b bVar3 = a().m().get(2);
        f47394e = bVar3;
        f47395f = new GeneratedMessageV3.e(bVar3, new String[]{"Op", "Value"});
        Descriptors.b bVar4 = a().m().get(3);
        f47396g = bVar4;
        f47397h = new GeneratedMessageV3.e(bVar4, new String[]{"Comparison"});
        Descriptors.b bVar5 = a().m().get(4);
        f47398i = bVar5;
        f47399j = new GeneratedMessageV3.e(bVar5, new String[]{"Comparison"});
        Descriptors.b bVar6 = a().m().get(5);
        f47400k = bVar6;
        f47401l = new GeneratedMessageV3.e(bVar6, new String[0]);
        Descriptors.b bVar7 = a().m().get(6);
        f47402m = bVar7;
        f47403n = new GeneratedMessageV3.e(bVar7, new String[0]);
        Descriptors.b bVar8 = a().m().get(7);
        f47404o = bVar8;
        f47405p = new GeneratedMessageV3.e(bVar8, new String[]{"RuntimeKey", "PercentSampled", "UseIndependentRandomness"});
        Descriptors.b bVar9 = a().m().get(8);
        f47406q = bVar9;
        f47407r = new GeneratedMessageV3.e(bVar9, new String[]{"Filters"});
        Descriptors.b bVar10 = a().m().get(9);
        f47408s = bVar10;
        f47409t = new GeneratedMessageV3.e(bVar10, new String[]{"Filters"});
        Descriptors.b bVar11 = a().m().get(10);
        f47410u = bVar11;
        f47411v = new GeneratedMessageV3.e(bVar11, new String[]{"Header"});
        Descriptors.b bVar12 = a().m().get(11);
        f47412w = bVar12;
        f47413x = new GeneratedMessageV3.e(bVar12, new String[]{"Flags"});
        Descriptors.b bVar13 = a().m().get(12);
        f47414y = bVar13;
        f47415z = new GeneratedMessageV3.e(bVar13, new String[]{"Statuses", "Exclude"});
        Descriptors.b bVar14 = a().m().get(13);
        A = bVar14;
        B = new GeneratedMessageV3.e(bVar14, new String[]{"Matcher", "MatchIfKeyNotFound"});
        Descriptors.b bVar15 = a().m().get(14);
        C = bVar15;
        D = new GeneratedMessageV3.e(bVar15, new String[]{"Name", "TypedConfig", "ConfigType"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(E, k10);
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.o.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.e.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.g.a();
        com.google.protobuf.g.a();
        p3.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return E;
    }
}
