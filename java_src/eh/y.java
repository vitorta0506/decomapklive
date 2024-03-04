package eh;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class y extends i2 {

    /* renamed from: a  reason: collision with root package name */
    private final t1 f39405a;

    /* renamed from: b  reason: collision with root package name */
    private final long f39406b;

    /* renamed from: c  reason: collision with root package name */
    private final long f39407c;

    /* renamed from: d  reason: collision with root package name */
    private final long f39408d;

    /* renamed from: e  reason: collision with root package name */
    private final long f39409e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(t1 t1Var, long j10, long j11, long j12, long j13) {
        Objects.requireNonNull(t1Var, "Null locality");
        this.f39405a = t1Var;
        this.f39406b = j10;
        this.f39407c = j11;
        this.f39408d = j12;
        this.f39409e = j13;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.i2
    public t1 b() {
        return this.f39405a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.i2
    public long c() {
        return this.f39408d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.i2
    public long d() {
        return this.f39406b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.i2
    public long e() {
        return this.f39409e;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i2) {
            i2 i2Var = (i2) obj;
            return this.f39405a.equals(i2Var.b()) && this.f39406b == i2Var.d() && this.f39407c == i2Var.f() && this.f39408d == i2Var.c() && this.f39409e == i2Var.e();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.i2
    public long f() {
        return this.f39407c;
    }

    public int hashCode() {
        long j10 = this.f39406b;
        long j11 = this.f39407c;
        long j12 = this.f39408d;
        long j13 = this.f39409e;
        return ((((((((this.f39405a.hashCode() ^ 1000003) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ ((int) (j12 ^ (j12 >>> 32)))) * 1000003) ^ ((int) (j13 ^ (j13 >>> 32)));
    }

    public String toString() {
        return "UpstreamLocalityStats{locality=" + this.f39405a + ", totalIssuedRequests=" + this.f39406b + ", totalSuccessfulRequests=" + this.f39407c + ", totalErrorRequests=" + this.f39408d + ", totalRequestsInProgress=" + this.f39409e + "}";
    }
}
