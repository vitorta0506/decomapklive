package eh;

import io.grpc.Status;
import io.grpc.n0;
import io.grpc.t0;
import java.util.Map;
/* loaded from: classes5.dex */
public class m0 extends io.grpc.o0 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final String f38889a;

        a(String str) {
            com.google.common.base.o.e((str == null || str.isEmpty()) ? false : true, "name is null or empty");
            this.f38889a = str;
        }

        public String toString() {
            return com.google.common.base.j.c(this).d("name", this.f38889a).toString();
        }
    }

    static t0.c f(Map<String, ?> map) {
        try {
            return t0.c.a(new a(io.grpc.internal.b1.l(map, "cluster")));
        } catch (RuntimeException e10) {
            Status l10 = Status.l(e10);
            return t0.c.b(l10.r("Failed to parse CDS LB config: " + map));
        }
    }

    @Override // io.grpc.n0.c
    public io.grpc.n0 a(n0.d dVar) {
        return new l0(dVar);
    }

    @Override // io.grpc.o0
    public String b() {
        return "cds_experimental";
    }

    @Override // io.grpc.o0
    public int c() {
        return 5;
    }

    @Override // io.grpc.o0
    public boolean d() {
        return true;
    }

    @Override // io.grpc.o0
    public t0.c e(Map<String, ?> map) {
        return f(map);
    }
}
