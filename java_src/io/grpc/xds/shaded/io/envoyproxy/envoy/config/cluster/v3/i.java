package io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import com.google.protobuf.w;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f47761a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f47762b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f47763c = Descriptors.FileDescriptor.s(new String[]{"\n/envoy/config/cluster/v3/outlier_detection.proto\u0012\u0017envoy.config.cluster.v3\u001a\u001egoogle/protobuf/duration.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"\u008c\f\n\u0010OutlierDetection\u00125\n\u000fconsecutive_5xx\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u00125\n\binterval\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.DurationB\búB\u0005ª\u0001\u0002*\u0000\u0012?\n\u0012base_ejection_time\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.DurationB\búB\u0005ª\u0001\u0002*\u0000\u0012C\n\u0014max_ejection_percent\u0018\u0004 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002\u0018d\u0012H\n\u0019enforcing_consecutive_5xx\u0018\u0005 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002\u0018d\u0012E\n\u0016enforcing_success_rate\u0018\u0006 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002\u0018d\u0012@\n\u001asuccess_rate_minimum_hosts\u0018\u0007 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012A\n\u001bsuccess_rate_request_volume\u0018\b \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012?\n\u0019success_rate_stdev_factor\u0018\t \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012A\n\u001bconsecutive_gateway_failure\u0018\n \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012T\n%enforcing_consecutive_gateway_failure\u0018\u000b \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002\u0018d\u0012*\n\"split_external_local_origin_errors\u0018\f \u0001(\b\u0012F\n consecutive_local_origin_failure\u0018\r \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012Y\n*enforcing_consecutive_local_origin_failure\u0018\u000e \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002\u0018d\u0012R\n#enforcing_local_origin_success_rate\u0018\u000f \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002\u0018d\u0012K\n\u001cfailure_percentage_threshold\u0018\u0010 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002\u0018d\u0012K\n\u001cenforcing_failure_percentage\u0018\u0011 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002\u0018d\u0012X\n)enforcing_failure_percentage_local_origin\u0018\u0012 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002\u0018d\u0012F\n failure_percentage_minimum_hosts\u0018\u0013 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012G\n!failure_percentage_request_volume\u0018\u0014 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012>\n\u0011max_ejection_time\u0018\u0015 \u0001(\u000b2\u0019.google.protobuf.DurationB\búB\u0005ª\u0001\u0002*\u0000:,\u009aÅ\u0088\u001e'\n%envoy.api.v2.cluster.OutlierDetectionBH\n%io.envoyproxy.envoy.config.cluster.v3B\u0015OutlierDetectionProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{w.a(), p3.a(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f47761a = bVar;
        f47762b = new GeneratedMessageV3.e(bVar, new String[]{"Consecutive5Xx", "Interval", "BaseEjectionTime", "MaxEjectionPercent", "EnforcingConsecutive5Xx", "EnforcingSuccessRate", "SuccessRateMinimumHosts", "SuccessRateRequestVolume", "SuccessRateStdevFactor", "ConsecutiveGatewayFailure", "EnforcingConsecutiveGatewayFailure", "SplitExternalLocalOriginErrors", "ConsecutiveLocalOriginFailure", "EnforcingConsecutiveLocalOriginFailure", "EnforcingLocalOriginSuccessRate", "FailurePercentageThreshold", "EnforcingFailurePercentage", "EnforcingFailurePercentageLocalOrigin", "FailurePercentageMinimumHosts", "FailurePercentageRequestVolume", "MaxEjectionTime"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f47763c, k10);
        w.a();
        p3.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f47763c;
    }
}
