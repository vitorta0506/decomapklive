package mh;
/* loaded from: classes7.dex */
public final class l implements Comparable<l> {

    /* renamed from: c  reason: collision with root package name */
    public static final l f55125c = new l(0, 0);

    /* renamed from: a  reason: collision with root package name */
    private final long f55126a;

    /* renamed from: b  reason: collision with root package name */
    private final long f55127b;

    private l(long j10, long j11) {
        this.f55126a = j10;
        this.f55127b = j11;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(l lVar) {
        long j10 = this.f55126a;
        long j11 = lVar.f55126a;
        if (j10 != j11) {
            return j10 < j11 ? -1 : 1;
        }
        long j12 = this.f55127b;
        long j13 = lVar.f55127b;
        if (j12 == j13) {
            return 0;
        }
        return j12 < j13 ? -1 : 1;
    }

    public void b(char[] cArr, int i9) {
        f.d(this.f55126a, cArr, i9);
        f.d(this.f55127b, cArr, i9 + 16);
    }

    public String c() {
        char[] cArr = new char[32];
        b(cArr, 0);
        return new String(cArr);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof l) {
            l lVar = (l) obj;
            return this.f55126a == lVar.f55126a && this.f55127b == lVar.f55127b;
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f55126a;
        long j11 = this.f55127b;
        return ((((int) (j10 ^ (j10 >>> 32))) + 31) * 31) + ((int) (j11 ^ (j11 >>> 32)));
    }

    public String toString() {
        return "TraceId{traceId=" + c() + "}";
    }
}
