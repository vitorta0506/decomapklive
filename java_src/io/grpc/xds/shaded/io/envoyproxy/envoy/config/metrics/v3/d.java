package io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.g;
import com.google.protobuf.p3;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.o;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f48913a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f48914b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f48915c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f48916d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f48917e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f48918f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f48919g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f48920h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f48921i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f48922j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f48923k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f48924l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f48925m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f48926n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f48927o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f48928p;

    /* renamed from: q  reason: collision with root package name */
    private static Descriptors.FileDescriptor f48929q = Descriptors.FileDescriptor.s(new String[]{"\n#envoy/config/metrics/v3/stats.proto\u0012\u0017envoy.config.metrics.v3\u001a\"envoy/config/core/v3/address.proto\u001a\"envoy/type/matcher/v3/string.proto\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"\u008e\u0001\n\tStatsSink\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012,\n\ftyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000:(\u009aÅ\u0088\u001e#\n!envoy.config.metrics.v2.StatsSinkB\r\n\u000bconfig_typeJ\u0004\b\u0002\u0010\u0003R\u0006config\"Á\u0002\n\u000bStatsConfig\u00129\n\nstats_tags\u0018\u0001 \u0003(\u000b2%.envoy.config.metrics.v3.TagSpecifier\u00128\n\u0014use_all_default_tags\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012<\n\rstats_matcher\u0018\u0003 \u0001(\u000b2%.envoy.config.metrics.v3.StatsMatcher\u0012S\n\u0019histogram_bucket_settings\u0018\u0004 \u0003(\u000b20.envoy.config.metrics.v3.HistogramBucketSettings:*\u009aÅ\u0088\u001e%\n#envoy.config.metrics.v2.StatsConfig\"ï\u0001\n\fStatsMatcher\u0012\u0014\n\nreject_all\u0018\u0001 \u0001(\bH\u0000\u0012B\n\u000eexclusion_list\u0018\u0002 \u0001(\u000b2(.envoy.type.matcher.v3.ListStringMatcherH\u0000\u0012B\n\u000einclusion_list\u0018\u0003 \u0001(\u000b2(.envoy.type.matcher.v3.ListStringMatcherH\u0000:+\u009aÅ\u0088\u001e&\n$envoy.config.metrics.v2.StatsMatcherB\u0014\n\rstats_matcher\u0012\u0003øB\u0001\"\u008c\u0001\n\fTagSpecifier\u0012\u0010\n\btag_name\u0018\u0001 \u0001(\t\u0012\u0019\n\u0005regex\u0018\u0002 \u0001(\tB\búB\u0005r\u0003(\u0080\bH\u0000\u0012\u0015\n\u000bfixed_value\u0018\u0003 \u0001(\tH\u0000:+\u009aÅ\u0088\u001e&\n$envoy.config.metrics.v2.TagSpecifierB\u000b\n\ttag_value\"\u0082\u0001\n\u0017HistogramBucketSettings\u0012=\n\u0005match\u0018\u0001 \u0001(\u000b2$.envoy.type.matcher.v3.StringMatcherB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u0012(\n\u0007buckets\u0018\u0002 \u0003(\u0001B\u0017úB\u0014\u0092\u0001\u0011\b\u0001\u0018\u0001\"\u000b\u0012\t!\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\"®\u0001\n\nStatsdSink\u00120\n\u0007address\u0018\u0001 \u0001(\u000b2\u001d.envoy.config.core.v3.AddressH\u0000\u0012\u001a\n\u0010tcp_cluster_name\u0018\u0002 \u0001(\tH\u0000\u0012\u000e\n\u0006prefix\u0018\u0003 \u0001(\t:)\u009aÅ\u0088\u001e$\n\"envoy.config.metrics.v2.StatsdSinkB\u0017\n\u0010statsd_specifier\u0012\u0003øB\u0001\"é\u0001\n\rDogStatsdSink\u00120\n\u0007address\u0018\u0001 \u0001(\u000b2\u001d.envoy.config.core.v3.AddressH\u0000\u0012\u000e\n\u0006prefix\u0018\u0003 \u0001(\t\u0012E\n\u0016max_bytes_per_datagram\u0018\u0004 \u0001(\u000b2\u001c.google.protobuf.UInt64ValueB\u0007úB\u00042\u0002 \u0000:,\u009aÅ\u0088\u001e'\n%envoy.config.metrics.v2.DogStatsdSinkB\u001b\n\u0014dog_statsd_specifier\u0012\u0003øB\u0001J\u0004\b\u0002\u0010\u0003\"N\n\u000bHystrixSink\u0012\u0013\n\u000bnum_buckets\u0018\u0001 \u0001(\u0003:*\u009aÅ\u0088\u001e%\n#envoy.config.metrics.v2.HystrixSinkB=\n%io.envoyproxy.envoy.config.metrics.v3B\nStatsProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b.a(), o.a(), g.a(), p3.a(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f48913a = bVar;
        f48914b = new GeneratedMessageV3.e(bVar, new String[]{"Name", "TypedConfig", "ConfigType"});
        Descriptors.b bVar2 = a().m().get(1);
        f48915c = bVar2;
        f48916d = new GeneratedMessageV3.e(bVar2, new String[]{"StatsTags", "UseAllDefaultTags", "StatsMatcher", "HistogramBucketSettings"});
        Descriptors.b bVar3 = a().m().get(2);
        f48917e = bVar3;
        f48918f = new GeneratedMessageV3.e(bVar3, new String[]{"RejectAll", "ExclusionList", "InclusionList", "StatsMatcher"});
        Descriptors.b bVar4 = a().m().get(3);
        f48919g = bVar4;
        f48920h = new GeneratedMessageV3.e(bVar4, new String[]{"TagName", "Regex", "FixedValue", "TagValue"});
        Descriptors.b bVar5 = a().m().get(4);
        f48921i = bVar5;
        f48922j = new GeneratedMessageV3.e(bVar5, new String[]{"Match", "Buckets"});
        Descriptors.b bVar6 = a().m().get(5);
        f48923k = bVar6;
        f48924l = new GeneratedMessageV3.e(bVar6, new String[]{"Address", "TcpClusterName", "Prefix", "StatsdSpecifier"});
        Descriptors.b bVar7 = a().m().get(6);
        f48925m = bVar7;
        f48926n = new GeneratedMessageV3.e(bVar7, new String[]{"Address", "Prefix", "MaxBytesPerDatagram", "DogStatsdSpecifier"});
        Descriptors.b bVar8 = a().m().get(7);
        f48927o = bVar8;
        f48928p = new GeneratedMessageV3.e(bVar8, new String[]{"NumBuckets"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f48929q, k10);
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b.a();
        o.a();
        g.a();
        p3.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f48929q;
    }
}
