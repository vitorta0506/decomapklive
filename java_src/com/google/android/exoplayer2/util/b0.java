package com.google.android.exoplayer2.util;

import androidx.annotation.Nullable;
import java.nio.charset.Charset;
import java.util.Arrays;
import kotlin.UByte;
import okio.Utf8;
/* loaded from: classes2.dex */
public final class b0 {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f6944a;

    /* renamed from: b  reason: collision with root package name */
    private int f6945b;

    /* renamed from: c  reason: collision with root package name */
    private int f6946c;

    public b0() {
        this.f6944a = l0.f6990f;
    }

    public String A(int i9) {
        return B(i9, com.google.common.base.e.f12356c);
    }

    public String B(int i9, Charset charset) {
        String str = new String(this.f6944a, this.f6945b, i9, charset);
        this.f6945b += i9;
        return str;
    }

    public int C() {
        return (D() << 21) | (D() << 14) | (D() << 7) | D();
    }

    public int D() {
        byte[] bArr = this.f6944a;
        int i9 = this.f6945b;
        this.f6945b = i9 + 1;
        return bArr[i9] & UByte.MAX_VALUE;
    }

    public int E() {
        byte[] bArr = this.f6944a;
        int i9 = this.f6945b;
        int i10 = i9 + 1;
        this.f6945b = i10;
        int i11 = i10 + 1;
        this.f6945b = i11;
        int i12 = (bArr[i10] & UByte.MAX_VALUE) | ((bArr[i9] & UByte.MAX_VALUE) << 8);
        this.f6945b = i11 + 2;
        return i12;
    }

    public long F() {
        byte[] bArr = this.f6944a;
        int i9 = this.f6945b;
        int i10 = i9 + 1;
        this.f6945b = i10;
        int i11 = i10 + 1;
        this.f6945b = i11;
        int i12 = i11 + 1;
        this.f6945b = i12;
        this.f6945b = i12 + 1;
        return ((bArr[i9] & 255) << 24) | ((bArr[i10] & 255) << 16) | ((bArr[i11] & 255) << 8) | (bArr[i12] & 255);
    }

    public int G() {
        byte[] bArr = this.f6944a;
        int i9 = this.f6945b;
        int i10 = i9 + 1;
        this.f6945b = i10;
        int i11 = i10 + 1;
        this.f6945b = i11;
        int i12 = ((bArr[i9] & UByte.MAX_VALUE) << 16) | ((bArr[i10] & UByte.MAX_VALUE) << 8);
        this.f6945b = i11 + 1;
        return (bArr[i11] & UByte.MAX_VALUE) | i12;
    }

    public int H() {
        int n9 = n();
        if (n9 >= 0) {
            return n9;
        }
        throw new IllegalStateException("Top bit not zero: " + n9);
    }

    public long I() {
        long w6 = w();
        if (w6 >= 0) {
            return w6;
        }
        throw new IllegalStateException("Top bit not zero: " + w6);
    }

    public int J() {
        byte[] bArr = this.f6944a;
        int i9 = this.f6945b;
        int i10 = i9 + 1;
        this.f6945b = i10;
        this.f6945b = i10 + 1;
        return (bArr[i10] & UByte.MAX_VALUE) | ((bArr[i9] & UByte.MAX_VALUE) << 8);
    }

    public long K() {
        int i9;
        int i10;
        byte b10;
        int i11;
        long j10 = this.f6944a[this.f6945b];
        int i12 = 7;
        while (true) {
            if (i12 < 0) {
                break;
            }
            if (((1 << i12) & j10) != 0) {
                i12--;
            } else if (i12 < 6) {
                j10 &= i11 - 1;
                i10 = 7 - i12;
            } else if (i12 == 7) {
                i10 = 1;
            }
        }
        i10 = 0;
        if (i10 != 0) {
            for (i9 = 1; i9 < i10; i9++) {
                if ((this.f6944a[this.f6945b + i9] & 192) != 128) {
                    throw new NumberFormatException("Invalid UTF-8 sequence continuation byte: " + j10);
                }
                j10 = (j10 << 6) | (b10 & Utf8.REPLACEMENT_BYTE);
            }
            this.f6945b += i10;
            return j10;
        }
        throw new NumberFormatException("Invalid UTF-8 sequence first byte: " + j10);
    }

    public void L(int i9) {
        N(b() < i9 ? new byte[i9] : this.f6944a, i9);
    }

    public void M(byte[] bArr) {
        N(bArr, bArr.length);
    }

    public void N(byte[] bArr, int i9) {
        this.f6944a = bArr;
        this.f6946c = i9;
        this.f6945b = 0;
    }

    public void O(int i9) {
        a.a(i9 >= 0 && i9 <= this.f6944a.length);
        this.f6946c = i9;
    }

