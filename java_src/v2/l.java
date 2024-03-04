package v2;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.i3;
import com.google.android.exoplayer2.s1;
import v2.q;
/* loaded from: classes.dex */
public final class l extends e<Void> {

    /* renamed from: k  reason: collision with root package name */
    private final q f58867k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f58868l;

    /* renamed from: m  reason: collision with root package name */
    private final i3.d f58869m;

    /* renamed from: n  reason: collision with root package name */
    private final i3.b f58870n;

    /* renamed from: o  reason: collision with root package name */
    private a f58871o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private k f58872p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f58873q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f58874r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f58875s;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a extends h {

        /* renamed from: f  reason: collision with root package name */
        public static final Object f58876f = new Object();
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private final Object f58877d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private final Object f58878e;

        private a(i3 i3Var, @Nullable Object obj, @Nullable Object obj2) {
            super(i3Var);
            this.f58877d = obj;
            this.f58878e = obj2;
        }

        public static a A(i3 i3Var, @Nullable Object obj, @Nullable Object obj2) {
            return new a(i3Var, obj, obj2);
        }

        public static a z(s1 s1Var) {
            return new a(new b(s1Var), i3.d.f6037r, f58876f);
        }

        @Override // v2.h, com.google.android.exoplayer2.i3
        public int f(Object obj) {
            Object obj2;
            i3 i3Var = this.f58810c;
            if (f58876f.equals(obj) && (obj2 = this.f58878e) != null) {
                obj = obj2;
            }
            return i3Var.f(obj);
        }

        @Override // v2.h, com.google.android.exoplayer2.i3
        public i3.b k(int i9, i3.b bVar, boolean z10) {
            this.f58810c.k(i9, bVar, z10);
            if (com.google.android.exoplayer2.util.l0.c(bVar.f6027b, this.f58878e) && z10) {
                bVar.f6027b = f58876f;
            }
            return bVar;
        }

        @Override // v2.h, com.google.android.exoplayer2.i3
        public Object q(int i9) {
            Object q10 = this.f58810c.q(i9);
            return com.google.android.exoplayer2.util.l0.c(q10, this.f58878e) ? f58876f : q10;
        }

        @Override // v2.h, com.google.android.exoplayer2.i3
        public i3.d s(int i9, i3.d dVar, long j10) {
            this.f58810c.s(i9, dVar, j10);
            if (com.google.android.exoplayer2.util.l0.c(dVar.f6041a, this.f58877d)) {
                dVar.f6041a = i3.d.f6037r;
            }
            return dVar;
        }

        public a y(i3 i3Var) {
            return new a(i3Var, this.f58877d, this.f58878e);
        }
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    public static final class b extends i3 {

        /* renamed from: c  reason: collision with root package name */
        private final s1 f58879c;

        public b(s1 s1Var) {
            this.f58879c = s1Var;
        }

        @Override // com.google.android.exoplayer2.i3
        public int f(Object obj) {
            return obj == a.f58876f ? 0 : -1;
        }

        @Override // com.google.android.exoplayer2.i3
        public i3.b k(int i9, i3.b bVar, boolean z10) {
            bVar.w(z10 ? 0 : null, z10 ? a.f58876f : null, 0, -9223372036854775807L, 0L, w2.c.f59362g, true);
            return bVar;
        }

        @Override // com.google.android.exoplayer2.i3
        public int m() {
            return 1;
        }

        @Override // com.google.android.exoplayer2.i3
        public Object q(int i9) {
            return a.f58876f;
        }

        @Override // com.google.android.exoplayer2.i3
        public i3.d s(int i9, i3.d dVar, long j10) {
            dVar.i(i3.d.f6037r, this.f58879c, null, -9223372036854775807L, -9223372036854775807L, -9223372036854775807L, false, true, null, 0L, -9223372036854775807L, 0, 0, 0L);
            dVar.f6052l = true;
            return dVar;
        }

        @Override // com.google.android.exoplayer2.i3
        public int t() {
            return 1;
        }
    }

    public l(q qVar, boolean z10) {
        this.f58867k = qVar;
        this.f58868l = z10 && qVar.l();
        this.f58869m = new i3.d();
        this.f58870n = new i3.b();
        i3 m10 = qVar.m();
        if (m10 != null) {
            this.f58871o = a.A(m10, null, null);
            this.f58875s = true;
            return;
        }
        this.f58871o = a.z(qVar.b());
    }

    private Object I(Object obj) {
        return (this.f58871o.f58878e == null || !this.f58871o.f58878e.equals(obj)) ? obj : a.f58876f;
    }

    private Object J(Object obj) {
        return (this.f58871o.f58878e == null || !obj.equals(a.f58876f)) ? obj : this.f58871o.f58878e;
    }

    private void N(long j10) {
        k kVar = this.f58872p;
        int f10 = this.f58871o.f(kVar.f58855a.f58906a);
        if (f10 == -1) {
            return;
        }
        long j11 = this.f58871o.j(f10, this.f58870n).f6029d;
        if (j11 != -9223372036854775807L && j10 >= j11) {
            j10 = Math.max(0L, j11 - 1);
        }
        kVar.q(j10);
    }

    @Override // v2.q
    /* renamed from: H */
    public k h(q.b bVar, j3.b bVar2, long j10) {
        k kVar = new k(bVar, bVar2, j10);
        kVar.v(this.f58867k);
        if (this.f58874r) {
            kVar.c(bVar.c(J(bVar.f58906a)));
        } else {
            this.f58872p = kVar;
            if (!this.f58873q) {
                this.f58873q = true;
                G(null, this.f58867k);
            }
        }
        return kVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // v2.e
    @Nullable
    /* renamed from: K */
    public q.b B(Void r12, q.b bVar) {
        return bVar.c(I(bVar.f58906a));
    }

    public i3 L() {
        return this.f58871o;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    @Override // v2.e
    /* renamed from: M */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void F(java.lang.Void r13, v2.q r14, com.google.android.exoplayer2.i3 r15) {
        /*
            r12 = this;
            boolean r13 = r12.f58874r
            if (r13 == 0) goto L19
            v2.l$a r13 = r12.f58871o
            v2.l$a r13 = r13.y(r15)
            r12.f58871o = r13
            v2.k r13 = r12.f58872p
            if (r13 == 0) goto Lae
            long r13 = r13.i()
            r12.N(r13)
            goto Lae
        L19:
            boolean r13 = r15.u()
            if (r13 == 0) goto L36
            boolean r13 = r12.f58875s
            if (r13 == 0) goto L2a
            v2.l$a r13 = r12.f58871o
            v2.l$a r13 = r13.y(r15)
            goto L32
        L2a:
            java.lang.Object r13 = com.google.android.exoplayer2.i3.d.f6037r
            java.lang.Object r14 = v2.l.a.f58876f
            v2.l$a r13 = v2.l.a.A(r15, r13, r14)
        L32:
            r12.f58871o = r13
            goto Lae
        L36:
            com.google.android.exoplayer2.i3$d r13 = r12.f58869m
            r14 = 0
            r15.r(r14, r13)
            com.google.android.exoplayer2.i3$d r13 = r12.f58869m
            long r0 = r13.e()
            com.google.android.exoplayer2.i3$d r13 = r12.f58869m
            java.lang.Object r13 = r13.f6041a
            v2.k r2 = r12.f58872p
            if (r2 == 0) goto L74
            long r2 = r2.j()
            v2.l$a r4 = r12.f58871o
            v2.k r5 = r12.f58872p
            v2.q$b r5 = r5.f58855a
            java.lang.Object r5 = r5.f58906a
            com.google.android.exoplayer2.i3$b r6 = r12.f58870n
            r4.l(r5, r6)
            com.google.android.exoplayer2.i3$b r4 = r12.f58870n
            long r4 = r4.q()
            long r4 = r4 + r2
            v2.l$a r2 = r12.f58871o
            com.google.android.exoplayer2.i3$d r3 = r12.f58869m
            com.google.android.exoplayer2.i3$d r14 = r2.r(r14, r3)
            long r2 = r14.e()
            int r14 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r14 == 0) goto L74
            r10 = r4
            goto L75
        L74:
            r10 = r0
        L75:
            com.google.android.exoplayer2.i3$d r7 = r12.f58869m
            com.google.android.exoplayer2.i3$b r8 = r12.f58870n
            r9 = 0
            r6 = r15
            android.util.Pair r14 = r6.n(r7, r8, r9, r10)
            java.lang.Object r0 = r14.first
            java.lang.Object r14 = r14.second
            java.lang.Long r14 = (java.lang.Long) r14
            long r1 = r14.longValue()
            boolean r14 = r12.f58875s
            if (r14 == 0) goto L94
            v2.l$a r13 = r12.f58871o
            v2.l$a r13 = r13.y(r15)
            goto L98
        L94:
            v2.l$a r13 = v2.l.a.A(r15, r13, r0)
        L98:
            r12.f58871o = r13
            v2.k r13 = r12.f58872p
            if (r13 == 0) goto Lae
            r12.N(r1)
            v2.q$b r13 = r13.f58855a
            java.lang.Object r14 = r13.f58906a
            java.lang.Object r14 = r12.J(r14)
            v2.q$b r13 = r13.c(r14)
            goto Laf
        Lae:
            r13 = 0
        Laf:
            r14 = 1
            r12.f58875s = r14
            r12.f58874r = r14
            v2.l$a r14 = r12.f58871o
            r12.y(r14)
            if (r13 == 0) goto Lc6
            v2.k r14 = r12.f58872p
            java.lang.Object r14 = com.google.android.exoplayer2.util.a.e(r14)
            v2.k r14 = (v2.k) r14
            r14.c(r13)
        Lc6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: v2.l.F(java.lang.Void, v2.q, com.google.android.exoplayer2.i3):void");
    }

    @Override // v2.q
    public s1 b() {
        return this.f58867k.b();
    }

    @Override // v2.q
    public void d(n nVar) {
        ((k) nVar).u();
        if (nVar == this.f58872p) {
            this.f58872p = null;
        }
    }

    @Override // v2.q
    public void j() {
    }

    @Override // v2.e, v2.a
    public void x(@Nullable j3.b0 b0Var) {
        super.x(b0Var);
        if (this.f58868l) {
            return;
        }
        this.f58873q = true;
        G(null, this.f58867k);
    }

    @Override // v2.e, v2.a
    public void z() {
        this.f58874r = false;
        this.f58873q = false;
        super.z();
    }
}
