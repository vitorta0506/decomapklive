package m5;

import com.google.longrunning.Operation;
/* loaded from: classes2.dex */
public interface g0 {
    <RequestT, ResponseT, MetadataT> com.google.api.gax.rpc.t<RequestT, ResponseT, MetadataT> a(q<RequestT, Operation> qVar, com.google.api.gax.rpc.s<RequestT, ResponseT, MetadataT> sVar, com.google.api.gax.rpc.j jVar, u6.b bVar);

    <RequestT, ResponseT> com.google.api.gax.rpc.h<RequestT, ResponseT> b(q<RequestT, ResponseT> qVar, com.google.api.gax.rpc.f0<RequestT, ResponseT> f0Var, com.google.api.gax.rpc.j jVar);

    <RequestT, ResponseT> com.google.api.gax.rpc.k0<RequestT, ResponseT> c(q<RequestT, ResponseT> qVar, com.google.api.gax.rpc.j0<RequestT, ResponseT> j0Var, com.google.api.gax.rpc.j jVar);

    <RequestT, ResponseT, PagedListResponseT> com.google.api.gax.rpc.k0<RequestT, PagedListResponseT> d(q<RequestT, ResponseT> qVar, com.google.api.gax.rpc.v<RequestT, ResponseT, PagedListResponseT> vVar, com.google.api.gax.rpc.j jVar);
}
