package c2;

import c2.b0;
import com.google.android.exoplayer2.util.l0;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class d implements b0 {

    /* renamed from: a  reason: collision with root package name */
    public final int f1471a;

    /* renamed from: b  reason: collision with root package name */
    public final int[] f1472b;

    /* renamed from: c  reason: collision with root package name */
    public final long[] f1473c;

    /* renamed from: d  reason: collision with root package name */
    public final long[] f1474d;

    /* renamed from: e  reason: collision with root package name */
    public final long[] f1475e;

    /* renamed from: f  reason: collision with root package name */
    private final long f1476f;

    public d(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f1472b = iArr;
        this.f1473c = jArr;
        this.f1474d = jArr2;
        this.f1475e = jArr3;
        int length = iArr.length;
        this.f1471a = length;
        if (length > 0) {
            this.f1476f = jArr2[length - 1] + jArr3[length - 1];
        } else {
            this.f1476f = 0L;
        }
    }

    public int a(long j10) {
        return l0.i(this.f1475e, j10, true, true);
    }

    @Override // c2.b0
    public b0.a c(long j10) {
        int a10 = a(j10);
        c0 c0Var = new c0(this.f1475e[a10], this.f1473c[a10]);
        if (c0Var.f1469a < j10 && a10 != this.f1471a - 1) {
            int i9 = a10 + 1;
            return new b0.a(c0Var, new c0(this.f1475e[i9], this.f1473c[i9]));
        }
        return new b0.a(c0Var);
    }

    @Override // c2.b0
    public boolean e() {
        return true;
    }

    @Override // c2.b0
    public long i() {
        return this.f1476f;
    }

    public String toString() {
        return "ChunkIndex(length=" + this.f1471a + ", sizes=" + Arrays.toString(this.f1472b) + ", offsets=" + Arrays.toString(this.f1473c) + ", timeUs=" + Arrays.toString(this.f1475e) + ", durationsUs=" + Arrays.toString(this.f1474d) + ")";
    }
}
