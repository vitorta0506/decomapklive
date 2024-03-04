package com.meizu.cloud.pushsdk.c.g;

import java.io.IOException;
/* loaded from: classes4.dex */
final class h implements c {

    /* renamed from: a  reason: collision with root package name */
    private final b f28490a;

    /* renamed from: b  reason: collision with root package name */
    private final l f28491b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f28492c;

    public h(l lVar) {
        this(lVar, new b());
    }

    public h(l lVar, b bVar) {
        if (lVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        this.f28490a = bVar;
        this.f28491b = lVar;
    }

    @Override // com.meizu.cloud.pushsdk.c.g.c
    public long a(m mVar) throws IOException {
        if (mVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j10 = 0;
        while (true) {
            long b10 = mVar.b(this.f28490a, 2048L);
            if (b10 == -1) {
                return j10;
            }
            j10 += b10;
            a();
        }
    }

    public c a() throws IOException {
        if (this.f28492c) {
            throw new IllegalStateException("closed");
        }
        long e10 = this.f28490a.e();
        if (e10 > 0) {
            this.f28491b.a(this.f28490a, e10);
        }
        return this;
    }

    @Override // com.meizu.cloud.pushsdk.c.g.l
    public void a(b bVar, long j10) throws IOException {
        if (this.f28492c) {
            throw new IllegalStateException("closed");
        }
        this.f28490a.a(bVar, j10);
        a();
    }

    @Override // com.meizu.cloud.pushsdk.c.g.c
    public b b() {
        return this.f28490a;
    }

    @Override // com.meizu.cloud.pushsdk.c.g.c
    public c b(e eVar) throws IOException {
        if (this.f28492c) {
            throw new IllegalStateException("closed");
        }
        this.f28490a.b(eVar);
        return a();
    }

    @Override // com.meizu.cloud.pushsdk.c.g.c
    public c b(String str) throws IOException {
        if (this.f28492c) {
            throw new IllegalStateException("closed");
        }
        this.f28490a.b(str);
        return a();
    }

    @Override // com.meizu.cloud.pushsdk.c.g.c
    public c c(byte[] bArr) throws IOException {
        if (this.f28492c) {
            throw new IllegalStateException("closed");
        }
        this.f28490a.c(bArr);
        return a();
    }

    @Override // com.meizu.cloud.pushsdk.c.g.c
    public c c(byte[] bArr, int i9, int i10) throws IOException {
        if (this.f28492c) {
            throw new IllegalStateException("closed");
        }
        this.f28490a.c(bArr, i9, i10);
        return a();
    }

    @Override // com.meizu.cloud.pushsdk.c.g.l, java.io.Closeable, java.lang.AutoCloseable, com.meizu.cloud.pushsdk.c.g.m
    public void close() {
        if (this.f28492c) {
            return;
        }
        Throwable th2 = null;
        try {
            b bVar = this.f28490a;
            long j10 = bVar.f28477b;
            if (j10 > 0) {
                this.f28491b.a(bVar, j10);
            }
        } catch (Throwable th3) {
            th2 = th3;
        }
        try {
            this.f28491b.close();
        } catch (Throwable th4) {
            if (th2 == null) {
                th2 = th4;
            }
        }
        this.f28492c = true;
        if (th2 != null) {
            o.a(th2);
        }
    }

    @Override // com.meizu.cloud.pushsdk.c.g.c
    public c e(long j10) throws IOException {
        if (this.f28492c) {
            throw new IllegalStateException("closed");
        }
        this.f28490a.e(j10);
        return a();
    }

    @Override // com.meizu.cloud.pushsdk.c.g.l, java.io.Flushable
    public void flush() throws IOException {
        if (this.f28492c) {
            throw new IllegalStateException("closed");
        }
        b bVar = this.f28490a;
        long j10 = bVar.f28477b;
        if (j10 > 0) {
            this.f28491b.a(bVar, j10);
        }
        this.f28491b.flush();
    }

    public String toString() {
        return "buffer(" + this.f28491b + ")";
    }
}
