package io.grpc.netty.shaded.io.netty.handler.ssl;

import io.grpc.netty.shaded.io.netty.handler.ssl.u;
import java.util.List;
import javax.net.ssl.SSLEngine;
@Deprecated
/* loaded from: classes5.dex */
public final class x extends v {

    /* renamed from: i  reason: collision with root package name */
    private static final u.f f44847i = new a();

    /* loaded from: classes5.dex */
    static class a implements u.f {
        a() {
            if (!d0.d()) {
                throw new RuntimeException("NPN unsupported. Is your classpath configured correctly? See https://wiki.eclipse.org/Jetty/Feature/NPN");
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.u.f
        public SSLEngine a(SSLEngine sSLEngine, u uVar, boolean z10) {
            return new d0(sSLEngine, uVar, z10);
        }
    }

    public x(boolean z10, Iterable<String> iterable) {
        this(z10, z10, iterable);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.v, io.grpc.netty.shaded.io.netty.handler.ssl.b
    public /* bridge */ /* synthetic */ List b() {
        return super.b();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.v, io.grpc.netty.shaded.io.netty.handler.ssl.u
    public /* bridge */ /* synthetic */ u.c c() {
        return super.c();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.v, io.grpc.netty.shaded.io.netty.handler.ssl.u
    public /* bridge */ /* synthetic */ u.e e() {
        return super.e();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.v, io.grpc.netty.shaded.io.netty.handler.ssl.u
    public /* bridge */ /* synthetic */ u.f f() {
        return super.f();
    }

    public x(boolean z10, boolean z11, Iterable<String> iterable) {
        this(z10 ? v.f44825e : v.f44826f, z11 ? v.f44827g : v.f44828h, iterable);
    }

    public x(u.e eVar, u.c cVar, Iterable<String> iterable) {
        super(f44847i, eVar, cVar, iterable);
    }
}
