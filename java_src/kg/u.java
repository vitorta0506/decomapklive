package kg;

import java.util.Arrays;
/* loaded from: classes5.dex */
final class u {

    /* renamed from: a  reason: collision with root package name */
    private long[] f53914a = new long[9];

    /* renamed from: b  reason: collision with root package name */
    private int f53915b;

    private void b(int i9) {
        while (i9 > 1) {
            int i10 = i9 >> 1;
            if (!g(i10, i9)) {
                return;
            }
            h(i9, i10);
            i9 = i10;
        }
    }

    private void f(int i9) {
        while (true) {
            int i10 = i9 << 1;
            int i11 = this.f53915b;
            if (i10 > i11) {
                return;
            }
            if (i10 < i11) {
                int i12 = i10 + 1;
                if (g(i10, i12)) {
                    i10 = i12;
                }
            }
            if (!g(i9, i10)) {
                return;
            }
            h(i9, i10);
            i9 = i10;
        }
    }

    private boolean g(int i9, int i10) {
        long[] jArr = this.f53914a;
        return jArr[i9] > jArr[i10];
    }

    private void h(int i9, int i10) {
        long[] jArr = this.f53914a;
        long j10 = jArr[i9];
        jArr[i9] = jArr[i10];
        jArr[i10] = j10;
    }

    public boolean a() {
        return this.f53915b == 0;
    }

    public void c(long j10) {
        if (j10 != -1) {
            int i9 = this.f53915b + 1;
            this.f53915b = i9;
            long[] jArr = this.f53914a;
            if (i9 == jArr.length) {
                this.f53914a = Arrays.copyOf(jArr, ((jArr.length - 1) * 2) + 1);
            }
            long[] jArr2 = this.f53914a;
            int i10 = this.f53915b;
            jArr2[i10] = j10;
            b(i10);
            return;
        }
        throw new IllegalArgumentException("The NO_VALUE (-1) cannot be added to the queue.");
    }

    public long d() {
        int i9 = this.f53915b;
        if (i9 == 0) {
            return -1L;
        }
        long[] jArr = this.f53914a;
        long j10 = jArr[1];
        jArr[1] = jArr[i9];
        jArr[i9] = 0;
        this.f53915b = i9 - 1;
        f(1);
        return j10;
    }

    public void e(long j10) {
        int i9 = 1;
        while (true) {
            int i10 = this.f53915b;
            if (i9 > i10) {
                return;
            }
            long[] jArr = this.f53914a;
            if (jArr[i9] == j10) {
                this.f53915b = i10 - 1;
                jArr[i9] = jArr[i10];
                b(i9);
                f(i9);
                return;
            }
            i9++;
        }
    }
}
