package io.grpc.netty.shaded.io.netty.handler.ssl;

import io.grpc.netty.shaded.io.netty.internal.tcnative.SSLSession;
import io.grpc.netty.shaded.io.netty.internal.tcnative.SSLSessionCache;
import io.grpc.netty.shaded.io.netty.util.ResourceLeakDetector;
import java.security.Principal;
import java.security.cert.Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import javax.security.cert.X509Certificate;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class y0 implements SSLSessionCache {

    /* renamed from: e  reason: collision with root package name */
    private static final x0[] f44848e = new x0[0];

    /* renamed from: f  reason: collision with root package name */
    private static final int f44849f;

    /* renamed from: a  reason: collision with root package name */
    private final p0 f44850a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<a1, b> f44851b = new a();

    /* renamed from: c  reason: collision with root package name */
    private final AtomicInteger f44852c = new AtomicInteger(f44849f);

    /* renamed from: d  reason: collision with root package name */
    private final AtomicInteger f44853d = new AtomicInteger(300);

    /* loaded from: classes5.dex */
    class a extends LinkedHashMap<a1, b> {
        private static final long serialVersionUID = -7773696788135734448L;

        a() {
        }

        @Override // java.util.LinkedHashMap
        protected boolean removeEldestEntry(Map.Entry<a1, b> entry) {
            int i9 = y0.this.f44852c.get();
            if (i9 < 0 || size() <= i9) {
                return false;
            }
            y0.this.i(entry.getKey());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class b implements x0 {

        /* renamed from: k  reason: collision with root package name */
        static final ResourceLeakDetector<b> f44855k = io.grpc.netty.shaded.io.netty.util.t.b().c(b.class);

        /* renamed from: a  reason: collision with root package name */
        private final io.grpc.netty.shaded.io.netty.util.v<b> f44856a;

        /* renamed from: b  reason: collision with root package name */
        private final long f44857b;

        /* renamed from: c  reason: collision with root package name */
        private final String f44858c;

        /* renamed from: d  reason: collision with root package name */
        private final int f44859d;

        /* renamed from: e  reason: collision with root package name */
        private final a1 f44860e;

        /* renamed from: f  reason: collision with root package name */
        private final long f44861f;

        /* renamed from: g  reason: collision with root package name */
        private final long f44862g;

        /* renamed from: h  reason: collision with root package name */
        private volatile long f44863h;

        /* renamed from: i  reason: collision with root package name */
        private volatile boolean f44864i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f44865j;

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.x0
        public void a(int i9) {
            throw new UnsupportedOperationException();
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.x0
        public a1 c() {
            return this.f44860e;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.x0
        public void d(byte[] bArr, String str, String str2, byte[] bArr2, byte[][] bArr3, long j10, long j11) {
            throw new UnsupportedOperationException();
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.x0
        public void e(Certificate[] certificateArr) {
            throw new UnsupportedOperationException();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof x0) {
                return this.f44860e.equals(((x0) obj).c());
            }
            return false;
        }

        void g() {
            this.f44865j = true;
            invalidate();
            io.grpc.netty.shaded.io.netty.util.v<b> vVar = this.f44856a;
            if (vVar != null) {
                vVar.b(this);
            }
        }

        @Override // javax.net.ssl.SSLSession
        public int getApplicationBufferSize() {
            return k1.J;
        }

        @Override // javax.net.ssl.SSLSession
        public String getCipherSuite() {
            return null;
        }

        @Override // javax.net.ssl.SSLSession
        public long getCreationTime() {
            return this.f44862g;
        }

        @Override // javax.net.ssl.SSLSession
        public byte[] getId() {
            return this.f44860e.a();
        }

        @Override // javax.net.ssl.SSLSession
        public long getLastAccessedTime() {
            return this.f44863h;
        }

        @Override // javax.net.ssl.SSLSession
        public Certificate[] getLocalCertificates() {
            throw new UnsupportedOperationException();
        }

        @Override // javax.net.ssl.SSLSession
        public Principal getLocalPrincipal() {
            throw new UnsupportedOperationException();
        }

        @Override // javax.net.ssl.SSLSession
        public int getPacketBufferSize() {
            return k1.K;
        }

        @Override // javax.net.ssl.SSLSession
        public X509Certificate[] getPeerCertificateChain() {
            throw new UnsupportedOperationException();
        }

        @Override // javax.net.ssl.SSLSession
        public Certificate[] getPeerCertificates() {
            throw new UnsupportedOperationException();
        }

        @Override // javax.net.ssl.SSLSession
        public String getPeerHost() {
            return this.f44858c;
        }

        @Override // javax.net.ssl.SSLSession
        public int getPeerPort() {
            return this.f44859d;
        }

        @Override // javax.net.ssl.SSLSession
        public Principal getPeerPrincipal() {
            throw new UnsupportedOperationException();
        }

        @Override // javax.net.ssl.SSLSession
        public String getProtocol() {
            return null;
        }

        @Override // javax.net.ssl.SSLSession
        public z0 getSessionContext() {
            return null;
        }

        @Override // javax.net.ssl.SSLSession
        public Object getValue(String str) {
            return null;
        }

        @Override // javax.net.ssl.SSLSession
        public String[] getValueNames() {
            return io.grpc.netty.shaded.io.netty.util.internal.h.f45069f;
        }

        synchronized void h() {
            g();
            SSLSession.free(this.f44857b);
        }

        public int hashCode() {
            return this.f44860e.hashCode();
        }

        boolean i(long j10) {
            return this.f44862g + this.f44861f >= j10 && this.f44864i;
        }

        @Override // javax.net.ssl.SSLSession
        public void invalidate() {
            this.f44864i = false;
        }

        @Override // javax.net.ssl.SSLSession
        public boolean isValid() {
            return i(System.currentTimeMillis());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public long j() {
            return this.f44857b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean k() {
            return SSLSession.shouldBeSingleUse(this.f44857b);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void l() {
            this.f44863h = System.currentTimeMillis();
        }

        @Override // javax.net.ssl.SSLSession
        public void putValue(String str, Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // javax.net.ssl.SSLSession
        public void removeValue(String str) {
        }
    }

    static {
        int e10 = io.grpc.netty.shaded.io.netty.util.internal.c0.e("javax.net.ssl.sessionCacheSize", 20480);
        if (e10 >= 0) {
            f44849f = e10;
        } else {
            f44849f = 20480;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public y0(p0 p0Var) {
        this.f44850a = p0Var;
    }

    private void h(b bVar) {
        j(bVar);
        bVar.h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void b() {
        Iterator<Map.Entry<a1, b>> it = this.f44851b.entrySet().iterator();
        while (it.hasNext()) {
            it.remove();
            h(it.next().getValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized boolean c(a1 a1Var) {
        return this.f44851b.containsKey(a1Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<a1> d() {
        x0[] x0VarArr;
        synchronized (this) {
            x0VarArr = (x0[]) this.f44851b.values().toArray(f44848e);
        }
        ArrayList arrayList = new ArrayList(x0VarArr.length);
        for (x0 x0Var : x0VarArr) {
            if (x0Var.isValid()) {
                arrayList.add(x0Var.c());
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized x0 e(a1 a1Var) {
        b bVar = this.f44851b.get(a1Var);
        if (bVar == null || bVar.isValid()) {
            return bVar;
        }
        i(bVar.c());
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int f() {
        return this.f44852c.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int g() {
        return this.f44853d.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void i(a1 a1Var) {
        b remove = this.f44851b.remove(a1Var);
        if (remove != null) {
            h(remove);
        }
    }

    protected void j(b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k(long j10, String str, int i9) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void l(int i9) {
        if (this.f44852c.getAndSet(i9) > i9 || i9 == 0) {
            b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void m(int i9) {
        if (this.f44853d.getAndSet(i9) > i9) {
            b();
        }
    }
}
