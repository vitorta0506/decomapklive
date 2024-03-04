package v2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.l1;
import com.google.android.exoplayer2.source.ClippingMediaSource$IllegalClippingException;
import com.google.android.exoplayer2.z2;
import java.io.IOException;
import v2.n;
/* loaded from: classes.dex */
public final class c implements n, n.a {

    /* renamed from: a  reason: collision with root package name */
    public final n f58696a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private n.a f58697b;

    /* renamed from: c  reason: collision with root package name */
    private a[] f58698c = new a[0];

    /* renamed from: d  reason: collision with root package name */
    private long f58699d;

    /* renamed from: e  reason: collision with root package name */
    long f58700e;

    /* renamed from: f  reason: collision with root package name */
    long f58701f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private ClippingMediaSource$IllegalClippingException f58702g;

    /* loaded from: classes.dex */
    private final class a implements i0 {

        /* renamed from: a  reason: collision with root package name */
        public final i0 f58703a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f58704b;

        public a(i0 i0Var) {
            this.f58703a = i0Var;
        }

        @Override // v2.i0
        public void a() throws IOException {
            this.f58703a.a();
        }

        @Override // v2.i0
        public int b(l1 l1Var, DecoderInputBuffer decoderInputBuffer, int i9) {
            if (c.this.i()) {
                return -3;
            }
            if (this.f58704b) {
                decoderInputBuffer.o(4);
                return -4;
            }
            int b10 = this.f58703a.b(l1Var, decoderInputBuffer, i9);
            if (b10 == -5) {
                k1 k1Var = (k1) com.google.android.exoplayer2.util.a.e(l1Var.f6166b);
                int i10 = k1Var.B;
                if (i10 != 0 || k1Var.C != 0) {
                    c cVar = c.this;
                    if (cVar.f58700e != 0) {
                        i10 = 0;
                    }
                    l1Var.f6166b = k1Var.b().N(i10).O(cVar.f58701f == Long.MIN_VALUE ? k1Var.C : 0).E();
                }
                return -5;
            }
            c cVar2 = c.this;
            long j10 = cVar2.f58701f;
            if (j10 == Long.MIN_VALUE || ((b10 != -4 || decoderInputBuffer.f5710e < j10) && !(b10 == -3 && cVar2.r() == Long.MIN_VALUE && !decoderInputBuffer.f5709d))) {
                return b10;
            }
            decoderInputBuffer.f();
            decoderInputBuffer.o(4);
            this.f58704b = true;
            return -4;
        }

        @Override // v2.i0
        public int c(long j10) {
            if (c.this.i()) {
                return -3;
            }
            return this.f58703a.c(j10);
        }

        public void d() {
            this.f58704b = false;
        }

        @Override // v2.i0
        public boolean isReady() {
            return !c.this.i() && this.f58703a.isReady();
        }
    }

    public c(n nVar, boolean z10, long j10, long j11) {
        this.f58696a = nVar;
        this.f58699d = z10 ? j10 : -9223372036854775807L;
        this.f58700e = j10;
        this.f58701f = j11;
    }

    private z2 c(long j10, z2 z2Var) {
        long q10 = com.google.android.exoplayer2.util.l0.q(z2Var.f7333a, 0L, j10 - this.f58700e);
        long j11 = z2Var.f7334b;
        long j12 = this.f58701f;
        long q11 = com.google.android.exoplayer2.util.l0.q(j11, 0L, j12 == Long.MIN_VALUE ? Long.MAX_VALUE : j12 - j10);
        return (q10 == z2Var.f7333a && q11 == z2Var.f7334b) ? z2Var : new z2(q10, q11);
    }

