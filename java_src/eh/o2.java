package eh;

import com.guochao.faceshow.utils.Contants;
import io.grpc.Status;
import io.grpc.internal.e2;
import io.grpc.n0;
import io.grpc.t0;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class o2 extends io.grpc.o0 {

    /* renamed from: b  reason: collision with root package name */
    private final io.grpc.p0 f39042b;

    /* loaded from: classes5.dex */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        final int f39043a;

        /* renamed from: b  reason: collision with root package name */
        final e2.b f39044b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(int i9, e2.b bVar) {
            this.f39043a = i9;
            this.f39044b = bVar;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f39043a == aVar.f39043a && Objects.equals(this.f39044b, aVar.f39044b);
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.f39043a), this.f39044b);
        }

        public String toString() {
            return com.google.common.base.j.c(this).b(Contants.Weight, this.f39043a).d("policySelection", this.f39044b).toString();
        }
    }

    /* loaded from: classes5.dex */
    static final class b {

        /* renamed from: a  reason: collision with root package name */
        final Map<String, a> f39045a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(Map<String, a> map) {
            this.f39045a = map;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || b.class != obj.getClass()) {
                return false;
            }
            return Objects.equals(this.f39045a, ((b) obj).f39045a);
        }

        public int hashCode() {
            return Objects.hashCode(this.f39045a);
        }

        public String toString() {
            return com.google.common.base.j.c(this).d("targets", this.f39045a).toString();
        }
    }

    public o2() {
        this(null);
    }

    @Override // io.grpc.n0.c
    public io.grpc.n0 a(n0.d dVar) {
        return new n2(dVar);
    }

    @Override // io.grpc.o0
    public String b() {
        return "weighted_target_experimental";
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
        try {
            Map<String, ?> k10 = io.grpc.internal.b1.k(map, "targets");
            if (k10 != null && !k10.isEmpty()) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (String str : k10.keySet()) {
                    Map<String, ?> k11 = io.grpc.internal.b1.k(k10, str);
                    if (k11 != null && !k11.isEmpty()) {
                        Integer i9 = io.grpc.internal.b1.i(k11, Contants.Weight);
                        if (i9 != null && i9.intValue() >= 1) {
                            List<e2.a> B = io.grpc.internal.e2.B(io.grpc.internal.b1.f(k11, "childPolicy"));
                            if (B != null && !B.isEmpty()) {
                                io.grpc.p0 p0Var = this.f39042b;
                                if (p0Var == null) {
                                    p0Var = io.grpc.p0.b();
                                }
                                t0.c z10 = io.grpc.internal.e2.z(B, p0Var);
                                if (z10.d() != null) {
                                    return z10;
                                }
                                linkedHashMap.put(str, new a(i9.intValue(), (e2.b) z10.c()));
                            }
                            Status status = Status.f41718t;
                            return t0.c.b(status.r("No child policy for target " + str + " in weighted_target LB policy:\n " + map));
                        }
                        Status status2 = Status.f41718t;
                        return t0.c.b(status2.r("Wrong weight for target " + str + " in weighted_target LB policy:\n " + map));
                    }
                    Status status3 = Status.f41718t;
                    return t0.c.b(status3.r("No config for target " + str + " in weighted_target LB policy:\n " + map));
                }
                return t0.c.a(new b(linkedHashMap));
            }
            Status status4 = Status.f41718t;
            return t0.c.b(status4.r("No targets provided for weighted_target LB policy:\n " + map));
        } catch (RuntimeException e10) {
            Status l10 = Status.l(e10);
            return t0.c.b(l10.r("Failed to parse weighted_target LB config: " + map));
        }
    }

    o2(io.grpc.p0 p0Var) {
        this.f39042b = p0Var;
    }
}
