package io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f47725a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f47726b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f47727c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f47728d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f47729e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f47730f;

    /* renamed from: g  reason: collision with root package name */
    private static Descriptors.FileDescriptor f47731g = Descriptors.FileDescriptor.s(new String[]{"\n-envoy/config/cluster/v3/circuit_breaker.proto\u0012\u0017envoy.config.cluster.v3\u001a\u001fenvoy/config/core/v3/base.proto\u001a\u001benvoy/type/v3/percent.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"Ø\u0006\n\u000fCircuitBreakers\u0012G\n\nthresholds\u0018\u0001 \u0003(\u000b23.envoy.config.cluster.v3.CircuitBreakers.Thresholds\u001aÎ\u0005\n\nThresholds\u0012A\n\bpriority\u0018\u0001 \u0001(\u000e2%.envoy.config.core.v3.RoutingPriorityB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u00125\n\u000fmax_connections\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012:\n\u0014max_pending_requests\u0018\u0003 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u00122\n\fmax_requests\u0018\u0004 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u00121\n\u000bmax_retries\u0018\u0005 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012U\n\fretry_budget\u0018\b \u0001(\u000b2?.envoy.config.cluster.v3.CircuitBreakers.Thresholds.RetryBudget\u0012\u0017\n\u000ftrack_remaining\u0018\u0006 \u0001(\b\u0012:\n\u0014max_connection_pools\u0018\u0007 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u001a¾\u0001\n\u000bRetryBudget\u0012.\n\u000ebudget_percent\u0018\u0001 \u0001(\u000b2\u0016.envoy.type.v3.Percent\u0012;\n\u0015min_retry_concurrency\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32Value:B\u009aÅ\u0088\u001e=\n;envoy.api.v2.cluster.CircuitBreakers.Thresholds.RetryBudget:6\u009aÅ\u0088\u001e1\n/envoy.api.v2.cluster.CircuitBreakers.Thresholds:+\u009aÅ\u0088\u001e&\n$envoy.api.v2.cluster.CircuitBreakersBF\n%io.envoyproxy.envoy.config.cluster.v3B\u0013CircuitBreakerProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.g.a(), p3.a(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f47725a = bVar;
        f47726b = new GeneratedMessageV3.e(bVar, new String[]{"Thresholds"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f47727c = bVar2;
        f47728d = new GeneratedMessageV3.e(bVar2, new String[]{"Priority", "MaxConnections", "MaxPendingRequests", "MaxRequests", "MaxRetries", "RetryBudget", "TrackRemaining", "MaxConnectionPools"});
        Descriptors.b bVar3 = bVar2.o().get(0);
        f47729e = bVar3;
        f47730f = new GeneratedMessageV3.e(bVar3, new String[]{"BudgetPercent", "MinRetryConcurrency"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f47731g, k10);
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.g.a();
        p3.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f47731g;
    }
}
