package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes5.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f46794a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f46795b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f46796c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f46797d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f46798e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f46799f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f46800g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f46801h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f46802i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f46803j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f46804k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f46805l;

    /* renamed from: m  reason: collision with root package name */
    private static Descriptors.FileDescriptor f46806m = Descriptors.FileDescriptor.s(new String[]{"\n\u001cenvoy/api/v2/discovery.proto\u0012\fenvoy.api.v2\u001a\u001cenvoy/api/v2/core/base.proto\u001a\u0019google/protobuf/any.proto\u001a\u0017google/rpc/status.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\"»\u0001\n\u0010DiscoveryRequest\u0012\u0014\n\fversion_info\u0018\u0001 \u0001(\t\u0012%\n\u0004node\u0018\u0002 \u0001(\u000b2\u0017.envoy.api.v2.core.Node\u0012\u0016\n\u000eresource_names\u0018\u0003 \u0003(\t\u0012\u0010\n\btype_url\u0018\u0004 \u0001(\t\u0012\u0016\n\u000eresponse_nonce\u0018\u0005 \u0001(\t\u0012(\n\ferror_detail\u0018\u0006 \u0001(\u000b2\u0012.google.rpc.Status\"»\u0001\n\u0011DiscoveryResponse\u0012\u0014\n\fversion_info\u0018\u0001 \u0001(\t\u0012'\n\tresources\u0018\u0002 \u0003(\u000b2\u0014.google.protobuf.Any\u0012\u000e\n\u0006canary\u0018\u0003 \u0001(\b\u0012\u0010\n\btype_url\u0018\u0004 \u0001(\t\u0012\r\n\u0005nonce\u0018\u0005 \u0001(\t\u00126\n\rcontrol_plane\u0018\u0006 \u0001(\u000b2\u001f.envoy.api.v2.core.ControlPlane\"ý\u0002\n\u0015DeltaDiscoveryRequest\u0012%\n\u0004node\u0018\u0001 \u0001(\u000b2\u0017.envoy.api.v2.core.Node\u0012\u0010\n\btype_url\u0018\u0002 \u0001(\t\u0012 \n\u0018resource_names_subscribe\u0018\u0003 \u0003(\t\u0012\"\n\u001aresource_names_unsubscribe\u0018\u0004 \u0003(\t\u0012c\n\u0019initial_resource_versions\u0018\u0005 \u0003(\u000b2@.envoy.api.v2.DeltaDiscoveryRequest.InitialResourceVersionsEntry\u0012\u0016\n\u000eresponse_nonce\u0018\u0006 \u0001(\t\u0012(\n\ferror_detail\u0018\u0007 \u0001(\u000b2\u0012.google.rpc.Status\u001a>\n\u001cInitialResourceVersionsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\"\u009c\u0001\n\u0016DeltaDiscoveryResponse\u0012\u001b\n\u0013system_version_info\u0018\u0001 \u0001(\t\u0012)\n\tresources\u0018\u0002 \u0003(\u000b2\u0016.envoy.api.v2.Resource\u0012\u0010\n\btype_url\u0018\u0004 \u0001(\t\u0012\u0019\n\u0011removed_resources\u0018\u0006 \u0003(\t\u0012\r\n\u0005nonce\u0018\u0005 \u0001(\t\"b\n\bResource\u0012\f\n\u0004name\u0018\u0003 \u0001(\t\u0012\u000f\n\u0007aliases\u0018\u0004 \u0003(\t\u0012\u000f\n\u0007version\u0018\u0001 \u0001(\t\u0012&\n\bresource\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.AnyBX\n\u001aio.envoyproxy.envoy.api.v2B\u000eDiscoveryProtoP\u0001ò\u0098þ\u008f\u0005\u001c\u0012\u001aenvoy.service.discovery.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.g.a(), com.google.protobuf.g.a(), com.google.rpc.d.a(), Migrate.g(), Status.c()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f46794a = bVar;
        f46795b = new GeneratedMessageV3.e(bVar, new String[]{"VersionInfo", "Node", "ResourceNames", "TypeUrl", "ResponseNonce", "ErrorDetail"});
        Descriptors.b bVar2 = a().m().get(1);
        f46796c = bVar2;
        f46797d = new GeneratedMessageV3.e(bVar2, new String[]{"VersionInfo", "Resources", "Canary", "TypeUrl", "Nonce", "ControlPlane"});
        Descriptors.b bVar3 = a().m().get(2);
        f46798e = bVar3;
        f46799f = new GeneratedMessageV3.e(bVar3, new String[]{"Node", "TypeUrl", "ResourceNamesSubscribe", "ResourceNamesUnsubscribe", "InitialResourceVersions", "ResponseNonce", "ErrorDetail"});
        Descriptors.b bVar4 = bVar3.o().get(0);
        f46800g = bVar4;
        f46801h = new GeneratedMessageV3.e(bVar4, new String[]{"Key", "Value"});
        Descriptors.b bVar5 = a().m().get(3);
        f46802i = bVar5;
        f46803j = new GeneratedMessageV3.e(bVar5, new String[]{"SystemVersionInfo", "Resources", "TypeUrl", "RemovedResources", "Nonce"});
        Descriptors.b bVar6 = a().m().get(4);
        f46804k = bVar6;
        f46805l = new GeneratedMessageV3.e(bVar6, new String[]{"Name", "Aliases", "Version", "Resource"});
        d0 k10 = d0.k();
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        Descriptors.FileDescriptor.u(f46806m, k10);
        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.g.a();
        com.google.protobuf.g.a();
        com.google.rpc.d.a();
        Migrate.g();
        Status.c();
    }

    public static Descriptors.FileDescriptor a() {
        return f46806m;
    }
}
