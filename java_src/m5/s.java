package m5;

import io.grpc.MethodDescriptor;
import java.util.UUID;
/* loaded from: classes2.dex */
class s implements io.grpc.h {

    /* renamed from: a  reason: collision with root package name */
    private final String f54900a = UUID.randomUUID().toString();

    @Override // io.grpc.h
    public <ReqT, RespT> io.grpc.g<ReqT, RespT> a(MethodDescriptor<ReqT, RespT> methodDescriptor, io.grpc.c cVar, io.grpc.d dVar) {
        r5.a aVar = (r5.a) cVar.h(p.f54882k);
        if (aVar != null) {
            aVar.g(this.f54900a);
        }
        return dVar.i(methodDescriptor, cVar);
    }
}
