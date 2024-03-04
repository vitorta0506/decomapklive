package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.g;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f46337a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f46338b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f46339c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f46340d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f46341e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f46342f;

    /* renamed from: g  reason: collision with root package name */
    private static Descriptors.FileDescriptor f46343g = Descriptors.FileDescriptor.s(new String[]{"\n*envoy/api/v2/cluster/circuit_breaker.proto\u0012\u0014envoy.api.v2.cluster\u001a\u001cenvoy/api/v2/core/base.proto\u001a\u0018envoy/type/percent.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"¢\u0005\n\u000fCircuitBreakers\u0012D\n\nthresholds\u0018\u0001 \u0003(\u000b20.envoy.api.v2.cluster.CircuitBreakers.Thresholds\u001aÈ\u0004\n\nThresholds\u0012>\n\bpriority\u0018\u0001 \u0001(\u000e2\".envoy.api.v2.core.RoutingPriorityB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u00125\n\u000fmax_connections\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012:\n\u0014max_pending_requests\u0018\u0003 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u00122\n\fmax_requests\u0018\u0004 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u00121\n\u000bmax_retries\u0018\u0005 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012R\n\fretry_budget\u0018\b \u0001(\u000b2<.envoy.api.v2.cluster.CircuitBreakers.Thresholds.RetryBudget\u0012\u0017\n\u000ftrack_remaining\u0018\u0006 \u0001(\b\u0012:\n\u0014max_connection_pools\u0018\u0007 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u001aw\n\u000bRetryBudget\u0012+\n\u000ebudget_percent\u0018\u0001 \u0001(\u000b2\u0013.envoy.type.Percent\u0012;\n\u0015min_retry_concurrency\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0094\u0001\n\"io.envoyproxy.envoy.api.v2.clusterB\u0013CircuitBreakerProtoP\u0001ª\u0002\u0016Envoy.Api.V2.ClusterNSê\u0002\u0016Envoy.Api.V2.ClusterNSò\u0098þ\u008f\u0005\u0019\u0012\u0017envoy.config.cluster.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{g.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.g.a(), p3.a(), Migrate.g(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f46337a = bVar;
        f46338b = new GeneratedMessageV3.e(bVar, new String[]{"Thresholds"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f46339c = bVar2;
        f46340d = new GeneratedMessageV3.e(bVar2, new String[]{"Priority", "MaxConnections", "MaxPendingRequests", "MaxRequests", "MaxRetries", "RetryBudget", "TrackRemaining", "MaxConnectionPools"});
        Descriptors.b bVar3 = bVar2.o().get(0);
        f46341e = bVar3;
        f46342f = new GeneratedMessageV3.e(bVar3, new String[]{"BudgetPercent", "MinRetryConcurrency"});
        d0 k10 = d0.k();
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f46343g, k10);
        g.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.g.a();
        p3.a();
        Migrate.g();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f46343g;
    }
}
