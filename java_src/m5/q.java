package m5;

import io.grpc.MethodDescriptor;
/* loaded from: classes2.dex */
public class q<RequestT, ResponseT> {

    /* renamed from: a  reason: collision with root package name */
    private final MethodDescriptor<RequestT, ResponseT> f54893a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.api.gax.rpc.z<RequestT> f54894b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f54895c;

    /* loaded from: classes2.dex */
    public static class b<RequestT, ResponseT> {

        /* renamed from: a  reason: collision with root package name */
        private MethodDescriptor<RequestT, ResponseT> f54896a;

        /* renamed from: b  reason: collision with root package name */
        private com.google.api.gax.rpc.z<RequestT> f54897b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f54898c;

        private b() {
        }

        public q<RequestT, ResponseT> d() {
            return new q<>(this);
        }

        public b<RequestT, ResponseT> e(MethodDescriptor<RequestT, ResponseT> methodDescriptor) {
            this.f54896a = methodDescriptor;
            return this;
        }

        public b<RequestT, ResponseT> f(com.google.api.gax.rpc.z<RequestT> zVar) {
            this.f54897b = zVar;
            return this;
        }

        public b<RequestT, ResponseT> g(boolean z10) {
            this.f54898c = z10;
            return this;
        }
    }

    public static <RequestT, ResponseT> b<RequestT, ResponseT> c() {
        return new b().g(true);
    }

    public MethodDescriptor<RequestT, ResponseT> a() {
        return this.f54893a;
    }

    public com.google.api.gax.rpc.z<RequestT> b() {
        return this.f54894b;
    }

    public boolean d() {
        return this.f54895c;
    }

    private q(b<RequestT, ResponseT> bVar) {
        this.f54893a = ((b) bVar).f54896a;
        this.f54894b = ((b) bVar).f54897b;
        this.f54895c = ((b) bVar).f54898c;
    }
}
