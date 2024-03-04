package io.grpc.stub;

import io.grpc.stub.a;
import io.grpc.stub.b;
import io.grpc.stub.e;
/* loaded from: classes5.dex */
public abstract class a<S extends a<S>> extends b<S> {
    /* JADX INFO: Access modifiers changed from: protected */
    public a(io.grpc.d dVar, io.grpc.c cVar) {
        super(dVar, cVar);
    }

    public static <T extends b<T>> T f(b.a<T> aVar, io.grpc.d dVar) {
        return (T) g(aVar, dVar, io.grpc.c.f42037k);
    }

    public static <T extends b<T>> T g(b.a<T> aVar, io.grpc.d dVar, io.grpc.c cVar) {
        return aVar.a(dVar, cVar.q(e.f45407b, e.EnumC0497e.ASYNC));
    }
}
