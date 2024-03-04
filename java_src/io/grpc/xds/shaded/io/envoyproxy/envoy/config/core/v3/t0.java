package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class t0 {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f48285a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f48286b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f48287c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f48288d;

    /* renamed from: e  reason: collision with root package name */
    private static Descriptors.FileDescriptor f48289e = Descriptors.FileDescriptor.s(new String[]{"\n#envoy/config/core/v3/resolver.proto\u0012\u0014envoy.config.core.v3\u001a\"envoy/config/core/v3/address.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"W\n\u0012DnsResolverOptions\u0012\u001f\n\u0017use_tcp_for_dns_lookups\u0018\u0001 \u0001(\b\u0012 \n\u0018no_default_search_domain\u0018\u0002 \u0001(\b\"\u0099\u0001\n\u0013DnsResolutionConfig\u0012:\n\tresolvers\u0018\u0001 \u0003(\u000b2\u001d.envoy.config.core.v3.AddressB\búB\u0005\u0092\u0001\u0002\b\u0001\u0012F\n\u0014dns_resolver_options\u0018\u0002 \u0001(\u000b2(.envoy.config.core.v3.DnsResolverOptionsB=\n\"io.envoyproxy.envoy.config.core.v3B\rResolverProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{b.a(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f48285a = bVar;
        f48286b = new GeneratedMessageV3.e(bVar, new String[]{"UseTcpForDnsLookups", "NoDefaultSearchDomain"});
        Descriptors.b bVar2 = a().m().get(1);
        f48287c = bVar2;
        f48288d = new GeneratedMessageV3.e(bVar2, new String[]{"Resolvers", "DnsResolverOptions"});
        com.google.protobuf.d0 k10 = com.google.protobuf.d0.k();
        k10.f(Status.f50839a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f48289e, k10);
        b.a();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f48289e;
    }
}
