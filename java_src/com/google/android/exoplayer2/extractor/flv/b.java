package com.google.android.exoplayer2.extractor.flv;

import android.net.Uri;
import c2.a0;
import c2.b0;
import c2.l;
import c2.m;
import c2.n;
import c2.q;
import c2.r;
import com.google.android.exoplayer2.extractor.flv.b;
import com.google.android.exoplayer2.util.b0;
import java.io.IOException;
import java.util.Map;
/* loaded from: classes.dex */
public final class b implements l {

    /* renamed from: q  reason: collision with root package name */
    public static final r f5885q = new r() { // from class: g2.a
        @Override // c2.r
        public /* synthetic */ l[] a(Uri uri, Map map) {
            return q.a(this, uri, map);
        }

        @Override // c2.r
        public final l[] b() {
            l[] g10;
            g10 = b.g();
            return g10;
        }
    };

    /* renamed from: f  reason: collision with root package name */
    private n f5891f;

    /* renamed from: h  reason: collision with root package name */
    private boolean f5893h;

    /* renamed from: i  reason: collision with root package name */
    private long f5894i;

    /* renamed from: j  reason: collision with root package name */
    private int f5895j;

    /* renamed from: k  reason: collision with root package name */
    private int f5896k;

    /* renamed from: l  reason: collision with root package name */
    private int f5897l;

    /* renamed from: m  reason: collision with root package name */
    private long f5898m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f5899n;

    /* renamed from: o  reason: collision with root package name */
    private a f5900o;

    /* renamed from: p  reason: collision with root package name */
    private d f5901p;

    /* renamed from: a  reason: collision with root package name */
    private final b0 f5886a = new b0(4);

    /* renamed from: b  reason: collision with root package name */
    private final b0 f5887b = new b0(9);

    /* renamed from: c  reason: collision with root package name */
    private final b0 f5888c = new b0(11);

    /* renamed from: d  reason: collision with root package name */
    private final b0 f5889d = new b0();

    /* renamed from: e  reason: collision with root package name */
    private final c f5890e = new c();

    /* renamed from: g  reason: collision with root package name */
    private int f5892g = 1;

    private void d() {
        if (this.f5899n) {
            return;
        }
        this.f5891f.l(new b0.b(-9223372036854775807L));
        this.f5899n = true;
    }

