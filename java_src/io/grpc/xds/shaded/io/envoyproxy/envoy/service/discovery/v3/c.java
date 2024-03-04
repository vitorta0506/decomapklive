package io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.w;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50118a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50119b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f50120c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f50121d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f50122e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f50123f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f50124g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f50125h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f50126i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f50127j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f50128k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f50129l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f50130m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f50131n;

    /* renamed from: o  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50132o = Descriptors.FileDescriptor.s(new String[]{"\n*envoy/service/discovery/v3/discovery.proto\u0012\u001aenvoy.service.discovery.v3\u001a\u001fenvoy/config/core/v3/base.proto\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u0017google/rpc/status.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\"ä\u0001\n\u0010DiscoveryRequest\u0012\u0014\n\fversion_info\u0018\u0001 \u0001(\t\u0012(\n\u0004node\u0018\u0002 \u0001(\u000b2\u001a.envoy.config.core.v3.Node\u0012\u0016\n\u000eresource_names\u0018\u0003 \u0003(\t\u0012\u0010\n\btype_url\u0018\u0004 \u0001(\t\u0012\u0016\n\u000eresponse_nonce\u0018\u0005 \u0001(\t\u0012(\n\ferror_detail\u0018\u0006 \u0001(\u000b2\u0012.google.rpc.Status:$\u009aÅ\u0088\u001e\u001f\n\u001denvoy.api.v2.DiscoveryRequest\"å\u0001\n\u0011DiscoveryResponse\u0012\u0014\n\fversion_info\u0018\u0001 \u0001(\t\u0012'\n\tresources\u0018\u0002 \u0003(\u000b2\u0014.google.protobuf.Any\u0012\u000e\n\u0006canary\u0018\u0003 \u0001(\b\u0012\u0010\n\btype_url\u0018\u0004 \u0001(\t\u0012\r\n\u0005nonce\u0018\u0005 \u0001(\t\u00129\n\rcontrol_plane\u0018\u0006 \u0001(\u000b2\".envoy.config.core.v3.ControlPlane:%\u009aÅ\u0088\u001e \n\u001eenvoy.api.v2.DiscoveryResponse\"¹\u0003\n\u0015DeltaDiscoveryRequest\u0012(\n\u0004node\u0018\u0001 \u0001(\u000b2\u001a.envoy.config.core.v3.Node\u0012\u0010\n\btype_url\u0018\u0002 \u0001(\t\u0012 \n\u0018resource_names_subscribe\u0018\u0003 \u0003(\t\u0012\"\n\u001aresource_names_unsubscribe\u0018\u0004 \u0003(\t\u0012q\n\u0019initial_resource_versions\u0018\u0005 \u0003(\u000b2N.envoy.service.discovery.v3.DeltaDiscoveryRequest.InitialResourceVersionsEntry\u0012\u0016\n\u000eresponse_nonce\u0018\u0006 \u0001(\t\u0012(\n\ferror_detail\u0018\u0007 \u0001(\u000b2\u0012.google.rpc.Status\u001a>\n\u001cInitialResourceVersionsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001:)\u009aÅ\u0088\u001e$\n\"envoy.api.v2.DeltaDiscoveryRequest\"\u0091\u0002\n\u0016DeltaDiscoveryResponse\u0012\u001b\n\u0013system_version_info\u0018\u0001 \u0001(\t\u00127\n\tresources\u0018\u0002 \u0003(\u000b2$.envoy.service.discovery.v3.Resource\u0012\u0010\n\btype_url\u0018\u0004 \u0001(\t\u0012\u0019\n\u0011removed_resources\u0018\u0006 \u0003(\t\u0012\r\n\u0005nonce\u0018\u0005 \u0001(\t\u00129\n\rcontrol_plane\u0018\u0007 \u0001(\u000b2\".envoy.config.core.v3.ControlPlane:*\u009aÅ\u0088\u001e%\n#envoy.api.v2.DeltaDiscoveryResponse\"\u0098\u0002\n\bResource\u0012\f\n\u0004name\u0018\u0003 \u0001(\t\u0012\u000f\n\u0007aliases\u0018\u0004 \u0003(\t\u0012\u000f\n\u0007version\u0018\u0001 \u0001(\t\u0012&\n\bresource\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.Any\u0012&\n\u0003ttl\u0018\u0006 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012H\n\rcache_control\u0018\u0007 \u0001(\u000b21.envoy.service.discovery.v3.Resource.CacheControl\u001a$\n\fCacheControl\u0012\u0014\n\fdo_not_cache\u0018\u0001 \u0001(\b:\u001c\u009aÅ\u0088\u001e\u0017\n\u0015envoy.api.v2.ResourceBD\n(io.envoyproxy.envoy.service.discovery.v3B\u000eDiscoveryProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{g.a(), com.google.protobuf.g.a(), w.a(), com.google.rpc.d.a(), Status.c(), Versioning.c()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f50118a = bVar;
        f50119b = new GeneratedMessageV3.e(bVar, new String[]{"VersionInfo", "Node", "ResourceNames", "TypeUrl", "ResponseNonce", "ErrorDetail"});
        Descriptors.b bVar2 = a().m().get(1);
        f50120c = bVar2;
        f50121d = new GeneratedMessageV3.e(bVar2, new String[]{"VersionInfo", "Resources", "Canary", "TypeUrl", "Nonce", "ControlPlane"});
        Descriptors.b bVar3 = a().m().get(2);
        f50122e = bVar3;
        f50123f = new GeneratedMessageV3.e(bVar3, new String[]{"Node", "TypeUrl", "ResourceNamesSubscribe", "ResourceNamesUnsubscribe", "InitialResourceVersions", "ResponseNonce", "ErrorDetail"});
        Descriptors.b bVar4 = bVar3.o().get(0);
        f50124g = bVar4;
        f50125h = new GeneratedMessageV3.e(bVar4, new String[]{"Key", "Value"});
        Descriptors.b bVar5 = a().m().get(3);
        f50126i = bVar5;
        f50127j = new GeneratedMessageV3.e(bVar5, new String[]{"SystemVersionInfo", "Resources", "TypeUrl", "RemovedResources", "Nonce", "ControlPlane"});
        Descriptors.b bVar6 = a().m().get(4);
        f50128k = bVar6;
        f50129l = new GeneratedMessageV3.e(bVar6, new String[]{"Name", "Aliases", "Version", "Resource", "Ttl", "CacheControl"});
        Descriptors.b bVar7 = bVar6.o().get(0);
        f50130m = bVar7;
        f50131n = new GeneratedMessageV3.e(bVar7, new String[]{"DoNotCache"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        Descriptors.FileDescriptor.u(f50132o, k10);
        g.a();
        com.google.protobuf.g.a();
        w.a();
        com.google.rpc.d.a();
        Status.c();
        Versioning.c();
    }

    public static Descriptors.FileDescriptor a() {
        return f50132o;
    }
}
