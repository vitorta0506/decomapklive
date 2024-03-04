package m2;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.w;
import com.tencent.thumbplayer.core.common.TPDecoderType;
import java.util.ArrayList;
import java.util.Arrays;
import m2.i0;
/* loaded from: classes.dex */
public final class p implements m {

    /* renamed from: a  reason: collision with root package name */
    private final d0 f54631a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f54632b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f54633c;

    /* renamed from: g  reason: collision with root package name */
    private long f54637g;

    /* renamed from: i  reason: collision with root package name */
    private String f54639i;

    /* renamed from: j  reason: collision with root package name */
    private c2.e0 f54640j;

    /* renamed from: k  reason: collision with root package name */
    private b f54641k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f54642l;

    /* renamed from: n  reason: collision with root package name */
    private boolean f54644n;

    /* renamed from: h  reason: collision with root package name */
    private final boolean[] f54638h = new boolean[3];

    /* renamed from: d  reason: collision with root package name */
    private final u f54634d = new u(7, 128);

    /* renamed from: e  reason: collision with root package name */
    private final u f54635e = new u(8, 128);

    /* renamed from: f  reason: collision with root package name */
    private final u f54636f = new u(6, 128);

    /* renamed from: m  reason: collision with root package name */
    private long f54643m = -9223372036854775807L;

    /* renamed from: o  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.b0 f54645o = new com.google.android.exoplayer2.util.b0();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final c2.e0 f54646a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f54647b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f54648c;

        /* renamed from: f  reason: collision with root package name */
        private final com.google.android.exoplayer2.util.c0 f54651f;

        /* renamed from: g  reason: collision with root package name */
        private byte[] f54652g;

        /* renamed from: h  reason: collision with root package name */
        private int f54653h;

        /* renamed from: i  reason: collision with root package name */
        private int f54654i;

        /* renamed from: j  reason: collision with root package name */
        private long f54655j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f54656k;

        /* renamed from: l  reason: collision with root package name */
        private long f54657l;

        /* renamed from: o  reason: collision with root package name */
        private boolean f54660o;

        /* renamed from: p  reason: collision with root package name */
        private long f54661p;

        /* renamed from: q  reason: collision with root package name */
        private long f54662q;

        /* renamed from: r  reason: collision with root package name */
        private boolean f54663r;

        /* renamed from: d  reason: collision with root package name */
        private final SparseArray<w.c> f54649d = new SparseArray<>();

        /* renamed from: e  reason: collision with root package name */
        private final SparseArray<w.b> f54650e = new SparseArray<>();

        /* renamed from: m  reason: collision with root package name */
        private a f54658m = new a();

        /* renamed from: n  reason: collision with root package name */
        private a f54659n = new a();

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private boolean f54664a;

            /* renamed from: b  reason: collision with root package name */
            private boolean f54665b;
            @Nullable

            /* renamed from: c  reason: collision with root package name */
            private w.c f54666c;

            /* renamed from: d  reason: collision with root package name */
            private int f54667d;

            /* renamed from: e  reason: collision with root package name */
            private int f54668e;

            /* renamed from: f  reason: collision with root package name */
            private int f54669f;

            /* renamed from: g  reason: collision with root package name */
            private int f54670g;

            /* renamed from: h  reason: collision with root package name */
            private boolean f54671h;

            /* renamed from: i  reason: collision with root package name */
            private boolean f54672i;

            /* renamed from: j  reason: collision with root package name */
            private boolean f54673j;

            /* renamed from: k  reason: collision with root package name */
            private boolean f54674k;

            /* renamed from: l  reason: collision with root package name */
            private int f54675l;

            /* renamed from: m  reason: collision with root package name */
            private int f54676m;

            /* renamed from: n  reason: collision with root package name */
            private int f54677n;

            /* renamed from: o  reason: collision with root package name */
            private int f54678o;

            /* renamed from: p  reason: collision with root package name */
            private int f54679p;

            private a() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public boolean c(a aVar) {
                int i9;
                int i10;
                int i11;
                boolean z10;
                if (this.f54664a) {
                    if (aVar.f54664a) {
                        w.c cVar = (w.c) com.google.android.exoplayer2.util.a.h(this.f54666c);
                        w.c cVar2 = (w.c) com.google.android.exoplayer2.util.a.h(aVar.f54666c);
                        return (this.f54669f == aVar.f54669f && this.f54670g == aVar.f54670g && this.f54671h == aVar.f54671h && (!this.f54672i || !aVar.f54672i || this.f54673j == aVar.f54673j) && (((i9 = this.f54667d) == (i10 = aVar.f54667d) || (i9 != 0 && i10 != 0)) && (((i11 = cVar.f7069l) != 0 || cVar2.f7069l != 0 || (this.f54676m == aVar.f54676m && this.f54677n == aVar.f54677n)) && ((i11 != 1 || cVar2.f7069l != 1 || (this.f54678o == aVar.f54678o && this.f54679p == aVar.f54679p)) && (z10 = this.f54674k) == aVar.f54674k && (!z10 || this.f54675l == aVar.f54675l))))) ? false : true;
                    }
                    return true;
                }
                return false;
            }

