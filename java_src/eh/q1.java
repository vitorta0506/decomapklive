package eh;

import eh.p1;
import io.grpc.Status;
import io.grpc.n0;
import io.grpc.t0;
import java.util.Map;
/* loaded from: classes5.dex */
public final class q1 extends io.grpc.o0 {

    /* renamed from: b  reason: collision with root package name */
    static final Integer f39124b = 2;

    @Override // io.grpc.n0.c
    public io.grpc.n0 a(n0.d dVar) {
        return new p1(dVar);
    }

    @Override // io.grpc.o0
    public String b() {
        return "least_request_experimental";
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
            Integer i9 = io.grpc.internal.b1.i(map, "choiceCount");
            if (i9 == null) {
                i9 = f39124b;
            }
            if (i9.intValue() < 2) {
                return t0.c.b(Status.f41707i.r("Invalid 'choiceCount'"));
            }
            return t0.c.a(new p1.c(i9.intValue()));
        } catch (RuntimeException e10) {
            Status l10 = Status.l(e10);
            return t0.c.b(l10.r("Failed to parse least_request_experimental LB config: " + map));
        }
    }
}
