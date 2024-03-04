package m5;

import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.g;
import io.grpc.s0;
import io.grpc.y;
import io.grpc.z;
/* loaded from: classes2.dex */
class c0 implements io.grpc.h {

    /* JADX INFO: Add missing generic type declarations: [ReqT, RespT] */
    /* loaded from: classes2.dex */
    class a<ReqT, RespT> extends y.a<ReqT, RespT> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ p0 f54797b;

        /* renamed from: m5.c0$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0567a extends z.a<RespT> {
            C0567a(g.a aVar) {
                super(aVar);
            }

            @Override // io.grpc.z.a, io.grpc.z, io.grpc.x0, io.grpc.g.a
            public void a(Status status, s0 s0Var) {
                a.this.f54797b.b(s0Var);
                super.a(status, s0Var);
            }

            @Override // io.grpc.z.a, io.grpc.z, io.grpc.x0, io.grpc.g.a
            public void b(s0 s0Var) {
                super.b(s0Var);
                a.this.f54797b.a(s0Var);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(io.grpc.g gVar, p0 p0Var) {
            super(gVar);
            this.f54797b = p0Var;
        }

        @Override // io.grpc.y, io.grpc.g
        public void e(g.a<RespT> aVar, s0 s0Var) {
            super.e(new C0567a(aVar), s0Var);
        }
    }

    @Override // io.grpc.h
    public <ReqT, RespT> io.grpc.g<ReqT, RespT> a(MethodDescriptor<ReqT, RespT> methodDescriptor, io.grpc.c cVar, io.grpc.d dVar) {
        io.grpc.g<ReqT, RespT> i9 = dVar.i(methodDescriptor, cVar);
        p0 b10 = d.b(cVar);
        return b10 == null ? i9 : new a(i9, b10);
    }
}
