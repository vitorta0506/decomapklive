package mh;
/* loaded from: classes7.dex */
public final class k implements Comparable<k> {

    /* renamed from: b  reason: collision with root package name */
    public static final k f55123b = new k(0);

    /* renamed from: a  reason: collision with root package name */
    private final long f55124a;

    private k(long j10) {
        this.f55124a = j10;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(k kVar) {
        long j10 = this.f55124a;
        long j11 = kVar.f55124a;
        if (j10 < j11) {
            return -1;
        }
        return j10 == j11 ? 0 : 1;
    }

    public void b(char[] cArr, int i9) {
        f.d(this.f55124a, cArr, i9);
    }

    public byte[] c() {
        byte[] bArr = new byte[8];
        f.e(this.f55124a, bArr, 0);
        return bArr;
    }

    public String d() {
        char[] cArr = new char[16];
        b(cArr, 0);
        return new String(cArr);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof k) && this.f55124a == ((k) obj).f55124a;
    }

    public int hashCode() {
        long j10 = this.f55124a;
        return (int) (j10 ^ (j10 >>> 32));
    }

    public String toString() {
        return "SpanId{spanId=" + d() + "}";
    }
}
