package com.google.android.exoplayer2.audio;

import com.tencent.thumbplayer.api.TPErrorCode;
import java.nio.ShortBuffer;
import java.util.Arrays;
/* loaded from: classes.dex */
final class f0 {

    /* renamed from: a  reason: collision with root package name */
    private final int f5520a;

    /* renamed from: b  reason: collision with root package name */
    private final int f5521b;

    /* renamed from: c  reason: collision with root package name */
    private final float f5522c;

    /* renamed from: d  reason: collision with root package name */
    private final float f5523d;

    /* renamed from: e  reason: collision with root package name */
    private final float f5524e;

    /* renamed from: f  reason: collision with root package name */
    private final int f5525f;

    /* renamed from: g  reason: collision with root package name */
    private final int f5526g;

    /* renamed from: h  reason: collision with root package name */
    private final int f5527h;

    /* renamed from: i  reason: collision with root package name */
    private final short[] f5528i;

    /* renamed from: j  reason: collision with root package name */
    private short[] f5529j;

    /* renamed from: k  reason: collision with root package name */
    private int f5530k;

    /* renamed from: l  reason: collision with root package name */
    private short[] f5531l;

    /* renamed from: m  reason: collision with root package name */
    private int f5532m;

    /* renamed from: n  reason: collision with root package name */
    private short[] f5533n;

    /* renamed from: o  reason: collision with root package name */
    private int f5534o;

    /* renamed from: p  reason: collision with root package name */
    private int f5535p;

    /* renamed from: q  reason: collision with root package name */
    private int f5536q;

    /* renamed from: r  reason: collision with root package name */
    private int f5537r;

    /* renamed from: s  reason: collision with root package name */
    private int f5538s;

    /* renamed from: t  reason: collision with root package name */
    private int f5539t;

    /* renamed from: u  reason: collision with root package name */
    private int f5540u;

    /* renamed from: v  reason: collision with root package name */
    private int f5541v;

    public f0(int i9, int i10, float f10, float f11, int i11) {
        this.f5520a = i9;
        this.f5521b = i10;
        this.f5522c = f10;
        this.f5523d = f11;
        this.f5524e = i9 / i11;
        this.f5525f = i9 / 400;
        int i12 = i9 / 65;
        this.f5526g = i12;
        int i13 = i12 * 2;
        this.f5527h = i13;
        this.f5528i = new short[i13];
        this.f5529j = new short[i13 * i10];
        this.f5531l = new short[i13 * i10];
        this.f5533n = new short[i13 * i10];
    }

    private void a(float f10, int i9) {
        int i10;
        int i11;
        if (this.f5532m == i9) {
            return;
        }
        int i12 = this.f5520a;
        int i13 = (int) (i12 / f10);
        while (true) {
            if (i13 <= 16384 && i12 <= 16384) {
                break;
            }
            i13 /= 2;
            i12 /= 2;
        }
        o(i9);
        int i14 = 0;
        while (true) {
            int i15 = this.f5534o;
            if (i14 < i15 - 1) {
                while (true) {
                    i10 = this.f5535p;
                    int i16 = (i10 + 1) * i13;
                    i11 = this.f5536q;
                    if (i16 <= i11 * i12) {
                        break;
                    }
                    this.f5531l = f(this.f5531l, this.f5532m, 1);
                    int i17 = 0;
                    while (true) {
                        int i18 = this.f5521b;
                        if (i17 < i18) {
                            this.f5531l[(this.f5532m * i18) + i17] = n(this.f5533n, (i18 * i14) + i17, i12, i13);
                            i17++;
                        }
                    }
                    this.f5536q++;
                    this.f5532m++;
                }
                int i19 = i10 + 1;
                this.f5535p = i19;
                if (i19 == i12) {
                    this.f5535p = 0;
                    com.google.android.exoplayer2.util.a.f(i11 == i13);
                    this.f5536q = 0;
                }
                i14++;
            } else {
                u(i15 - 1);
                return;
            }
        }
    }

    private void b(float f10) {
        int m10;
        int i9 = this.f5530k;
        if (i9 < this.f5527h) {
            return;
        }
        int i10 = 0;
        do {
            if (this.f5537r > 0) {
                m10 = c(i10);
            } else {
                int g10 = g(this.f5529j, i10);
                if (f10 > 1.0d) {
                    m10 = g10 + w(this.f5529j, i10, f10, g10);
                } else {
                    m10 = m(this.f5529j, i10, f10, g10);
                }
            }
            i10 += m10;
        } while (this.f5527h + i10 <= i9);
        v(i10);
    }

    private int c(int i9) {
        int min = Math.min(this.f5527h, this.f5537r);
        d(this.f5529j, i9, min);
        this.f5537r -= min;
        return min;
    }

