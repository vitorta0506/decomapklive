package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.p3;
import com.google.protobuf.v2;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class g {
    static final Descriptors.b A;
    static final GeneratedMessageV3.e B;
    static final Descriptors.b C;
    static final GeneratedMessageV3.e D;
    static final Descriptors.b E;
    static final GeneratedMessageV3.e F;
    static final Descriptors.b G;
    static final GeneratedMessageV3.e H;
    static final Descriptors.b I;
    static final GeneratedMessageV3.e J;
    static final Descriptors.b K;
    static final GeneratedMessageV3.e L;
    static final Descriptors.b M;
    static final GeneratedMessageV3.e N;
    static final Descriptors.b O;
    static final GeneratedMessageV3.e P;
    static final Descriptors.b Q;
    static final GeneratedMessageV3.e R;
    static final Descriptors.b S;
    static final GeneratedMessageV3.e T;
    private static Descriptors.FileDescriptor U = Descriptors.FileDescriptor.s(new String[]{"\n\u001fenvoy/config/core/v3/base.proto\u0012\u0014envoy.config.core.v3\u001a\"envoy/config/core/v3/address.proto\u001a\"envoy/config/core/v3/backoff.proto\u001a#envoy/config/core/v3/http_uri.proto\u001a\u001benvoy/type/v3/percent.proto\u001a$envoy/type/v3/semantic_version.proto\u001a\u0019google/protobuf/any.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a xds/core/v3/context_params.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"]\n\bLocality\u0012\u000e\n\u0006region\u0018\u0001 \u0001(\t\u0012\f\n\u0004zone\u0018\u0002 \u0001(\t\u0012\u0010\n\bsub_zone\u0018\u0003 \u0001(\t:!\u009aÅ\u0088\u001e\u001c\n\u001aenvoy.api.v2.core.Locality\"\u0091\u0001\n\fBuildVersion\u0012/\n\u0007version\u0018\u0001 \u0001(\u000b2\u001e.envoy.type.v3.SemanticVersion\u0012)\n\bmetadata\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.Struct:%\u009aÅ\u0088\u001e \n\u001eenvoy.api.v2.core.BuildVersion\"¯\u0001\n\tExtension\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0010\n\bcategory\u0018\u0002 \u0001(\t\u0012\u0017\n\u000ftype_descriptor\u0018\u0003 \u0001(\t\u00123\n\u0007version\u0018\u0004 \u0001(\u000b2\".envoy.config.core.v3.BuildVersion\u0012\u0010\n\bdisabled\u0018\u0005 \u0001(\b:\"\u009aÅ\u0088\u001e\u001d\n\u001benvoy.api.v2.core.Extension\"\u008a\u0005\n\u0004Node\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007cluster\u0018\u0002 \u0001(\t\u0012)\n\bmetadata\u0018\u0003 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012M\n\u0012dynamic_parameters\u0018\f \u0003(\u000b21.envoy.config.core.v3.Node.DynamicParametersEntry\u00120\n\blocality\u0018\u0004 \u0001(\u000b2\u001e.envoy.config.core.v3.Locality\u0012\u0017\n\u000fuser_agent_name\u0018\u0006 \u0001(\t\u0012\u001c\n\u0012user_agent_version\u0018\u0007 \u0001(\tH\u0000\u0012F\n\u0018user_agent_build_version\u0018\b \u0001(\u000b2\".envoy.config.core.v3.BuildVersionH\u0000\u00123\n\nextensions\u0018\t \u0003(\u000b2\u001f.envoy.config.core.v3.Extension\u0012\u0017\n\u000fclient_features\u0018\n \u0003(\t\u0012G\n\u0013listening_addresses\u0018\u000b \u0003(\u000b2\u001d.envoy.config.core.v3.AddressB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0\u001aT\n\u0016DynamicParametersEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012)\n\u0005value\u0018\u0002 \u0001(\u000b2\u001a.xds.core.v3.ContextParams:\u00028\u0001:\u001d\u009aÅ\u0088\u001e\u0018\n\u0016envoy.api.v2.core.NodeB\u0019\n\u0017user_agent_version_typeJ\u0004\b\u0005\u0010\u0006R\rbuild_version\"ô\u0002\n\bMetadata\u0012K\n\u000ffilter_metadata\u0018\u0001 \u0003(\u000b22.envoy.config.core.v3.Metadata.FilterMetadataEntry\u0012V\n\u0015typed_filter_metadata\u0018\u0002 \u0003(\u000b27.envoy.config.core.v3.Metadata.TypedFilterMetadataEntry\u001aN\n\u0013FilterMetadataEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012&\n\u0005value\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.Struct:\u00028\u0001\u001aP\n\u0018TypedFilterMetadataEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012#\n\u0005value\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.Any:\u00028\u0001:!\u009aÅ\u0088\u001e\u001c\n\u001aenvoy.api.v2.core.Metadata\"l\n\rRuntimeUInt32\u0012\u0015\n\rdefault_value\u0018\u0002 \u0001(\r\u0012\u001c\n\u000bruntime_key\u0018\u0003 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001:&\u009aÅ\u0088\u001e!\n\u001fenvoy.api.v2.core.RuntimeUInt32\"]\n\u000eRuntimePercent\u0012-\n\rdefault_value\u0018\u0001 \u0001(\u000b2\u0016.envoy.type.v3.Percent\u0012\u001c\n\u000bruntime_key\u0018\u0002 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\"l\n\rRuntimeDouble\u0012\u0015\n\rdefault_value\u0018\u0001 \u0001(\u0001\u0012\u001c\n\u000bruntime_key\u0018\u0002 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001:&\u009aÅ\u0088\u001e!\n\u001fenvoy.api.v2.core.RuntimeDouble\"\u009c\u0001\n\u0012RuntimeFeatureFlag\u0012;\n\rdefault_value\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.BoolValueB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u0012\u001c\n\u000bruntime_key\u0018\u0002 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001:+\u009aÅ\u0088\u001e&\n$envoy.api.v2.core.RuntimeFeatureFlag\"s\n\u000bHeaderValue\u0012\u001e\n\u0003key\u0018\u0001 \u0001(\tB\u0011úB\u000er\f\u0010\u0001(\u0080\u0080\u0001À\u0001\u0001È\u0001\u0000\u0012\u001e\n\u0005value\u0018\u0002 \u0001(\tB\u000fúB\fr\n(\u0080\u0080\u0001À\u0001\u0002È\u0001\u0000:$\u009aÅ\u0088\u001e\u001f\n\u001denvoy.api.v2.core.HeaderValue\"¨\u0001\n\u0011HeaderValueOption\u0012;\n\u0006header\u0018\u0001 \u0001(\u000b2!.envoy.config.core.v3.HeaderValueB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u0012*\n\u0006append\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.BoolValue:*\u009aÅ\u0088\u001e%\n#envoy.api.v2.core.HeaderValueOption\"c\n\tHeaderMap\u00122\n\u0007headers\u0018\u0001 \u0003(\u000b2!.envoy.config.core.v3.HeaderValue:\"\u009aÅ\u0088\u001e\u001d\n\u001benvoy.api.v2.core.HeaderMap\")\n\u0010WatchedDirectory\u0012\u0015\n\u0004path\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\"\u0091\u0001\n\nDataSource\u0012\u001b\n\bfilename\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001H\u0000\u0012\u0016\n\finline_bytes\u0018\u0002 \u0001(\fH\u0000\u0012\u0017\n\rinline_string\u0018\u0003 \u0001(\tH\u0000:#\u009aÅ\u0088\u001e\u001e\n\u001cenvoy.api.v2.core.DataSourceB\u0010\n\tspecifier\u0012\u0003øB\u0001\"º\u0001\n\u000bRetryPolicy\u0012=\n\u000eretry_back_off\u0018\u0001 \u0001(\u000b2%.envoy.config.core.v3.BackoffStrategy\u0012F\n\u000bnum_retries\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0013ò\u0098þ\u008f\u0005\r\n\u000bmax_retries:$\u009aÅ\u0088\u001e\u001f\n\u001denvoy.api.v2.core.RetryPolicy\"Ê\u0001\n\u0010RemoteDataSource\u00129\n\bhttp_uri\u0018\u0001 \u0001(\u000b2\u001d.envoy.config.core.v3.HttpUriB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u0012\u0017\n\u0006sha256\u0018\u0002 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u00127\n\fretry_policy\u0018\u0003 \u0001(\u000b2!.envoy.config.core.v3.RetryPolicy:)\u009aÅ\u0088\u001e$\n\"envoy.api.v2.core.RemoteDataSource\"º\u0001\n\u000fAsyncDataSource\u00121\n\u0005local\u0018\u0001 \u0001(\u000b2 .envoy.config.core.v3.DataSourceH\u0000\u00128\n\u0006remote\u0018\u0002 \u0001(\u000b2&.envoy.config.core.v3.RemoteDataSourceH\u0000:(\u009aÅ\u0088\u001e#\n!envoy.api.v2.core.AsyncDataSourceB\u0010\n\tspecifier\u0012\u0003øB\u0001\"\u009d\u0001\n\u000fTransportSocket\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012,\n\ftyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000:(\u009aÅ\u0088\u001e#\n!envoy.api.v2.core.TransportSocketB\r\n\u000bconfig_typeJ\u0004\b\u0002\u0010\u0003R\u0006config\"¥\u0001\n\u0018RuntimeFractionalPercent\u0012A\n\rdefault_value\u0018\u0001 \u0001(\u000b2 .envoy.type.v3.FractionalPercentB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u0012\u0013\n\u000bruntime_key\u0018\u0002 \u0001(\t:1\u009aÅ\u0088\u001e,\n*envoy.api.v2.core.RuntimeFractionalPercent\"I\n\fControlPlane\u0012\u0012\n\nidentifier\u0018\u0001 \u0001(\t:%\u009aÅ\u0088\u001e \n\u001eenvoy.api.v2.core.ControlPlane*(\n\u000fRoutingPriority\u0012\u000b\n\u0007DEFAULT\u0010\u0000\u0012\b\n\u0004HIGH\u0010\u0001*\u0089\u0001\n\rRequestMethod\u0012\u0016\n\u0012METHOD_UNSPECIFIED\u0010\u0000\u0012\u0007\n\u0003GET\u0010\u0001\u0012\b\n\u0004HEAD\u0010\u0002\u0012\b\n\u0004POST\u0010\u0003\u0012\u0007\n\u0003PUT\u0010\u0004\u0012\n\n\u0006DELETE\u0010\u0005\u0012\u000b\n\u0007CONNECT\u0010\u0006\u0012\u000b\n\u0007OPTIONS\u0010\u0007\u0012\t\n\u0005TRACE\u0010\b\u0012\t\n\u0005PATCH\u0010\t*>\n\u0010TrafficDirection\u0012\u000f\n\u000bUNSPECIFIED\u0010\u0000\u0012\u000b\n\u0007INBOUND\u0010\u0001\u0012\f\n\bOUTBOUND\u0010\u0002B9\n\"io.envoyproxy.envoy.config.core.v3B\tBaseProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{b.a(), e.a(), h0.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.g.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.j.a(), com.google.protobuf.g.a(), v2.a(), p3.a(), io.grpc.xds.shaded.com.github.xds.core.v3.f.a(), io.grpc.xds.shaded.envoy.annotations.a.a(), Migrate.g(), Status.c(), Versioning.c(), Validate.U()});

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f48210a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f48211b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f48212c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f48213d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f48214e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f48215f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f48216g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f48217h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f48218i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f48219j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f48220k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f48221l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f48222m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f48223n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f48224o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f48225p;

    /* renamed from: q  reason: collision with root package name */
    static final Descriptors.b f48226q;

    /* renamed from: r  reason: collision with root package name */
    static final GeneratedMessageV3.e f48227r;

    /* renamed from: s  reason: collision with root package name */
    static final Descriptors.b f48228s;

    /* renamed from: t  reason: collision with root package name */
    static final GeneratedMessageV3.e f48229t;

    /* renamed from: u  reason: collision with root package name */
    static final Descriptors.b f48230u;

    /* renamed from: v  reason: collision with root package name */
    static final GeneratedMessageV3.e f48231v;

    /* renamed from: w  reason: collision with root package name */
    static final Descriptors.b f48232w;

    /* renamed from: x  reason: collision with root package name */
    static final GeneratedMessageV3.e f48233x;

    /* renamed from: y  reason: collision with root package name */
    static final Descriptors.b f48234y;

    /* renamed from: z  reason: collision with root package name */
    static final GeneratedMessageV3.e f48235z;

    static {
        Descriptors.b bVar = a().m().get(0);
        f48210a = bVar;
        f48211b = new GeneratedMessageV3.e(bVar, new String[]{"Region", "Zone", "SubZone"});
        Descriptors.b bVar2 = a().m().get(1);
        f48212c = bVar2;
        f48213d = new GeneratedMessageV3.e(bVar2, new String[]{"Version", "Metadata"});
        Descriptors.b bVar3 = a().m().get(2);
        f48214e = bVar3;
        f48215f = new GeneratedMessageV3.e(bVar3, new String[]{"Name", "Category", "TypeDescriptor", "Version", "Disabled"});
        Descriptors.b bVar4 = a().m().get(3);
        f48216g = bVar4;
        f48217h = new GeneratedMessageV3.e(bVar4, new String[]{"Id", "Cluster", "Metadata", "DynamicParameters", "Locality", "UserAgentName", "UserAgentVersion", "UserAgentBuildVersion", "Extensions", "ClientFeatures", "ListeningAddresses", "UserAgentVersionType"});
        Descriptors.b bVar5 = bVar4.o().get(0);
        f48218i = bVar5;
        f48219j = new GeneratedMessageV3.e(bVar5, new String[]{"Key", "Value"});
        Descriptors.b bVar6 = a().m().get(4);
        f48220k = bVar6;
        f48221l = new GeneratedMessageV3.e(bVar6, new String[]{"FilterMetadata", "TypedFilterMetadata"});
        Descriptors.b bVar7 = bVar6.o().get(0);
        f48222m = bVar7;
        f48223n = new GeneratedMessageV3.e(bVar7, new String[]{"Key", "Value"});
        Descriptors.b bVar8 = bVar6.o().get(1);
        f48224o = bVar8;
        f48225p = new GeneratedMessageV3.e(bVar8, new String[]{"Key", "Value"});
        Descriptors.b bVar9 = a().m().get(5);
        f48226q = bVar9;
        f48227r = new GeneratedMessageV3.e(bVar9, new String[]{"DefaultValue", "RuntimeKey"});
        Descriptors.b bVar10 = a().m().get(6);
        f48228s = bVar10;
        f48229t = new GeneratedMessageV3.e(bVar10, new String[]{"DefaultValue", "RuntimeKey"});
        Descriptors.b bVar11 = a().m().get(7);
        f48230u = bVar11;
        f48231v = new GeneratedMessageV3.e(bVar11, new String[]{"DefaultValue", "RuntimeKey"});
        Descriptors.b bVar12 = a().m().get(8);
        f48232w = bVar12;
        f48233x = new GeneratedMessageV3.e(bVar12, new String[]{"DefaultValue", "RuntimeKey"});
        Descriptors.b bVar13 = a().m().get(9);
        f48234y = bVar13;
        f48235z = new GeneratedMessageV3.e(bVar13, new String[]{"Key", "Value"});
        Descriptors.b bVar14 = a().m().get(10);
        A = bVar14;
        B = new GeneratedMessageV3.e(bVar14, new String[]{"Header", "Append"});
        Descriptors.b bVar15 = a().m().get(11);
        C = bVar15;
        D = new GeneratedMessageV3.e(bVar15, new String[]{"Headers"});
        Descriptors.b bVar16 = a().m().get(12);
        E = bVar16;
        F = new GeneratedMessageV3.e(bVar16, new String[]{"Path"});
        Descriptors.b bVar17 = a().m().get(13);
        G = bVar17;
        H = new GeneratedMessageV3.e(bVar17, new String[]{"Filename", "InlineBytes", "InlineString", "Specifier"});
        Descriptors.b bVar18 = a().m().get(14);
        I = bVar18;
        J = new GeneratedMessageV3.e(bVar18, new String[]{"RetryBackOff", "NumRetries"});
        Descriptors.b bVar19 = a().m().get(15);
        K = bVar19;
        L = new GeneratedMessageV3.e(bVar19, new String[]{"HttpUri", "Sha256", "RetryPolicy"});
        Descriptors.b bVar20 = a().m().get(16);
        M = bVar20;
        N = new GeneratedMessageV3.e(bVar20, new String[]{"Local", "Remote", "Specifier"});
        Descriptors.b bVar21 = a().m().get(17);
        O = bVar21;
        P = new GeneratedMessageV3.e(bVar21, new String[]{"Name", "TypedConfig", "ConfigType"});
        Descriptors.b bVar22 = a().m().get(18);
        Q = bVar22;
        R = new GeneratedMessageV3.e(bVar22, new String[]{"DefaultValue", "RuntimeKey"});
        Descriptors.b bVar23 = a().m().get(19);
        S = bVar23;
        T = new GeneratedMessageV3.e(bVar23, new String[]{"Identifier"});
        com.google.protobuf.d0 k10 = com.google.protobuf.d0.k();
        k10.f(io.grpc.xds.shaded.envoy.annotations.a.f45758b);
        k10.f(Migrate.f50818b);
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(U, k10);
        b.a();
        e.a();
        h0.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.g.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.j.a();
        com.google.protobuf.g.a();
        v2.a();
        p3.a();
        io.grpc.xds.shaded.com.github.xds.core.v3.f.a();
        io.grpc.xds.shaded.envoy.annotations.a.a();
        Migrate.g();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return U;
    }
}
