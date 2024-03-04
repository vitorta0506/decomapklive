package u5;

import com.google.api.gax.rpc.f0;
import com.google.api.gax.rpc.h;
import com.google.api.gax.rpc.j;
import com.google.api.gax.rpc.j0;
import com.google.api.gax.rpc.k0;
import com.google.api.gax.rpc.s;
import com.google.api.gax.rpc.t;
import com.google.api.gax.rpc.v;
import com.google.longrunning.Operation;
import m5.g0;
import m5.q;
import m5.r;
/* loaded from: classes2.dex */
public class a implements g0 {
    @Override // m5.g0
    public <RequestT, ResponseT, MetadataT> t<RequestT, ResponseT, MetadataT> a(q<RequestT, Operation> qVar, s<RequestT, ResponseT, MetadataT> sVar, j jVar, u6.b bVar) {
        return r.c(qVar, sVar, jVar, bVar);
    }

    @Override // m5.g0
    public <RequestT, ResponseT> h<RequestT, ResponseT> b(q<RequestT, ResponseT> qVar, f0<RequestT, ResponseT> f0Var, j jVar) {
        return r.b(qVar, f0Var, jVar);
    }

    @Override // m5.g0
    public <RequestT, ResponseT> k0<RequestT, ResponseT> c(q<RequestT, ResponseT> qVar, j0<RequestT, ResponseT> j0Var, j jVar) {
        return r.e(qVar, j0Var, jVar);
    }

    @Override // m5.g0
    public <RequestT, ResponseT, PagedListResponseT> k0<RequestT, PagedListResponseT> d(q<RequestT, ResponseT> qVar, v<RequestT, ResponseT, PagedListResponseT> vVar, j jVar) {
        return r.d(qVar, vVar, jVar);
    }
}
