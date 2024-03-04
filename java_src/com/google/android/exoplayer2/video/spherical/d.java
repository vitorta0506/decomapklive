package com.google.android.exoplayer2.video.spherical;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.a0;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.video.spherical.c;
import java.util.ArrayList;
import java.util.zip.Inflater;
/* loaded from: classes2.dex */
final class d {
    @Nullable
    public static c a(byte[] bArr, int i9) {
        ArrayList<c.a> arrayList;
        b0 b0Var = new b0(bArr);
        try {
            arrayList = c(b0Var) ? f(b0Var) : e(b0Var);
        } catch (ArrayIndexOutOfBoundsException unused) {
            arrayList = null;
        }
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        if (size != 1) {
            if (size != 2) {
                return null;
            }
            return new c(arrayList.get(0), arrayList.get(1), i9);
        }
        return new c(arrayList.get(0), i9);
    }

    private static int b(int i9) {
        return (-(i9 & 1)) ^ (i9 >> 1);
    }

    private static boolean c(b0 b0Var) {
        b0Var.Q(4);
        int n9 = b0Var.n();
        b0Var.P(0);
        return n9 == 1886547818;
    }

    @Nullable
    private static c.a d(b0 b0Var) {
        int n9 = b0Var.n();
        if (n9 > 10000) {
            return null;
        }
        float[] fArr = new float[n9];
        for (int i9 = 0; i9 < n9; i9++) {
            fArr[i9] = b0Var.m();
        }
        int n10 = b0Var.n();
        if (n10 > 32000) {
            return null;
        }
        double d10 = 2.0d;
        double log = Math.log(2.0d);
        int ceil = (int) Math.ceil(Math.log(n9 * 2.0d) / log);
        a0 a0Var = new a0(b0Var.d());
        int i10 = 8;
        a0Var.p(b0Var.e() * 8);
        float[] fArr2 = new float[n10 * 5];
        int i11 = 5;
        int[] iArr = new int[5];
        int i12 = 0;
        int i13 = 0;
        while (i12 < n10) {
            int i14 = 0;
            while (i14 < i11) {
                int b10 = iArr[i14] + b(a0Var.h(ceil));
                if (b10 >= n9 || b10 < 0) {
                    return null;
                }
                fArr2[i13] = fArr[b10];
                iArr[i14] = b10;
                i14++;
                i13++;
                i11 = 5;
            }
            i12++;
            i11 = 5;
        }
        a0Var.p((a0Var.e() + 7) & (-8));
        int i15 = 32;
        int h10 = a0Var.h(32);
        c.b[] bVarArr = new c.b[h10];
        int i16 = 0;
        while (i16 < h10) {
            int h11 = a0Var.h(i10);
            int h12 = a0Var.h(i10);
            int h13 = a0Var.h(i15);
            if (h13 > 128000) {
                return null;
            }
            int ceil2 = (int) Math.ceil(Math.log(n10 * d10) / log);
            float[] fArr3 = new float[h13 * 3];
            float[] fArr4 = new float[h13 * 2];
            int i17 = 0;
            for (int i18 = 0; i18 < h13; i18++) {
                i17 += b(a0Var.h(ceil2));
                if (i17 < 0 || i17 >= n10) {
                    return null;
                }
                int i19 = i18 * 3;
                int i20 = i17 * 5;
                fArr3[i19] = fArr2[i20];
                fArr3[i19 + 1] = fArr2[i20 + 1];
                fArr3[i19 + 2] = fArr2[i20 + 2];
                int i21 = i18 * 2;
                fArr4[i21] = fArr2[i20 + 3];
                fArr4[i21 + 1] = fArr2[i20 + 4];
            }
            bVarArr[i16] = new c.b(h11, fArr3, fArr4, h12);
            i16++;
            i15 = 32;
            d10 = 2.0d;
            i10 = 8;
        }
        return new c.a(bVarArr);
    }

    @Nullable
    private static ArrayList<c.a> e(b0 b0Var) {
        if (b0Var.D() != 0) {
            return null;
        }
        b0Var.Q(7);
        int n9 = b0Var.n();
        if (n9 == 1684433976) {
            b0 b0Var2 = new b0();
            Inflater inflater = new Inflater(true);
            try {
                if (!l0.l0(b0Var, b0Var2, inflater)) {
                    return null;
                }
                inflater.end();
                b0Var = b0Var2;
            } finally {
                inflater.end();
            }
        } else if (n9 != 1918990112) {
            return null;
        }
        return g(b0Var);
    }

    @Nullable
    private static ArrayList<c.a> f(b0 b0Var) {
        int n9;
        b0Var.Q(8);
        int e10 = b0Var.e();
        int f10 = b0Var.f();
        while (e10 < f10 && (n9 = b0Var.n() + e10) > e10 && n9 <= f10) {
            int n10 = b0Var.n();
            if (n10 != 2037673328 && n10 != 1836279920) {
                b0Var.P(n9);
                e10 = n9;
            } else {
                b0Var.O(n9);
                return e(b0Var);
            }
        }
        return null;
    }

    @Nullable
    private static ArrayList<c.a> g(b0 b0Var) {
        ArrayList<c.a> arrayList = new ArrayList<>();
        int e10 = b0Var.e();
        int f10 = b0Var.f();
        while (e10 < f10) {
            int n9 = b0Var.n() + e10;
            if (n9 <= e10 || n9 > f10) {
                return null;
            }
            if (b0Var.n() == 1835365224) {
                c.a d10 = d(b0Var);
                if (d10 == null) {
                    return null;
                }
                arrayList.add(d10);
            }
            b0Var.P(n9);
            e10 = n9;
        }
        return arrayList;
    }
}