    private void d(short[] sArr, int i9, int i10) {
        short[] f10 = f(this.f5531l, this.f5532m, i10);
        this.f5531l = f10;
        int i11 = this.f5521b;
        System.arraycopy(sArr, i9 * i11, f10, this.f5532m * i11, i11 * i10);
        this.f5532m += i10;
    }

    private void e(short[] sArr, int i9, int i10) {
        int i11 = this.f5527h / i10;
        int i12 = this.f5521b;
        int i13 = i10 * i12;
        int i14 = i9 * i12;
        for (int i15 = 0; i15 < i11; i15++) {
            int i16 = 0;
            for (int i17 = 0; i17 < i13; i17++) {
                i16 += sArr[(i15 * i13) + i14 + i17];
            }
            this.f5528i[i15] = (short) (i16 / i13);
        }
    }

    private short[] f(short[] sArr, int i9, int i10) {
        int length = sArr.length;
        int i11 = this.f5521b;
        int i12 = length / i11;
        return i9 + i10 <= i12 ? sArr : Arrays.copyOf(sArr, (((i12 * 3) / 2) + i10) * i11);
    }

    private int g(short[] sArr, int i9) {
        int i10;
        int i11 = this.f5520a;
        int i12 = i11 > 4000 ? i11 / TPErrorCode.TP_ERROR_TYPE_DOWNLOAD_PROXY : 1;
        if (this.f5521b == 1 && i12 == 1) {
            i10 = h(sArr, i9, this.f5525f, this.f5526g);
        } else {
            e(sArr, i9, i12);
            int h10 = h(this.f5528i, 0, this.f5525f / i12, this.f5526g / i12);
            if (i12 != 1) {
                int i13 = h10 * i12;
                int i14 = i12 * 4;
                int i15 = i13 - i14;
                int i16 = i13 + i14;
                int i17 = this.f5525f;
                if (i15 < i17) {
                    i15 = i17;
                }
                int i18 = this.f5526g;
                if (i16 > i18) {
                    i16 = i18;
                }
                if (this.f5521b == 1) {
                    i10 = h(sArr, i9, i15, i16);
                } else {
                    e(sArr, i9, 1);
                    i10 = h(this.f5528i, 0, i15, i16);
                }
            } else {
                i10 = h10;
            }
        }
        int i19 = q(this.f5540u, this.f5541v) ? this.f5538s : i10;
        this.f5539t = this.f5540u;
        this.f5538s = i10;
        return i19;
    }

    private int h(short[] sArr, int i9, int i10, int i11) {
        int i12 = i9 * this.f5521b;
        int i13 = 1;
        int i14 = 255;
        int i15 = 0;
        int i16 = 0;
        while (i10 <= i11) {
            int i17 = 0;
            for (int i18 = 0; i18 < i10; i18++) {
                i17 += Math.abs(sArr[i12 + i18] - sArr[(i12 + i10) + i18]);
            }
            if (i17 * i15 < i13 * i10) {
                i15 = i10;
                i13 = i17;
            }
            if (i17 * i14 > i16 * i10) {
                i14 = i10;
                i16 = i17;
            }
            i10++;
        }
        this.f5540u = i13 / i15;
        this.f5541v = i16 / i14;
        return i15;
    }

    private int m(short[] sArr, int i9, float f10, int i10) {
        int i11;
        if (f10 < 0.5f) {
            i11 = (int) ((i10 * f10) / (1.0f - f10));
        } else {
            this.f5537r = (int) ((i10 * ((2.0f * f10) - 1.0f)) / (1.0f - f10));
            i11 = i10;
        }
        int i12 = i10 + i11;
        short[] f11 = f(this.f5531l, this.f5532m, i12);
        this.f5531l = f11;
        int i13 = this.f5521b;
        System.arraycopy(sArr, i9 * i13, f11, this.f5532m * i13, i13 * i10);
        p(i11, this.f5521b, this.f5531l, this.f5532m + i10, sArr, i9 + i10, sArr, i9);
        this.f5532m += i12;
        return i11;
    }

    private short n(short[] sArr, int i9, int i10, int i11) {
        short s10 = sArr[i9];
        short s11 = sArr[i9 + this.f5521b];
        int i12 = this.f5536q * i10;
        int i13 = this.f5535p;
        int i14 = i13 * i11;
        int i15 = (i13 + 1) * i11;
        int i16 = i15 - i12;
        int i17 = i15 - i14;
        return (short) (((s10 * i16) + ((i17 - i16) * s11)) / i17);
    }

    private void o(int i9) {
        int i10 = this.f5532m - i9;
        short[] f10 = f(this.f5533n, this.f5534o, i10);
        this.f5533n = f10;
        short[] sArr = this.f5531l;
        int i11 = this.f5521b;
        System.arraycopy(sArr, i9 * i11, f10, this.f5534o * i11, i11 * i10);
        this.f5532m = i9;
        this.f5534o += i10;
    }

