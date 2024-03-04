package j2;

import androidx.annotation.Nullable;
import c2.b0;
import c2.c0;
import com.google.android.exoplayer2.audio.b0;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.r;
/* loaded from: classes.dex */
final class i implements g {

    /* renamed from: a  reason: collision with root package name */
    private final long f52997a;

    /* renamed from: b  reason: collision with root package name */
    private final int f52998b;

    /* renamed from: c  reason: collision with root package name */
    private final long f52999c;

    /* renamed from: d  reason: collision with root package name */
    private final long f53000d;

    /* renamed from: e  reason: collision with root package name */
    private final long f53001e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final long[] f53002f;

    private i(long j10, int i9, long j11) {
        this(j10, i9, j11, -1L, null);
    }

    @Nullable
    public static i a(long j10, long j11, b0.a aVar, com.google.android.exoplayer2.util.b0 b0Var) {
        int H;
        int i9 = aVar.f5480g;
        int i10 = aVar.f5477d;
        int n9 = b0Var.n();
        if ((n9 & 1) != 1 || (H = b0Var.H()) == 0) {
            return null;
        }
        long E0 = l0.E0(H, i9 * 1000000, i10);
        if ((n9 & 6) != 6) {
            return new i(j11, aVar.f5476c, E0);
        }
        long F = b0Var.F();
        long[] jArr = new long[100];
        for (int i11 = 0; i11 < 100; i11++) {
            jArr[i11] = b0Var.D();
        }
        if (j10 != -1) {
            long j12 = j11 + F;
            if (j10 != j12) {
                r.i("XingSeeker", "XING data size mismatch: " + j10 + ", " + j12);
            }
        }
        return new i(j11, aVar.f5476c, E0, F, jArr);
    }

    private long b(int i9) {
        return (this.f52999c * i9) / 100;
    }

    @Override // c2.b0
    public b0.a c(long j10) {
        long[] jArr;
        if (!e()) {
            return new b0.a(new c0(0L, this.f52997a + this.f52998b));
        }
        long q10 = l0.q(j10, 0L, this.f52999c);
        double d10 = (q10 * 100.0d) / this.f52999c;
        double d11 = 0.0d;
        if (d10 > 0.0d) {
            if (d10 >= 100.0d) {
                d11 = 256.0d;
            } else {
                int i9 = (int) d10;
                double d12 = ((long[]) com.google.android.exoplayer2.util.a.h(this.f53002f))[i9];
                d11 = d12 + ((d10 - i9) * ((i9 == 99 ? 256.0d : jArr[i9 + 1]) - d12));
            }
        }
        return new b0.a(new c0(q10, this.f52997a + l0.q(Math.round((d11 / 256.0d) * this.f53000d), this.f52998b, this.f53000d - 1)));
    }

    @Override // j2.g
    public long d() {
        return this.f53001e;
    }

    @Override // c2.b0
    public boolean e() {
        return this.f53002f != null;
    }

    @Override // j2.g
    public long g(long j10) {
        long j11 = j10 - this.f52997a;
        if (!e() || j11 <= this.f52998b) {
            return 0L;
        }
        long[] jArr = (long[]) com.google.android.exoplayer2.util.a.h(this.f53002f);
        double d10 = (j11 * 256.0d) / this.f53000d;
        int i9 = l0.i(jArr, (long) d10, true, true);
        long b10 = b(i9);
        long j12 = jArr[i9];
        int i10 = i9 + 1;
        long b11 = b(i10);
        long j13 = i9 == 99 ? 256L : jArr[i10];
        return b10 + Math.round((j12 == j13 ? 0.0d : (d10 - j12) / (j13 - j12)) * (b11 - b10));
    }

    @Override // c2.b0
    public long i() {
        return this.f52999c;
    }

    private i(long j10, int i9, long j11, long j12, @Nullable long[] jArr) {
        this.f52997a = j10;
        this.f52998b = i9;
        this.f52999c = j11;
        this.f53002f = jArr;
        this.f53000d = j12;
        this.f53001e = j12 != -1 ? j10 + j12 : -1L;
    }
}
