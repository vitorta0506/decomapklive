package kg;

import java.lang.reflect.Array;
/* loaded from: classes5.dex */
abstract class q0 {

    /* renamed from: a  reason: collision with root package name */
    protected final int f53878a;

    /* renamed from: b  reason: collision with root package name */
    protected final int f53879b;

    /* renamed from: c  reason: collision with root package name */
    protected final int f53880c;

    /* renamed from: d  reason: collision with root package name */
    protected final int f53881d;

    /* renamed from: e  reason: collision with root package name */
    final int f53882e;

    /* renamed from: f  reason: collision with root package name */
    int f53883f;

    /* renamed from: g  reason: collision with root package name */
    int f53884g;

    /* renamed from: h  reason: collision with root package name */
    int f53885h;

    /* renamed from: i  reason: collision with root package name */
    private int f53886i;

    /* renamed from: j  reason: collision with root package name */
    private final short[][] f53887j;

    /* renamed from: k  reason: collision with root package name */
    private final int[] f53888k;

    /* renamed from: l  reason: collision with root package name */
    private final int[] f53889l;

    /* renamed from: m  reason: collision with root package name */
    private final int[] f53890m;

    /* JADX INFO: Access modifiers changed from: protected */
    public q0(int i9, int i10, int i11, int i12) {
        this.f53878a = i9;
        this.f53879b = i10;
        this.f53880c = i11;
        this.f53881d = i12;
        this.f53887j = (short[][]) Array.newInstance(short.class, ((b0.n(i11) + 1) - 4) << 2, 7);
        int k10 = k();
        this.f53882e = k10;
        int[] iArr = new int[k10];
        this.f53889l = iArr;
        int[] iArr2 = new int[this.f53884g];
        this.f53888k = iArr2;
        b(iArr, iArr2);
        int[] iArr3 = new int[this.f53886i >> 4];
        this.f53890m = iArr3;
        i(iArr3);
    }

    private int a(int i9) {
        int i10 = this.f53881d;
        int i11 = (i10 - 1) & i9;
        return i11 == 0 ? i9 : (i9 + i10) - i11;
    }

    private void b(int[] iArr, int[] iArr2) {
        int i9 = 0;
        for (int i10 = 0; i10 < this.f53882e; i10++) {
            short[] sArr = this.f53887j[i10];
            int i11 = (1 << sArr[1]) + (sArr[3] << sArr[2]);
            iArr[i10] = i11;
            if (sArr[4] == 1) {
                iArr2[i9] = i11;
                i9++;
            }
        }
    }

    private static int d(int i9) {
        int n9 = b0.n((i9 << 1) - 1);
        int i10 = (1 << (n9 < 7 ? 4 : (n9 - 2) - 1)) - 1;
        return (i9 + i10) & (~i10);
    }

    private int f(int i9, boolean z10) {
        int i10 = i9 << this.f53879b;
        if (i10 > this.f53880c) {
            return this.f53884g;
        }
        int n9 = b0.n((i10 << 1) - 1);
        int i11 = this.f53879b;
        int i12 = (n9 < i11 + 2 ? 0 : n9 - (i11 + 2)) << 2;
        int i13 = n9 < (i11 + 2) + 1 ? i11 : (n9 - 2) - 1;
        int i14 = i12 + ((((i10 - 1) & ((-1) << i13)) >> i13) & 3);
        return (!z10 || this.f53888k[i14] <= (i9 << i11)) ? i14 : i14 - 1;
    }

