package com.google.android.exoplayer2;

import android.os.Handler;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.i3;
import com.google.common.collect.ImmutableList;
import v2.q;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class b2 {

    /* renamed from: a  reason: collision with root package name */
    private final i3.b f5663a = new i3.b();

    /* renamed from: b  reason: collision with root package name */
    private final i3.d f5664b = new i3.d();

    /* renamed from: c  reason: collision with root package name */
    private final a2.a f5665c;

    /* renamed from: d  reason: collision with root package name */
    private final Handler f5666d;

    /* renamed from: e  reason: collision with root package name */
    private long f5667e;

    /* renamed from: f  reason: collision with root package name */
    private int f5668f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f5669g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private y1 f5670h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private y1 f5671i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private y1 f5672j;

    /* renamed from: k  reason: collision with root package name */
    private int f5673k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private Object f5674l;

    /* renamed from: m  reason: collision with root package name */
    private long f5675m;

    public b2(a2.a aVar, Handler handler) {
        this.f5665c = aVar;
        this.f5666d = handler;
    }

    private static q.b A(i3 i3Var, Object obj, long j10, long j11, i3.d dVar, i3.b bVar) {
        i3Var.l(obj, bVar);
        i3Var.r(bVar.f6028c, dVar);
        int f10 = i3Var.f(obj);
        Object obj2 = obj;
        while (bVar.f6029d == 0 && bVar.f() > 0 && bVar.t(bVar.r()) && bVar.h(0L) == -1) {
            int i9 = f10 + 1;
            if (f10 >= dVar.f6056p) {
                break;
            }
            i3Var.k(i9, bVar, true);
            obj2 = com.google.android.exoplayer2.util.a.e(bVar.f6027b);
            f10 = i9;
        }
        i3Var.l(obj2, bVar);
        int h10 = bVar.h(j10);
        if (h10 == -1) {
            return new q.b(obj2, j11, bVar.g(j10));
        }
        return new q.b(obj2, h10, bVar.n(h10), j11);
    }

    private long C(i3 i3Var, Object obj) {
        int f10;
        int i9 = i3Var.l(obj, this.f5663a).f6028c;
        Object obj2 = this.f5674l;
        if (obj2 != null && (f10 = i3Var.f(obj2)) != -1 && i3Var.j(f10, this.f5663a).f6028c == i9) {
            return this.f5675m;
        }
        for (y1 y1Var = this.f5670h; y1Var != null; y1Var = y1Var.j()) {
            if (y1Var.f7303b.equals(obj)) {
                return y1Var.f7307f.f7319a.f58909d;
            }
        }
        for (y1 y1Var2 = this.f5670h; y1Var2 != null; y1Var2 = y1Var2.j()) {
            int f11 = i3Var.f(y1Var2.f7303b);
            if (f11 != -1 && i3Var.j(f11, this.f5663a).f6028c == i9) {
                return y1Var2.f7307f.f7319a.f58909d;
            }
        }
        long j10 = this.f5667e;
        this.f5667e = 1 + j10;
        if (this.f5670h == null) {
            this.f5674l = obj;
            this.f5675m = j10;
        }
        return j10;
    }

    private boolean E(i3 i3Var) {
        y1 y1Var = this.f5670h;
        if (y1Var == null) {
            return true;
        }
        int f10 = i3Var.f(y1Var.f7303b);
        while (true) {
            f10 = i3Var.h(f10, this.f5663a, this.f5664b, this.f5668f, this.f5669g);
            while (y1Var.j() != null && !y1Var.f7307f.f7325g) {
                y1Var = y1Var.j();
            }
            y1 j10 = y1Var.j();
            if (f10 == -1 || j10 == null || i3Var.f(j10.f7303b) != f10) {
                break;
            }
            y1Var = j10;
        }
        boolean z10 = z(y1Var);
        y1Var.f7307f = r(i3Var, y1Var.f7307f);
        return !z10;
    }

    private boolean d(long j10, long j11) {
        return j10 == -9223372036854775807L || j10 == j11;
    }

    private boolean e(z1 z1Var, z1 z1Var2) {
        return z1Var.f7320b == z1Var2.f7320b && z1Var.f7319a.equals(z1Var2.f7319a);
    }

    @Nullable
    private z1 h(i2 i2Var) {
        return k(i2Var.f6005a, i2Var.f6006b, i2Var.f6007c, i2Var.f6022r);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00cc, code lost:
        if (r0.t(r0.r()) != false) goto L26;
     */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.google.android.exoplayer2.z1 i(com.google.android.exoplayer2.i3 r20, com.google.android.exoplayer2.y1 r21, long r22) {
        /*
            Method dump skipped, instructions count: 450
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.b2.i(com.google.android.exoplayer2.i3, com.google.android.exoplayer2.y1, long):com.google.android.exoplayer2.z1");
    }

    @Nullable
    private z1 k(i3 i3Var, q.b bVar, long j10, long j11) {
        i3Var.l(bVar.f58906a, this.f5663a);
        if (bVar.b()) {
            return l(i3Var, bVar.f58906a, bVar.f58907b, bVar.f58908c, j10, bVar.f58909d);
        }
        return m(i3Var, bVar.f58906a, j11, j10, bVar.f58909d);
    }

    private z1 l(i3 i3Var, Object obj, int i9, int i10, long j10, long j11) {
        q.b bVar = new q.b(obj, i9, i10, j11);
        long e10 = i3Var.l(bVar.f58906a, this.f5663a).e(bVar.f58907b, bVar.f58908c);
        long j12 = i10 == this.f5663a.n(i9) ? this.f5663a.j() : 0L;
        return new z1(bVar, (e10 == -9223372036854775807L || j12 < e10) ? j12 : Math.max(0L, e10 - 1), j10, -9223372036854775807L, e10, this.f5663a.t(bVar.f58907b), false, false, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x002a, code lost:
        if (r9.t(r9.r()) != false) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.google.android.exoplayer2.z1 m(com.google.android.exoplayer2.i3 r25, java.lang.Object r26, long r27, long r29, long r31) {
        /*
            r24 = this;
            r0 = r24
            r1 = r25
            r2 = r26
            r3 = r27
            com.google.android.exoplayer2.i3$b r5 = r0.f5663a
            r1.l(r2, r5)
            com.google.android.exoplayer2.i3$b r5 = r0.f5663a
            int r5 = r5.g(r3)
            r6 = 1
            r7 = -1
            r8 = 0
            if (r5 != r7) goto L2d
            com.google.android.exoplayer2.i3$b r9 = r0.f5663a
            int r9 = r9.f()
            if (r9 <= 0) goto L4c
            com.google.android.exoplayer2.i3$b r9 = r0.f5663a
            int r10 = r9.r()
            boolean r9 = r9.t(r10)
            if (r9 == 0) goto L4c
            goto L4a
        L2d:
            com.google.android.exoplayer2.i3$b r9 = r0.f5663a
            boolean r9 = r9.t(r5)
            if (r9 == 0) goto L4c
            com.google.android.exoplayer2.i3$b r9 = r0.f5663a
            long r9 = r9.i(r5)
            com.google.android.exoplayer2.i3$b r11 = r0.f5663a
            long r12 = r11.f6029d
            int r14 = (r9 > r12 ? 1 : (r9 == r12 ? 0 : -1))
            if (r14 != 0) goto L4c
            boolean r9 = r11.s(r5)
            if (r9 == 0) goto L4c
            r5 = -1
        L4a:
            r9 = 1
            goto L4d
        L4c:
            r9 = 0
        L4d:
            v2.q$b r11 = new v2.q$b
            r12 = r31
            r11.<init>(r2, r12, r5)
            boolean r2 = r0.s(r11)
            boolean r22 = r0.u(r1, r11)
            boolean r23 = r0.t(r1, r11, r2)
            if (r5 == r7) goto L6d
            com.google.android.exoplayer2.i3$b r1 = r0.f5663a
            boolean r1 = r1.t(r5)
            if (r1 == 0) goto L6d
            r20 = 1
            goto L6f
        L6d:
            r20 = 0
        L6f:
            r12 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r5 == r7) goto L7f
            com.google.android.exoplayer2.i3$b r1 = r0.f5663a
            long r14 = r1.i(r5)
        L7c:
            r16 = r14
            goto L88
        L7f:
            if (r9 == 0) goto L86
            com.google.android.exoplayer2.i3$b r1 = r0.f5663a
            long r14 = r1.f6029d
            goto L7c
        L86:
            r16 = r12
        L88:
            int r1 = (r16 > r12 ? 1 : (r16 == r12 ? 0 : -1))
            if (r1 == 0) goto L96
            r14 = -9223372036854775808
            int r1 = (r16 > r14 ? 1 : (r16 == r14 ? 0 : -1))
            if (r1 != 0) goto L93
            goto L96
        L93:
            r18 = r16
            goto L9c
        L96:
            com.google.android.exoplayer2.i3$b r1 = r0.f5663a
            long r14 = r1.f6029d
            r18 = r14
        L9c:
            int r1 = (r18 > r12 ? 1 : (r18 == r12 ? 0 : -1))
            if (r1 == 0) goto Lb3
            int r1 = (r3 > r18 ? 1 : (r3 == r18 ? 0 : -1))
            if (r1 < 0) goto Lb3
            if (r23 != 0) goto Laa
            if (r9 != 0) goto La9
            goto Laa
        La9:
            r6 = 0
        Laa:
            r3 = 0
            long r5 = (long) r6
            long r5 = r18 - r5
            long r3 = java.lang.Math.max(r3, r5)
        Lb3:
            r12 = r3
            com.google.android.exoplayer2.z1 r1 = new com.google.android.exoplayer2.z1
            r10 = r1
            r14 = r29
            r21 = r2
            r10.<init>(r11, r12, r14, r16, r18, r20, r21, r22, r23)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.b2.m(com.google.android.exoplayer2.i3, java.lang.Object, long, long, long):com.google.android.exoplayer2.z1");
    }

    private long n(i3 i3Var, Object obj, int i9) {
        i3Var.l(obj, this.f5663a);
        long i10 = this.f5663a.i(i9);
        if (i10 == Long.MIN_VALUE) {
            return this.f5663a.f6029d;
        }
        return i10 + this.f5663a.l(i9);
    }

    private boolean s(q.b bVar) {
        return !bVar.b() && bVar.f58910e == -1;
    }

    private boolean t(i3 i3Var, q.b bVar, boolean z10) {
        int f10 = i3Var.f(bVar.f58906a);
        return !i3Var.r(i3Var.j(f10, this.f5663a).f6028c, this.f5664b).f6049i && i3Var.v(f10, this.f5663a, this.f5664b, this.f5668f, this.f5669g) && z10;
    }

    private boolean u(i3 i3Var, q.b bVar) {
        if (s(bVar)) {
            return i3Var.r(i3Var.l(bVar.f58906a, this.f5663a).f6028c, this.f5664b).f6056p == i3Var.f(bVar.f58906a);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(ImmutableList.b bVar, q.b bVar2) {
        this.f5665c.V(bVar.j(), bVar2);
    }

    private void x() {
        final ImmutableList.b builder = ImmutableList.builder();
        for (y1 y1Var = this.f5670h; y1Var != null; y1Var = y1Var.j()) {
            builder.a(y1Var.f7307f.f7319a);
        }
        y1 y1Var2 = this.f5671i;
        final q.b bVar = y1Var2 == null ? null : y1Var2.f7307f.f7319a;
        this.f5666d.post(new Runnable() { // from class: com.google.android.exoplayer2.a2
            @Override // java.lang.Runnable
            public final void run() {
                b2.this.w(builder, bVar);
            }
        });
    }

    public q.b B(i3 i3Var, Object obj, long j10) {
        long C = C(i3Var, obj);
        i3Var.l(obj, this.f5663a);
        i3Var.r(this.f5663a.f6028c, this.f5664b);
        boolean z10 = false;
        for (int f10 = i3Var.f(obj); f10 >= this.f5664b.f6055o; f10--) {
            i3Var.k(f10, this.f5663a, true);
            boolean z11 = this.f5663a.f() > 0;
            z10 |= z11;
            i3.b bVar = this.f5663a;
            if (bVar.h(bVar.f6029d) != -1) {
                obj = com.google.android.exoplayer2.util.a.e(this.f5663a.f6027b);
            }
            if (z10 && (!z11 || this.f5663a.f6029d != 0)) {
                break;
            }
        }
        return A(i3Var, obj, j10, C, this.f5664b, this.f5663a);
    }

    public boolean D() {
        y1 y1Var = this.f5672j;
        return y1Var == null || (!y1Var.f7307f.f7327i && y1Var.q() && this.f5672j.f7307f.f7323e != -9223372036854775807L && this.f5673k < 100);
    }

    public boolean F(i3 i3Var, long j10, long j11) {
        z1 z1Var;
        y1 y1Var = this.f5670h;
        y1 y1Var2 = null;
        while (y1Var != null) {
            z1 z1Var2 = y1Var.f7307f;
            if (y1Var2 == null) {
                z1Var = r(i3Var, z1Var2);
            } else {
                z1 i9 = i(i3Var, y1Var2, j10);
                if (i9 == null) {
                    return !z(y1Var2);
                }
                if (!e(z1Var2, i9)) {
                    return !z(y1Var2);
                }
                z1Var = i9;
            }
            y1Var.f7307f = z1Var.a(z1Var2.f7321c);
            if (!d(z1Var2.f7323e, z1Var.f7323e)) {
                y1Var.A();
                long j12 = z1Var.f7323e;
                return (z(y1Var) || (y1Var == this.f5671i && !y1Var.f7307f.f7324f && ((j11 > Long.MIN_VALUE ? 1 : (j11 == Long.MIN_VALUE ? 0 : -1)) == 0 || (j11 > ((j12 > (-9223372036854775807L) ? 1 : (j12 == (-9223372036854775807L) ? 0 : -1)) == 0 ? Long.MAX_VALUE : y1Var.z(j12)) ? 1 : (j11 == ((j12 > (-9223372036854775807L) ? 1 : (j12 == (-9223372036854775807L) ? 0 : -1)) == 0 ? Long.MAX_VALUE : y1Var.z(j12)) ? 0 : -1)) >= 0))) ? false : true;
            }
            y1Var2 = y1Var;
            y1Var = y1Var.j();
        }
        return true;
    }

    public boolean G(i3 i3Var, int i9) {
        this.f5668f = i9;
        return E(i3Var);
    }

    public boolean H(i3 i3Var, boolean z10) {
        this.f5669g = z10;
        return E(i3Var);
    }

    @Nullable
    public y1 b() {
        y1 y1Var = this.f5670h;
        if (y1Var == null) {
            return null;
        }
        if (y1Var == this.f5671i) {
            this.f5671i = y1Var.j();
        }
        this.f5670h.t();
        int i9 = this.f5673k - 1;
        this.f5673k = i9;
        if (i9 == 0) {
            this.f5672j = null;
            y1 y1Var2 = this.f5670h;
            this.f5674l = y1Var2.f7303b;
            this.f5675m = y1Var2.f7307f.f7319a.f58909d;
        }
        this.f5670h = this.f5670h.j();
        x();
        return this.f5670h;
    }

    public y1 c() {
        y1 y1Var = this.f5671i;
        com.google.android.exoplayer2.util.a.f((y1Var == null || y1Var.j() == null) ? false : true);
        this.f5671i = this.f5671i.j();
        x();
        return this.f5671i;
    }

    public void f() {
        if (this.f5673k == 0) {
            return;
        }
        y1 y1Var = (y1) com.google.android.exoplayer2.util.a.h(this.f5670h);
        this.f5674l = y1Var.f7303b;
        this.f5675m = y1Var.f7307f.f7319a.f58909d;
        while (y1Var != null) {
            y1Var.t();
            y1Var = y1Var.j();
        }
        this.f5670h = null;
        this.f5672j = null;
        this.f5671i = null;
        this.f5673k = 0;
        x();
    }

    public y1 g(w2[] w2VarArr, h3.b0 b0Var, j3.b bVar, e2 e2Var, z1 z1Var, h3.c0 c0Var) {
        y1 y1Var = this.f5672j;
        y1 y1Var2 = new y1(w2VarArr, y1Var == null ? 1000000000000L : (y1Var.l() + this.f5672j.f7307f.f7323e) - z1Var.f7320b, b0Var, bVar, e2Var, z1Var, c0Var);
        y1 y1Var3 = this.f5672j;
        if (y1Var3 != null) {
            y1Var3.w(y1Var2);
        } else {
            this.f5670h = y1Var2;
            this.f5671i = y1Var2;
        }
        this.f5674l = null;
        this.f5672j = y1Var2;
        this.f5673k++;
        x();
        return y1Var2;
    }

    @Nullable
    public y1 j() {
        return this.f5672j;
    }

    @Nullable
    public z1 o(long j10, i2 i2Var) {
        y1 y1Var = this.f5672j;
        if (y1Var == null) {
            return h(i2Var);
        }
        return i(i2Var.f6005a, y1Var, j10);
    }

    @Nullable
    public y1 p() {
        return this.f5670h;
    }

    @Nullable
    public y1 q() {
        return this.f5671i;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.exoplayer2.z1 r(com.google.android.exoplayer2.i3 r19, com.google.android.exoplayer2.z1 r20) {
        /*
            r18 = this;
            r0 = r18
            r1 = r19
            r2 = r20
            v2.q$b r3 = r2.f7319a
            boolean r12 = r0.s(r3)
            boolean r13 = r0.u(r1, r3)
            boolean r14 = r0.t(r1, r3, r12)
            v2.q$b r4 = r2.f7319a
            java.lang.Object r4 = r4.f58906a
            com.google.android.exoplayer2.i3$b r5 = r0.f5663a
            r1.l(r4, r5)
            boolean r1 = r3.b()
            r4 = -1
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r1 != 0) goto L35
            int r1 = r3.f58910e
            if (r1 != r4) goto L2e
            goto L35
        L2e:
            com.google.android.exoplayer2.i3$b r7 = r0.f5663a
            long r7 = r7.i(r1)
            goto L36
        L35:
            r7 = r5
        L36:
            boolean r1 = r3.b()
            if (r1 == 0) goto L48
            com.google.android.exoplayer2.i3$b r1 = r0.f5663a
            int r5 = r3.f58907b
            int r6 = r3.f58908c
            long r5 = r1.e(r5, r6)
        L46:
            r9 = r5
            goto L5c
        L48:
            int r1 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r1 == 0) goto L55
            r5 = -9223372036854775808
            int r1 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r1 != 0) goto L53
            goto L55
        L53:
            r9 = r7
            goto L5c
        L55:
            com.google.android.exoplayer2.i3$b r1 = r0.f5663a
            long r5 = r1.m()
            goto L46
        L5c:
            boolean r1 = r3.b()
            if (r1 == 0) goto L6c
            com.google.android.exoplayer2.i3$b r1 = r0.f5663a
            int r4 = r3.f58907b
            boolean r1 = r1.t(r4)
            r11 = r1
            goto L7d
        L6c:
            int r1 = r3.f58910e
            if (r1 == r4) goto L7b
            com.google.android.exoplayer2.i3$b r4 = r0.f5663a
            boolean r1 = r4.t(r1)
            if (r1 == 0) goto L7b
            r1 = 1
            r11 = 1
            goto L7d
        L7b:
            r1 = 0
            r11 = 0
        L7d:
            com.google.android.exoplayer2.z1 r15 = new com.google.android.exoplayer2.z1
            long r4 = r2.f7320b
            long r1 = r2.f7321c
            r16 = r1
            r1 = r15
            r2 = r3
            r3 = r4
            r5 = r16
            r1.<init>(r2, r3, r5, r7, r9, r11, r12, r13, r14)
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.b2.r(com.google.android.exoplayer2.i3, com.google.android.exoplayer2.z1):com.google.android.exoplayer2.z1");
    }

    public boolean v(v2.n nVar) {
        y1 y1Var = this.f5672j;
        return y1Var != null && y1Var.f7302a == nVar;
    }

    public void y(long j10) {
        y1 y1Var = this.f5672j;
        if (y1Var != null) {
            y1Var.s(j10);
        }
    }

    public boolean z(y1 y1Var) {
        boolean z10 = false;
        com.google.android.exoplayer2.util.a.f(y1Var != null);
        if (y1Var.equals(this.f5672j)) {
            return false;
        }
        this.f5672j = y1Var;
        while (y1Var.j() != null) {
            y1Var = y1Var.j();
            if (y1Var == this.f5671i) {
                this.f5671i = this.f5670h;
                z10 = true;
            }
            y1Var.t();
            this.f5673k--;
        }
        this.f5672j.w(null);
        x();
        return z10;
    }
}
