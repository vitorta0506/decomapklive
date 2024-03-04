package dh;

import io.grpc.n0;
import io.grpc.o0;
import io.grpc.t0;
import java.util.Map;
/* loaded from: classes5.dex */
public final class f extends o0 {

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int f38124b = 0;

    @Override // io.grpc.n0.c
    public n0 a(n0.d dVar) {
        return new e(dVar);
    }

    @Override // io.grpc.o0
    public String b() {
        return "round_robin";
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
        return t0.c.a("no service config");
    }
}
