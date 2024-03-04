package v2;

import java.util.Arrays;
import java.util.Random;
/* loaded from: classes.dex */
public interface k0 {

    /* loaded from: classes.dex */
    public static class a implements k0 {

        /* renamed from: a  reason: collision with root package name */
        private final Random f58864a;

        /* renamed from: b  reason: collision with root package name */
        private final int[] f58865b;

        /* renamed from: c  reason: collision with root package name */
        private final int[] f58866c;

        public a(int i9) {
            this(i9, new Random());
        }

        private static int[] i(int i9, Random random) {
            int[] iArr = new int[i9];
            int i10 = 0;
            while (i10 < i9) {
                int i11 = i10 + 1;
                int nextInt = random.nextInt(i11);
                iArr[i10] = iArr[nextInt];
                iArr[nextInt] = i10;
                i10 = i11;
            }
            return iArr;
        }

        @Override // v2.k0
        public int a() {
            return this.f58865b.length;
        }

        @Override // v2.k0
        public k0 b(int i9, int i10) {
            int i11 = i10 - i9;
            int[] iArr = new int[this.f58865b.length - i11];
            int i12 = 0;
            int i13 = 0;
            while (true) {
                int[] iArr2 = this.f58865b;
                if (i12 < iArr2.length) {
                    if (iArr2[i12] < i9 || iArr2[i12] >= i10) {
                        iArr[i12 - i13] = iArr2[i12] >= i9 ? iArr2[i12] - i11 : iArr2[i12];
                    } else {
                        i13++;
                    }
                    i12++;
                } else {
                    return new a(iArr, new Random(this.f58864a.nextLong()));
                }
            }
        }

        @Override // v2.k0
        public int c(int i9) {
            int i10 = this.f58866c[i9] - 1;
            if (i10 >= 0) {
                return this.f58865b[i10];
            }
            return -1;
        }

        @Override // v2.k0
        public int d(int i9) {
            int i10 = this.f58866c[i9] + 1;
            int[] iArr = this.f58865b;
            if (i10 < iArr.length) {
                return iArr[i10];
            }
            return -1;
        }

        @Override // v2.k0
        public int e() {
            int[] iArr = this.f58865b;
            if (iArr.length > 0) {
                return iArr[iArr.length - 1];
            }
            return -1;
        }

        @Override // v2.k0
        public k0 f() {
            return new a(0, new Random(this.f58864a.nextLong()));
        }

        @Override // v2.k0
        public int g() {
            int[] iArr = this.f58865b;
            if (iArr.length > 0) {
                return iArr[0];
            }
            return -1;
        }

        @Override // v2.k0
        public k0 h(int i9, int i10) {
            int[] iArr = new int[i10];
            int[] iArr2 = new int[i10];
            int i11 = 0;
            int i12 = 0;
            while (i12 < i10) {
                iArr[i12] = this.f58864a.nextInt(this.f58865b.length + 1);
                int i13 = i12 + 1;
                int nextInt = this.f58864a.nextInt(i13);
                iArr2[i12] = iArr2[nextInt];
                iArr2[nextInt] = i12 + i9;
                i12 = i13;
            }
            Arrays.sort(iArr);
            int[] iArr3 = new int[this.f58865b.length + i10];
            int i14 = 0;
            int i15 = 0;
            while (true) {
                int[] iArr4 = this.f58865b;
                if (i11 < iArr4.length + i10) {
                    if (i14 < i10 && i15 == iArr[i14]) {
                        iArr3[i11] = iArr2[i14];
                        i14++;
                    } else {
                        int i16 = i15 + 1;
                        iArr3[i11] = iArr4[i15];
                        if (iArr3[i11] >= i9) {
                            iArr3[i11] = iArr3[i11] + i10;
                        }
                        i15 = i16;
                    }
                    i11++;
                } else {
                    return new a(iArr3, new Random(this.f58864a.nextLong()));
                }
            }
        }

        private a(int i9, Random random) {
            this(i(i9, random), random);
        }

        private a(int[] iArr, Random random) {
            this.f58865b = iArr;
            this.f58864a = random;
            this.f58866c = new int[iArr.length];
            for (int i9 = 0; i9 < iArr.length; i9++) {
                this.f58866c[iArr[i9]] = i9;
            }
        }
    }

    int a();

    k0 b(int i9, int i10);

    int c(int i9);

    int d(int i9);

    int e();

    k0 f();

    int g();

    k0 h(int i9, int i10);
}