    private long e() {
        if (this.f5893h) {
            return this.f5894i + this.f5898m;
        }
        if (this.f5890e.d() == -9223372036854775807L) {
            return 0L;
        }
        return this.f5898m;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l[] g() {
        return new l[]{new b()};
    }

    private com.google.android.exoplayer2.util.b0 i(m mVar) throws IOException {
        if (this.f5897l > this.f5889d.b()) {
            com.google.android.exoplayer2.util.b0 b0Var = this.f5889d;
            b0Var.N(new byte[Math.max(b0Var.b() * 2, this.f5897l)], 0);
        } else {
            this.f5889d.P(0);
        }
        this.f5889d.O(this.f5897l);
        mVar.readFully(this.f5889d.d(), 0, this.f5897l);
        return this.f5889d;
    }

    private boolean j(m mVar) throws IOException {
        if (mVar.g(this.f5887b.d(), 0, 9, true)) {
            this.f5887b.P(0);
            this.f5887b.Q(4);
            int D = this.f5887b.D();
            boolean z10 = (D & 4) != 0;
            boolean z11 = (D & 1) != 0;
            if (z10 && this.f5900o == null) {
                this.f5900o = new a(this.f5891f.q(8, 1));
            }
            if (z11 && this.f5901p == null) {
                this.f5901p = new d(this.f5891f.q(9, 2));
            }
            this.f5891f.o();
            this.f5895j = (this.f5887b.n() - 9) + 4;
            this.f5892g = 2;
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean k(c2.m r10) throws java.io.IOException {
        /*
            r9 = this;
            long r0 = r9.e()
            int r2 = r9.f5896k
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r5 = 0
            r6 = 1
            r7 = 8
            if (r2 != r7) goto L24
            com.google.android.exoplayer2.extractor.flv.a r7 = r9.f5900o
            if (r7 == 0) goto L24
            r9.d()
            com.google.android.exoplayer2.extractor.flv.a r2 = r9.f5900o
            com.google.android.exoplayer2.util.b0 r10 = r9.i(r10)
            boolean r5 = r2.a(r10, r0)
        L22:
            r10 = 1
            goto L75
        L24:
            r7 = 9
            if (r2 != r7) goto L3a
            com.google.android.exoplayer2.extractor.flv.d r7 = r9.f5901p
            if (r7 == 0) goto L3a
            r9.d()
            com.google.android.exoplayer2.extractor.flv.d r2 = r9.f5901p
            com.google.android.exoplayer2.util.b0 r10 = r9.i(r10)
            boolean r5 = r2.a(r10, r0)
            goto L22
        L3a:
            r7 = 18
            if (r2 != r7) goto L6f
            boolean r2 = r9.f5899n
            if (r2 != 0) goto L6f
            com.google.android.exoplayer2.extractor.flv.c r2 = r9.f5890e
            com.google.android.exoplayer2.util.b0 r10 = r9.i(r10)
            boolean r5 = r2.a(r10, r0)
            com.google.android.exoplayer2.extractor.flv.c r10 = r9.f5890e
            long r0 = r10.d()
            int r10 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r10 == 0) goto L22
            c2.n r10 = r9.f5891f
            c2.z r2 = new c2.z
            com.google.android.exoplayer2.extractor.flv.c r7 = r9.f5890e
            long[] r7 = r7.e()
            com.google.android.exoplayer2.extractor.flv.c r8 = r9.f5890e
            long[] r8 = r8.f()
            r2.<init>(r7, r8, r0)
            r10.l(r2)
            r9.f5899n = r6
            goto L22
        L6f:
            int r0 = r9.f5897l
            r10.k(r0)
            r10 = 0
        L75:
            boolean r0 = r9.f5893h
            if (r0 != 0) goto L8f
            if (r5 == 0) goto L8f
            r9.f5893h = r6
            com.google.android.exoplayer2.extractor.flv.c r0 = r9.f5890e
            long r0 = r0.d()
            int r2 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r2 != 0) goto L8b
            long r0 = r9.f5898m
            long r0 = -r0
            goto L8d
        L8b:
            r0 = 0
        L8d:
            r9.f5894i = r0
        L8f:
            r0 = 4
            r9.f5895j = r0
            r0 = 2
            r9.f5892g = r0
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.flv.b.k(c2.m):boolean");
    }

    private boolean l(m mVar) throws IOException {
        if (mVar.g(this.f5888c.d(), 0, 11, true)) {
            this.f5888c.P(0);
            this.f5896k = this.f5888c.D();
            this.f5897l = this.f5888c.G();
            this.f5898m = this.f5888c.G();
            this.f5898m = ((this.f5888c.D() << 24) | this.f5898m) * 1000;
            this.f5888c.Q(3);
            this.f5892g = 4;
            return true;
        }
        return false;
    }

    private void m(m mVar) throws IOException {
        mVar.k(this.f5895j);
        this.f5895j = 0;
        this.f5892g = 3;
    }

    @Override // c2.l
    public void a(long j10, long j11) {
        if (j10 == 0) {
            this.f5892g = 1;
            this.f5893h = false;
        } else {
            this.f5892g = 3;
        }
        this.f5895j = 0;
    }

    @Override // c2.l
    public int b(m mVar, a0 a0Var) throws IOException {
        com.google.android.exoplayer2.util.a.h(this.f5891f);
        while (true) {
            int i9 = this.f5892g;
            if (i9 != 1) {
                if (i9 == 2) {
                    m(mVar);
                } else if (i9 != 3) {
                    if (i9 == 4) {
                        if (k(mVar)) {
                            return 0;
                        }
                    } else {
                        throw new IllegalStateException();
                    }
                } else if (!l(mVar)) {
                    return -1;
                }
            } else if (!j(mVar)) {
                return -1;
            }
        }
    }

    @Override // c2.l
    public void f(n nVar) {
        this.f5891f = nVar;
    }

    @Override // c2.l
    public boolean h(m mVar) throws IOException {
        mVar.m(this.f5886a.d(), 0, 3);
        this.f5886a.P(0);
        if (this.f5886a.G() != 4607062) {
            return false;
        }
        mVar.m(this.f5886a.d(), 0, 2);
        this.f5886a.P(0);
        if ((this.f5886a.J() & 250) != 0) {
            return false;
        }
        mVar.m(this.f5886a.d(), 0, 4);
        this.f5886a.P(0);
        int n9 = this.f5886a.n();
        mVar.f();
        mVar.i(n9);
        mVar.m(this.f5886a.d(), 0, 4);
        this.f5886a.P(0);
        return this.f5886a.n() == 0;
    }

    @Override // c2.l
    public void release() {
    }
}
