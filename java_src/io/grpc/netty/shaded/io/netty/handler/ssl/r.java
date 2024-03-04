package io.grpc.netty.shaded.io.netty.handler.ssl;

import io.grpc.netty.shaded.io.netty.handler.ssl.u;
import java.util.List;
import javax.net.ssl.SSLEngine;
@Deprecated
/* loaded from: classes5.dex */
public final class r extends v {

    /* renamed from: i  reason: collision with root package name */
    private static final boolean f44740i;

    /* renamed from: j  reason: collision with root package name */
    private static final u.f f44741j;

    /* loaded from: classes5.dex */
    private static final class b extends u.a {
        private b() {
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.u.a
        public SSLEngine b(SSLEngine sSLEngine, kg.k kVar, u uVar, boolean z10) {
            if (j.b(sSLEngine)) {
                if (z10) {
                    return k.f(sSLEngine, kVar, uVar);
                }
                return k.e(sSLEngine, kVar, uVar);
            } else if (e.b(sSLEngine)) {
                return new f(sSLEngine, uVar, z10);
            } else {
                if (t.f()) {
                    return new s(sSLEngine, uVar, z10);
                }
                if (c0.e()) {
                    if (z10) {
                        return c0.g(sSLEngine, uVar);
                    }
                    return c0.f(sSLEngine, uVar);
                }
                throw new UnsupportedOperationException("ALPN not supported. Unable to wrap SSLEngine of type '" + sSLEngine.getClass().getName() + "')");
            }
        }
    }

    /* loaded from: classes5.dex */
    private static final class c extends u.a {
        private c() {
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.u.a
        public SSLEngine b(SSLEngine sSLEngine, kg.k kVar, u uVar, boolean z10) {
            throw new RuntimeException("ALPN unsupported. Is your classpath configured correctly? For Conscrypt, add the appropriate Conscrypt JAR to classpath and set the security provider. For Jetty-ALPN, see https://www.eclipse.org/jetty/documentation/current/alpn-chapter.html#alpn-starting");
        }
    }

    static {
        boolean z10 = j.a() || t.f() || c0.e() || e.a();
        f44740i = z10;
        f44741j = z10 ? new b() : new c();
    }

    public r(boolean z10, Iterable<String> iterable) {
        this(z10, z10, iterable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean g() {
        return f44740i;
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

    public r(boolean z10, boolean z11, Iterable<String> iterable) {
        this(z11 ? v.f44825e : v.f44826f, z10 ? v.f44827g : v.f44828h, iterable);
    }

    public r(u.e eVar, u.c cVar, Iterable<String> iterable) {
        super(f44741j, eVar, cVar, iterable);
    }
}
