package c2;

import c2.b0;
/* loaded from: classes.dex */
public class e implements b0 {

    /* renamed from: a  reason: collision with root package name */
    private final long f1477a;

    /* renamed from: b  reason: collision with root package name */
    private final long f1478b;

    /* renamed from: c  reason: collision with root package name */
    private final int f1479c;

    /* renamed from: d  reason: collision with root package name */
    private final long f1480d;

    /* renamed from: e  reason: collision with root package name */
    private final int f1481e;

    /* renamed from: f  reason: collision with root package name */
    private final long f1482f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f1483g;

    public e(long j10, long j11, int i9, int i10, boolean z10) {
        this.f1477a = j10;
        this.f1478b = j11;
        this.f1479c = i10 == -1 ? 1 : i10;
        this.f1481e = i9;
        this.f1483g = z10;
        if (j10 == -1) {
            this.f1480d = -1L;
            this.f1482f = -9223372036854775807L;
            return;
        }
        this.f1480d = j10 - j11;
        this.f1482f = f(j10, j11, i9);
    }

    private long a(long j10) {
        int i9 = this.f1479c;
        long j11 = (((j10 * this.f1481e) / 8000000) / i9) * i9;
        long j12 = this.f1480d;
        if (j12 != -1) {
            j11 = Math.min(j11, j12 - i9);
        }
        return this.f1478b + Math.max(j11, 0L);
    }

    private static long f(long j10, long j11, int i9) {
        return ((Math.max(0L, j10 - j11) * 8) * 1000000) / i9;
    }

    public long b(long j10) {
        return f(j10, this.f1478b, this.f1481e);
    }

    @Override // c2.b0
    public b0.a c(long j10) {
        if (this.f1480d == -1 && !this.f1483g) {
            return new b0.a(new c0(0L, this.f1478b));
        }
        long a10 = a(j10);
        long b10 = b(a10);
        c0 c0Var = new c0(b10, a10);
        if (this.f1480d != -1 && b10 < j10) {
            int i9 = this.f1479c;
            if (i9 + a10 < this.f1477a) {
                long j11 = a10 + i9;
                return new b0.a(c0Var, new c0(b(j11), j11));
            }
        }
        return new b0.a(c0Var);
    }

    @Override // c2.b0
    public boolean e() {
        return this.f1480d != -1 || this.f1483g;
    }

    @Override // c2.b0
    public long i() {
        return this.f1482f;
    }
}
