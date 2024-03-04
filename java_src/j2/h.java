package j2;

import androidx.annotation.Nullable;
import c2.b0;
import c2.c0;
import com.google.android.exoplayer2.audio.b0;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.r;
/* loaded from: classes.dex */
final class h implements g {

    /* renamed from: a  reason: collision with root package name */
    private final long[] f52993a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f52994b;

    /* renamed from: c  reason: collision with root package name */
    private final long f52995c;

    /* renamed from: d  reason: collision with root package name */
    private final long f52996d;

    private h(long[] jArr, long[] jArr2, long j10, long j11) {
        this.f52993a = jArr;
        this.f52994b = jArr2;
        this.f52995c = j10;
        this.f52996d = j11;
    }

    @Nullable
    public static h a(long j10, long j11, b0.a aVar, com.google.android.exoplayer2.util.b0 b0Var) {
        int D;
        b0Var.Q(10);
        int n9 = b0Var.n();
        if (n9 <= 0) {
            return null;
        }
        int i9 = aVar.f5477d;
        long E0 = l0.E0(n9, 1000000 * (i9 >= 32000 ? 1152 : 576), i9);
        int J = b0Var.J();
        int J2 = b0Var.J();
        int J3 = b0Var.J();
        b0Var.Q(2);
        long j12 = j11 + aVar.f5476c;
        long[] jArr = new long[J];
        long[] jArr2 = new long[J];
        int i10 = 0;
        long j13 = j11;
        while (i10 < J) {
            int i11 = J2;
            long j14 = j12;
            jArr[i10] = (i10 * E0) / J;
            jArr2[i10] = Math.max(j13, j14);
            if (J3 == 1) {
                D = b0Var.D();
            } else if (J3 == 2) {
                D = b0Var.J();
            } else if (J3 == 3) {
                D = b0Var.G();
            } else if (J3 != 4) {
                return null;
            } else {
                D = b0Var.H();
            }
            j13 += D * i11;
            i10++;
            jArr = jArr;
            J2 = i11;
            j12 = j14;
        }
        long[] jArr3 = jArr;
        if (j10 != -1 && j10 != j13) {
            r.i("VbriSeeker", "VBRI data size mismatch: " + j10 + ", " + j13);
        }
        return new h(jArr3, jArr2, E0, j13);
    }

    @Override // c2.b0
    public b0.a c(long j10) {
        int i9 = l0.i(this.f52993a, j10, true, true);
        c0 c0Var = new c0(this.f52993a[i9], this.f52994b[i9]);
        if (c0Var.f1469a < j10 && i9 != this.f52993a.length - 1) {
            int i10 = i9 + 1;
            return new b0.a(c0Var, new c0(this.f52993a[i10], this.f52994b[i10]));
        }
        return new b0.a(c0Var);
    }

    @Override // j2.g
    public long d() {
        return this.f52996d;
    }

    @Override // c2.b0
    public boolean e() {
        return true;
    }

    @Override // j2.g
    public long g(long j10) {
        return this.f52993a[l0.i(this.f52994b, j10, true, true)];
    }

    @Override // c2.b0
    public long i() {
        return this.f52995c;
    }
}
