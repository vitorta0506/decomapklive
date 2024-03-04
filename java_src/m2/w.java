package m2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ParserException;
import m2.i0;
/* loaded from: classes.dex */
public final class w implements i0 {

    /* renamed from: a  reason: collision with root package name */
    private final m f54754a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.a0 f54755b = new com.google.android.exoplayer2.util.a0(new byte[10]);

    /* renamed from: c  reason: collision with root package name */
    private int f54756c = 0;

    /* renamed from: d  reason: collision with root package name */
    private int f54757d;

    /* renamed from: e  reason: collision with root package name */
    private com.google.android.exoplayer2.util.i0 f54758e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f54759f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f54760g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f54761h;

    /* renamed from: i  reason: collision with root package name */
    private int f54762i;

    /* renamed from: j  reason: collision with root package name */
    private int f54763j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f54764k;

    /* renamed from: l  reason: collision with root package name */
    private long f54765l;

    public w(m mVar) {
        this.f54754a = mVar;
    }

    private boolean d(com.google.android.exoplayer2.util.b0 b0Var, @Nullable byte[] bArr, int i9) {
        int min = Math.min(b0Var.a(), i9 - this.f54757d);
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            b0Var.Q(min);
        } else {
            b0Var.j(bArr, this.f54757d, min);
        }
        int i10 = this.f54757d + min;
        this.f54757d = i10;
        return i10 == i9;
    }

    private boolean e() {
        this.f54755b.p(0);
        int h10 = this.f54755b.h(24);
        if (h10 != 1) {
            com.google.android.exoplayer2.util.r.i("PesReader", "Unexpected start code prefix: " + h10);
            this.f54763j = -1;
            return false;
        }
        this.f54755b.r(8);
        int h11 = this.f54755b.h(16);
        this.f54755b.r(5);
        this.f54764k = this.f54755b.g();
        this.f54755b.r(2);
        this.f54759f = this.f54755b.g();
        this.f54760g = this.f54755b.g();
        this.f54755b.r(6);
        int h12 = this.f54755b.h(8);
        this.f54762i = h12;
        if (h11 == 0) {
            this.f54763j = -1;
        } else {
            int i9 = ((h11 + 6) - 9) - h12;
            this.f54763j = i9;
            if (i9 < 0) {
                com.google.android.exoplayer2.util.r.i("PesReader", "Found negative packet payload size: " + this.f54763j);
                this.f54763j = -1;
            }
        }
        return true;
    }

    private void f() {
        this.f54755b.p(0);
        this.f54765l = -9223372036854775807L;
        if (this.f54759f) {
            this.f54755b.r(4);
            this.f54755b.r(1);
            this.f54755b.r(1);
            long h10 = (this.f54755b.h(3) << 30) | (this.f54755b.h(15) << 15) | this.f54755b.h(15);
            this.f54755b.r(1);
            if (!this.f54761h && this.f54760g) {
                this.f54755b.r(4);
                this.f54755b.r(1);
                this.f54755b.r(1);
                this.f54755b.r(1);
                this.f54758e.b((this.f54755b.h(3) << 30) | (this.f54755b.h(15) << 15) | this.f54755b.h(15));
                this.f54761h = true;
            }
            this.f54765l = this.f54758e.b(h10);
        }
    }

    private void g(int i9) {
        this.f54756c = i9;
        this.f54757d = 0;
    }

    @Override // m2.i0
    public void a(com.google.android.exoplayer2.util.i0 i0Var, c2.n nVar, i0.d dVar) {
        this.f54758e = i0Var;
        this.f54754a.d(nVar, dVar);
    }

    @Override // m2.i0
    public final void b(com.google.android.exoplayer2.util.b0 b0Var, int i9) throws ParserException {
        com.google.android.exoplayer2.util.a.h(this.f54758e);
        if ((i9 & 1) != 0) {
            int i10 = this.f54756c;
            if (i10 != 0 && i10 != 1) {
                if (i10 == 2) {
                    com.google.android.exoplayer2.util.r.i("PesReader", "Unexpected start indicator reading extended header");
                } else if (i10 == 3) {
                    if (this.f54763j != -1) {
                        com.google.android.exoplayer2.util.r.i("PesReader", "Unexpected start indicator: expected " + this.f54763j + " more bytes");
                    }
                    this.f54754a.e();
                } else {
                    throw new IllegalStateException();
                }
            }
            g(1);
        }
        while (b0Var.a() > 0) {
            int i11 = this.f54756c;
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 == 2) {
                        if (d(b0Var, this.f54755b.f6939a, Math.min(10, this.f54762i)) && d(b0Var, null, this.f54762i)) {
                            f();
                            i9 |= this.f54764k ? 4 : 0;
                            this.f54754a.f(this.f54765l, i9);
                            g(3);
                        }
                    } else if (i11 == 3) {
                        int a10 = b0Var.a();
                        int i12 = this.f54763j;
                        int i13 = i12 != -1 ? a10 - i12 : 0;
                        if (i13 > 0) {
                            a10 -= i13;
                            b0Var.O(b0Var.e() + a10);
                        }
                        this.f54754a.b(b0Var);
                        int i14 = this.f54763j;
                        if (i14 != -1) {
                            int i15 = i14 - a10;
                            this.f54763j = i15;
                            if (i15 == 0) {
                                this.f54754a.e();
                                g(1);
                            }
                        }
                    } else {
                        throw new IllegalStateException();
                    }
                } else if (d(b0Var, this.f54755b.f6939a, 9)) {
                    g(e() ? 2 : 0);
                }
            } else {
                b0Var.Q(b0Var.a());
            }
        }
    }

    @Override // m2.i0
    public final void c() {
        this.f54756c = 0;
        this.f54757d = 0;
        this.f54761h = false;
        this.f54754a.c();
    }
}
