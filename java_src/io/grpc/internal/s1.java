package io.grpc.internal;

import io.grpc.n0;
import io.grpc.t0;
import java.util.Map;
/* loaded from: classes5.dex */
public final class s1 extends io.grpc.o0 {

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int f43059b = 0;

    @Override // io.grpc.n0.c
    public io.grpc.n0 a(n0.d dVar) {
        return new r1(dVar);
    }

    @Override // io.grpc.o0
    public String b() {
        return "pick_first";
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
