package kg;
/* loaded from: classes5.dex */
final class t {

    /* renamed from: c  reason: collision with root package name */
    private int f53905c;

    /* renamed from: d  reason: collision with root package name */
    private long f53906d;

    /* renamed from: e  reason: collision with root package name */
    private final long f53907e;

    /* renamed from: b  reason: collision with root package name */
    private long[] f53904b = new long[32];

    /* renamed from: a  reason: collision with root package name */
    private int f53903a = 31;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(long j10) {
        this.f53907e = j10;
        this.f53906d = j10;
        a();
    }

    private void a() {
        int length = this.f53904b.length;
        this.f53903a = (length - 1) & (-2);
        this.f53905c = (int) Math.log(length);
    }

    private void b() {
        long[] jArr = this.f53904b;
        this.f53904b = new long[jArr.length * 2];
        a();
        for (int i9 = 0; i9 < jArr.length; i9 += 2) {
            long j10 = jArr[i9];
            if (j10 != 0) {
                e(j10, jArr[i9 + 1]);
            }
        }
    }

    private int d(long j10) {
        long j11 = (j10 ^ (j10 >>> 33)) * (-49064778989728563L);
        long j12 = (j11 ^ (j11 >>> 33)) * (-4265267296055464877L);
        return this.f53903a & ((int) (j12 ^ (j12 >>> 33)));
    }

    public long c(long j10) {
        if (j10 == 0) {
            return this.f53906d;
        }
        int d10 = d(j10);
        for (int i9 = 0; i9 < this.f53905c; i9++) {
            long[] jArr = this.f53904b;
            if (jArr[d10] == j10) {
                return jArr[d10 + 1];
            }
            d10 = (d10 + 2) & this.f53903a;
        }
        return this.f53907e;
    }

    public long e(long j10, long j11) {
        int d10;
        int i9;
        long[] jArr;
        long j12;
        if (j10 == 0) {
            long j13 = this.f53906d;
            this.f53906d = j11;
            return j13;
        }
        loop0: while (true) {
            d10 = d(j10);
            i9 = 0;
            while (i9 < this.f53905c) {
                jArr = this.f53904b;
                j12 = jArr[d10];
                if (j12 == j10 || j12 == 0) {
                    break loop0;
                }
                d10 = (d10 + 2) & this.f53903a;
                i9++;
            }
            b();
        }
        long j14 = j12 == 0 ? this.f53907e : jArr[d10 + 1];
        jArr[d10] = j10;
        jArr[d10 + 1] = j11;
        while (i9 < this.f53905c) {
            d10 = (d10 + 2) & this.f53903a;
            long[] jArr2 = this.f53904b;
            if (jArr2[d10] == j10) {
                jArr2[d10] = 0;
                return jArr2[d10 + 1];
            }
            i9++;
        }
        return j14;
    }

    public void f(long j10) {
        if (j10 == 0) {
            this.f53906d = this.f53907e;
            return;
        }
        int d10 = d(j10);
        for (int i9 = 0; i9 < this.f53905c; i9++) {
            long[] jArr = this.f53904b;
            if (jArr[d10] == j10) {
                jArr[d10] = 0;
                return;
            }
            d10 = (d10 + 2) & this.f53903a;
        }
    }
}
