package m1;
/* loaded from: classes.dex */
final class a extends b {

    /* renamed from: a  reason: collision with root package name */
    private final long f54409a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(long j10) {
        this.f54409a = j10;
    }

    @Override // m1.b
    public long c() {
        return this.f54409a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof b) && this.f54409a == ((b) obj).c();
    }

    public int hashCode() {
        long j10 = this.f54409a;
        return 1000003 ^ ((int) (j10 ^ (j10 >>> 32)));
    }

    public String toString() {
        return "LogResponse{nextRequestWaitMillis=" + this.f54409a + "}";
    }
}
