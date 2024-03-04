package n2;

import c2.b0;
import c2.c0;
import com.google.android.exoplayer2.util.l0;
/* loaded from: classes.dex */
final class e implements b0 {

    /* renamed from: a  reason: collision with root package name */
    private final c f55332a;

    /* renamed from: b  reason: collision with root package name */
    private final int f55333b;

    /* renamed from: c  reason: collision with root package name */
    private final long f55334c;

    /* renamed from: d  reason: collision with root package name */
    private final long f55335d;

    /* renamed from: e  reason: collision with root package name */
    private final long f55336e;

    public e(c cVar, int i9, long j10, long j11) {
        this.f55332a = cVar;
        this.f55333b = i9;
        this.f55334c = j10;
        long j12 = (j11 - j10) / cVar.f55327e;
        this.f55335d = j12;
        this.f55336e = a(j12);
    }

    private long a(long j10) {
        return l0.E0(j10 * this.f55333b, 1000000L, this.f55332a.f55325c);
    }

    @Override // c2.b0
    public b0.a c(long j10) {
        long q10 = l0.q((this.f55332a.f55325c * j10) / (this.f55333b * 1000000), 0L, this.f55335d - 1);
        long j11 = this.f55334c + (this.f55332a.f55327e * q10);
        long a10 = a(q10);
        c0 c0Var = new c0(a10, j11);
        if (a10 < j10 && q10 != this.f55335d - 1) {
            long j12 = q10 + 1;
            return new b0.a(c0Var, new c0(a(j12), this.f55334c + (this.f55332a.f55327e * j12)));
        }
        return new b0.a(c0Var);
    }

    @Override // c2.b0
    public boolean e() {
        return true;
    }

    @Override // c2.b0
    public long i() {
        return this.f55336e;
    }
}
