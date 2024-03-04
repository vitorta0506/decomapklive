package com.google.re2j;
/* loaded from: classes3.dex */
class a {

    /* renamed from: a  reason: collision with root package name */
    private int[] f15349a;

    /* renamed from: b  reason: collision with root package name */
    private int f15350b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(int[] iArr) {
        this.f15349a = iArr;
        this.f15350b = iArr.length;
    }

    static String l(int[] iArr, int i9) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('[');
        for (int i10 = 0; i10 < i9; i10 += 2) {
            if (i10 > 0) {
                sb2.append(' ');
            }
            int i11 = iArr[i10];
            int i12 = iArr[i10 + 1];
            if (i11 == i12) {
                sb2.append("0x");
                sb2.append(Integer.toHexString(i11));
            } else {
                sb2.append("0x");
                sb2.append(Integer.toHexString(i11));
                sb2.append("-0x");
                sb2.append(Integer.toHexString(i12));
            }
        }
        sb2.append(']');
        return sb2.toString();
    }

    private static int n(int[] iArr, int i9, int i10, int i11) {
        int i12 = iArr[i9] - i10;
        return i12 != 0 ? i12 : i11 - iArr[i9 + 1];
    }

    private void o(int i9) {
        int[] iArr = this.f15349a;
        if (iArr.length < i9) {
            int i10 = this.f15350b;
            if (i9 < i10 * 2) {
                i9 = i10 * 2;
            }
            int[] iArr2 = new int[i9];
            System.arraycopy(iArr, 0, iArr2, 0, i10);
            this.f15349a = iArr2;
        }
    }

    private static void q(int[] iArr, int i9, int i10) {
        int i11 = ((i9 + i10) / 2) & (-2);
        int i12 = iArr[i11];
        int i13 = iArr[i11 + 1];
        int i14 = i9;
        int i15 = i10;
        while (i14 <= i15) {
            while (i14 < i10 && n(iArr, i14, i12, i13) < 0) {
                i14 += 2;
            }
            while (i15 > i9 && n(iArr, i15, i12, i13) > 0) {
                i15 -= 2;
            }
            if (i14 <= i15) {
                if (i14 != i15) {
                    int i16 = iArr[i14];
                    iArr[i14] = iArr[i15];
                    iArr[i15] = i16;
                    int i17 = i14 + 1;
                    int i18 = iArr[i17];
                    int i19 = i15 + 1;
                    iArr[i17] = iArr[i19];
                    iArr[i19] = i18;
                }
                i14 += 2;
                i15 -= 2;
            }
        }
        if (i9 < i15) {
            q(iArr, i9, i15);
        }
        if (i14 < i10) {
            q(iArr, i14, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a a(int[] iArr) {
        for (int i9 = 0; i9 < iArr.length; i9 += 2) {
            i(iArr[i9], iArr[i9 + 1]);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a b(int[] iArr, int i9) {
        return i9 < 0 ? g(iArr) : a(iArr);
    }

    a c(int[] iArr) {
        for (int i9 = 0; i9 < iArr.length; i9 += 2) {
            d(iArr[i9], iArr[i9 + 1]);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a d(int i9, int i10) {
        if (i9 > 65 || i10 < 66639) {
            if (i10 < 65 || i9 > 66639) {
                return i(i9, i10);
            }
            if (i9 < 65) {
                i(i9, 64);
                i9 = 65;
            }
            if (i10 > 66639) {
                i(66640, i10);
                i10 = 66639;
            }
            while (i9 <= i10) {
                i(i9, i9);
                for (int d10 = n.d(i9); d10 != i9; d10 = n.d(d10)) {
                    i(d10, d10);
                }
                i9++;
            }
            return this;
        }
        return i(i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a e(b bVar, boolean z10) {
        int[] iArr = bVar.f15371b;
        if (z10) {
            iArr = new a().c(iArr).m().r();
        }
        return b(iArr, bVar.f15370a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a f(int i9, int i10) {
        return (i10 & 1) != 0 ? d(i9, i9) : i(i9, i9);
    }

    a g(int[] iArr) {
        int i9 = 0;
        for (int i10 = 0; i10 < iArr.length; i10 += 2) {
            int i11 = iArr[i10];
            int i12 = iArr[i10 + 1];
            int i13 = i11 - 1;
            if (i9 <= i13) {
                i(i9, i13);
            }
            i9 = i12 + 1;
        }
        if (i9 <= 1114111) {
            i(i9, 1114111);
        }
        return this;
    }

    a h(int[][] iArr) {
        int i9 = 0;
        for (int[] iArr2 : iArr) {
            int i10 = iArr2[0];
            int i11 = iArr2[1];
            int i12 = iArr2[2];
            if (i12 == 1) {
                int i13 = i10 - 1;
                if (i9 <= i13) {
                    i(i9, i13);
                }
                i9 = i11 + 1;
            } else {
                while (i10 <= i11) {
                    int i14 = i10 - 1;
                    if (i9 <= i14) {
                        i(i9, i14);
                    }
                    i9 = i10 + 1;
                    i10 += i12;
                }
            }
        }
        if (i9 <= 1114111) {
            i(i9, 1114111);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a i(int i9, int i10) {
        if (this.f15350b > 0) {
            for (int i11 = 2; i11 <= 4; i11 += 2) {
                int i12 = this.f15350b;
                if (i12 >= i11) {
                    int[] iArr = this.f15349a;
                    int i13 = iArr[i12 - i11];
                    int i14 = iArr[(i12 - i11) + 1];
                    if (i9 <= i14 + 1 && i13 <= i10 + 1) {
                        if (i9 < i13) {
                            iArr[i12 - i11] = i9;
                        }
                        if (i10 > i14) {
                            iArr[(i12 - i11) + 1] = i10;
                        }
                        return this;
                    }
                }
            }
        }
        o(this.f15350b + 2);
        int[] iArr2 = this.f15349a;
        int i15 = this.f15350b;
        int i16 = i15 + 1;
        this.f15350b = i16;
        iArr2[i15] = i9;
        this.f15350b = i16 + 1;
        iArr2[i16] = i10;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a j(int[][] iArr) {
        for (int[] iArr2 : iArr) {
            int i9 = iArr2[0];
            int i10 = iArr2[1];
            int i11 = iArr2[2];
            if (i11 == 1) {
                i(i9, i10);
            } else {
                while (i9 <= i10) {
                    i(i9, i9);
                    i9 += i11;
                }
            }
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a k(int[][] iArr, int i9) {
        return i9 < 0 ? h(iArr) : j(iArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a m() {
        int i9 = this.f15350b;
        if (i9 < 4) {
            return this;
        }
        q(this.f15349a, 0, i9 - 2);
        int i10 = 2;
        for (int i11 = 2; i11 < this.f15350b; i11 += 2) {
            int[] iArr = this.f15349a;
            int i12 = iArr[i11];
            int i13 = iArr[i11 + 1];
            int i14 = i10 - 1;
            if (i12 <= iArr[i14] + 1) {
                if (i13 > iArr[i14]) {
                    iArr[i14] = i13;
                }
            } else {
                iArr[i10] = i12;
                iArr[i10 + 1] = i13;
                i10 += 2;
            }
        }
        this.f15350b = i10;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a p() {
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < this.f15350b; i11 += 2) {
            int[] iArr = this.f15349a;
            int i12 = iArr[i11];
            int i13 = iArr[i11 + 1];
            int i14 = i12 - 1;
            if (i10 <= i14) {
                iArr[i9] = i10;
                iArr[i9 + 1] = i14;
                i9 += 2;
            }
            i10 = i13 + 1;
        }
        this.f15350b = i9;
        if (i10 <= 1114111) {
            o(i9 + 2);
            int[] iArr2 = this.f15349a;
            int i15 = this.f15350b;
            int i16 = i15 + 1;
            this.f15350b = i16;
            iArr2[i15] = i10;
            this.f15350b = i16 + 1;
            iArr2[i16] = 1114111;
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] r() {
        int i9 = this.f15350b;
        int[] iArr = this.f15349a;
        if (i9 == iArr.length) {
            return iArr;
        }
        int[] iArr2 = new int[i9];
        System.arraycopy(iArr, 0, iArr2, 0, i9);
        return iArr2;
    }

    public String toString() {
        return l(this.f15349a, this.f15350b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a() {
        this.f15349a = p.f15549a;
        this.f15350b = 0;
    }
}
