package com.google.android.exoplayer2.util;

import androidx.core.view.MotionEventCompat;
import java.nio.charset.Charset;
import kotlin.UByte;
/* loaded from: classes2.dex */
public final class a0 {

    /* renamed from: a  reason: collision with root package name */
    public byte[] f6939a;

    /* renamed from: b  reason: collision with root package name */
    private int f6940b;

    /* renamed from: c  reason: collision with root package name */
    private int f6941c;

    /* renamed from: d  reason: collision with root package name */
    private int f6942d;

    public a0() {
        this.f6939a = l0.f6990f;
    }

    private void a() {
        int i9;
        int i10 = this.f6940b;
        a.f(i10 >= 0 && (i10 < (i9 = this.f6942d) || (i10 == i9 && this.f6941c == 0)));
    }

    public int b() {
        return ((this.f6942d - this.f6940b) * 8) - this.f6941c;
    }

    public void c() {
        if (this.f6941c == 0) {
            return;
        }
        this.f6941c = 0;
        this.f6940b++;
        a();
    }

    public int d() {
        a.f(this.f6941c == 0);
        return this.f6940b;
    }

    public int e() {
        return (this.f6940b * 8) + this.f6941c;
    }

    public void f(int i9, int i10) {
        if (i10 < 32) {
            i9 &= (1 << i10) - 1;
        }
        int min = Math.min(8 - this.f6941c, i10);
        int i11 = this.f6941c;
        int i12 = (8 - i11) - min;
        int i13 = (MotionEventCompat.ACTION_POINTER_INDEX_MASK >> i11) | ((1 << i12) - 1);
        byte[] bArr = this.f6939a;
        int i14 = this.f6940b;
        bArr[i14] = (byte) (i13 & bArr[i14]);
        int i15 = i10 - min;
        bArr[i14] = (byte) (((i9 >>> i15) << i12) | bArr[i14]);
        int i16 = i14 + 1;
        while (i15 > 8) {
            this.f6939a[i16] = (byte) (i9 >>> (i15 - 8));
            i15 -= 8;
            i16++;
        }
        int i17 = 8 - i15;
        byte[] bArr2 = this.f6939a;
        bArr2[i16] = (byte) (bArr2[i16] & ((1 << i17) - 1));
        bArr2[i16] = (byte) (((i9 & ((1 << i15) - 1)) << i17) | bArr2[i16]);
        r(i10);
        a();
    }

    public boolean g() {
        boolean z10 = (this.f6939a[this.f6940b] & (128 >> this.f6941c)) != 0;
        q();
        return z10;
    }

    public int h(int i9) {
        int i10;
        if (i9 == 0) {
            return 0;
        }
        this.f6941c += i9;
        int i11 = 0;
        while (true) {
            i10 = this.f6941c;
            if (i10 <= 8) {
                break;
            }
            int i12 = i10 - 8;
            this.f6941c = i12;
            byte[] bArr = this.f6939a;
            int i13 = this.f6940b;
            this.f6940b = i13 + 1;
            i11 |= (bArr[i13] & UByte.MAX_VALUE) << i12;
        }
        byte[] bArr2 = this.f6939a;
        int i14 = this.f6940b;
        int i15 = ((-1) >>> (32 - i9)) & (i11 | ((bArr2[i14] & UByte.MAX_VALUE) >> (8 - i10)));
        if (i10 == 8) {
            this.f6941c = 0;
            this.f6940b = i14 + 1;
        }
        a();
        return i15;
    }

    public void i(byte[] bArr, int i9, int i10) {
        int i11 = (i10 >> 3) + i9;
        while (i9 < i11) {
            byte[] bArr2 = this.f6939a;
            int i12 = this.f6940b;
            int i13 = i12 + 1;
            this.f6940b = i13;
            byte b10 = bArr2[i12];
            int i14 = this.f6941c;
            bArr[i9] = (byte) (b10 << i14);
            bArr[i9] = (byte) (((255 & bArr2[i13]) >> (8 - i14)) | bArr[i9]);
            i9++;
        }
        int i15 = i10 & 7;
        if (i15 == 0) {
            return;
        }
        bArr[i11] = (byte) (bArr[i11] & (255 >> i15));
        int i16 = this.f6941c;
        if (i16 + i15 > 8) {
            int i17 = bArr[i11];
            byte[] bArr3 = this.f6939a;
            int i18 = this.f6940b;
            this.f6940b = i18 + 1;
            bArr[i11] = (byte) (i17 | ((bArr3[i18] & UByte.MAX_VALUE) << i16));
            this.f6941c = i16 - 8;
        }
        int i19 = this.f6941c + i15;
        this.f6941c = i19;
        byte[] bArr4 = this.f6939a;
        int i20 = this.f6940b;
        bArr[i11] = (byte) (((byte) (((255 & bArr4[i20]) >> (8 - i19)) << (8 - i15))) | bArr[i11]);
        if (i19 == 8) {
            this.f6941c = 0;
            this.f6940b = i20 + 1;
        }
        a();
    }

    public long j(int i9) {
        if (i9 <= 32) {
            return l0.N0(h(i9));
        }
        return l0.M0(h(i9 - 32), h(32));
    }

    public void k(byte[] bArr, int i9, int i10) {
        a.f(this.f6941c == 0);
        System.arraycopy(this.f6939a, this.f6940b, bArr, i9, i10);
        this.f6940b += i10;
        a();
    }

    public String l(int i9, Charset charset) {
        byte[] bArr = new byte[i9];
        k(bArr, 0, i9);
        return new String(bArr, charset);
    }

    public void m(b0 b0Var) {
        o(b0Var.d(), b0Var.f());
        p(b0Var.e() * 8);
    }

    public void n(byte[] bArr) {
        o(bArr, bArr.length);
    }

    public void o(byte[] bArr, int i9) {
        this.f6939a = bArr;
        this.f6940b = 0;
        this.f6941c = 0;
        this.f6942d = i9;
    }

    public void p(int i9) {
        int i10 = i9 / 8;
        this.f6940b = i10;
        this.f6941c = i9 - (i10 * 8);
        a();
    }

    public void q() {
        int i9 = this.f6941c + 1;
        this.f6941c = i9;
        if (i9 == 8) {
            this.f6941c = 0;
            this.f6940b++;
        }
        a();
    }

    public void r(int i9) {
        int i10 = i9 / 8;
        int i11 = this.f6940b + i10;
        this.f6940b = i11;
        int i12 = this.f6941c + (i9 - (i10 * 8));
        this.f6941c = i12;
        if (i12 > 7) {
            this.f6940b = i11 + 1;
            this.f6941c = i12 - 8;
        }
        a();
    }

    public void s(int i9) {
        a.f(this.f6941c == 0);
        this.f6940b += i9;
        a();
    }

    public a0(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public a0(byte[] bArr, int i9) {
        this.f6939a = bArr;
        this.f6942d = i9;
    }
}
