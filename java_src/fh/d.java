package fh;

import fh.i;
/* loaded from: classes5.dex */
final class d extends i.a {

    /* renamed from: a  reason: collision with root package name */
    private final long f39737a;

    /* renamed from: b  reason: collision with root package name */
    private final long f39738b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(long j10, long j11) {
        this.f39737a = j10;
        this.f39738b = j11;
    }

    @Override // fh.i.a
    public long b() {
        return this.f39738b;
    }

    @Override // fh.i.a
    public long c() {
        return this.f39737a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i.a) {
            i.a aVar = (i.a) obj;
            return this.f39737a == aVar.c() && this.f39738b == aVar.b();
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f39737a;
        long j11 = this.f39738b;
        return ((int) ((j11 >>> 32) ^ j11)) ^ ((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003);
    }

    public String toString() {
        return "Range{start=" + this.f39737a + ", end=" + this.f39738b + "}";
    }
}