    private static void p(int i9, int i10, short[] sArr, int i11, short[] sArr2, int i12, short[] sArr3, int i13) {
        for (int i14 = 0; i14 < i10; i14++) {
            int i15 = (i11 * i10) + i14;
            int i16 = (i13 * i10) + i14;
            int i17 = (i12 * i10) + i14;
            for (int i18 = 0; i18 < i9; i18++) {
                sArr[i15] = (short) (((sArr2[i17] * (i9 - i18)) + (sArr3[i16] * i18)) / i9);
                i15 += i10;
                i17 += i10;
                i16 += i10;
            }
        }
    }

    private boolean q(int i9, int i10) {
        return i9 != 0 && this.f5538s != 0 && i10 <= i9 * 3 && i9 * 2 > this.f5539t * 3;
    }

    private void r() {
        int i9 = this.f5532m;
        float f10 = this.f5522c;
        float f11 = this.f5523d;
        float f12 = f10 / f11;
        float f13 = this.f5524e * f11;
        double d10 = f12;
        if (d10 <= 1.00001d && d10 >= 0.99999d) {
            d(this.f5529j, 0, this.f5530k);
            this.f5530k = 0;
        } else {
            b(f12);
        }
        if (f13 != 1.0f) {
            a(f13, i9);
        }
    }

    private void u(int i9) {
        if (i9 == 0) {
            return;
        }
        short[] sArr = this.f5533n;
        int i10 = this.f5521b;
        System.arraycopy(sArr, i9 * i10, sArr, 0, (this.f5534o - i9) * i10);
        this.f5534o -= i9;
    }

    private void v(int i9) {
        int i10 = this.f5530k - i9;
        short[] sArr = this.f5529j;
        int i11 = this.f5521b;
        System.arraycopy(sArr, i9 * i11, sArr, 0, i11 * i10);
        this.f5530k = i10;
    }

    private int w(short[] sArr, int i9, float f10, int i10) {
        int i11;
        if (f10 >= 2.0f) {
            i11 = (int) (i10 / (f10 - 1.0f));
        } else {
            this.f5537r = (int) ((i10 * (2.0f - f10)) / (f10 - 1.0f));
            i11 = i10;
        }
        short[] f11 = f(this.f5531l, this.f5532m, i11);
        this.f5531l = f11;
        p(i11, this.f5521b, f11, this.f5532m, sArr, i9, sArr, i9 + i10);
        this.f5532m += i11;
        return i11;
    }

    public void i() {
        this.f5530k = 0;
        this.f5532m = 0;
        this.f5534o = 0;
        this.f5535p = 0;
        this.f5536q = 0;
        this.f5537r = 0;
        this.f5538s = 0;
        this.f5539t = 0;
        this.f5540u = 0;
        this.f5541v = 0;
    }

    public void j(ShortBuffer shortBuffer) {
        int min = Math.min(shortBuffer.remaining() / this.f5521b, this.f5532m);
        shortBuffer.put(this.f5531l, 0, this.f5521b * min);
        int i9 = this.f5532m - min;
        this.f5532m = i9;
        short[] sArr = this.f5531l;
        int i10 = this.f5521b;
        System.arraycopy(sArr, min * i10, sArr, 0, i9 * i10);
    }

    public int k() {
        return this.f5532m * this.f5521b * 2;
    }

    public int l() {
        return this.f5530k * this.f5521b * 2;
    }

    public void s() {
        int i9;
        int i10 = this.f5530k;
        float f10 = this.f5522c;
        float f11 = this.f5523d;
        int i11 = this.f5532m + ((int) ((((i10 / (f10 / f11)) + this.f5534o) / (this.f5524e * f11)) + 0.5f));
        this.f5529j = f(this.f5529j, i10, (this.f5527h * 2) + i10);
        int i12 = 0;
        while (true) {
            i9 = this.f5527h;
            int i13 = this.f5521b;
            if (i12 >= i9 * 2 * i13) {
                break;
            }
            this.f5529j[(i13 * i10) + i12] = 0;
            i12++;
        }
        this.f5530k += i9 * 2;
        r();
        if (this.f5532m > i11) {
            this.f5532m = i11;
        }
        this.f5530k = 0;
        this.f5537r = 0;
        this.f5534o = 0;
    }

    public void t(ShortBuffer shortBuffer) {
        int remaining = shortBuffer.remaining();
        int i9 = this.f5521b;
        int i10 = remaining / i9;
        short[] f10 = f(this.f5529j, this.f5530k, i10);
        this.f5529j = f10;
        shortBuffer.get(f10, this.f5530k * this.f5521b, ((i9 * i10) * 2) / 2);
        this.f5530k += i10;
        r();
    }
}
