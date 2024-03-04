package c2;

import c2.b0;
import c2.v;
import com.google.android.exoplayer2.util.l0;
/* loaded from: classes.dex */
public final class u implements b0 {

    /* renamed from: a  reason: collision with root package name */
    private final v f1553a;

    /* renamed from: b  reason: collision with root package name */
    private final long f1554b;

    public u(v vVar, long j10) {
        this.f1553a = vVar;
        this.f1554b = j10;
    }

    private c0 a(long j10, long j11) {
        return new c0((j10 * 1000000) / this.f1553a.f1559e, this.f1554b + j11);
    }

    @Override // c2.b0
    public b0.a c(long j10) {
        com.google.android.exoplayer2.util.a.h(this.f1553a.f1565k);
        v vVar = this.f1553a;
        v.a aVar = vVar.f1565k;
        long[] jArr = aVar.f1567a;
        long[] jArr2 = aVar.f1568b;
        int i9 = l0.i(jArr, vVar.i(j10), true, false);
        c0 a10 = a(i9 == -1 ? 0L : jArr[i9], i9 != -1 ? jArr2[i9] : 0L);
        if (a10.f1469a != j10 && i9 != jArr.length - 1) {
            int i10 = i9 + 1;
            return new b0.a(a10, a(jArr[i10], jArr2[i10]));
        }
        return new b0.a(a10);
    }

    @Override // c2.b0
    public boolean e() {
        return true;
    }

    @Override // c2.b0
    public long i() {
        return this.f1553a.f();
    }
}
