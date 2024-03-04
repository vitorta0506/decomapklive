package io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.rbac.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.d;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f49735a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f49736b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f49737c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f49738d;

    /* renamed from: e  reason: collision with root package name */
    private static Descriptors.FileDescriptor f49739e = Descriptors.FileDescriptor.s(new String[]{"\n0envoy/extensions/filters/http/rbac/v3/rbac.proto\u0012%envoy.extensions.filters.http.rbac.v3\u001a\u001fenvoy/config/rbac/v3/rbac.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\"³\u0001\n\u0004RBAC\u0012)\n\u0005rules\u0018\u0001 \u0001(\u000b2\u001a.envoy.config.rbac.v3.RBAC\u00120\n\fshadow_rules\u0018\u0002 \u0001(\u000b2\u001a.envoy.config.rbac.v3.RBAC\u0012 \n\u0018shadow_rules_stat_prefix\u0018\u0003 \u0001(\t:,\u009aÅ\u0088\u001e'\n%envoy.config.filter.http.rbac.v2.RBAC\"\u0085\u0001\n\fRBACPerRoute\u00129\n\u0004rbac\u0018\u0002 \u0001(\u000b2+.envoy.extensions.filters.http.rbac.v3.RBAC:4\u009aÅ\u0088\u001e/\n-envoy.config.filter.http.rbac.v2.RBACPerRouteJ\u0004\b\u0001\u0010\u0002BJ\n3io.envoyproxy.envoy.extensions.filters.http.rbac.v3B\tRbacProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{d.a(), Status.c(), Versioning.c()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f49735a = bVar;
        f49736b = new GeneratedMessageV3.e(bVar, new String[]{"Rules", "ShadowRules", "ShadowRulesStatPrefix"});
        Descriptors.b bVar2 = a().m().get(1);
        f49737c = bVar2;
        f49738d = new GeneratedMessageV3.e(bVar2, new String[]{"Rbac"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        Descriptors.FileDescriptor.u(f49739e, k10);
        d.a();
        Status.c();
        Versioning.c();
    }

    public static Descriptors.FileDescriptor a() {
        return f49739e;
    }
}
