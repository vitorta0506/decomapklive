package io.grpc.netty.shaded.io.netty.handler.ssl;

import io.grpc.netty.shaded.io.netty.handler.ssl.y0;
import io.grpc.netty.shaded.io.netty.internal.tcnative.SSL;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
final class k0 extends y0 {

    /* renamed from: g  reason: collision with root package name */
    private final Map<a, y0.b> f44630g;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f44631a;

        /* renamed from: b  reason: collision with root package name */
        private final String f44632b;

        /* renamed from: c  reason: collision with root package name */
        private final int f44633c;

        a(String str, int i9) {
            this.f44632b = str;
            this.f44633c = i9;
            this.f44631a = (io.grpc.netty.shaded.io.netty.util.c.s(str) * 31) + i9;
        }

        public boolean equals(Object obj) {
            if (obj instanceof a) {
                a aVar = (a) obj;
                return this.f44633c == aVar.f44633c && this.f44632b.equalsIgnoreCase(aVar.f44632b);
            }
            return false;
        }

        public int hashCode() {
            return this.f44631a;
        }

        public String toString() {
            return "HostPort{host='" + this.f44632b + "', port=" + this.f44633c + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k0(p0 p0Var) {
        super(p0Var);
        this.f44630g = new HashMap();
    }

    private static a n(String str, int i9) {
        if (str != null || i9 >= 1) {
            return new a(str, i9);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.y0
    public synchronized void b() {
        super.b();
        this.f44630g.clear();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.y0
    protected void j(y0.b bVar) {
        a n9 = n(bVar.getPeerHost(), bVar.getPeerPort());
        if (n9 == null) {
            return;
        }
        this.f44630g.remove(n9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.y0
    public void k(long j10, String str, int i9) {
        a n9 = n(str, i9);
        if (n9 == null) {
            return;
        }
        synchronized (this) {
            y0.b bVar = this.f44630g.get(n9);
            if (bVar == null) {
                return;
            }
            if (!bVar.isValid()) {
                i(bVar.c());
                return;
            }
            boolean session = SSL.setSession(j10, bVar.j());
            if (session) {
                if (bVar.k()) {
                    bVar.invalidate();
                }
                bVar.l();
            }
        }
    }
}
