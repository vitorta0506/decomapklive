package eh;

import eh.a2;
import io.grpc.Status;
import io.grpc.n0;
import io.grpc.t0;
import java.util.Map;
/* loaded from: classes5.dex */
public final class b2 extends io.grpc.o0 {

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f38697b;

    static {
        f38697b = com.google.common.base.v.b(System.getenv("GRPC_XDS_EXPERIMENTAL_ENABLE_RING_HASH")) || Boolean.parseBoolean(System.getenv("GRPC_XDS_EXPERIMENTAL_ENABLE_RING_HASH"));
    }

    @Override // io.grpc.n0.c
    public io.grpc.n0 a(n0.d dVar) {
        return new a2(dVar);
    }

    @Override // io.grpc.o0
    public String b() {
        return "ring_hash_experimental";
    }

    @Override // io.grpc.o0
    public int c() {
        return 5;
    }

    @Override // io.grpc.o0
    public boolean d() {
        return f38697b;
    }

    @Override // io.grpc.o0
    public t0.c e(Map<String, ?> map) {
        Long j10 = io.grpc.internal.b1.j(map, "minRingSize");
        Long j11 = io.grpc.internal.b1.j(map, "maxRingSize");
        if (j10 == null) {
            j10 = 1024L;
        }
        if (j11 == null) {
            j11 = 8388608L;
        }
        if (j10.longValue() > 0 && j11.longValue() > 0 && j10.longValue() <= j11.longValue() && j11.longValue() <= 8388608) {
            return t0.c.a(new a2.d(j10.longValue(), j11.longValue()));
        }
        return t0.c.b(Status.f41707i.r("Invalid 'mingRingSize'/'maxRingSize'"));
    }
}
