package m5;

import com.google.common.collect.ImmutableMap;
import io.grpc.MethodDescriptor;
import io.grpc.g;
import io.grpc.s0;
import io.grpc.y;
import java.util.Map;
/* loaded from: classes2.dex */
public class z implements io.grpc.h {

    /* renamed from: a  reason: collision with root package name */
    private final Map<s0.i<String>, String> f54923a;

    /* renamed from: b  reason: collision with root package name */
    private final String f54924b;

    /* JADX INFO: Add missing generic type declarations: [ReqT, RespT] */
    /* loaded from: classes2.dex */
    class a<ReqT, RespT> extends y.a<ReqT, RespT> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ io.grpc.c f54925b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(io.grpc.g gVar, io.grpc.c cVar) {
            super(gVar);
            this.f54925b = cVar;
        }

        @Override // io.grpc.y, io.grpc.g
        public void e(g.a<RespT> aVar, s0 s0Var) {
            for (Map.Entry entry : z.this.f54923a.entrySet()) {
                s0Var.t((s0.i) entry.getKey(), entry.getValue());
            }
            for (Map.Entry<s0.i<String>, String> entry2 : d.a(this.f54925b).entrySet()) {
                s0Var.t(entry2.getKey(), entry2.getValue());
            }
            super.e(aVar, s0Var);
        }
    }

    public z(Map<String, String> map) {
        ImmutableMap.b builder = ImmutableMap.builder();
        String str = null;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            s0.i e10 = s0.i.e(entry.getKey(), s0.f45383e);
            if ("user-agent".equals(e10.d())) {
                str = entry.getValue();
            } else {
                builder.h(e10, entry.getValue());
            }
        }
        this.f54923a = builder.a();
        this.f54924b = str;
    }

    @Override // io.grpc.h
    public <ReqT, RespT> io.grpc.g<ReqT, RespT> a(MethodDescriptor<ReqT, RespT> methodDescriptor, io.grpc.c cVar, io.grpc.d dVar) {
        return new a(dVar.i(methodDescriptor, cVar), cVar);
    }

    public String c() {
        return this.f54924b;
    }
}
