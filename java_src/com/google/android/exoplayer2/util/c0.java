package com.google.android.exoplayer2.util;

import kotlin.UByte;
/* loaded from: classes2.dex */
public final class c0 {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f6947a;

    /* renamed from: b  reason: collision with root package name */
    private int f6948b;

    /* renamed from: c  reason: collision with root package name */
    private int f6949c;

    /* renamed from: d  reason: collision with root package name */
    private int f6950d;

    public c0(byte[] bArr, int i9, int i10) {
        i(bArr, i9, i10);
    }

    private void a() {
        int i9;
        int i10 = this.f6949c;
        a.f(i10 >= 0 && (i10 < (i9 = this.f6948b) || (i10 == i9 && this.f6950d == 0)));
    }

    private int f() {
        int i9 = 0;
        while (!d()) {
            i9++;
        }
        return ((1 << i9) - 1) + (i9 > 0 ? e(i9) : 0);
    }

    private boolean j(int i9) {
        if (2 <= i9 && i9 < this.f6948b) {
            byte[] bArr = this.f6947a;
            if (bArr[i9] == 3 && bArr[i9 - 2] == 0 && bArr[i9 - 1] == 0) {
                return true;
            }
        }
        return false;
    }

    public boolean b(int i9) {
        int i10 = this.f6949c;
        int i11 = i9 / 8;
        int i12 = i10 + i11;
        int i13 = (this.f6950d + i9) - (i11 * 8);
        if (i13 > 7) {
            i12++;
            i13 -= 8;
        }
        while (true) {
            i10++;
            if (i10 > i12 || i12 >= this.f6948b) {
                break;
            } else if (j(i10)) {
                i12++;
                i10 += 2;
            }
        }
        int i14 = this.f6948b;
        if (i12 >= i14) {
            return i12 == i14 && i13 == 0;
        }
        return true;
    }

    public boolean c() {
        int i9 = this.f6949c;
        int i10 = this.f6950d;
        int i11 = 0;
        while (this.f6949c < this.f6948b && !d()) {
            i11++;
        }
        boolean z10 = this.f6949c == this.f6948b;
        this.f6949c = i9;
        this.f6950d = i10;
        return !z10 && b((i11 * 2) + 1);
    }

    public boolean d() {
        boolean z10 = (this.f6947a[this.f6949c] & (128 >> this.f6950d)) != 0;
        k();
        return z10;
    }

    public int e(int i9) {
        int i10;
        this.f6950d += i9;
        int i11 = 0;
        while (true) {
            i10 = this.f6950d;
            if (i10 <= 8) {
                break;
            }
            int i12 = i10 - 8;
            this.f6950d = i12;
            byte[] bArr = this.f6947a;
            int i13 = this.f6949c;
            i11 |= (bArr[i13] & UByte.MAX_VALUE) << i12;
            if (!j(i13 + 1)) {
                r3 = 1;
            }
            this.f6949c = i13 + r3;
        }
        byte[] bArr2 = this.f6947a;
        int i14 = this.f6949c;
        int i15 = ((-1) >>> (32 - i9)) & (i11 | ((bArr2[i14] & UByte.MAX_VALUE) >> (8 - i10)));
        if (i10 == 8) {
            this.f6950d = 0;
            this.f6949c = i14 + (j(i14 + 1) ? 2 : 1);
        }
        a();
        return i15;
    }

    public int g() {
        int f10 = f();
        return (f10 % 2 == 0 ? -1 : 1) * ((f10 + 1) / 2);
    }

    public int h() {
        return f();
    }

    public void i(byte[] bArr, int i9, int i10) {
        this.f6947a = bArr;
        this.f6949c = i9;
        this.f6948b = i10;
        this.f6950d = 0;
        a();
    }

    public void k() {
        int i9 = this.f6950d + 1;
        this.f6950d = i9;
        if (i9 == 8) {
            this.f6950d = 0;
            int i10 = this.f6949c;
            this.f6949c = i10 + (j(i10 + 1) ? 2 : 1);
        }
        a();
    }

    public void l(int i9) {
        int i10 = this.f6949c;
        int i11 = i9 / 8;
        int i12 = i10 + i11;
        this.f6949c = i12;
        int i13 = this.f6950d + (i9 - (i11 * 8));
        this.f6950d = i13;
        if (i13 > 7) {
            this.f6949c = i12 + 1;
            this.f6950d = i13 - 8;
        }
        while (true) {
            i10++;
            if (i10 <= this.f6949c) {
                if (j(i10)) {
                    this.f6949c++;
                    i10 += 2;
                }
            } else {
                a();
                return;
            }
        }
    }
}
