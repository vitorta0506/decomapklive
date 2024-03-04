package io.grpc.lb.v1;

import io.grpc.MethodDescriptor;
import io.grpc.stub.b;
/* loaded from: classes5.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static volatile MethodDescriptor<LoadBalanceRequest, LoadBalanceResponse> f43385a;

    /* loaded from: classes5.dex */
    class a implements b.a<d> {
        a() {
        }

        @Override // io.grpc.stub.b.a
        /* renamed from: b */
        public d a(io.grpc.d dVar, io.grpc.c cVar) {
            return new d(dVar, cVar, null);
        }
    }

    /* loaded from: classes5.dex */
    private static abstract class b {
        b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class c extends b {

        /* renamed from: a  reason: collision with root package name */
        private final String f43386a;

        c(String str) {
            this.f43386a = str;
        }
    }

    /* loaded from: classes5.dex */
    public static final class d extends io.grpc.stub.a<d> {
        /* synthetic */ d(io.grpc.d dVar, io.grpc.c cVar, a aVar) {
            this(dVar, cVar);
        }

        public io.grpc.stub.h<LoadBalanceRequest> h(io.grpc.stub.h<LoadBalanceResponse> hVar) {
            return io.grpc.stub.e.a(c().i(f.a(), b()), hVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.grpc.stub.b
        /* renamed from: i */
        public d a(io.grpc.d dVar, io.grpc.c cVar) {
            return new d(dVar, cVar);
        }

        private d(io.grpc.d dVar, io.grpc.c cVar) {
            super(dVar, cVar);
        }
    }

    private f() {
    }

    public static MethodDescriptor<LoadBalanceRequest, LoadBalanceResponse> a() {
        MethodDescriptor<LoadBalanceRequest, LoadBalanceResponse> methodDescriptor = f43385a;
        if (methodDescriptor == null) {
            synchronized (f.class) {
                methodDescriptor = f43385a;
                if (methodDescriptor == null) {
                    methodDescriptor = MethodDescriptor.h().g(MethodDescriptor.MethodType.BIDI_STREAMING).b(MethodDescriptor.b("grpc.lb.v1.LoadBalancer", "BalanceLoad")).e(true).c(zg.a.a(LoadBalanceRequest.getDefaultInstance())).d(zg.a.a(LoadBalanceResponse.getDefaultInstance())).f(new c("BalanceLoad")).a();
                    f43385a = methodDescriptor;
                }
            }
        }
        return methodDescriptor;
    }

    public static d b(io.grpc.d dVar) {
        return (d) io.grpc.stub.a.f(new a(), dVar);
    }
}
