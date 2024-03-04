package m5;

import io.grpc.MethodDescriptor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;
import r5.a;
/* loaded from: classes2.dex */
class t {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f54901a = Logger.getLogger(v.class.getName());

    public static <RequestT, ResponseT> io.grpc.g<RequestT, ResponseT> a(MethodDescriptor<RequestT, ResponseT> methodDescriptor, com.google.api.gax.rpc.a aVar) {
        if (aVar instanceof p) {
            p pVar = (p) aVar;
            com.google.api.client.util.z.d(pVar.h());
            io.grpc.c g10 = pVar.g();
            com.google.api.client.util.z.d(g10);
            if (pVar.l() != null) {
                io.grpc.t a10 = io.grpc.t.a(pVar.l().toMillis(), TimeUnit.MILLISECONDS);
                io.grpc.t d10 = g10.d();
                if (d10 == null || a10.f(d10)) {
                    g10 = g10.l(a10);
                }
            }
            io.grpc.d h10 = pVar.h();
            if (pVar.i() != null && (h10 instanceof j)) {
                h10 = ((j) h10).u(pVar.i().intValue());
            }
            if (!pVar.j().isEmpty()) {
                h10 = io.grpc.j.b(h10, io.grpc.stub.g.a(pVar.k()));
            }
            a.InterfaceC0629a f10 = pVar.e().f();
            try {
                io.grpc.g<RequestT, ResponseT> i9 = h10.i(methodDescriptor, g10);
                if (f10 != null) {
                    f10.close();
                }
                return i9;
            } finally {
            }
        } else {
            throw new IllegalArgumentException("context must be an instance of GrpcCallContext, but found " + aVar.getClass().getName());
        }
    }
}
