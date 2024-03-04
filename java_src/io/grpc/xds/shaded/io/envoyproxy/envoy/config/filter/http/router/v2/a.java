package io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.http.router.v2;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.c;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f48593a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f48594b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f48595c = Descriptors.FileDescriptor.s(new String[]{"\n/envoy/config/filter/http/router/v2/router.proto\u0012\"envoy.config.filter.http.router.v2\u001a0envoy/config/filter/accesslog/v2/accesslog.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"\u0093\u0003\n\u0006Router\u00121\n\rdynamic_stats\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012\u0018\n\u0010start_child_span\u0018\u0002 \u0001(\b\u0012A\n\fupstream_log\u0018\u0003 \u0003(\u000b2+.envoy.config.filter.accesslog.v2.AccessLog\u0012\u001e\n\u0016suppress_envoy_headers\u0018\u0004 \u0001(\b\u0012³\u0001\n\u0014strict_check_headers\u0018\u0005 \u0003(\tB\u0094\u0001úB\u0090\u0001\u0092\u0001\u008c\u0001\"\u0089\u0001r\u0086\u0001R\u001ex-envoy-upstream-rq-timeout-msR&x-envoy-upstream-rq-per-try-timeout-msR\u0013x-envoy-max-retriesR\u0015x-envoy-retry-grpc-onR\u0010x-envoy-retry-on\u0012#\n\u001brespect_expected_rq_timeout\u0018\u0006 \u0001(\bBx\n0io.envoyproxy.envoy.config.filter.http.router.v2B\u000bRouterProtoP\u0001ò\u0098þ\u008f\u0005)\u0012'envoy.extensions.filters.http.router.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{c.a(), p3.a(), Migrate.g(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f48593a = bVar;
        f48594b = new GeneratedMessageV3.e(bVar, new String[]{"DynamicStats", "StartChildSpan", "UpstreamLog", "SuppressEnvoyHeaders", "StrictCheckHeaders", "RespectExpectedRqTimeout"});
        d0 k10 = d0.k();
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f48595c, k10);
        c.a();
        p3.a();
        Migrate.g();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f48595c;
    }
}
