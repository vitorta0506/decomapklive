package m5;

import com.google.api.gax.rpc.StatusCode;
import java.util.Set;
/* loaded from: classes2.dex */
final class x<RequestT, ResponseT> extends com.google.api.gax.rpc.h<RequestT, ResponseT> {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.api.gax.rpc.h<RequestT, ResponseT> f54919a;

    /* renamed from: b  reason: collision with root package name */
    private final o f54920b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(com.google.api.gax.rpc.h<RequestT, ResponseT> hVar, Set<StatusCode.Code> set) {
        this.f54919a = hVar;
        this.f54920b = new o(set);
    }

    @Override // com.google.api.gax.rpc.h
    public com.google.api.gax.rpc.l<RequestT> c(com.google.api.gax.rpc.b0<ResponseT> b0Var, com.google.api.gax.rpc.m<RequestT> mVar, com.google.api.gax.rpc.a aVar) {
        return this.f54919a.c(new m(b0Var, this.f54920b), mVar, aVar);
    }
}
