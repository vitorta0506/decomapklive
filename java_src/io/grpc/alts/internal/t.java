package io.grpc.alts.internal;

import io.grpc.MethodDescriptor;
import io.grpc.stub.b;
/* loaded from: classes5.dex */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    private static volatile MethodDescriptor<HandshakerReq, HandshakerResp> f41971a;

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
        private final String f41972a;

        c(String str) {
            this.f41972a = str;
        }
    }

    /* loaded from: classes5.dex */
    public static final class d extends io.grpc.stub.a<d> {
        /* synthetic */ d(io.grpc.d dVar, io.grpc.c cVar, a aVar) {
            this(dVar, cVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.grpc.stub.b
        /* renamed from: h */
        public d a(io.grpc.d dVar, io.grpc.c cVar) {
            return new d(dVar, cVar);
        }

        public io.grpc.stub.h<HandshakerReq> i(io.grpc.stub.h<HandshakerResp> hVar) {
            return io.grpc.stub.e.a(c().i(t.a(), b()), hVar);
        }

        private d(io.grpc.d dVar, io.grpc.c cVar) {
            super(dVar, cVar);
        }
    }

    private t() {
    }

    public static MethodDescriptor<HandshakerReq, HandshakerResp> a() {
        MethodDescriptor<HandshakerReq, HandshakerResp> methodDescriptor = f41971a;
        if (methodDescriptor == null) {
            synchronized (t.class) {
                methodDescriptor = f41971a;
                if (methodDescriptor == null) {
                    methodDescriptor = MethodDescriptor.h().g(MethodDescriptor.MethodType.BIDI_STREAMING).b(MethodDescriptor.b("grpc.gcp.HandshakerService", "DoHandshake")).e(true).c(zg.a.a(HandshakerReq.getDefaultInstance())).d(zg.a.a(HandshakerResp.getDefaultInstance())).f(new c("DoHandshake")).a();
                    f41971a = methodDescriptor;
                }
            }
        }
        return methodDescriptor;
    }

    public static d b(io.grpc.d dVar) {
        return (d) io.grpc.stub.a.f(new a(), dVar);
    }
}
