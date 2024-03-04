package hg;

import com.google.common.base.o;
import io.grpc.internal.k0;
import io.grpc.internal.r0;
import io.grpc.k;
import io.grpc.s0;
/* loaded from: classes5.dex */
final class l extends k.a {

    /* renamed from: b  reason: collision with root package name */
    private static final io.grpc.k f40766b = new a();

    /* renamed from: a  reason: collision with root package name */
    private final k.a f40767a;

    /* loaded from: classes5.dex */
    class a extends io.grpc.k {
        a() {
        }
    }

    /* loaded from: classes5.dex */
    class b extends k0 {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.grpc.k f40768a;

        b(io.grpc.k kVar) {
            this.f40768a = kVar;
        }

        @Override // io.grpc.internal.k0, io.grpc.k
        public void m(io.grpc.a aVar, s0 s0Var) {
            String str = (String) ((io.grpc.a) o.t((io.grpc.a) aVar.b(r0.f43016b), "eagAttrs")).b(e.f40687b);
            s0.i<String> iVar = e.f40686a;
            s0Var.i(iVar);
            if (str != null) {
                s0Var.t(iVar, str);
            }
            n().m(aVar, s0Var);
        }

        @Override // io.grpc.internal.k0
        protected io.grpc.k n() {
            return this.f40768a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(k.a aVar) {
        this.f40767a = aVar;
    }

    @Override // io.grpc.k.a
    public io.grpc.k a(k.b bVar, s0 s0Var) {
        k.a aVar = this.f40767a;
        if (aVar == null) {
            return f40766b;
        }
        return new b(aVar.a(bVar, s0Var));
    }

    public boolean equals(Object obj) {
        if (obj instanceof l) {
            return com.google.common.base.l.a(this.f40767a, ((l) obj).f40767a);
        }
        return false;
    }

    public int hashCode() {
        return com.google.common.base.l.b(this.f40767a);
    }
}
