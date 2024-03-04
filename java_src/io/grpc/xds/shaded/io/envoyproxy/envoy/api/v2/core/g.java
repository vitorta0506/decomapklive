package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.p3;
import com.google.protobuf.v2;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
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
    private static Descriptors.FileDescriptor M = Descriptors.FileDescriptor.s(new String[]{"\n\u001cenvoy/api/v2/core/base.proto\u0012\u0011envoy.api.v2.core\u001a\u001fenvoy/api/v2/core/address.proto\u001a\u001fenvoy/api/v2/core/backoff.proto\u001a envoy/api/v2/core/http_uri.proto\u001a\u0018envoy/type/percent.proto\u001a!envoy/type/semantic_version.proto\u001a\u0019google/protobuf/any.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\u001a%envoy/api/v2/core/socket_option.proto\":\n\bLocality\u0012\u000e\n\u0006region\u0018\u0001 \u0001(\t\u0012\f\n\u0004zone\u0018\u0002 \u0001(\t\u0012\u0010\n\bsub_zone\u0018\u0003 \u0001(\t\"g\n\fBuildVersion\u0012,\n\u0007version\u0018\u0001 \u0001(\u000b2\u001b.envoy.type.SemanticVersion\u0012)\n\bmetadata\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.Struct\"\u0088\u0001\n\tExtension\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0010\n\bcategory\u0018\u0002 \u0001(\t\u0012\u0017\n\u000ftype_descriptor\u0018\u0003 \u0001(\t\u00120\n\u0007version\u0018\u0004 \u0001(\u000b2\u001f.envoy.api.v2.core.BuildVersion\u0012\u0010\n\bdisabled\u0018\u0005 \u0001(\b\"³\u0003\n\u0004Node\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007cluster\u0018\u0002 \u0001(\t\u0012)\n\bmetadata\u0018\u0003 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012-\n\blocality\u0018\u0004 \u0001(\u000b2\u001b.envoy.api.v2.core.Locality\u0012\u0019\n\rbuild_version\u0018\u0005 \u0001(\tB\u0002\u0018\u0001\u0012\u0017\n\u000fuser_agent_name\u0018\u0006 \u0001(\t\u0012\u001c\n\u0012user_agent_version\u0018\u0007 \u0001(\tH\u0000\u0012C\n\u0018user_agent_build_version\u0018\b \u0001(\u000b2\u001f.envoy.api.v2.core.BuildVersionH\u0000\u00120\n\nextensions\u0018\t \u0003(\u000b2\u001c.envoy.api.v2.core.Extension\u0012\u0017\n\u000fclient_features\u0018\n \u0003(\t\u00127\n\u0013listening_addresses\u0018\u000b \u0003(\u000b2\u001a.envoy.api.v2.core.AddressB\u0019\n\u0017user_agent_version_type\"¤\u0001\n\bMetadata\u0012H\n\u000ffilter_metadata\u0018\u0001 \u0003(\u000b2/.envoy.api.v2.core.Metadata.FilterMetadataEntry\u001aN\n\u0013FilterMetadataEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012&\n\u0005value\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.Struct:\u00028\u0001\"D\n\rRuntimeUInt32\u0012\u0015\n\rdefault_value\u0018\u0002 \u0001(\r\u0012\u001c\n\u000bruntime_key\u0018\u0003 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\"D\n\rRuntimeDouble\u0012\u0015\n\rdefault_value\u0018\u0001 \u0001(\u0001\u0012\u001c\n\u000bruntime_key\u0018\u0002 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\"o\n\u0012RuntimeFeatureFlag\u0012;\n\rdefault_value\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.BoolValueB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u0012\u001c\n\u000bruntime_key\u0018\u0002 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\"M\n\u000bHeaderValue\u0012\u001e\n\u0003key\u0018\u0001 \u0001(\tB\u0011úB\u000er\f \u0001(\u0080\u0080\u0001À\u0001\u0001È\u0001\u0000\u0012\u001e\n\u0005value\u0018\u0002 \u0001(\tB\u000fúB\fr\n(\u0080\u0080\u0001À\u0001\u0002È\u0001\u0000\"y\n\u0011HeaderValueOption\u00128\n\u0006header\u0018\u0001 \u0001(\u000b2\u001e.envoy.api.v2.core.HeaderValueB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u0012*\n\u0006append\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.BoolValue\"<\n\tHeaderMap\u0012/\n\u0007headers\u0018\u0001 \u0003(\u000b2\u001e.envoy.api.v2.core.HeaderValue\"~\n\nDataSource\u0012\u001b\n\bfilename\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001H\u0000\u0012\u001f\n\finline_bytes\u0018\u0002 \u0001(\fB\u0007úB\u0004z\u0002\u0010\u0001H\u0000\u0012 \n\rinline_string\u0018\u0003 \u0001(\tB\u0007úB\u0004r\u0002 \u0001H\u0000B\u0010\n\tspecifier\u0012\u0003øB\u0001\"|\n\u000bRetryPolicy\u0012:\n\u000eretry_back_off\u0018\u0001 \u0001(\u000b2\".envoy.api.v2.core.BackoffStrategy\u00121\n\u000bnum_retries\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\"\u0099\u0001\n\u0010RemoteDataSource\u00126\n\bhttp_uri\u0018\u0001 \u0001(\u000b2\u001a.envoy.api.v2.core.HttpUriB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u0012\u0017\n\u0006sha256\u0018\u0002 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u00124\n\fretry_policy\u0018\u0003 \u0001(\u000b2\u001e.envoy.api.v2.core.RetryPolicy\"\u008a\u0001\n\u000fAsyncDataSource\u0012.\n\u0005local\u0018\u0001 \u0001(\u000b2\u001d.envoy.api.v2.core.DataSourceH\u0000\u00125\n\u0006remote\u0018\u0002 \u0001(\u000b2#.envoy.api.v2.core.RemoteDataSourceH\u0000B\u0010\n\tspecifier\u0012\u0003øB\u0001\"\u0094\u0001\n\u000fTransportSocket\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012-\n\u0006config\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.StructB\u0002\u0018\u0001H\u0000\u0012,\n\ftyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000B\r\n\u000bconfig_type\"o\n\u0018RuntimeFractionalPercent\u0012>\n\rdefault_value\u0018\u0001 \u0001(\u000b2\u001d.envoy.type.FractionalPercentB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u0012\u0013\n\u000bruntime_key\u0018\u0002 \u0001(\t\"\"\n\fControlPlane\u0012\u0012\n\nidentifier\u0018\u0001 \u0001(\t*(\n\u000fRoutingPriority\u0012\u000b\n\u0007DEFAULT\u0010\u0000\u0012\b\n\u0004HIGH\u0010\u0001*\u0089\u0001\n\rRequestMethod\u0012\u0016\n\u0012METHOD_UNSPECIFIED\u0010\u0000\u0012\u0007\n\u0003GET\u0010\u0001\u0012\b\n\u0004HEAD\u0010\u0002\u0012\b\n\u0004POST\u0010\u0003\u0012\u0007\n\u0003PUT\u0010\u0004\u0012\n\n\u0006DELETE\u0010\u0005\u0012\u000b\n\u0007CONNECT\u0010\u0006\u0012\u000b\n\u0007OPTIONS\u0010\u0007\u0012\t\n\u0005TRACE\u0010\b\u0012\t\n\u0005PATCH\u0010\t*>\n\u0010TrafficDirection\u0012\u000f\n\u000bUNSPECIFIED\u0010\u0000\u0012\u000b\n\u0007INBOUND\u0010\u0001\u0012\f\n\bOUTBOUND\u0010\u0002BR\n\u001fio.envoyproxy.envoy.api.v2.coreB\tBaseProtoP\u0001ò\u0098þ\u008f\u0005\u0016\u0012\u0014envoy.config.core.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001P\u000bb\u0006proto3"}, new Descriptors.FileDescriptor[]{b.a(), e.a(), b0.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.g.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.j.a(), com.google.protobuf.g.a(), v2.a(), p3.a(), Migrate.g(), Status.c(), Validate.U(), p0.a()});

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f46692a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f46693b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f46694c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f46695d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f46696e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f46697f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f46698g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f46699h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f46700i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f46701j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f46702k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f46703l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f46704m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f46705n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f46706o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f46707p;

    /* renamed from: q  reason: collision with root package name */
    static final Descriptors.b f46708q;

    /* renamed from: r  reason: collision with root package name */
    static final GeneratedMessageV3.e f46709r;

    /* renamed from: s  reason: collision with root package name */
    static final Descriptors.b f46710s;

    /* renamed from: t  reason: collision with root package name */
    static final GeneratedMessageV3.e f46711t;

    /* renamed from: u  reason: collision with root package name */
    static final Descriptors.b f46712u;

    /* renamed from: v  reason: collision with root package name */
    static final GeneratedMessageV3.e f46713v;

    /* renamed from: w  reason: collision with root package name */
    static final Descriptors.b f46714w;

    /* renamed from: x  reason: collision with root package name */
    static final GeneratedMessageV3.e f46715x;

    /* renamed from: y  reason: collision with root package name */
    static final Descriptors.b f46716y;

    /* renamed from: z  reason: collision with root package name */
    static final GeneratedMessageV3.e f46717z;

    static {
        Descriptors.b bVar = a().m().get(0);
        f46692a = bVar;
        f46693b = new GeneratedMessageV3.e(bVar, new String[]{"Region", "Zone", "SubZone"});
        Descriptors.b bVar2 = a().m().get(1);
        f46694c = bVar2;
        f46695d = new GeneratedMessageV3.e(bVar2, new String[]{"Version", "Metadata"});
        Descriptors.b bVar3 = a().m().get(2);
        f46696e = bVar3;
        f46697f = new GeneratedMessageV3.e(bVar3, new String[]{"Name", "Category", "TypeDescriptor", "Version", "Disabled"});
        Descriptors.b bVar4 = a().m().get(3);
        f46698g = bVar4;
        f46699h = new GeneratedMessageV3.e(bVar4, new String[]{"Id", "Cluster", "Metadata", "Locality", "BuildVersion", "UserAgentName", "UserAgentVersion", "UserAgentBuildVersion", "Extensions", "ClientFeatures", "ListeningAddresses", "UserAgentVersionType"});
        Descriptors.b bVar5 = a().m().get(4);
        f46700i = bVar5;
        f46701j = new GeneratedMessageV3.e(bVar5, new String[]{"FilterMetadata"});
        Descriptors.b bVar6 = bVar5.o().get(0);
        f46702k = bVar6;
        f46703l = new GeneratedMessageV3.e(bVar6, new String[]{"Key", "Value"});
        Descriptors.b bVar7 = a().m().get(5);
        f46704m = bVar7;
        f46705n = new GeneratedMessageV3.e(bVar7, new String[]{"DefaultValue", "RuntimeKey"});
        Descriptors.b bVar8 = a().m().get(6);
        f46706o = bVar8;
        f46707p = new GeneratedMessageV3.e(bVar8, new String[]{"DefaultValue", "RuntimeKey"});
        Descriptors.b bVar9 = a().m().get(7);
        f46708q = bVar9;
        f46709r = new GeneratedMessageV3.e(bVar9, new String[]{"DefaultValue", "RuntimeKey"});
        Descriptors.b bVar10 = a().m().get(8);
        f46710s = bVar10;
        f46711t = new GeneratedMessageV3.e(bVar10, new String[]{"Key", "Value"});
        Descriptors.b bVar11 = a().m().get(9);
        f46712u = bVar11;
        f46713v = new GeneratedMessageV3.e(bVar11, new String[]{"Header", "Append"});
        Descriptors.b bVar12 = a().m().get(10);
        f46714w = bVar12;
        f46715x = new GeneratedMessageV3.e(bVar12, new String[]{"Headers"});
        Descriptors.b bVar13 = a().m().get(11);
        f46716y = bVar13;
        f46717z = new GeneratedMessageV3.e(bVar13, new String[]{"Filename", "InlineBytes", "InlineString", "Specifier"});
        Descriptors.b bVar14 = a().m().get(12);
        A = bVar14;
        B = new GeneratedMessageV3.e(bVar14, new String[]{"RetryBackOff", "NumRetries"});
        Descriptors.b bVar15 = a().m().get(13);
        C = bVar15;
        D = new GeneratedMessageV3.e(bVar15, new String[]{"HttpUri", "Sha256", "RetryPolicy"});
        Descriptors.b bVar16 = a().m().get(14);
        E = bVar16;
        F = new GeneratedMessageV3.e(bVar16, new String[]{"Local", "Remote", "Specifier"});
        Descriptors.b bVar17 = a().m().get(15);
        G = bVar17;
        H = new GeneratedMessageV3.e(bVar17, new String[]{"Name", "Config", "TypedConfig", "ConfigType"});
        Descriptors.b bVar18 = a().m().get(16);
        I = bVar18;
        J = new GeneratedMessageV3.e(bVar18, new String[]{"DefaultValue", "RuntimeKey"});
        Descriptors.b bVar19 = a().m().get(17);
        K = bVar19;
        L = new GeneratedMessageV3.e(bVar19, new String[]{"Identifier"});
        com.google.protobuf.d0 k10 = com.google.protobuf.d0.k();
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(M, k10);
        b.a();
        e.a();
        b0.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.g.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.j.a();
        com.google.protobuf.g.a();
        v2.a();
        p3.a();
        Migrate.g();
        Status.c();
        Validate.U();
        p0.a();
    }

    public static Descriptors.FileDescriptor a() {
        return M;
    }
}
