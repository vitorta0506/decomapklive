package hg;

import com.google.common.base.u;
import hg.i;
import io.grpc.Status;
import io.grpc.internal.b1;
import io.grpc.internal.e0;
import io.grpc.internal.e2;
import io.grpc.internal.m2;
import io.grpc.n0;
import io.grpc.o0;
import io.grpc.r;
import io.grpc.t0;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public final class g extends o0 {

    /* renamed from: b  reason: collision with root package name */
    private static final i.m f40700b = i.m.ROUND_ROBIN;

    @Override // io.grpc.n0.c
    public n0 a(n0.d dVar) {
        return new f(dVar, r.f45316e, new b(dVar), m2.f42901a, u.c(), new e0.a());
    }

    @Override // io.grpc.o0
    public String b() {
        return "grpclb";
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
            return f(map);
        } catch (RuntimeException e10) {
            Status l10 = Status.l(e10);
            return t0.c.b(l10.r("Failed to parse GRPCLB config: " + map));
        }
    }

    t0.c f(Map<String, ?> map) {
        if (map == null) {
            return t0.c.a(d.a(f40700b));
        }
        String l10 = b1.l(map, "serviceName");
        List<?> e10 = b1.e(map, "childPolicy");
        List<e2.a> B = e10 != null ? e2.B(b1.a(e10)) : null;
        if (B != null && !B.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (e2.a aVar : B) {
                String a10 = aVar.a();
                a10.hashCode();
                if (a10.equals("pick_first")) {
                    return t0.c.a(d.b(i.m.PICK_FIRST, l10));
                }
                if (!a10.equals("round_robin")) {
                    arrayList.add(a10);
                } else {
                    return t0.c.a(d.b(i.m.ROUND_ROBIN, l10));
                }
            }
            Status status = Status.f41707i;
            return t0.c.b(status.r("None of " + arrayList + " specified child policies are available."));
        }
        return t0.c.a(d.b(f40700b, l10));
    }
}
