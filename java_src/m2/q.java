package m2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.util.l0;
import java.util.Collections;
import kotlin.jvm.internal.ByteCompanionObject;
import m2.i0;
/* loaded from: classes.dex */
public final class q implements m {

    /* renamed from: a  reason: collision with root package name */
    private final d0 f54680a;

    /* renamed from: b  reason: collision with root package name */
    private String f54681b;

    /* renamed from: c  reason: collision with root package name */
    private c2.e0 f54682c;

    /* renamed from: d  reason: collision with root package name */
    private a f54683d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f54684e;

    /* renamed from: l  reason: collision with root package name */
    private long f54691l;

    /* renamed from: f  reason: collision with root package name */
    private final boolean[] f54685f = new boolean[3];

    /* renamed from: g  reason: collision with root package name */
    private final u f54686g = new u(32, 128);

    /* renamed from: h  reason: collision with root package name */
    private final u f54687h = new u(33, 128);

    /* renamed from: i  reason: collision with root package name */
    private final u f54688i = new u(34, 128);

    /* renamed from: j  reason: collision with root package name */
    private final u f54689j = new u(39, 128);

    /* renamed from: k  reason: collision with root package name */
    private final u f54690k = new u(40, 128);

    /* renamed from: m  reason: collision with root package name */
    private long f54692m = -9223372036854775807L;

    /* renamed from: n  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.b0 f54693n = new com.google.android.exoplayer2.util.b0();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final c2.e0 f54694a;

        /* renamed from: b  reason: collision with root package name */
        private long f54695b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f54696c;

        /* renamed from: d  reason: collision with root package name */
        private int f54697d;

        /* renamed from: e  reason: collision with root package name */
        private long f54698e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f54699f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f54700g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f54701h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f54702i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f54703j;

        /* renamed from: k  reason: collision with root package name */
        private long f54704k;

        /* renamed from: l  reason: collision with root package name */
        private long f54705l;

        /* renamed from: m  reason: collision with root package name */
        private boolean f54706m;

        public a(c2.e0 e0Var) {
            this.f54694a = e0Var;
        }

        private static boolean b(int i9) {
            return (32 <= i9 && i9 <= 35) || i9 == 39;
        }

        private static boolean c(int i9) {
            return i9 < 32 || i9 == 40;
        }

        private void d(int i9) {
            long j10 = this.f54705l;
            if (j10 == -9223372036854775807L) {
                return;
            }
            boolean z10 = this.f54706m;
            this.f54694a.c(j10, z10 ? 1 : 0, (int) (this.f54695b - this.f54704k), i9, null);
        }

        public void a(long j10, int i9, boolean z10) {
            if (this.f54703j && this.f54700g) {
                this.f54706m = this.f54696c;
                this.f54703j = false;
            } else if (this.f54701h || this.f54700g) {
                if (z10 && this.f54702i) {
                    d(i9 + ((int) (j10 - this.f54695b)));
                }
                this.f54704k = this.f54695b;
                this.f54705l = this.f54698e;
                this.f54706m = this.f54696c;
                this.f54702i = true;
            }
        }

        public void e(byte[] bArr, int i9, int i10) {
            if (this.f54699f) {
                int i11 = this.f54697d;
                int i12 = (i9 + 2) - i11;
                if (i12 < i10) {
                    this.f54700g = (bArr[i12] & ByteCompanionObject.MIN_VALUE) != 0;
                    this.f54699f = false;
                    return;
                }
                this.f54697d = i11 + (i10 - i9);
            }
        }

        public void f() {
            this.f54699f = false;
            this.f54700g = false;
            this.f54701h = false;
            this.f54702i = false;
            this.f54703j = false;
        }

