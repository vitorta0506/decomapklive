package io.grpc.health.v1;

import io.grpc.MethodDescriptor;
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile MethodDescriptor<HealthCheckRequest, HealthCheckResponse> f42334a;

    /* renamed from: io.grpc.health.v1.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    private static abstract class AbstractC0465a {
        AbstractC0465a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class b extends AbstractC0465a {

        /* renamed from: a  reason: collision with root package name */
        private final String f42335a;

        b(String str) {
            this.f42335a = str;
        }
    }

    private a() {
    }

    public static MethodDescriptor<HealthCheckRequest, HealthCheckResponse> a() {
        MethodDescriptor<HealthCheckRequest, HealthCheckResponse> methodDescriptor = f42334a;
        if (methodDescriptor == null) {
            synchronized (a.class) {
                methodDescriptor = f42334a;
                if (methodDescriptor == null) {
                    methodDescriptor = MethodDescriptor.h().g(MethodDescriptor.MethodType.SERVER_STREAMING).b(MethodDescriptor.b("grpc.health.v1.Health", "Watch")).e(true).c(zg.a.a(HealthCheckRequest.getDefaultInstance())).d(zg.a.a(HealthCheckResponse.getDefaultInstance())).f(new b("Watch")).a();
                    f42334a = methodDescriptor;
                }
            }
        }
        return methodDescriptor;
    }
}
