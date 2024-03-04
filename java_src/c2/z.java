package c2;

import c2.b0;
import com.google.android.exoplayer2.util.l0;
/* loaded from: classes.dex */
public final class z implements b0 {

    /* renamed from: a  reason: collision with root package name */
    private final long[] f1574a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f1575b;

    /* renamed from: c  reason: collision with root package name */
    private final long f1576c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f1577d;

    public z(long[] jArr, long[] jArr2, long j10) {
        com.google.android.exoplayer2.util.a.a(jArr.length == jArr2.length);
        int length = jArr2.length;
        boolean z10 = length > 0;
        this.f1577d = z10;
        if (z10 && jArr2[0] > 0) {
            int i9 = length + 1;
            long[] jArr3 = new long[i9];
            this.f1574a = jArr3;
            long[] jArr4 = new long[i9];
            this.f1575b = jArr4;
            System.arraycopy(jArr, 0, jArr3, 1, length);
            System.arraycopy(jArr2, 0, jArr4, 1, length);
        } else {
            this.f1574a = jArr;
            this.f1575b = jArr2;
        }
        this.f1576c = j10;
    }

    @Override // c2.b0
    public b0.a c(long j10) {
        if (!this.f1577d) {
            return new b0.a(c0.f1468c);
        }
        int i9 = l0.i(this.f1575b, j10, true, true);
        c0 c0Var = new c0(this.f1575b[i9], this.f1574a[i9]);
        if (c0Var.f1469a != j10 && i9 != this.f1575b.length - 1) {
            int i10 = i9 + 1;
            return new b0.a(c0Var, new c0(this.f1575b[i10], this.f1574a[i10]));
        }
        return new b0.a(c0Var);
    }

    @Override // c2.b0
    public boolean e() {
        return this.f1577d;
    }

    @Override // c2.b0
    public long i() {
        return this.f1576c;
    }
}
