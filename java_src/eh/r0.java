package eh;

import io.grpc.Status;
import io.grpc.internal.e2;
import io.grpc.n0;
import io.grpc.t0;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes5.dex */
public class r0 extends io.grpc.o0 {

    /* renamed from: b  reason: collision with root package name */
    private final io.grpc.p0 f39135b;

    /* loaded from: classes5.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        final Map<String, e2.b> f39136a;

        a(Map<String, e2.b> map) {
            this.f39136a = Collections.unmodifiableMap(map);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                return Objects.equals(this.f39136a, ((a) obj).f39136a);
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(this.f39136a);
        }

        public String toString() {
            return com.google.common.base.j.c(this).d("childPolicies", this.f39136a).toString();
        }
    }

    public r0() {
        this(null);
    }

    @Override // io.grpc.n0.c
    public io.grpc.n0 a(n0.d dVar) {
        return new q0(dVar);
    }

    @Override // io.grpc.o0
    public String b() {
        return "cluster_manager_experimental";
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
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        try {
            Map<String, ?> k10 = io.grpc.internal.b1.k(map, "childPolicy");
            if (k10 != null && !k10.isEmpty()) {
                for (String str : k10.keySet()) {
                    Map<String, ?> k11 = io.grpc.internal.b1.k(k10, str);
                    if (k11 == null) {
                        Status status = Status.f41718t;
                        return t0.c.b(status.r("No config for child " + str + " in cluster_manager LB policy: " + map));
                    }
                    List<e2.a> B = io.grpc.internal.e2.B(io.grpc.internal.b1.f(k11, "lbPolicy"));
                    if (B != null && !B.isEmpty()) {
                        io.grpc.p0 p0Var = this.f39135b;
                        if (p0Var == null) {
                            p0Var = io.grpc.p0.b();
                        }
                        t0.c z10 = io.grpc.internal.e2.z(B, p0Var);
                        if (z10.d() != null) {
                            Status d10 = z10.d();
                            Status r10 = Status.f41718t.q(d10.m()).r(d10.o());
                            return t0.c.b(r10.f("Failed to select config for child " + str));
                        }
                        linkedHashMap.put(str, (e2.b) z10.c());
                    }
                    Status status2 = Status.f41718t;
                    return t0.c.b(status2.r("No config specified for child " + str + " in cluster_manager Lb policy: " + map));
                }
                return t0.c.a(new a(linkedHashMap));
            }
            Status status3 = Status.f41718t;
            return t0.c.b(status3.r("No child policy provided for cluster_manager LB policy: " + map));
        } catch (RuntimeException e10) {
            Status l10 = Status.l(e10);
            return t0.c.b(l10.r("Failed to parse cluster_manager LB config: " + map));
        }
    }

    r0(io.grpc.p0 p0Var) {
        this.f39135b = p0Var;
    }
}
