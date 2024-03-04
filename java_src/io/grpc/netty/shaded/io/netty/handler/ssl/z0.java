package io.grpc.netty.shaded.io.netty.handler.ssl;

import io.grpc.netty.shaded.io.netty.internal.tcnative.SSL;
import io.grpc.netty.shaded.io.netty.internal.tcnative.SSLContext;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.concurrent.locks.Lock;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSessionContext;
/* loaded from: classes5.dex */
public abstract class z0 implements SSLSessionContext {

    /* renamed from: a  reason: collision with root package name */
    private final b1 f44884a;

    /* renamed from: b  reason: collision with root package name */
    private final s0 f44885b;

    /* renamed from: c  reason: collision with root package name */
    final j1 f44886c;

    /* renamed from: d  reason: collision with root package name */
    private final y0 f44887d;

    /* renamed from: e  reason: collision with root package name */
    private final long f44888e;

    /* loaded from: classes5.dex */
    class a implements Enumeration<byte[]> {

        /* renamed from: a  reason: collision with root package name */
        private final Iterator<a1> f44889a;

        a() {
            this.f44889a = z0.this.f44887d.d().iterator();
        }

        @Override // java.util.Enumeration
        /* renamed from: a */
        public byte[] nextElement() {
            return this.f44889a.next().a();
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            return this.f44889a.hasNext();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public z0(j1 j1Var, s0 s0Var, long j10, y0 y0Var) {
        this.f44886c = j1Var;
        this.f44885b = s0Var;
        this.f44888e = j10;
        this.f44884a = new b1(j1Var);
        this.f44887d = y0Var;
        SSLContext.setSSLSessionCache(j1Var.f44597d, y0Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        s0 s0Var = this.f44885b;
        if (s0Var != null) {
            s0Var.b();
        }
        this.f44887d.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean c(a1 a1Var) {
        return this.f44887d.c(a1Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d(a1 a1Var) {
        this.f44887d.i(a1Var);
    }

    public void e(boolean z10) {
        long j10 = z10 ? this.f44888e | SSL.f44946m | SSL.f44947n : SSL.f44943j;
        Lock writeLock = this.f44886c.f44608o.writeLock();
        writeLock.lock();
        try {
            SSLContext.setSessionCacheMode(this.f44886c.f44597d, j10);
            if (!z10) {
                this.f44887d.b();
            }
        } finally {
            writeLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(String str, int i9, long j10) {
        this.f44887d.k(j10, str, i9);
    }

    public void g(c1... c1VarArr) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(c1VarArr, "keys");
        int length = c1VarArr.length;
        rg.d[] dVarArr = new rg.d[length];
        if (length <= 0) {
            Lock writeLock = this.f44886c.f44608o.writeLock();
            writeLock.lock();
            try {
                SSLContext.clearOptions(this.f44886c.f44597d, SSL.f44941h);
                if (length > 0) {
                    SSLContext.g(this.f44886c.f44597d, dVarArr);
                }
                return;
            } finally {
                writeLock.unlock();
            }
        }
        c1 c1Var = c1VarArr[0];
        throw null;
    }

    @Override // javax.net.ssl.SSLSessionContext
    public Enumeration<byte[]> getIds() {
        return new a();
    }

    @Override // javax.net.ssl.SSLSessionContext
    public SSLSession getSession(byte[] bArr) {
        return this.f44887d.e(new a1(bArr));
    }

    @Override // javax.net.ssl.SSLSessionContext
    public int getSessionCacheSize() {
        return this.f44887d.f();
    }

    @Override // javax.net.ssl.SSLSessionContext
    public int getSessionTimeout() {
        return this.f44887d.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean h() {
        return this.f44885b != null;
    }

    @Override // javax.net.ssl.SSLSessionContext
    public void setSessionCacheSize(int i9) {
        io.grpc.netty.shaded.io.netty.util.internal.s.n(i9, "size");
        this.f44887d.l(i9);
    }

    @Override // javax.net.ssl.SSLSessionContext
    public void setSessionTimeout(int i9) {
        io.grpc.netty.shaded.io.netty.util.internal.s.n(i9, "seconds");
        Lock writeLock = this.f44886c.f44608o.writeLock();
        writeLock.lock();
        try {
            SSLContext.setSessionCacheTimeout(this.f44886c.f44597d, i9);
            this.f44887d.m(i9);
        } finally {
            writeLock.unlock();
        }
    }
}