    public void P(int i9) {
        a.a(i9 >= 0 && i9 <= this.f6946c);
        this.f6945b = i9;
    }

    public void Q(int i9) {
        P(this.f6945b + i9);
    }

    public int a() {
        return this.f6946c - this.f6945b;
    }

    public int b() {
        return this.f6944a.length;
    }

    public void c(int i9) {
        if (i9 > b()) {
            this.f6944a = Arrays.copyOf(this.f6944a, i9);
        }
    }

    public byte[] d() {
        return this.f6944a;
    }

    public int e() {
        return this.f6945b;
    }

    public int f() {
        return this.f6946c;
    }

    public char g() {
        byte[] bArr = this.f6944a;
        int i9 = this.f6945b;
        return (char) ((bArr[i9 + 1] & UByte.MAX_VALUE) | ((bArr[i9] & UByte.MAX_VALUE) << 8));
    }

    public int h() {
        return this.f6944a[this.f6945b] & UByte.MAX_VALUE;
    }

    public void i(a0 a0Var, int i9) {
        j(a0Var.f6939a, 0, i9);
        a0Var.p(0);
    }

    public void j(byte[] bArr, int i9, int i10) {
        System.arraycopy(this.f6944a, this.f6945b, bArr, i9, i10);
        this.f6945b += i10;
    }

    @Nullable
    public String k(char c10) {
        if (a() == 0) {
            return null;
        }
        int i9 = this.f6945b;
        while (i9 < this.f6946c && this.f6944a[i9] != c10) {
            i9++;
        }
        byte[] bArr = this.f6944a;
        int i10 = this.f6945b;
        String B = l0.B(bArr, i10, i9 - i10);
        this.f6945b = i9;
        if (i9 < this.f6946c) {
            this.f6945b = i9 + 1;
        }
        return B;
    }

    public double l() {
        return Double.longBitsToDouble(w());
    }

    public float m() {
        return Float.intBitsToFloat(n());
    }

    public int n() {
        byte[] bArr = this.f6944a;
        int i9 = this.f6945b;
        int i10 = i9 + 1;
        this.f6945b = i10;
        int i11 = i10 + 1;
        this.f6945b = i11;
        int i12 = ((bArr[i9] & UByte.MAX_VALUE) << 24) | ((bArr[i10] & UByte.MAX_VALUE) << 16);
        int i13 = i11 + 1;
        this.f6945b = i13;
        int i14 = i12 | ((bArr[i11] & UByte.MAX_VALUE) << 8);
        this.f6945b = i13 + 1;
        return (bArr[i13] & UByte.MAX_VALUE) | i14;
    }

    public int o() {
        byte[] bArr = this.f6944a;
        int i9 = this.f6945b;
        int i10 = i9 + 1;
        this.f6945b = i10;
        int i11 = i10 + 1;
        this.f6945b = i11;
        int i12 = (((bArr[i9] & UByte.MAX_VALUE) << 24) >> 8) | ((bArr[i10] & UByte.MAX_VALUE) << 8);
        this.f6945b = i11 + 1;
        return (bArr[i11] & UByte.MAX_VALUE) | i12;
    }

    @Nullable
    public String p() {
        if (a() == 0) {
            return null;
        }
        int i9 = this.f6945b;
        while (i9 < this.f6946c && !l0.p0(this.f6944a[i9])) {
            i9++;
        }
        int i10 = this.f6945b;
        if (i9 - i10 >= 3) {
            byte[] bArr = this.f6944a;
            if (bArr[i10] == -17 && bArr[i10 + 1] == -69 && bArr[i10 + 2] == -65) {
                this.f6945b = i10 + 3;
            }
        }
        byte[] bArr2 = this.f6944a;
        int i11 = this.f6945b;
        String B = l0.B(bArr2, i11, i9 - i11);
        this.f6945b = i9;
        int i12 = this.f6946c;
        if (i9 == i12) {
            return B;
        }
        byte[] bArr3 = this.f6944a;
        if (bArr3[i9] == 13) {
            int i13 = i9 + 1;
            this.f6945b = i13;
            if (i13 == i12) {
                return B;
            }
        }
        int i14 = this.f6945b;
        if (bArr3[i14] == 10) {
            this.f6945b = i14 + 1;
        }
        return B;
    }

    public int q() {
        byte[] bArr = this.f6944a;
        int i9 = this.f6945b;
        int i10 = i9 + 1;
        this.f6945b = i10;
        int i11 = bArr[i9] & UByte.MAX_VALUE;
        int i12 = i10 + 1;
        this.f6945b = i12;
        int i13 = i11 | ((bArr[i10] & UByte.MAX_VALUE) << 8);
        int i14 = i12 + 1;
        this.f6945b = i14;
        int i15 = i13 | ((bArr[i12] & UByte.MAX_VALUE) << 16);
        this.f6945b = i14 + 1;
        return ((bArr[i14] & UByte.MAX_VALUE) << 24) | i15;
    }