            public void b() {
                this.f54665b = false;
                this.f54664a = false;
            }

            public boolean d() {
                int i9;
                return this.f54665b && ((i9 = this.f54668e) == 7 || i9 == 2);
            }

            public void e(w.c cVar, int i9, int i10, int i11, int i12, boolean z10, boolean z11, boolean z12, boolean z13, int i13, int i14, int i15, int i16, int i17) {
                this.f54666c = cVar;
                this.f54667d = i9;
                this.f54668e = i10;
                this.f54669f = i11;
                this.f54670g = i12;
                this.f54671h = z10;
                this.f54672i = z11;
                this.f54673j = z12;
                this.f54674k = z13;
                this.f54675l = i13;
                this.f54676m = i14;
                this.f54677n = i15;
                this.f54678o = i16;
                this.f54679p = i17;
                this.f54664a = true;
                this.f54665b = true;
            }

            public void f(int i9) {
                this.f54668e = i9;
                this.f54665b = true;
            }
        }

        public b(c2.e0 e0Var, boolean z10, boolean z11) {
            this.f54646a = e0Var;
            this.f54647b = z10;
            this.f54648c = z11;
            byte[] bArr = new byte[128];
            this.f54652g = bArr;
            this.f54651f = new com.google.android.exoplayer2.util.c0(bArr, 0, 0);
            g();
        }

        private void d(int i9) {
            long j10 = this.f54662q;
            if (j10 == -9223372036854775807L) {
                return;
            }
            boolean z10 = this.f54663r;
            this.f54646a.c(j10, z10 ? 1 : 0, (int) (this.f54655j - this.f54661p), i9, null);
        }

        /* JADX WARN: Removed duplicated region for block: B:53:0x00ff  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x0102  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x0106  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x0118  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x011e  */
        /* JADX WARN: Removed duplicated region for block: B:74:0x014e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void a(byte[] r24, int r25, int r26) {
            /*
                Method dump skipped, instructions count: 408
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: m2.p.b.a(byte[], int, int):void");
        }

        public boolean b(long j10, int i9, boolean z10, boolean z11) {
            boolean z12 = false;
            if (this.f54654i == 9 || (this.f54648c && this.f54659n.c(this.f54658m))) {
                if (z10 && this.f54660o) {
                    d(i9 + ((int) (j10 - this.f54655j)));
                }
                this.f54661p = this.f54655j;
                this.f54662q = this.f54657l;
                this.f54663r = false;
                this.f54660o = true;
            }
            if (this.f54647b) {
                z11 = this.f54659n.d();
            }
            boolean z13 = this.f54663r;
            int i10 = this.f54654i;
            if (i10 == 5 || (z11 && i10 == 1)) {
                z12 = true;
            }
            boolean z14 = z13 | z12;
            this.f54663r = z14;
            return z14;
        }

        public boolean c() {
            return this.f54648c;
        }

        public void e(w.b bVar) {
            this.f54650e.append(bVar.f7055a, bVar);
        }

        public void f(w.c cVar) {
            this.f54649d.append(cVar.f7061d, cVar);
        }

        public void g() {
            this.f54656k = false;
            this.f54660o = false;
            this.f54659n.b();
        }

        public void h(long j10, int i9, long j11) {
            this.f54654i = i9;
            this.f54657l = j11;
            this.f54655j = j10;
            if (!this.f54647b || i9 != 1) {
                if (!this.f54648c) {
                    return;
                }
                if (i9 != 5 && i9 != 1 && i9 != 2) {
                    return;
                }
            }
            a aVar = this.f54658m;
            this.f54658m = this.f54659n;
            this.f54659n = aVar;
            aVar.b();
            this.f54653h = 0;
            this.f54656k = true;
        }
    }

    public p(d0 d0Var, boolean z10, boolean z11) {
        this.f54631a = d0Var;
        this.f54632b = z10;
        this.f54633c = z11;
    }

    private void a() {
        com.google.android.exoplayer2.util.a.h(this.f54640j);
        l0.j(this.f54641k);
    }

    private void g(long j10, int i9, int i10, long j11) {
        if (!this.f54642l || this.f54641k.c()) {
            this.f54634d.b(i10);
            this.f54635e.b(i10);
            if (!this.f54642l) {
                if (this.f54634d.c() && this.f54635e.c()) {
                    ArrayList arrayList = new ArrayList();
                    u uVar = this.f54634d;
                    arrayList.add(Arrays.copyOf(uVar.f54749d, uVar.f54750e));
                    u uVar2 = this.f54635e;
                    arrayList.add(Arrays.copyOf(uVar2.f54749d, uVar2.f54750e));
                    u uVar3 = this.f54634d;
                    w.c l10 = com.google.android.exoplayer2.util.w.l(uVar3.f54749d, 3, uVar3.f54750e);
                    u uVar4 = this.f54635e;
                    w.b j12 = com.google.android.exoplayer2.util.w.j(uVar4.f54749d, 3, uVar4.f54750e);
                    this.f54640j.d(new k1.b().S(this.f54639i).e0(TPDecoderType.TP_CODEC_MIMETYPE_AVC).I(com.google.android.exoplayer2.util.e.a(l10.f7058a, l10.f7059b, l10.f7060c)).j0(l10.f7063f).Q(l10.f7064g).a0(l10.f7065h).T(arrayList).E());
                    this.f54642l = true;
                    this.f54641k.f(l10);
                    this.f54641k.e(j12);
                    this.f54634d.d();
                    this.f54635e.d();
                }
            } else if (this.f54634d.c()) {
                u uVar5 = this.f54634d;
                this.f54641k.f(com.google.android.exoplayer2.util.w.l(uVar5.f54749d, 3, uVar5.f54750e));
                this.f54634d.d();
            } else if (this.f54635e.c()) {
                u uVar6 = this.f54635e;
                this.f54641k.e(com.google.android.exoplayer2.util.w.j(uVar6.f54749d, 3, uVar6.f54750e));
                this.f54635e.d();
            }
        }
        if (this.f54636f.b(i10)) {
            u uVar7 = this.f54636f;
            this.f54645o.N(this.f54636f.f54749d, com.google.android.exoplayer2.util.w.q(uVar7.f54749d, uVar7.f54750e));
            this.f54645o.P(4);
            this.f54631a.a(j11, this.f54645o);
        }
        if (this.f54641k.b(j10, i9, this.f54642l, this.f54644n)) {
            this.f54644n = false;
        }
    }

    private void h(byte[] bArr, int i9, int i10) {
        if (!this.f54642l || this.f54641k.c()) {
            this.f54634d.a(bArr, i9, i10);
            this.f54635e.a(bArr, i9, i10);
        }
        this.f54636f.a(bArr, i9, i10);
        this.f54641k.a(bArr, i9, i10);
    }

    private void i(long j10, int i9, long j11) {
        if (!this.f54642l || this.f54641k.c()) {
            this.f54634d.e(i9);
            this.f54635e.e(i9);
        }
        this.f54636f.e(i9);
        this.f54641k.h(j10, i9, j11);
    }

    @Override // m2.m
    public void b(com.google.android.exoplayer2.util.b0 b0Var) {
        a();
        int e10 = b0Var.e();
        int f10 = b0Var.f();
        byte[] d10 = b0Var.d();
        this.f54637g += b0Var.a();
        this.f54640j.a(b0Var, b0Var.a());
        while (true) {
            int c10 = com.google.android.exoplayer2.util.w.c(d10, e10, f10, this.f54638h);
            if (c10 == f10) {
                h(d10, e10, f10);
                return;
            }
            int f11 = com.google.android.exoplayer2.util.w.f(d10, c10);
            int i9 = c10 - e10;
            if (i9 > 0) {
                h(d10, e10, c10);
            }
            int i10 = f10 - c10;
            long j10 = this.f54637g - i10;
            g(j10, i10, i9 < 0 ? -i9 : 0, this.f54643m);
            i(j10, f11, this.f54643m);
            e10 = c10 + 3;
        }
    }

    @Override // m2.m
    public void c() {
        this.f54637g = 0L;
        this.f54644n = false;
        this.f54643m = -9223372036854775807L;
        com.google.android.exoplayer2.util.w.a(this.f54638h);
        this.f54634d.d();
        this.f54635e.d();
        this.f54636f.d();
        b bVar = this.f54641k;
        if (bVar != null) {
            bVar.g();
        }
    }

    @Override // m2.m
    public void d(c2.n nVar, i0.d dVar) {
        dVar.a();
        this.f54639i = dVar.b();
        c2.e0 q10 = nVar.q(dVar.c(), 2);
        this.f54640j = q10;
        this.f54641k = new b(q10, this.f54632b, this.f54633c);
        this.f54631a.b(nVar, dVar);
    }

    @Override // m2.m
    public void e() {
    }

    @Override // m2.m
    public void f(long j10, int i9) {
        if (j10 != -9223372036854775807L) {
            this.f54643m = j10;
        }
        this.f54644n |= (i9 & 2) != 0;
    }
}
