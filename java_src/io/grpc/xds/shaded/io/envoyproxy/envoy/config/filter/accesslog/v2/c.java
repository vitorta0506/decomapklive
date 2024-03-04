package io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.v2;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class c {
    static final Descriptors.b A;
    static final GeneratedMessageV3.e B;
    private static Descriptors.FileDescriptor C = Descriptors.FileDescriptor.s(new String[]{"\n0envoy/config/filter/accesslog/v2/accesslog.proto\u0012 envoy.config.filter.accesslog.v2\u001a\u001cenvoy/api/v2/core/base.proto\u001a)envoy/api/v2/route/route_components.proto\u001a\u0018envoy/type/percent.proto\u001a\u0019google/protobuf/any.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"È\u0001\n\tAccessLog\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012A\n\u0006filter\u0018\u0002 \u0001(\u000b21.envoy.config.filter.accesslog.v2.AccessLogFilter\u0012-\n\u0006config\u0018\u0003 \u0001(\u000b2\u0017.google.protobuf.StructB\u0002\u0018\u0001H\u0000\u0012,\n\ftyped_config\u0018\u0004 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000B\r\n\u000bconfig_type\"\u0082\u0007\n\u000fAccessLogFilter\u0012P\n\u0012status_code_filter\u0018\u0001 \u0001(\u000b22.envoy.config.filter.accesslog.v2.StatusCodeFilterH\u0000\u0012K\n\u000fduration_filter\u0018\u0002 \u0001(\u000b20.envoy.config.filter.accesslog.v2.DurationFilterH\u0000\u0012Y\n\u0017not_health_check_filter\u0018\u0003 \u0001(\u000b26.envoy.config.filter.accesslog.v2.NotHealthCheckFilterH\u0000\u0012M\n\u0010traceable_filter\u0018\u0004 \u0001(\u000b21.envoy.config.filter.accesslog.v2.TraceableFilterH\u0000\u0012I\n\u000eruntime_filter\u0018\u0005 \u0001(\u000b2/.envoy.config.filter.accesslog.v2.RuntimeFilterH\u0000\u0012A\n\nand_filter\u0018\u0006 \u0001(\u000b2+.envoy.config.filter.accesslog.v2.AndFilterH\u0000\u0012?\n\tor_filter\u0018\u0007 \u0001(\u000b2*.envoy.config.filter.accesslog.v2.OrFilterH\u0000\u0012G\n\rheader_filter\u0018\b \u0001(\u000b2..envoy.config.filter.accesslog.v2.HeaderFilterH\u0000\u0012T\n\u0014response_flag_filter\u0018\t \u0001(\u000b24.envoy.config.filter.accesslog.v2.ResponseFlagFilterH\u0000\u0012P\n\u0012grpc_status_filter\u0018\n \u0001(\u000b22.envoy.config.filter.accesslog.v2.GrpcStatusFilterH\u0000\u0012M\n\u0010extension_filter\u0018\u000b \u0001(\u000b21.envoy.config.filter.accesslog.v2.ExtensionFilterH\u0000B\u0017\n\u0010filter_specifier\u0012\u0003øB\u0001\"®\u0001\n\u0010ComparisonFilter\u0012K\n\u0002op\u0018\u0001 \u0001(\u000e25.envoy.config.filter.accesslog.v2.ComparisonFilter.OpB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012/\n\u0005value\u0018\u0002 \u0001(\u000b2 .envoy.api.v2.core.RuntimeUInt32\"\u001c\n\u0002Op\u0012\u0006\n\u0002EQ\u0010\u0000\u0012\u0006\n\u0002GE\u0010\u0001\u0012\u0006\n\u0002LE\u0010\u0002\"d\n\u0010StatusCodeFilter\u0012P\n\ncomparison\u0018\u0001 \u0001(\u000b22.envoy.config.filter.accesslog.v2.ComparisonFilterB\búB\u0005\u008a\u0001\u0002\u0010\u0001\"b\n\u000eDurationFilter\u0012P\n\ncomparison\u0018\u0001 \u0001(\u000b22.envoy.config.filter.accesslog.v2.ComparisonFilterB\búB\u0005\u008a\u0001\u0002\u0010\u0001\"\u0016\n\u0014NotHealthCheckFilter\"\u0011\n\u000fTraceableFilter\"\u0089\u0001\n\rRuntimeFilter\u0012\u001c\n\u000bruntime_key\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u00126\n\u000fpercent_sampled\u0018\u0002 \u0001(\u000b2\u001d.envoy.type.FractionalPercent\u0012\"\n\u001ause_independent_randomness\u0018\u0003 \u0001(\b\"Y\n\tAndFilter\u0012L\n\u0007filters\u0018\u0001 \u0003(\u000b21.envoy.config.filter.accesslog.v2.AccessLogFilterB\búB\u0005\u0092\u0001\u0002\b\u0002\"X\n\bOrFilter\u0012L\n\u0007filters\u0018\u0002 \u0003(\u000b21.envoy.config.filter.accesslog.v2.AccessLogFilterB\búB\u0005\u0092\u0001\u0002\b\u0002\"K\n\fHeaderFilter\u0012;\n\u0006header\u0018\u0001 \u0001(\u000b2!.envoy.api.v2.route.HeaderMatcherB\búB\u0005\u008a\u0001\u0002\u0010\u0001\"\u0081\u0001\n\u0012ResponseFlagFilter\u0012k\n\u0005flags\u0018\u0001 \u0003(\tB\\úBY\u0092\u0001V\"TrRR\u0002LHR\u0002UHR\u0002UTR\u0002LRR\u0002URR\u0002UFR\u0002UCR\u0002UOR\u0002NRR\u0002DIR\u0002FIR\u0002RLR\u0004UAEXR\u0004RLSER\u0002DCR\u0003URXR\u0002SIR\u0002IHR\u0003DPE\"º\u0003\n\u0010GrpcStatusFilter\u0012Z\n\bstatuses\u0018\u0001 \u0003(\u000e29.envoy.config.filter.accesslog.v2.GrpcStatusFilter.StatusB\rúB\n\u0092\u0001\u0007\"\u0005\u0082\u0001\u0002\u0010\u0001\u0012\u000f\n\u0007exclude\u0018\u0002 \u0001(\b\"¸\u0002\n\u0006Status\u0012\u0006\n\u0002OK\u0010\u0000\u0012\f\n\bCANCELED\u0010\u0001\u0012\u000b\n\u0007UNKNOWN\u0010\u0002\u0012\u0014\n\u0010INVALID_ARGUMENT\u0010\u0003\u0012\u0015\n\u0011DEADLINE_EXCEEDED\u0010\u0004\u0012\r\n\tNOT_FOUND\u0010\u0005\u0012\u0012\n\u000eALREADY_EXISTS\u0010\u0006\u0012\u0015\n\u0011PERMISSION_DENIED\u0010\u0007\u0012\u0016\n\u0012RESOURCE_EXHAUSTED\u0010\b\u0012\u0017\n\u0013FAILED_PRECONDITION\u0010\t\u0012\u000b\n\u0007ABORTED\u0010\n\u0012\u0010\n\fOUT_OF_RANGE\u0010\u000b\u0012\u0011\n\rUNIMPLEMENTED\u0010\f\u0012\f\n\bINTERNAL\u0010\r\u0012\u000f\n\u000bUNAVAILABLE\u0010\u000e\u0012\r\n\tDATA_LOSS\u0010\u000f\u0012\u0013\n\u000fUNAUTHENTICATED\u0010\u0010\"\u008b\u0001\n\u000fExtensionFilter\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012-\n\u0006config\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.StructB\u0002\u0018\u0001H\u0000\u0012,\n\ftyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000B\r\n\u000bconfig_typeBk\n.io.envoyproxy.envoy.config.filter.accesslog.v2B\u000eAccesslogProtoP\u0001ò\u0098þ\u008f\u0005\u001b\u0012\u0019envoy.config.accesslog.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.g.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.l.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.g.a(), com.google.protobuf.g.a(), v2.a(), Migrate.g(), Status.c(), Validate.U()});

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f48499a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f48500b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f48501c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f48502d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f48503e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f48504f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f48505g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f48506h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f48507i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f48508j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f48509k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f48510l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f48511m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f48512n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f48513o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f48514p;

    /* renamed from: q  reason: collision with root package name */
    static final Descriptors.b f48515q;

    /* renamed from: r  reason: collision with root package name */
    static final GeneratedMessageV3.e f48516r;

    /* renamed from: s  reason: collision with root package name */
    static final Descriptors.b f48517s;

    /* renamed from: t  reason: collision with root package name */
    static final GeneratedMessageV3.e f48518t;

    /* renamed from: u  reason: collision with root package name */
    static final Descriptors.b f48519u;

    /* renamed from: v  reason: collision with root package name */
    static final GeneratedMessageV3.e f48520v;

    /* renamed from: w  reason: collision with root package name */
    static final Descriptors.b f48521w;

    /* renamed from: x  reason: collision with root package name */
    static final GeneratedMessageV3.e f48522x;

    /* renamed from: y  reason: collision with root package name */
    static final Descriptors.b f48523y;

    /* renamed from: z  reason: collision with root package name */
    static final GeneratedMessageV3.e f48524z;

    static {
        Descriptors.b bVar = a().m().get(0);
        f48499a = bVar;
        f48500b = new GeneratedMessageV3.e(bVar, new String[]{"Name", "Filter", "Config", "TypedConfig", "ConfigType"});
        Descriptors.b bVar2 = a().m().get(1);
        f48501c = bVar2;
        f48502d = new GeneratedMessageV3.e(bVar2, new String[]{"StatusCodeFilter", "DurationFilter", "NotHealthCheckFilter", "TraceableFilter", "RuntimeFilter", "AndFilter", "OrFilter", "HeaderFilter", "ResponseFlagFilter", "GrpcStatusFilter", "ExtensionFilter", "FilterSpecifier"});
        Descriptors.b bVar3 = a().m().get(2);
        f48503e = bVar3;
        f48504f = new GeneratedMessageV3.e(bVar3, new String[]{"Op", "Value"});
        Descriptors.b bVar4 = a().m().get(3);
        f48505g = bVar4;
        f48506h = new GeneratedMessageV3.e(bVar4, new String[]{"Comparison"});
        Descriptors.b bVar5 = a().m().get(4);
        f48507i = bVar5;
        f48508j = new GeneratedMessageV3.e(bVar5, new String[]{"Comparison"});
        Descriptors.b bVar6 = a().m().get(5);
        f48509k = bVar6;
        f48510l = new GeneratedMessageV3.e(bVar6, new String[0]);
        Descriptors.b bVar7 = a().m().get(6);
        f48511m = bVar7;
        f48512n = new GeneratedMessageV3.e(bVar7, new String[0]);
        Descriptors.b bVar8 = a().m().get(7);
        f48513o = bVar8;
        f48514p = new GeneratedMessageV3.e(bVar8, new String[]{"RuntimeKey", "PercentSampled", "UseIndependentRandomness"});
        Descriptors.b bVar9 = a().m().get(8);
        f48515q = bVar9;
        f48516r = new GeneratedMessageV3.e(bVar9, new String[]{"Filters"});
        Descriptors.b bVar10 = a().m().get(9);
        f48517s = bVar10;
        f48518t = new GeneratedMessageV3.e(bVar10, new String[]{"Filters"});
        Descriptors.b bVar11 = a().m().get(10);
        f48519u = bVar11;
        f48520v = new GeneratedMessageV3.e(bVar11, new String[]{"Header"});
        Descriptors.b bVar12 = a().m().get(11);
        f48521w = bVar12;
        f48522x = new GeneratedMessageV3.e(bVar12, new String[]{"Flags"});
        Descriptors.b bVar13 = a().m().get(12);
        f48523y = bVar13;
        f48524z = new GeneratedMessageV3.e(bVar13, new String[]{"Statuses", "Exclude"});
        Descriptors.b bVar14 = a().m().get(13);
        A = bVar14;
        B = new GeneratedMessageV3.e(bVar14, new String[]{"Name", "Config", "TypedConfig", "ConfigType"});
        d0 k10 = d0.k();
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(C, k10);
        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.g.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.l.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.g.a();
        com.google.protobuf.g.a();
        v2.a();
        Migrate.g();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return C;
    }
}
