package io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.tencent.liteav.txcplayer.ext.host.EngineConst;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50478a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50479b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f50480c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f50481d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f50482e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f50483f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f50484g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f50485h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f50486i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f50487j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f50488k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f50489l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f50490m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f50491n;

    /* renamed from: o  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50492o = Descriptors.FileDescriptor.s(new String[]{"\n%envoy/type/metadata/v3/metadata.proto\u0012\u0016envoy.type.metadata.v3\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"\u0085\u0002\n\u000bMetadataKey\u0012\u0014\n\u0003key\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012G\n\u0004path\u0018\u0002 \u0003(\u000b2/.envoy.type.metadata.v3.MetadataKey.PathSegmentB\búB\u0005\u0092\u0001\u0002\b\u0001\u001al\n\u000bPathSegment\u0012\u0016\n\u0003key\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001H\u0000:5\u009aÅ\u0088\u001e0\n.envoy.type.metadata.v2.MetadataKey.PathSegmentB\u000e\n\u0007segment\u0012\u0003øB\u0001:)\u009aÅ\u0088\u001e$\n\"envoy.type.metadata.v2.MetadataKey\"³\u0004\n\fMetadataKind\u0012?\n\u0007request\u0018\u0001 \u0001(\u000b2,.envoy.type.metadata.v3.MetadataKind.RequestH\u0000\u0012;\n\u0005route\u0018\u0002 \u0001(\u000b2*.envoy.type.metadata.v3.MetadataKind.RouteH\u0000\u0012?\n\u0007cluster\u0018\u0003 \u0001(\u000b2,.envoy.type.metadata.v3.MetadataKind.ClusterH\u0000\u00129\n\u0004host\u0018\u0004 \u0001(\u000b2).envoy.type.metadata.v3.MetadataKind.HostH\u0000\u001a=\n\u0007Request:2\u009aÅ\u0088\u001e-\n+envoy.type.metadata.v2.MetadataKind.Request\u001a9\n\u0005Route:0\u009aÅ\u0088\u001e+\n)envoy.type.metadata.v2.MetadataKind.Route\u001a=\n\u0007Cluster:2\u009aÅ\u0088\u001e-\n+envoy.type.metadata.v2.MetadataKind.Cluster\u001a7\n\u0004Host:/\u009aÅ\u0088\u001e*\n(envoy.type.metadata.v2.MetadataKind.Host:*\u009aÅ\u0088\u001e%\n#envoy.type.metadata.v2.MetadataKindB\u000b\n\u0004kind\u0012\u0003øB\u0001B?\n$io.envoyproxy.envoy.type.metadata.v3B\rMetadataProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f50478a = bVar;
        f50479b = new GeneratedMessageV3.e(bVar, new String[]{"Key", "Path"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f50480c = bVar2;
        f50481d = new GeneratedMessageV3.e(bVar2, new String[]{"Key", "Segment"});
        Descriptors.b bVar3 = a().m().get(1);
        f50482e = bVar3;
        f50483f = new GeneratedMessageV3.e(bVar3, new String[]{"Request", "Route", "Cluster", EngineConst.PluginName.HOST_NAME, "Kind"});
        Descriptors.b bVar4 = bVar3.o().get(0);
        f50484g = bVar4;
        f50485h = new GeneratedMessageV3.e(bVar4, new String[0]);
        Descriptors.b bVar5 = bVar3.o().get(1);
        f50486i = bVar5;
        f50487j = new GeneratedMessageV3.e(bVar5, new String[0]);
        Descriptors.b bVar6 = bVar3.o().get(2);
        f50488k = bVar6;
        f50489l = new GeneratedMessageV3.e(bVar6, new String[0]);
        Descriptors.b bVar7 = bVar3.o().get(3);
        f50490m = bVar7;
        f50491n = new GeneratedMessageV3.e(bVar7, new String[0]);
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f50492o, k10);
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f50492o;
    }
}