    private void i(int[] iArr) {
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (i9 <= this.f53886i) {
            int i12 = 1 << (this.f53887j[i10][2] - 4);
            while (i9 <= this.f53886i) {
                int i13 = i12 - 1;
                if (i12 > 0) {
                    int i14 = i11 + 1;
                    iArr[i11] = i10;
                    i12 = i13;
                    i11 = i14;
                    i9 = (i14 + 1) << 4;
                }
            }
            i10++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001b  */
    /* JADX WARN: Removed duplicated region for block: B:11:0x001d  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int j(int r9, int r10, int r11, int r12) {
        /*
            r8 = this;
            int r0 = r8.f53879b
            r1 = 0
            r2 = 1
            if (r11 < r0) goto L8
        L6:
            r0 = 1
            goto L19
        L8:
            int r0 = r2 << r0
            int r3 = r2 << r10
            int r4 = r2 << r11
            int r4 = r4 * r12
            int r3 = r3 + r4
            int r4 = r3 / r0
            int r4 = r4 * r0
            if (r3 != r4) goto L18
            goto L6
        L18:
            r0 = 0
        L19:
            if (r12 != 0) goto L1d
            r3 = 0
            goto L21
        L1d:
            int r3 = kg.b0.n(r12)
        L21:
            int r4 = r2 << r3
            if (r4 >= r12) goto L27
            r4 = 1
            goto L28
        L27:
            r4 = 0
        L28:
            int r3 = r3 + r11
            if (r3 != r10) goto L2e
            int r3 = r10 + 1
            goto L2f
        L2e:
            r3 = r10
        L2f:
            if (r3 != r10) goto L32
            r4 = 1
        L32:
            int r5 = r8.f53879b
            r6 = 2
            int r5 = r5 + r6
            if (r3 >= r5) goto L3a
            r5 = 1
            goto L3b
        L3a:
            r5 = 0
        L3b:
            r7 = 12
            if (r3 < r7) goto L46
            if (r3 != r7) goto L44
            if (r4 != 0) goto L44
            goto L46
        L44:
            r3 = 0
            goto L47
        L46:
            r3 = r11
        L47:
            r4 = 7
            short[] r4 = new short[r4]
            short r7 = (short) r9
            r4[r1] = r7
            short r1 = (short) r10
            r4[r2] = r1
            short r1 = (short) r11
            r4[r6] = r1
            r1 = 3
            short r6 = (short) r12
            r4[r1] = r6
            r1 = 4
            r4[r1] = r0
            r0 = 5
            r4[r0] = r5
            short r3 = (short) r3
            r5 = 6
            r4[r5] = r3
            short[][] r3 = r8.f53887j
            r3[r9] = r4
            int r10 = r2 << r10
            int r11 = r12 << r11
            int r10 = r10 + r11
            short r11 = r4[r1]
            if (r11 != r2) goto L73
            int r11 = r8.f53884g
            int r11 = r11 + r2
            r8.f53884g = r11
        L73:
            short r11 = r4[r0]
            if (r11 != r2) goto L7e
            int r11 = r8.f53883f
            int r11 = r11 + r2
            r8.f53883f = r11
            r8.f53885h = r9
        L7e:
            short r9 = r4[r5]
            if (r9 == 0) goto L84
            r8.f53886i = r10
        L84:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kg.q0.j(int, int, int, int):int");
    }

    private int k() {
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (i9 < 4) {
            int i12 = i9 + 1;
            int j10 = j(i10, 4, 4, i9);
            i10++;
            i11 = j10;
            i9 = i12;
        }
        int i13 = 6;
        int i14 = 4;
        while (i11 < this.f53880c) {
            int i15 = 1;
            while (i15 <= 4 && i11 < this.f53880c) {
                int i16 = i10 + 1;
                int j11 = j(i10, i13, i14, i15);
                i15++;
                i11 = j11;
                i10 = i16;
            }
            i13++;
            i14++;
        }
        return i10;
    }

    public int c(int i9) {
        if (i9 == 0) {
            return this.f53889l[0];
        }
        if (this.f53881d > 0) {
            i9 = a(i9);
        }
        if (i9 <= this.f53886i) {
            return this.f53889l[this.f53890m[(i9 - 1) >> 4]];
        }
        return d(i9);
    }

    public int e(int i9) {
        return f(i9, false);
    }

    public int g(int i9) {
        return f(i9, true);
    }

    public int h(int i9) {
        if (i9 == 0) {
            return 0;
        }
        if (i9 > this.f53880c) {
            return this.f53882e;
        }
        if (this.f53881d > 0) {
            i9 = a(i9);
        }
        if (i9 <= this.f53886i) {
            return this.f53890m[(i9 - 1) >> 4];
        }
        int n9 = b0.n((i9 << 1) - 1);
        int i10 = (n9 >= 7 ? n9 - 6 : 0) << 2;
        int i11 = n9 >= 7 ? (n9 - 2) - 1 : 4;
        return i10 + ((((i9 - 1) & ((-1) << i11)) >> i11) & 3);
    }

    public int l(int i9) {
        return this.f53889l[i9];
    }
}
