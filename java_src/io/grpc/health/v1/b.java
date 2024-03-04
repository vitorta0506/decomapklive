package io.grpc.health.v1;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
/* loaded from: classes5.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f42336a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f42337b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f42338c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f42339d;

    /* renamed from: e  reason: collision with root package name */
    private static Descriptors.FileDescriptor f42340e = Descriptors.FileDescriptor.s(new String[]{"\n\u001bgrpc/health/v1/health.proto\u0012\u000egrpc.health.v1\"%\n\u0012HealthCheckRequest\u0012\u000f\n\u0007service\u0018\u0001 \u0001(\t\"©\u0001\n\u0013HealthCheckResponse\u0012A\n\u0006status\u0018\u0001 \u0001(\u000e21.grpc.health.v1.HealthCheckResponse.ServingStatus\"O\n\rServingStatus\u0012\u000b\n\u0007UNKNOWN\u0010\u0000\u0012\u000b\n\u0007SERVING\u0010\u0001\u0012\u000f\n\u000bNOT_SERVING\u0010\u0002\u0012\u0013\n\u000fSERVICE_UNKNOWN\u0010\u00032®\u0001\n\u0006Health\u0012P\n\u0005Check\u0012\".grpc.health.v1.HealthCheckRequest\u001a#.grpc.health.v1.HealthCheckResponse\u0012R\n\u0005Watch\u0012\".grpc.health.v1.HealthCheckRequest\u001a#.grpc.health.v1.HealthCheckResponse0\u0001Ba\n\u0011io.grpc.health.v1B\u000bHealthProtoP\u0001Z,google.golang.org/grpc/health/grpc_health_v1ª\u0002\u000eGrpc.Health.V1b\u0006proto3"}, new Descriptors.FileDescriptor[0]);

    static {
        Descriptors.b bVar = a().m().get(0);
        f42336a = bVar;
        f42337b = new GeneratedMessageV3.e(bVar, new String[]{"Service"});
        Descriptors.b bVar2 = a().m().get(1);
        f42338c = bVar2;
        f42339d = new GeneratedMessageV3.e(bVar2, new String[]{"Status"});
    }

    public static Descriptors.FileDescriptor a() {
        return f42340e;
    }
}
