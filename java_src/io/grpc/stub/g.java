package io.grpc.stub;

import com.google.common.base.o;
import io.grpc.MethodDescriptor;
import io.grpc.g;
import io.grpc.s0;
import io.grpc.y;
/* loaded from: classes5.dex */
public final class g {

    /* loaded from: classes5.dex */
    private static final class a implements io.grpc.h {

        /* renamed from: a  reason: collision with root package name */
        private final s0 f45423a;

        /* renamed from: io.grpc.stub.g$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        private final class C0498a<ReqT, RespT> extends y.a<ReqT, RespT> {
            C0498a(io.grpc.g<ReqT, RespT> gVar) {
                super(gVar);
            }

            @Override // io.grpc.y, io.grpc.g
            public void e(g.a<RespT> aVar, s0 s0Var) {
                s0Var.q(a.this.f45423a);
                super.e(aVar, s0Var);
            }
        }

        a(s0 s0Var) {
            this.f45423a = (s0) o.t(s0Var, "extraHeaders");
        }

        @Override // io.grpc.h
        public <ReqT, RespT> io.grpc.g<ReqT, RespT> a(MethodDescriptor<ReqT, RespT> methodDescriptor, io.grpc.c cVar, io.grpc.d dVar) {
            return new C0498a(dVar.i(methodDescriptor, cVar));
        }
    }

    public static io.grpc.h a(s0 s0Var) {
        return new a(s0Var);
    }
}
