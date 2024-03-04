package io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.tencent.liteav.txcplayer.ext.host.EngineConst;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50449a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50450b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f50451c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f50452d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f50453e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f50454f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f50455g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f50456h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f50457i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f50458j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f50459k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f50460l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f50461m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f50462n;

    /* renamed from: o  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50463o = Descriptors.FileDescriptor.s(new String[]{"\n%envoy/type/metadata/v2/metadata.proto\u0012\u0016envoy.type.metadata.v2\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"£\u0001\n\u000bMetadataKey\u0012\u0014\n\u0003key\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012G\n\u0004path\u0018\u0002 \u0003(\u000b2/.envoy.type.metadata.v2.MetadataKey.PathSegmentB\búB\u0005\u0092\u0001\u0002\b\u0001\u001a5\n\u000bPathSegment\u0012\u0016\n\u0003key\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001H\u0000B\u000e\n\u0007segment\u0012\u0003øB\u0001\"¼\u0002\n\fMetadataKind\u0012?\n\u0007request\u0018\u0001 \u0001(\u000b2,.envoy.type.metadata.v2.MetadataKind.RequestH\u0000\u0012;\n\u0005route\u0018\u0002 \u0001(\u000b2*.envoy.type.metadata.v2.MetadataKind.RouteH\u0000\u0012?\n\u0007cluster\u0018\u0003 \u0001(\u000b2,.envoy.type.metadata.v2.MetadataKind.ClusterH\u0000\u00129\n\u0004host\u0018\u0004 \u0001(\u000b2).envoy.type.metadata.v2.MetadataKind.HostH\u0000\u001a\t\n\u0007Request\u001a\u0007\n\u0005Route\u001a\t\n\u0007Cluster\u001a\u0006\n\u0004HostB\u000b\n\u0004kind\u0012\u0003øB\u0001B]\n$io.envoyproxy.envoy.type.metadata.v2B\rMetadataProtoP\u0001ò\u0098þ\u008f\u0005\u0018\u0012\u0016envoy.type.metadata.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{Migrate.g(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f50449a = bVar;
        f50450b = new GeneratedMessageV3.e(bVar, new String[]{"Key", "Path"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f50451c = bVar2;
        f50452d = new GeneratedMessageV3.e(bVar2, new String[]{"Key", "Segment"});
        Descriptors.b bVar3 = a().m().get(1);
        f50453e = bVar3;
        f50454f = new GeneratedMessageV3.e(bVar3, new String[]{"Request", "Route", "Cluster", EngineConst.PluginName.HOST_NAME, "Kind"});
        Descriptors.b bVar4 = bVar3.o().get(0);
        f50455g = bVar4;
        f50456h = new GeneratedMessageV3.e(bVar4, new String[0]);
        Descriptors.b bVar5 = bVar3.o().get(1);
        f50457i = bVar5;
        f50458j = new GeneratedMessageV3.e(bVar5, new String[0]);
        Descriptors.b bVar6 = bVar3.o().get(2);
        f50459k = bVar6;
        f50460l = new GeneratedMessageV3.e(bVar6, new String[0]);
        Descriptors.b bVar7 = bVar3.o().get(3);
        f50461m = bVar7;
        f50462n = new GeneratedMessageV3.e(bVar7, new String[0]);
        d0 k10 = d0.k();
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f50463o, k10);
        Migrate.g();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f50463o;
    }
}
