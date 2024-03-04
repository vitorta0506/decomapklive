package m5;

import io.grpc.MethodDescriptor;
/* loaded from: classes2.dex */
class u<RequestT, ResponseT> extends com.google.api.gax.rpc.h<RequestT, ResponseT> {

    /* renamed from: a  reason: collision with root package name */
    private final MethodDescriptor<RequestT, ResponseT> f54902a;

    /* loaded from: classes2.dex */
    class a implements com.google.api.gax.rpc.l<RequestT> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.grpc.g f54903a;

        a(io.grpc.g gVar) {
            this.f54903a = gVar;
        }

        @Override // com.google.api.gax.rpc.l
        public void a(Throwable th2) {
            this.f54903a.a(null, th2);
        }

        @Override // com.google.api.gax.rpc.l
        public void b() {
            this.f54903a.b();
        }

        @Override // com.google.api.gax.rpc.l
        public void c(RequestT requestt) {
            this.f54903a.d(requestt);
        }
    }

    /* loaded from: classes2.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.google.api.gax.rpc.m f54905a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.google.api.gax.rpc.l f54906b;

        b(com.google.api.gax.rpc.m mVar, com.google.api.gax.rpc.l lVar) {
            this.f54905a = mVar;
            this.f54906b = lVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f54905a.a(this.f54906b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(MethodDescriptor<RequestT, ResponseT> methodDescriptor) {
        this.f54902a = (MethodDescriptor) com.google.common.base.o.s(methodDescriptor);
    }

    @Override // com.google.api.gax.rpc.h
    public com.google.api.gax.rpc.l<RequestT> c(com.google.api.gax.rpc.b0<ResponseT> b0Var, com.google.api.gax.rpc.m<RequestT> mVar, com.google.api.gax.rpc.a aVar) {
        com.google.common.base.o.s(b0Var);
        io.grpc.g a10 = t.a(this.f54902a, aVar);
        a aVar2 = new a(a10);
        new w(a10, b0Var, new b(mVar, aVar2)).f();
        return aVar2;
    }
}