        public void g(long j10, int i9, int i10, long j11, boolean z10) {
            boolean z11 = false;
            this.f54700g = false;
            this.f54701h = false;
            this.f54698e = j11;
            this.f54697d = 0;
            this.f54695b = j10;
            if (!c(i10)) {
                if (this.f54702i && !this.f54703j) {
                    if (z10) {
                        d(i9);
                    }
                    this.f54702i = false;
                }
                if (b(i10)) {
                    this.f54701h = !this.f54703j;
                    this.f54703j = true;
                }
            }
            boolean z12 = i10 >= 16 && i10 <= 21;
            this.f54696c = z12;
            this.f54699f = (z12 || i10 <= 9) ? true : true;
        }
    }

    public q(d0 d0Var) {
        this.f54680a = d0Var;
    }

    private void a() {
        com.google.android.exoplayer2.util.a.h(this.f54682c);
        l0.j(this.f54683d);
    }

    private void g(long j10, int i9, int i10, long j11) {
        this.f54683d.a(j10, i9, this.f54684e);
        if (!this.f54684e) {
            this.f54686g.b(i10);
            this.f54687h.b(i10);
            this.f54688i.b(i10);
            if (this.f54686g.c() && this.f54687h.c() && this.f54688i.c()) {
                this.f54682c.d(i(this.f54681b, this.f54686g, this.f54687h, this.f54688i));
                this.f54684e = true;
            }
        }
        if (this.f54689j.b(i10)) {
            u uVar = this.f54689j;
            this.f54693n.N(this.f54689j.f54749d, com.google.android.exoplayer2.util.w.q(uVar.f54749d, uVar.f54750e));
            this.f54693n.Q(5);
            this.f54680a.a(j11, this.f54693n);
        }
        if (this.f54690k.b(i10)) {
            u uVar2 = this.f54690k;
            this.f54693n.N(this.f54690k.f54749d, com.google.android.exoplayer2.util.w.q(uVar2.f54749d, uVar2.f54750e));
            this.f54693n.Q(5);
            this.f54680a.a(j11, this.f54693n);
        }
    }

    private void h(byte[] bArr, int i9, int i10) {
        this.f54683d.e(bArr, i9, i10);
        if (!this.f54684e) {
            this.f54686g.a(bArr, i9, i10);
            this.f54687h.a(bArr, i9, i10);
            this.f54688i.a(bArr, i9, i10);
        }
        this.f54689j.a(bArr, i9, i10);
        this.f54690k.a(bArr, i9, i10);
    }

    private static k1 i(@Nullable String str, u uVar, u uVar2, u uVar3) {
        int i9 = uVar.f54750e;
        byte[] bArr = new byte[uVar2.f54750e + i9 + uVar3.f54750e];
        System.arraycopy(uVar.f54749d, 0, bArr, 0, i9);
        System.arraycopy(uVar2.f54749d, 0, bArr, uVar.f54750e, uVar2.f54750e);
        System.arraycopy(uVar3.f54749d, 0, bArr, uVar.f54750e + uVar2.f54750e, uVar3.f54750e);
        com.google.android.exoplayer2.util.c0 c0Var = new com.google.android.exoplayer2.util.c0(uVar2.f54749d, 0, uVar2.f54750e);
        c0Var.l(44);
        int e10 = c0Var.e(3);
        c0Var.k();
        int e11 = c0Var.e(2);
        boolean d10 = c0Var.d();
        int e12 = c0Var.e(5);
        int i10 = 0;
        for (int i11 = 0; i11 < 32; i11++) {
            if (c0Var.d()) {
                i10 |= 1 << i11;
            }
        }
        int[] iArr = new int[6];
        for (int i12 = 0; i12 < 6; i12++) {
            iArr[i12] = c0Var.e(8);
        }
        int e13 = c0Var.e(8);
        int i13 = 0;
        for (int i14 = 0; i14 < e10; i14++) {
            if (c0Var.d()) {
                i13 += 89;
            }
            if (c0Var.d()) {
                i13 += 8;
            }
        }
        c0Var.l(i13);
        if (e10 > 0) {
            c0Var.l((8 - e10) * 2);
        }
        c0Var.h();
        int h10 = c0Var.h();
        if (h10 == 3) {
            c0Var.k();
        }
        int h11 = c0Var.h();
        int h12 = c0Var.h();
        if (c0Var.d()) {
            int h13 = c0Var.h();
            int h14 = c0Var.h();
            int h15 = c0Var.h();
            int h16 = c0Var.h();
            h11 -= ((h10 == 1 || h10 == 2) ? 2 : 1) * (h13 + h14);
            h12 -= (h10 == 1 ? 2 : 1) * (h15 + h16);
        }
        c0Var.h();
        c0Var.h();
        int h17 = c0Var.h();
        for (int i15 = c0Var.d() ? 0 : e10; i15 <= e10; i15++) {
            c0Var.h();
            c0Var.h();
            c0Var.h();
        }
        c0Var.h();
        c0Var.h();
        c0Var.h();
        c0Var.h();
        c0Var.h();
        c0Var.h();
        if (c0Var.d() && c0Var.d()) {
            j(c0Var);
        }
        c0Var.l(2);
        if (c0Var.d()) {
            c0Var.l(8);
            c0Var.h();
            c0Var.h();
            c0Var.k();
        }
        k(c0Var);
        if (c0Var.d()) {
            for (int i16 = 0; i16 < c0Var.h(); i16++) {
                c0Var.l(h17 + 4 + 1);
            }
        }
        c0Var.l(2);
        float f10 = 1.0f;
        if (c0Var.d()) {
            if (c0Var.d()) {
                int e14 = c0Var.e(8);
                if (e14 == 255) {
                    int e15 = c0Var.e(16);
                    int e16 = c0Var.e(16);
                    if (e15 != 0 && e16 != 0) {
                        f10 = e15 / e16;
                    }
                } else {
                    float[] fArr = com.google.android.exoplayer2.util.w.f7042b;
                    if (e14 < fArr.length) {
                        f10 = fArr[e14];
                    } else {
                        com.google.android.exoplayer2.util.r.i("H265Reader", "Unexpected aspect_ratio_idc value: " + e14);
                    }
                }
            }
            if (c0Var.d()) {
                c0Var.k();
            }
            if (c0Var.d()) {
                c0Var.l(4);
                if (c0Var.d()) {
                    c0Var.l(24);
                }
            }
            if (c0Var.d()) {
                c0Var.h();
                c0Var.h();
            }
            c0Var.k();
            if (c0Var.d()) {
                h12 *= 2;
            }
        }
        return new k1.b().S(str).e0("video/hevc").I(com.google.android.exoplayer2.util.e.c(e11, d10, e12, i10, iArr, e13)).j0(h11).Q(h12).a0(f10).T(Collections.singletonList(bArr)).E();
    }

    private static void j(com.google.android.exoplayer2.util.c0 c0Var) {
        for (int i9 = 0; i9 < 4; i9++) {
            int i10 = 0;
            while (i10 < 6) {
                int i11 = 1;
                if (!c0Var.d()) {
                    c0Var.h();
                } else {
                    int min = Math.min(64, 1 << ((i9 << 1) + 4));
                    if (i9 > 1) {
                        c0Var.g();
                    }
                    for (int i12 = 0; i12 < min; i12++) {
                        c0Var.g();
                    }
                }
                if (i9 == 3) {
                    i11 = 3;
                }
                i10 += i11;
            }
        }
    }

    private static void k(com.google.android.exoplayer2.util.c0 c0Var) {
        int h10 = c0Var.h();
        boolean z10 = false;
        int i9 = 0;
        for (int i10 = 0; i10 < h10; i10++) {
            if (i10 != 0) {
                z10 = c0Var.d();
            }
            if (z10) {
                c0Var.k();
                c0Var.h();
                for (int i11 = 0; i11 <= i9; i11++) {
                    if (c0Var.d()) {
                        c0Var.k();
                    }
                }
            } else {
                int h11 = c0Var.h();
                int h12 = c0Var.h();
                int i12 = h11 + h12;
                for (int i13 = 0; i13 < h11; i13++) {
                    c0Var.h();
                    c0Var.k();
                }
                for (int i14 = 0; i14 < h12; i14++) {
                    c0Var.h();
                    c0Var.k();
                }
                i9 = i12;
            }
        }
    }

    private void l(long j10, int i9, int i10, long j11) {
        this.f54683d.g(j10, i9, i10, j11, this.f54684e);
        if (!this.f54684e) {
            this.f54686g.e(i10);
            this.f54687h.e(i10);
            this.f54688i.e(i10);
        }
        this.f54689j.e(i10);
        this.f54690k.e(i10);
    }

    @Override // m2.m
    public void b(com.google.android.exoplayer2.util.b0 b0Var) {
        a();
        while (b0Var.a() > 0) {
            int e10 = b0Var.e();
            int f10 = b0Var.f();
            byte[] d10 = b0Var.d();
            this.f54691l += b0Var.a();
            this.f54682c.a(b0Var, b0Var.a());
            while (e10 < f10) {
                int c10 = com.google.android.exoplayer2.util.w.c(d10, e10, f10, this.f54685f);
                if (c10 == f10) {
                    h(d10, e10, f10);
                    return;
                }
                int e11 = com.google.android.exoplayer2.util.w.e(d10, c10);
                int i9 = c10 - e10;
                if (i9 > 0) {
                    h(d10, e10, c10);
                }
                int i10 = f10 - c10;
                long j10 = this.f54691l - i10;
                g(j10, i10, i9 < 0 ? -i9 : 0, this.f54692m);
                l(j10, i10, e11, this.f54692m);
                e10 = c10 + 3;
            }
        }
    }

    @Override // m2.m
    public void c() {
        this.f54691l = 0L;
        this.f54692m = -9223372036854775807L;
        com.google.android.exoplayer2.util.w.a(this.f54685f);
        this.f54686g.d();
        this.f54687h.d();
        this.f54688i.d();
        this.f54689j.d();
        this.f54690k.d();
        a aVar = this.f54683d;
        if (aVar != null) {
            aVar.f();
        }
    }

    @Override // m2.m
    public void d(c2.n nVar, i0.d dVar) {
        dVar.a();
        this.f54681b = dVar.b();
        c2.e0 q10 = nVar.q(dVar.c(), 2);
        this.f54682c = q10;
        this.f54683d = new a(q10);
        this.f54680a.b(nVar, dVar);
    }

    @Override // m2.m
    public void e() {
    }

    @Override // m2.m
    public void f(long j10, int i9) {
        if (j10 != -9223372036854775807L) {
            this.f54692m = j10;
        }
    }
}
