package m2;

import com.google.android.exoplayer2.util.l0;
import java.io.IOException;
/* loaded from: classes.dex */
final class f0 {

    /* renamed from: a  reason: collision with root package name */
    private final int f54477a;

    /* renamed from: d  reason: collision with root package name */
    private boolean f54480d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f54481e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f54482f;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.i0 f54478b = new com.google.android.exoplayer2.util.i0(0);

    /* renamed from: g  reason: collision with root package name */
    private long f54483g = -9223372036854775807L;

    /* renamed from: h  reason: collision with root package name */
    private long f54484h = -9223372036854775807L;

    /* renamed from: i  reason: collision with root package name */
    private long f54485i = -9223372036854775807L;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.b0 f54479c = new com.google.android.exoplayer2.util.b0();

    /* JADX INFO: Access modifiers changed from: package-private */
    public f0(int i9) {
        this.f54477a = i9;
    }

    private int a(c2.m mVar) {
        this.f54479c.M(l0.f6990f);
        this.f54480d = true;
        mVar.f();
        return 0;
    }

    private int f(c2.m mVar, c2.a0 a0Var, int i9) throws IOException {
        int min = (int) Math.min(this.f54477a, mVar.a());
        long j10 = 0;
        if (mVar.getPosition() != j10) {
            a0Var.f1463a = j10;
            return 1;
        }
        this.f54479c.L(min);
        mVar.f();
        mVar.m(this.f54479c.d(), 0, min);
        this.f54483g = g(this.f54479c, i9);
        this.f54481e = true;
        return 0;
    }

    private long g(com.google.android.exoplayer2.util.b0 b0Var, int i9) {
        int f10 = b0Var.f();
        for (int e10 = b0Var.e(); e10 < f10; e10++) {
            if (b0Var.d()[e10] == 71) {
                long c10 = j0.c(b0Var, e10, i9);
                if (c10 != -9223372036854775807L) {
                    return c10;
                }
            }
        }
        return -9223372036854775807L;
    }

    private int h(c2.m mVar, c2.a0 a0Var, int i9) throws IOException {
        long a10 = mVar.a();
        int min = (int) Math.min(this.f54477a, a10);
        long j10 = a10 - min;
        if (mVar.getPosition() != j10) {
            a0Var.f1463a = j10;
            return 1;
        }
        this.f54479c.L(min);
        mVar.f();
        mVar.m(this.f54479c.d(), 0, min);
        this.f54484h = i(this.f54479c, i9);
        this.f54482f = true;
        return 0;
    }

    private long i(com.google.android.exoplayer2.util.b0 b0Var, int i9) {
        int e10 = b0Var.e();
        int f10 = b0Var.f();
        for (int i10 = f10 - 188; i10 >= e10; i10--) {
            if (j0.b(b0Var.d(), e10, f10, i10)) {
                long c10 = j0.c(b0Var, i10, i9);
                if (c10 != -9223372036854775807L) {
                    return c10;
                }
            }
        }
        return -9223372036854775807L;
    }

    public long b() {
        return this.f54485i;
    }

    public com.google.android.exoplayer2.util.i0 c() {
        return this.f54478b;
    }

    public boolean d() {
        return this.f54480d;
    }

    public int e(c2.m mVar, c2.a0 a0Var, int i9) throws IOException {
        if (i9 <= 0) {
            return a(mVar);
        }
        if (!this.f54482f) {
            return h(mVar, a0Var, i9);
        }
        if (this.f54484h == -9223372036854775807L) {
            return a(mVar);
        }
        if (!this.f54481e) {
            return f(mVar, a0Var, i9);
        }
        long j10 = this.f54483g;
        if (j10 == -9223372036854775807L) {
            return a(mVar);
        }
        long b10 = this.f54478b.b(this.f54484h) - this.f54478b.b(j10);
        this.f54485i = b10;
        if (b10 < 0) {
            com.google.android.exoplayer2.util.r.i("TsDurationReader", "Invalid duration: " + this.f54485i + ". Using TIME_UNSET instead.");
            this.f54485i = -9223372036854775807L;
        }
        return a(mVar);
    }
}
