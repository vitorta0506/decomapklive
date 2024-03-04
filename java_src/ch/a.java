package ch;

import bh.b;
import com.google.common.base.y;
import dh.f;
import io.grpc.n0;
import io.grpc.o0;
import io.grpc.t0;
import java.util.Map;
/* loaded from: classes5.dex */
public final class a extends o0 {

    /* renamed from: b  reason: collision with root package name */
    private final o0 f1728b = f();

    static o0 f() {
        try {
            return (o0) f.class.asSubclass(o0.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e10) {
            y.k(e10);
            throw new RuntimeException(e10);
        }
    }

    @Override // io.grpc.n0.c
    public n0 a(n0.d dVar) {
        return b.a(this.f1728b, dVar);
    }

    @Override // io.grpc.o0
    public String b() {
        return this.f1728b.b();
    }

    @Override // io.grpc.o0
    public int c() {
        return this.f1728b.c() + 1;
    }

    @Override // io.grpc.o0
    public boolean d() {
        return this.f1728b.d();
    }

    @Override // io.grpc.o0
    public t0.c e(Map<String, ?> map) {
        return this.f1728b.e(map);
    }
}
