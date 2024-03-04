package u6;

import com.google.api.gax.rpc.j;
import com.google.api.gax.rpc.k0;
import com.google.api.gax.rpc.z;
import com.google.longrunning.CancelOperationRequest;
import com.google.longrunning.DeleteOperationRequest;
import com.google.longrunning.GetOperationRequest;
import com.google.longrunning.ListOperationsRequest;
import com.google.longrunning.ListOperationsResponse;
import com.google.longrunning.Operation;
import com.google.longrunning.WaitOperationRequest;
import com.google.protobuf.Empty;
import io.grpc.MethodDescriptor;
import java.io.IOException;
import m5.g0;
import m5.q;
/* loaded from: classes2.dex */
public class a extends u6.b {

    /* renamed from: i  reason: collision with root package name */
    private static final MethodDescriptor<GetOperationRequest, Operation> f58344i;

    /* renamed from: j  reason: collision with root package name */
    private static final MethodDescriptor<ListOperationsRequest, ListOperationsResponse> f58345j;

    /* renamed from: k  reason: collision with root package name */
    private static final MethodDescriptor<CancelOperationRequest, Empty> f58346k;

    /* renamed from: l  reason: collision with root package name */
    private static final MethodDescriptor<DeleteOperationRequest, Empty> f58347l;

    /* renamed from: m  reason: collision with root package name */
    private static final MethodDescriptor<WaitOperationRequest, Operation> f58348m;

    /* renamed from: a  reason: collision with root package name */
    private final l5.d f58349a;

    /* renamed from: b  reason: collision with root package name */
    private final k0<GetOperationRequest, Operation> f58350b;

    /* renamed from: c  reason: collision with root package name */
    private final k0<ListOperationsRequest, ListOperationsResponse> f58351c;

    /* renamed from: d  reason: collision with root package name */
    private final k0<ListOperationsRequest, Object> f58352d;

    /* renamed from: e  reason: collision with root package name */
    private final k0<CancelOperationRequest, Empty> f58353e;

    /* renamed from: f  reason: collision with root package name */
    private final k0<DeleteOperationRequest, Empty> f58354f;

    /* renamed from: g  reason: collision with root package name */
    private final k0<WaitOperationRequest, Operation> f58355g;

    /* renamed from: h  reason: collision with root package name */
    private final g0 f58356h;

    /* renamed from: u6.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0656a implements z<GetOperationRequest> {
        C0656a() {
        }
    }

    /* loaded from: classes2.dex */
    class b implements z<ListOperationsRequest> {
        b() {
        }
    }

    /* loaded from: classes2.dex */
    class c implements z<CancelOperationRequest> {
        c() {
        }
    }

    /* loaded from: classes2.dex */
    class d implements z<DeleteOperationRequest> {
        d() {
        }
    }

    /* loaded from: classes2.dex */
    class e implements z<WaitOperationRequest> {
        e() {
        }
    }

    static {
        MethodDescriptor.b h10 = MethodDescriptor.h();
        MethodDescriptor.MethodType methodType = MethodDescriptor.MethodType.UNARY;
        f58344i = h10.g(methodType).b("google.longrunning.Operations/GetOperation").c(zg.a.a(GetOperationRequest.getDefaultInstance())).d(zg.a.a(Operation.getDefaultInstance())).a();
        f58345j = MethodDescriptor.h().g(methodType).b("google.longrunning.Operations/ListOperations").c(zg.a.a(ListOperationsRequest.getDefaultInstance())).d(zg.a.a(ListOperationsResponse.getDefaultInstance())).a();
        f58346k = MethodDescriptor.h().g(methodType).b("google.longrunning.Operations/CancelOperation").c(zg.a.a(CancelOperationRequest.getDefaultInstance())).d(zg.a.a(Empty.getDefaultInstance())).a();
        f58347l = MethodDescriptor.h().g(methodType).b("google.longrunning.Operations/DeleteOperation").c(zg.a.a(DeleteOperationRequest.getDefaultInstance())).d(zg.a.a(Empty.getDefaultInstance())).a();
        f58348m = MethodDescriptor.h().g(methodType).b("google.longrunning.Operations/WaitOperation").c(zg.a.a(WaitOperationRequest.getDefaultInstance())).d(zg.a.a(Operation.getDefaultInstance())).a();
    }

    protected a(u6.c cVar, j jVar, g0 g0Var) throws IOException {
        this.f58356h = g0Var;
        q d10 = q.c().e(f58344i).f(new C0656a()).d();
        q d11 = q.c().e(f58345j).f(new b()).d();
        q d12 = q.c().e(f58346k).f(new c()).d();
        q d13 = q.c().e(f58347l).f(new d()).d();
        q d14 = q.c().e(f58348m).f(new e()).d();
        this.f58350b = g0Var.c(d10, cVar.r(), jVar);
        this.f58351c = g0Var.c(d11, cVar.s(), jVar);
        this.f58352d = g0Var.d(d11, cVar.s(), jVar);
        this.f58353e = g0Var.c(d12, cVar.p(), jVar);
        this.f58354f = g0Var.c(d13, cVar.q(), jVar);
        this.f58355g = g0Var.c(d14, cVar.u(), jVar);
        this.f58349a = new l5.e(jVar.b());
    }

    public static final a a(j jVar, g0 g0Var) throws IOException {
        return new a(u6.c.t().o(), jVar, g0Var);
    }

    @Override // u6.b, java.lang.AutoCloseable
    public final void close() {
        shutdown();
    }

    @Override // l5.d
    public boolean isShutdown() {
        return this.f58349a.isShutdown();
    }

    @Override // l5.d
    public void shutdown() {
        this.f58349a.shutdown();
    }
}
