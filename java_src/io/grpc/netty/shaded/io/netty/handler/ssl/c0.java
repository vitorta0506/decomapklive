package io.grpc.netty.shaded.io.netty.handler.ssl;

import io.grpc.netty.shaded.io.netty.handler.ssl.u;
import java.util.LinkedHashSet;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLException;
import org.eclipse.jetty.alpn.ALPN;
/* loaded from: classes5.dex */
abstract class c0 extends a0 {

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f44500c = d();

    /* loaded from: classes5.dex */
    private static final class b extends c0 {

        /* loaded from: classes5.dex */
        class a implements ALPN.ClientProvider {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ u f44501a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ u.b f44502b;

            a(u uVar, u.b bVar) {
                this.f44501a = uVar;
                this.f44502b = bVar;
            }
        }

        b(SSLEngine sSLEngine, u uVar) {
            super(sSLEngine);
            io.grpc.netty.shaded.io.netty.util.internal.s.h(uVar, "applicationNegotiator");
            ALPN.put(sSLEngine, new a(uVar, (u.b) io.grpc.netty.shaded.io.netty.util.internal.s.h(uVar.c().a(this, uVar.b()), "protocolListener")));
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.a0, javax.net.ssl.SSLEngine
        public void closeInbound() throws SSLException {
            try {
                ALPN.remove(b());
            } finally {
                super.closeInbound();
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.a0, javax.net.ssl.SSLEngine
        public void closeOutbound() {
            try {
                ALPN.remove(b());
            } finally {
                super.closeOutbound();
            }
        }
    }

    /* loaded from: classes5.dex */
    private static final class c extends c0 {

        /* loaded from: classes5.dex */
        class a implements ALPN.ServerProvider {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ u.d f44504a;

            a(u.d dVar) {
                this.f44504a = dVar;
            }
        }

        c(SSLEngine sSLEngine, u uVar) {
            super(sSLEngine);
            io.grpc.netty.shaded.io.netty.util.internal.s.h(uVar, "applicationNegotiator");
            ALPN.put(sSLEngine, new a((u.d) io.grpc.netty.shaded.io.netty.util.internal.s.h(uVar.e().a(this, new LinkedHashSet(uVar.b())), "protocolSelector")));
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.a0, javax.net.ssl.SSLEngine
        public void closeInbound() throws SSLException {
            try {
                ALPN.remove(b());
            } finally {
                super.closeInbound();
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.a0, javax.net.ssl.SSLEngine
        public void closeOutbound() {
            try {
                ALPN.remove(b());
            } finally {
                super.closeOutbound();
            }
        }
    }

    private static boolean d() {
        if (io.grpc.netty.shaded.io.netty.util.internal.t.l0() <= 8) {
            try {
                Class.forName("sun.security.ssl.ALPNExtension", true, null);
                return true;
            } catch (Throwable unused) {
                return false;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean e() {
        return f44500c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static c0 f(SSLEngine sSLEngine, u uVar) {
        return new b(sSLEngine, uVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static c0 g(SSLEngine sSLEngine, u uVar) {
        return new c(sSLEngine, uVar);
    }

    private c0(SSLEngine sSLEngine) {
        super(sSLEngine);
    }
}