    public long r() {
        byte[] bArr = this.f6944a;
        int i9 = this.f6945b;
        int i10 = i9 + 1;
        this.f6945b = i10;
        int i11 = i10 + 1;
        this.f6945b = i11;
        int i12 = i11 + 1;
        this.f6945b = i12;
        int i13 = i12 + 1;
        this.f6945b = i13;
        int i14 = i13 + 1;
        this.f6945b = i14;
        int i15 = i14 + 1;
        this.f6945b = i15;
        int i16 = i15 + 1;
        this.f6945b = i16;
        this.f6945b = i16 + 1;
        return (bArr[i9] & 255) | ((bArr[i10] & 255) << 8) | ((bArr[i11] & 255) << 16) | ((bArr[i12] & 255) << 24) | ((bArr[i13] & 255) << 32) | ((bArr[i14] & 255) << 40) | ((bArr[i15] & 255) << 48) | ((bArr[i16] & 255) << 56);
    }

    public short s() {
        byte[] bArr = this.f6944a;
        int i9 = this.f6945b;
        int i10 = i9 + 1;
        this.f6945b = i10;
        int i11 = bArr[i9] & UByte.MAX_VALUE;
        this.f6945b = i10 + 1;
        return (short) (((bArr[i10] & UByte.MAX_VALUE) << 8) | i11);
    }

    public long t() {
        byte[] bArr = this.f6944a;
        int i9 = this.f6945b;
        int i10 = i9 + 1;
        this.f6945b = i10;
        int i11 = i10 + 1;
        this.f6945b = i11;
        int i12 = i11 + 1;
        this.f6945b = i12;
        this.f6945b = i12 + 1;
        return (bArr[i9] & 255) | ((bArr[i10] & 255) << 8) | ((bArr[i11] & 255) << 16) | ((bArr[i12] & 255) << 24);
    }

    public int u() {
        int q10 = q();
        if (q10 >= 0) {
            return q10;
        }
        throw new IllegalStateException("Top bit not zero: " + q10);
    }

    public int v() {
        byte[] bArr = this.f6944a;
        int i9 = this.f6945b;
        int i10 = i9 + 1;
        this.f6945b = i10;
        int i11 = bArr[i9] & UByte.MAX_VALUE;
        this.f6945b = i10 + 1;
        return ((bArr[i10] & UByte.MAX_VALUE) << 8) | i11;
    }

    public long w() {
        byte[] bArr = this.f6944a;
        int i9 = this.f6945b;
        int i10 = i9 + 1;
        this.f6945b = i10;
        int i11 = i10 + 1;
        this.f6945b = i11;
        int i12 = i11 + 1;
        this.f6945b = i12;
        int i13 = i12 + 1;
        this.f6945b = i13;
        int i14 = i13 + 1;
        this.f6945b = i14;
        int i15 = i14 + 1;
        this.f6945b = i15;
        int i16 = i15 + 1;
        this.f6945b = i16;
        this.f6945b = i16 + 1;
        return ((bArr[i9] & 255) << 56) | ((bArr[i10] & 255) << 48) | ((bArr[i11] & 255) << 40) | ((bArr[i12] & 255) << 32) | ((bArr[i13] & 255) << 24) | ((bArr[i14] & 255) << 16) | ((bArr[i15] & 255) << 8) | (bArr[i16] & 255);
    }

    @Nullable
    public String x() {
        return k((char) 0);
    }

    public String y(int i9) {
        if (i9 == 0) {
            return "";
        }
        int i10 = this.f6945b;
        int i11 = (i10 + i9) - 1;
        String B = l0.B(this.f6944a, i10, (i11 >= this.f6946c || this.f6944a[i11] != 0) ? i9 : i9 - 1);
        this.f6945b += i9;
        return B;
    }

    public short z() {
        byte[] bArr = this.f6944a;
        int i9 = this.f6945b;
        int i10 = i9 + 1;
        this.f6945b = i10;
        this.f6945b = i10 + 1;
        return (short) ((bArr[i10] & UByte.MAX_VALUE) | ((bArr[i9] & UByte.MAX_VALUE) << 8));
    }

    public b0(int i9) {
        this.f6944a = new byte[i9];
        this.f6946c = i9;
    }

    public b0(byte[] bArr) {
        this.f6944a = bArr;
        this.f6946c = bArr.length;
    }

    public b0(byte[] bArr, int i9) {
        this.f6944a = bArr;
        this.f6946c = i9;
    }
}
