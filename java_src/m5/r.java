package m5;

import com.google.common.collect.ImmutableSet;
import com.google.longrunning.Operation;
import io.grpc.MethodDescriptor;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class r {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f54899a = Pattern.compile("^.*?([^./]+)/([^./]+)$");

    public static <RequestT, ResponseT> com.google.api.gax.rpc.k0<RequestT, ResponseT> a(q<RequestT, ResponseT> qVar, com.google.api.gax.rpc.j0<?, ?> j0Var, com.google.api.gax.rpc.j jVar) {
        return com.google.api.gax.rpc.i.e(e0.b(qVar, j0Var.c()), j0Var, jVar);
    }

    public static <RequestT, ResponseT> com.google.api.gax.rpc.h<RequestT, ResponseT> b(q<RequestT, ResponseT> qVar, com.google.api.gax.rpc.f0<RequestT, ResponseT> f0Var, com.google.api.gax.rpc.j jVar) {
        return new com.google.api.gax.tracing.b(e0.a(qVar, ImmutableSet.of()), jVar.o(), f(qVar.a())).e(jVar.e());
    }

    public static <RequestT, ResponseT, MetadataT> com.google.api.gax.rpc.t<RequestT, ResponseT, MetadataT> c(q<RequestT, Operation> qVar, com.google.api.gax.rpc.s<RequestT, ResponseT, MetadataT> sVar, com.google.api.gax.rpc.j jVar, u6.b bVar) {
        r5.d f10 = f(qVar.a());
        String a10 = f10.a();
        return new com.google.api.gax.tracing.c(com.google.api.gax.rpc.i.b(new r5.e(new d0(a(qVar, sVar.a(), jVar)), jVar.o(), f10), sVar, jVar, new b0(bVar)), jVar.o(), r5.d.c(a10, f10.b() + "Operation")).a(jVar.e());
    }

    public static <RequestT, ResponseT, PagedListResponseT> com.google.api.gax.rpc.k0<RequestT, PagedListResponseT> d(q<RequestT, ResponseT> qVar, com.google.api.gax.rpc.v<RequestT, ResponseT, PagedListResponseT> vVar, com.google.api.gax.rpc.j jVar) {
        return com.google.api.gax.rpc.i.d(a(qVar, vVar, jVar), vVar).a(jVar.e());
    }

    public static <RequestT, ResponseT> com.google.api.gax.rpc.k0<RequestT, ResponseT> e(q<RequestT, ResponseT> qVar, com.google.api.gax.rpc.j0<RequestT, ResponseT> j0Var, com.google.api.gax.rpc.j jVar) {
        return new com.google.api.gax.tracing.e(a(qVar, j0Var, jVar), jVar.o(), f(qVar.a())).a(jVar.e());
    }

    static r5.d f(MethodDescriptor<?, ?> methodDescriptor) {
        Matcher matcher = f54899a.matcher(methodDescriptor.c());
        com.google.common.base.o.e(matcher.matches(), "Invalid fullMethodName");
        return r5.d.c(matcher.group(1), matcher.group(2));
    }
}