    private static boolean l(long j10, h3.s[] sVarArr) {
        if (j10 != 0) {
            for (h3.s sVar : sVarArr) {
                if (sVar != null) {
                    k1 k10 = sVar.k();
                    if (!com.google.android.exoplayer2.util.v.a(k10.f6111l, k10.f6108i)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // v2.n
    public long b() {
        long b10 = this.f58696a.b();
        if (b10 != Long.MIN_VALUE) {
            long j10 = this.f58701f;
            if (j10 == Long.MIN_VALUE || b10 < j10) {
                return b10;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // v2.n.a
    public void d(n nVar) {
        if (this.f58702g != null) {
            return;
        }
        ((n.a) com.google.android.exoplayer2.util.a.e(this.f58697b)).d(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0032, code lost:
        if (r0 > r7) goto L18;
     */
    @Override // v2.n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long e(long r7) {
        /*
            r6 = this;
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r6.f58699d = r0
            v2.c$a[] r0 = r6.f58698c
            int r1 = r0.length
            r2 = 0
            r3 = 0
        Lc:
            if (r3 >= r1) goto L18
            r4 = r0[r3]
            if (r4 == 0) goto L15
            r4.d()
        L15:
            int r3 = r3 + 1
            goto Lc
        L18:
            v2.n r0 = r6.f58696a
            long r0 = r0.e(r7)
            int r3 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r3 == 0) goto L34
            long r7 = r6.f58700e
            int r3 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r3 < 0) goto L35
            long r7 = r6.f58701f
            r3 = -9223372036854775808
            int r5 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r5 == 0) goto L34
            int r3 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r3 > 0) goto L35
        L34:
            r2 = 1
        L35:
            com.google.android.exoplayer2.util.a.f(r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: v2.c.e(long):long");
    }

    @Override // v2.n
    public long f(long j10, z2 z2Var) {
        long j11 = this.f58700e;
        if (j10 == j11) {
            return j11;
        }
        return this.f58696a.f(j10, c(j10, z2Var));
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0062, code lost:
        if (r2 > r4) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006e  */
    @Override // v2.n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long g(h3.s[] r13, boolean[] r14, v2.i0[] r15, boolean[] r16, long r17) {
        /*
            r12 = this;
            r0 = r12
            r1 = r15
            int r2 = r1.length
            v2.c$a[] r2 = new v2.c.a[r2]
            r0.f58698c = r2
            int r2 = r1.length
            v2.i0[] r9 = new v2.i0[r2]
            r10 = 0
            r2 = 0
        Lc:
            int r3 = r1.length
            r11 = 0
            if (r2 >= r3) goto L25
            v2.c$a[] r3 = r0.f58698c
            r4 = r1[r2]
            v2.c$a r4 = (v2.c.a) r4
            r3[r2] = r4
            r4 = r3[r2]
            if (r4 == 0) goto L20
            r3 = r3[r2]
            v2.i0 r11 = r3.f58703a
        L20:
            r9[r2] = r11
            int r2 = r2 + 1
            goto Lc
        L25:
            v2.n r2 = r0.f58696a
            r3 = r13
            r4 = r14
            r5 = r9
            r6 = r16
            r7 = r17
            long r2 = r2.g(r3, r4, r5, r6, r7)
            boolean r4 = r12.i()
            if (r4 == 0) goto L47
            long r4 = r0.f58700e
            int r6 = (r17 > r4 ? 1 : (r17 == r4 ? 0 : -1))
            if (r6 != 0) goto L47
            r6 = r13
            boolean r4 = l(r4, r13)
            if (r4 == 0) goto L47
            r4 = r2
            goto L4c
        L47:
            r4 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
        L4c:
            r0.f58699d = r4
            int r4 = (r2 > r17 ? 1 : (r2 == r17 ? 0 : -1))
            if (r4 == 0) goto L67
            long r4 = r0.f58700e
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 < 0) goto L65
            long r4 = r0.f58701f
            r6 = -9223372036854775808
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 == 0) goto L67
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 > 0) goto L65
            goto L67
        L65:
            r4 = 0
            goto L68
        L67:
            r4 = 1
        L68:
            com.google.android.exoplayer2.util.a.f(r4)
        L6b:
            int r4 = r1.length
            if (r10 >= r4) goto L97
            r4 = r9[r10]
            if (r4 != 0) goto L77
            v2.c$a[] r4 = r0.f58698c
            r4[r10] = r11
            goto L8e
        L77:
            v2.c$a[] r4 = r0.f58698c
            r5 = r4[r10]
            if (r5 == 0) goto L85
            r5 = r4[r10]
            v2.i0 r5 = r5.f58703a
            r6 = r9[r10]
            if (r5 == r6) goto L8e
        L85:
            v2.c$a r5 = new v2.c$a
            r6 = r9[r10]
            r5.<init>(r6)
            r4[r10] = r5
        L8e:
            v2.c$a[] r4 = r0.f58698c
            r4 = r4[r10]
            r1[r10] = r4
            int r10 = r10 + 1
            goto L6b
        L97:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: v2.c.g(h3.s[], boolean[], v2.i0[], boolean[], long):long");
    }

    @Override // v2.n
    public long h() {
        if (i()) {
            long j10 = this.f58699d;
            this.f58699d = -9223372036854775807L;
            long h10 = h();
            return h10 != -9223372036854775807L ? h10 : j10;
        }
        long h11 = this.f58696a.h();
        if (h11 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        boolean z10 = true;
        com.google.android.exoplayer2.util.a.f(h11 >= this.f58700e);
        long j11 = this.f58701f;
        if (j11 != Long.MIN_VALUE && h11 > j11) {
            z10 = false;
        }
        com.google.android.exoplayer2.util.a.f(z10);
        return h11;
    }

    boolean i() {
        return this.f58699d != -9223372036854775807L;
    }

    @Override // v2.n
    public boolean isLoading() {
        return this.f58696a.isLoading();
    }

    @Override // v2.j0.a
    /* renamed from: j */
    public void a(n nVar) {
        ((n.a) com.google.android.exoplayer2.util.a.e(this.f58697b)).a(this);
    }

    @Override // v2.n
    public void k(n.a aVar, long j10) {
        this.f58697b = aVar;
        this.f58696a.k(this, j10);
    }

    @Override // v2.n
    public void m() throws IOException {
        ClippingMediaSource$IllegalClippingException clippingMediaSource$IllegalClippingException = this.f58702g;
        if (clippingMediaSource$IllegalClippingException == null) {
            this.f58696a.m();
            return;
        }
        throw clippingMediaSource$IllegalClippingException;
    }

    @Override // v2.n
    public boolean n(long j10) {
        return this.f58696a.n(j10);
    }

    public void o(long j10, long j11) {
        this.f58700e = j10;
        this.f58701f = j11;
    }

    @Override // v2.n
    public q0 p() {
        return this.f58696a.p();
    }

    @Override // v2.n
    public long r() {
        long r10 = this.f58696a.r();
        if (r10 != Long.MIN_VALUE) {
            long j10 = this.f58701f;
            if (j10 == Long.MIN_VALUE || r10 < j10) {
                return r10;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // v2.n
    public void s(long j10, boolean z10) {
        this.f58696a.s(j10, z10);
    }

    @Override // v2.n
    public void t(long j10) {
        this.f58696a.t(j10);
    }
}
