package m5;

import com.google.api.gax.rpc.StatusCode;
import java.util.Set;
/* loaded from: classes2.dex */
class y<RequestT, ResponseT> extends com.google.api.gax.rpc.k0<RequestT, ResponseT> {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.api.gax.rpc.k0<RequestT, ResponseT> f54921a;

    /* renamed from: b  reason: collision with root package name */
    private final o f54922b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(com.google.api.gax.rpc.k0<RequestT, ResponseT> k0Var, Set<StatusCode.Code> set) {
        this.f54921a = (com.google.api.gax.rpc.k0) com.google.common.base.o.s(k0Var);
        this.f54922b = new o(set);
    }
}
