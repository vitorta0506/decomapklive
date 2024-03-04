package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class ca<T> implements ka<T> {

    /* renamed from: p  reason: collision with root package name */
    private static final int[] f7997p = new int[0];

    /* renamed from: q  reason: collision with root package name */
    private static final Unsafe f7998q = lb.l();

    /* renamed from: a  reason: collision with root package name */
    private final int[] f7999a;

    /* renamed from: b  reason: collision with root package name */
    private final Object[] f8000b;

    /* renamed from: c  reason: collision with root package name */
    private final int f8001c;

    /* renamed from: d  reason: collision with root package name */
    private final int f8002d;

    /* renamed from: e  reason: collision with root package name */
    private final z9 f8003e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f8004f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f8005g;

    /* renamed from: h  reason: collision with root package name */
    private final int[] f8006h;

    /* renamed from: i  reason: collision with root package name */
    private final int f8007i;

    /* renamed from: j  reason: collision with root package name */
    private final int f8008j;

    /* renamed from: k  reason: collision with root package name */
    private final n9 f8009k;

    /* renamed from: l  reason: collision with root package name */
    private final bb f8010l;

    /* renamed from: m  reason: collision with root package name */
    private final l8 f8011m;

    /* renamed from: n  reason: collision with root package name */
    private final ea f8012n;

    /* renamed from: o  reason: collision with root package name */
    private final u9 f8013o;

    private ca(int[] iArr, Object[] objArr, int i9, int i10, z9 z9Var, boolean z10, boolean z11, int[] iArr2, int i11, int i12, ea eaVar, n9 n9Var, bb bbVar, l8 l8Var, u9 u9Var, byte[] bArr) {
        this.f7999a = iArr;
        this.f8000b = objArr;
        this.f8001c = i9;
        this.f8002d = i10;
        this.f8005g = z10;
        boolean z12 = false;
        if (l8Var != null && l8Var.c(z9Var)) {
            z12 = true;
        }
        this.f8004f = z12;
        this.f8006h = iArr2;
        this.f8007i = i11;
        this.f8008j = i12;
        this.f8012n = eaVar;
        this.f8009k = n9Var;
        this.f8010l = bbVar;
        this.f8011m = l8Var;
        this.f8003e = z9Var;
        this.f8013o = u9Var;
    }

    private final boolean A(Object obj, int i9, int i10) {
        return lb.h(obj, (long) (S(i10) & 1048575)) == i9;
    }

    private static boolean B(Object obj, long j10) {
        return ((Boolean) lb.k(obj, j10)).booleanValue();
    }

    private static final void C(int i9, Object obj, sb sbVar) throws IOException {
        if (obj instanceof String) {
            sbVar.x(i9, (String) obj);
        } else {
            sbVar.y(i9, (zzjd) obj);
        }
    }

    static cb E(Object obj) {
        x8 x8Var = (x8) obj;
        cb cbVar = x8Var.zzc;
        if (cbVar == cb.c()) {
            cb e10 = cb.e();
            x8Var.zzc = e10;
            return e10;
        }
        return cbVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ca F(Class cls, w9 w9Var, ea eaVar, n9 n9Var, bb bbVar, l8 l8Var, u9 u9Var) {
        if (w9Var instanceof ja) {
            return G((ja) w9Var, eaVar, n9Var, bbVar, l8Var, u9Var);
        }
        za zaVar = (za) w9Var;
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x032b  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0385  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static com.google.android.gms.internal.measurement.ca G(com.google.android.gms.internal.measurement.ja r34, com.google.android.gms.internal.measurement.ea r35, com.google.android.gms.internal.measurement.n9 r36, com.google.android.gms.internal.measurement.bb r37, com.google.android.gms.internal.measurement.l8 r38, com.google.android.gms.internal.measurement.u9 r39) {
        /*
            Method dump skipped, instructions count: 1016
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.ca.G(com.google.android.gms.internal.measurement.ja, com.google.android.gms.internal.measurement.ea, com.google.android.gms.internal.measurement.n9, com.google.android.gms.internal.measurement.bb, com.google.android.gms.internal.measurement.l8, com.google.android.gms.internal.measurement.u9):com.google.android.gms.internal.measurement.ca");
    }

    private static double H(Object obj, long j10) {
        return ((Double) lb.k(obj, j10)).doubleValue();
    }

    private static float I(Object obj, long j10) {
        return ((Float) lb.k(obj, j10)).floatValue();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private final int J(Object obj) {
        int i9;
        int a10;
        int a11;
        int a12;
        int b10;
        int a13;
        int z10;
        int a14;
        int a15;
        int zzd;
        int a16;
        int i10;
        int W;
        int K;
        int D;
        int a17;
        int i11;
        int a18;
        int a19;
        int a20;
        int b11;
        int a21;
        int zzd2;
        int a22;
        int i12;
        Unsafe unsafe = f7998q;
        int i13 = 1048575;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 1048575;
        while (i14 < this.f7999a.length) {
            int j10 = j(i14);
            int[] iArr = this.f7999a;
            int i18 = iArr[i14];
            int i19 = i(j10);
            if (i19 <= 17) {
                int i20 = iArr[i14 + 2];
                int i21 = i20 & i13;
                i9 = 1 << (i20 >>> 20);
                if (i21 != i17) {
                    i16 = unsafe.getInt(obj, i21);
                    i17 = i21;
                }
            } else {
                i9 = 0;
            }
            long j11 = j10 & i13;
            switch (i19) {
                case 0:
                    if ((i16 & i9) == 0) {
                        break;
                    } else {
                        a10 = f8.a(i18 << 3);
                        a14 = a10 + 8;
                        i15 += a14;
                        break;
                    }
                case 1:
                    if ((i16 & i9) == 0) {
                        break;
                    } else {
                        a11 = f8.a(i18 << 3);
                        a14 = a11 + 4;
                        i15 += a14;
                        break;
                    }
                case 2:
                    if ((i16 & i9) == 0) {
                        break;
                    } else {
                        long j12 = unsafe.getLong(obj, j11);
                        a12 = f8.a(i18 << 3);
                        b10 = f8.b(j12);
                        i15 += a12 + b10;
                        break;
                    }
                case 3:
                    if ((i16 & i9) == 0) {
                        break;
                    } else {
                        long j13 = unsafe.getLong(obj, j11);
                        a12 = f8.a(i18 << 3);
                        b10 = f8.b(j13);
                        i15 += a12 + b10;
                        break;
                    }
                case 4:
                    if ((i16 & i9) == 0) {
                        break;
                    } else {
                        int i22 = unsafe.getInt(obj, j11);
                        a13 = f8.a(i18 << 3);
                        z10 = f8.z(i22);
                        i10 = a13 + z10;
                        i15 += i10;
                        break;
                    }
                case 5:
                    if ((i16 & i9) == 0) {
                        break;
                    } else {
                        a10 = f8.a(i18 << 3);
                        a14 = a10 + 8;
                        i15 += a14;
                        break;
                    }
                case 6:
                    if ((i16 & i9) == 0) {
                        break;
                    } else {
                        a11 = f8.a(i18 << 3);
                        a14 = a11 + 4;
                        i15 += a14;
                        break;
                    }
                case 7:
                    if ((i16 & i9) == 0) {
                        break;
                    } else {
                        a14 = f8.a(i18 << 3) + 1;
                        i15 += a14;
                        break;
                    }
                case 8:
                    if ((i16 & i9) == 0) {
                        break;
                    } else {
                        Object object = unsafe.getObject(obj, j11);
                        if (object instanceof zzjd) {
                            a15 = f8.a(i18 << 3);
                            zzd = ((zzjd) object).zzd();
                            a16 = f8.a(zzd);
                            i10 = a15 + a16 + zzd;
                            i15 += i10;
                            break;
                        } else {
                            a13 = f8.a(i18 << 3);
                            z10 = f8.C((String) object);
                            i10 = a13 + z10;
                            i15 += i10;
                        }
                    }
                case 9:
                    if ((i16 & i9) == 0) {
                        break;
                    } else {
                        a14 = ma.Q(i18, unsafe.getObject(obj, j11), n(i14));
                        i15 += a14;
                        break;
                    }
                case 10:
                    if ((i16 & i9) == 0) {
                        break;
                    } else {
                        a15 = f8.a(i18 << 3);
                        zzd = ((zzjd) unsafe.getObject(obj, j11)).zzd();
                        a16 = f8.a(zzd);
                        i10 = a15 + a16 + zzd;
                        i15 += i10;
                        break;
                    }
                case 11:
                    if ((i16 & i9) == 0) {
                        break;
                    } else {
                        int i23 = unsafe.getInt(obj, j11);
                        a13 = f8.a(i18 << 3);
                        z10 = f8.a(i23);
                        i10 = a13 + z10;
                        i15 += i10;
                        break;
                    }
                case 12:
                    if ((i16 & i9) == 0) {
                        break;
                    } else {
                        int i24 = unsafe.getInt(obj, j11);
                        a13 = f8.a(i18 << 3);
                        z10 = f8.z(i24);
                        i10 = a13 + z10;
                        i15 += i10;
                        break;
                    }
                case 13:
                    if ((i16 & i9) == 0) {
                        break;
                    } else {
                        a11 = f8.a(i18 << 3);
                        a14 = a11 + 4;
                        i15 += a14;
                        break;
                    }
                case 14:
                    if ((i16 & i9) == 0) {
                        break;
                    } else {
                        a10 = f8.a(i18 << 3);
                        a14 = a10 + 8;
                        i15 += a14;
                        break;
                    }
                case 15:
                    if ((i16 & i9) == 0) {
                        break;
                    } else {
                        int i25 = unsafe.getInt(obj, j11);
                        a13 = f8.a(i18 << 3);
                        z10 = f8.a((i25 >> 31) ^ (i25 + i25));
                        i10 = a13 + z10;
                        i15 += i10;
                        break;
                    }
                case 16:
                    if ((i9 & i16) == 0) {
                        break;
                    } else {
                        long j14 = unsafe.getLong(obj, j11);
                        i15 += f8.a(i18 << 3) + f8.b((j14 >> 63) ^ (j14 + j14));
                        break;
                    }
                case 17:
                    if ((i16 & i9) == 0) {
                        break;
                    } else {
                        a14 = f8.y(i18, (z9) unsafe.getObject(obj, j11), n(i14));
                        i15 += a14;
                        break;
                    }
                case 18:
                    a14 = ma.J(i18, (List) unsafe.getObject(obj, j11), false);
                    i15 += a14;
                    break;
                case 19:
                    a14 = ma.H(i18, (List) unsafe.getObject(obj, j11), false);
                    i15 += a14;
                    break;
                case 20:
                    a14 = ma.O(i18, (List) unsafe.getObject(obj, j11), false);
                    i15 += a14;
                    break;
                case 21:
                    a14 = ma.Z(i18, (List) unsafe.getObject(obj, j11), false);
                    i15 += a14;
                    break;
                case 22:
                    a14 = ma.M(i18, (List) unsafe.getObject(obj, j11), false);
                    i15 += a14;
                    break;
                case 23:
                    a14 = ma.J(i18, (List) unsafe.getObject(obj, j11), false);
                    i15 += a14;
                    break;
                case 24:
                    a14 = ma.H(i18, (List) unsafe.getObject(obj, j11), false);
                    i15 += a14;
                    break;
                case 25:
                    a14 = ma.A(i18, (List) unsafe.getObject(obj, j11), false);
                    i15 += a14;
                    break;
                case 26:
                    W = ma.W(i18, (List) unsafe.getObject(obj, j11));
                    i15 += W;
                    break;
                case 27:
                    W = ma.R(i18, (List) unsafe.getObject(obj, j11), n(i14));
                    i15 += W;
                    break;
                case 28:
                    W = ma.E(i18, (List) unsafe.getObject(obj, j11));
                    i15 += W;
                    break;
                case 29:
                    W = ma.X(i18, (List) unsafe.getObject(obj, j11), false);
                    i15 += W;
                    break;
                case 30:
                    W = ma.F(i18, (List) unsafe.getObject(obj, j11), false);
                    i15 += W;
                    break;
                case 31:
                    W = ma.H(i18, (List) unsafe.getObject(obj, j11), false);
                    i15 += W;
                    break;
                case 32:
                    W = ma.J(i18, (List) unsafe.getObject(obj, j11), false);
                    i15 += W;
                    break;
                case 33:
                    W = ma.S(i18, (List) unsafe.getObject(obj, j11), false);
                    i15 += W;
                    break;
                case 34:
                    W = ma.U(i18, (List) unsafe.getObject(obj, j11), false);
                    i15 += W;
                    break;
                case 35:
                    K = ma.K((List) unsafe.getObject(obj, j11));
                    if (K > 0) {
                        D = f8.D(i18);
                        a17 = f8.a(K);
                        i11 = D + a17;
                        i12 = i11 + K;
                        i15 += i12;
                    }
                    break;
                case 36:
                    K = ma.I((List) unsafe.getObject(obj, j11));
                    if (K > 0) {
                        D = f8.D(i18);
                        a17 = f8.a(K);
                        i11 = D + a17;
                        i12 = i11 + K;
                        i15 += i12;
                    }
                    break;
                case 37:
                    K = ma.P((List) unsafe.getObject(obj, j11));
                    if (K > 0) {
                        D = f8.D(i18);
                        a17 = f8.a(K);
                        i11 = D + a17;
                        i12 = i11 + K;
                        i15 += i12;
                    }
                    break;
                case 38:
                    K = ma.a0((List) unsafe.getObject(obj, j11));
                    if (K > 0) {
                        D = f8.D(i18);
                        a17 = f8.a(K);
                        i11 = D + a17;
                        i12 = i11 + K;
                        i15 += i12;
                    }
                    break;
                case 39:
                    K = ma.N((List) unsafe.getObject(obj, j11));
                    if (K > 0) {
                        D = f8.D(i18);
                        a17 = f8.a(K);
                        i11 = D + a17;
                        i12 = i11 + K;
                        i15 += i12;
                    }
                    break;
                case 40:
                    K = ma.K((List) unsafe.getObject(obj, j11));
                    if (K > 0) {
                        D = f8.D(i18);
                        a17 = f8.a(K);
                        i11 = D + a17;
                        i12 = i11 + K;
                        i15 += i12;
                    }
                    break;
                case 41:
                    K = ma.I((List) unsafe.getObject(obj, j11));
                    if (K > 0) {
                        D = f8.D(i18);
                        a17 = f8.a(K);
                        i11 = D + a17;
                        i12 = i11 + K;
                        i15 += i12;
                    }
                    break;
                case 42:
                    K = ma.D((List) unsafe.getObject(obj, j11));
                    if (K > 0) {
                        D = f8.D(i18);
                        a17 = f8.a(K);
                        i11 = D + a17;
                        i12 = i11 + K;
                        i15 += i12;
                    }
                    break;
                case 43:
                    K = ma.Y((List) unsafe.getObject(obj, j11));
                    if (K > 0) {
                        D = f8.D(i18);
                        a17 = f8.a(K);
                        i11 = D + a17;
                        i12 = i11 + K;
                        i15 += i12;
                    }
                    break;
                case 44:
                    K = ma.G((List) unsafe.getObject(obj, j11));
                    if (K > 0) {
                        D = f8.D(i18);
                        a17 = f8.a(K);
                        i11 = D + a17;
                        i12 = i11 + K;
                        i15 += i12;
                    }
                    break;
                case 45:
                    K = ma.I((List) unsafe.getObject(obj, j11));
                    if (K > 0) {
                        D = f8.D(i18);
                        a17 = f8.a(K);
                        i11 = D + a17;
                        i12 = i11 + K;
                        i15 += i12;
                    }
                    break;
                case 46:
                    K = ma.K((List) unsafe.getObject(obj, j11));
                    if (K > 0) {
                        D = f8.D(i18);
                        a17 = f8.a(K);
                        i11 = D + a17;
                        i12 = i11 + K;
                        i15 += i12;
                    }
                    break;
                case 47:
                    K = ma.T((List) unsafe.getObject(obj, j11));
                    if (K > 0) {
                        D = f8.D(i18);
                        a17 = f8.a(K);
                        i11 = D + a17;
                        i12 = i11 + K;
                        i15 += i12;
                    }
                    break;
                case 48:
                    K = ma.V((List) unsafe.getObject(obj, j11));
                    if (K > 0) {
                        D = f8.D(i18);
                        a17 = f8.a(K);
                        i11 = D + a17;
                        i12 = i11 + K;
                        i15 += i12;
                    }
                    break;
                case 49:
                    W = ma.L(i18, (List) unsafe.getObject(obj, j11), n(i14));
                    i15 += W;
                    break;
                case 50:
                    u9.a(i18, unsafe.getObject(obj, j11), o(i14));
                    break;
                case 51:
                    if (A(obj, i18, i14)) {
                        a18 = f8.a(i18 << 3);
                        W = a18 + 8;
                        i15 += W;
                    }
                    break;
                case 52:
                    if (A(obj, i18, i14)) {
                        a19 = f8.a(i18 << 3);
                        W = a19 + 4;
                        i15 += W;
                    }
                    break;
                case 53:
                    if (A(obj, i18, i14)) {
                        long k10 = k(obj, j11);
                        a20 = f8.a(i18 << 3);
                        b11 = f8.b(k10);
                        i15 += a20 + b11;
                    }
                    break;
                case 54:
                    if (A(obj, i18, i14)) {
                        long k11 = k(obj, j11);
                        a20 = f8.a(i18 << 3);
                        b11 = f8.b(k11);
                        i15 += a20 + b11;
                    }
                    break;
                case 55:
                    if (A(obj, i18, i14)) {
                        int L = L(obj, j11);
                        i11 = f8.a(i18 << 3);
                        K = f8.z(L);
                        i12 = i11 + K;
                        i15 += i12;
                    }
                    break;
                case 56:
                    if (A(obj, i18, i14)) {
                        a18 = f8.a(i18 << 3);
                        W = a18 + 8;
                        i15 += W;
                    }
                    break;
                case 57:
                    if (A(obj, i18, i14)) {
                        a19 = f8.a(i18 << 3);
                        W = a19 + 4;
                        i15 += W;
                    }
                    break;
                case 58:
                    if (A(obj, i18, i14)) {
                        W = f8.a(i18 << 3) + 1;
                        i15 += W;
                    }
                    break;
                case 59:
                    if (A(obj, i18, i14)) {
                        Object object2 = unsafe.getObject(obj, j11);
                        if (object2 instanceof zzjd) {
                            a21 = f8.a(i18 << 3);
                            zzd2 = ((zzjd) object2).zzd();
                            a22 = f8.a(zzd2);
                            i12 = a21 + a22 + zzd2;
                            i15 += i12;
                        } else {
                            i11 = f8.a(i18 << 3);
                            K = f8.C((String) object2);
                            i12 = i11 + K;
                            i15 += i12;
                        }
                    }
                    break;
                case 60:
                    if (A(obj, i18, i14)) {
                        W = ma.Q(i18, unsafe.getObject(obj, j11), n(i14));
                        i15 += W;
                    }
                    break;
                case 61:
                    if (A(obj, i18, i14)) {
                        a21 = f8.a(i18 << 3);
                        zzd2 = ((zzjd) unsafe.getObject(obj, j11)).zzd();
                        a22 = f8.a(zzd2);
                        i12 = a21 + a22 + zzd2;
                        i15 += i12;
                    }
                    break;
                case 62:
                    if (A(obj, i18, i14)) {
                        int L2 = L(obj, j11);
                        i11 = f8.a(i18 << 3);
                        K = f8.a(L2);
                        i12 = i11 + K;
                        i15 += i12;
                    }
                    break;
                case 63:
                    if (A(obj, i18, i14)) {
                        int L3 = L(obj, j11);
                        i11 = f8.a(i18 << 3);
                        K = f8.z(L3);
                        i12 = i11 + K;
                        i15 += i12;
                    }
                    break;
                case 64:
                    if (A(obj, i18, i14)) {
                        a19 = f8.a(i18 << 3);
                        W = a19 + 4;
                        i15 += W;
                    }
                    break;
                case 65:
                    if (A(obj, i18, i14)) {
                        a18 = f8.a(i18 << 3);
                        W = a18 + 8;
                        i15 += W;
                    }
                    break;
                case 66:
                    if (A(obj, i18, i14)) {
                        int L4 = L(obj, j11);
                        i11 = f8.a(i18 << 3);
                        K = f8.a((L4 >> 31) ^ (L4 + L4));
                        i12 = i11 + K;
                        i15 += i12;
                    }
                    break;
                case 67:
                    if (A(obj, i18, i14)) {
                        long k12 = k(obj, j11);
                        i15 += f8.a(i18 << 3) + f8.b((k12 >> 63) ^ (k12 + k12));
                    }
                    break;
                case 68:
                    if (A(obj, i18, i14)) {
                        W = f8.y(i18, (z9) unsafe.getObject(obj, j11), n(i14));
                        i15 += W;
                    }
                    break;
            }
            i14 += 3;
            i13 = 1048575;
        }
        bb bbVar = this.f8010l;
        int a23 = i15 + bbVar.a(bbVar.c(obj));
        if (this.f8004f) {
            this.f8011m.a(obj);
            throw null;
        }
        return a23;
    }

    private final int K(Object obj) {
        int a10;
        int a11;
        int a12;
        int b10;
        int a13;
        int z10;
        int a14;
        int a15;
        int zzd;
        int a16;
        int Q;
        int D;
        int a17;
        int i9;
        Unsafe unsafe = f7998q;
        int i10 = 0;
        for (int i11 = 0; i11 < this.f7999a.length; i11 += 3) {
            int j10 = j(i11);
            int i12 = i(j10);
            int i13 = this.f7999a[i11];
            long j11 = j10 & 1048575;
            if (i12 >= zzjw.zzJ.zza() && i12 <= zzjw.zzW.zza()) {
                int i14 = this.f7999a[i11 + 2];
            }
            switch (i12) {
                case 0:
                    if (x(obj, i11)) {
                        a10 = f8.a(i13 << 3);
                        Q = a10 + 8;
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (x(obj, i11)) {
                        a11 = f8.a(i13 << 3);
                        Q = a11 + 4;
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (x(obj, i11)) {
                        long i15 = lb.i(obj, j11);
                        a12 = f8.a(i13 << 3);
                        b10 = f8.b(i15);
                        i10 += a12 + b10;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (x(obj, i11)) {
                        long i16 = lb.i(obj, j11);
                        a12 = f8.a(i13 << 3);
                        b10 = f8.b(i16);
                        i10 += a12 + b10;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (x(obj, i11)) {
                        int h10 = lb.h(obj, j11);
                        a13 = f8.a(i13 << 3);
                        z10 = f8.z(h10);
                        i9 = a13 + z10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (x(obj, i11)) {
                        a10 = f8.a(i13 << 3);
                        Q = a10 + 8;
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (x(obj, i11)) {
                        a11 = f8.a(i13 << 3);
                        Q = a11 + 4;
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (x(obj, i11)) {
                        a14 = f8.a(i13 << 3);
                        Q = a14 + 1;
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (!x(obj, i11)) {
                        break;
                    } else {
                        Object k10 = lb.k(obj, j11);
                        if (k10 instanceof zzjd) {
                            a15 = f8.a(i13 << 3);
                            zzd = ((zzjd) k10).zzd();
                            a16 = f8.a(zzd);
                            i9 = a15 + a16 + zzd;
                            i10 += i9;
                            break;
                        } else {
                            a13 = f8.a(i13 << 3);
                            z10 = f8.C((String) k10);
                            i9 = a13 + z10;
                            i10 += i9;
                        }
                    }
                case 9:
                    if (x(obj, i11)) {
                        Q = ma.Q(i13, lb.k(obj, j11), n(i11));
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (x(obj, i11)) {
                        a15 = f8.a(i13 << 3);
                        zzd = ((zzjd) lb.k(obj, j11)).zzd();
                        a16 = f8.a(zzd);
                        i9 = a15 + a16 + zzd;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (x(obj, i11)) {
                        int h11 = lb.h(obj, j11);
                        a13 = f8.a(i13 << 3);
                        z10 = f8.a(h11);
                        i9 = a13 + z10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (x(obj, i11)) {
                        int h12 = lb.h(obj, j11);
                        a13 = f8.a(i13 << 3);
                        z10 = f8.z(h12);
                        i9 = a13 + z10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (x(obj, i11)) {
                        a11 = f8.a(i13 << 3);
                        Q = a11 + 4;
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (x(obj, i11)) {
                        a10 = f8.a(i13 << 3);
                        Q = a10 + 8;
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (x(obj, i11)) {
                        int h13 = lb.h(obj, j11);
                        a13 = f8.a(i13 << 3);
                        z10 = f8.a((h13 >> 31) ^ (h13 + h13));
                        i9 = a13 + z10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (x(obj, i11)) {
                        long i17 = lb.i(obj, j11);
                        a13 = f8.a(i13 << 3);
                        z10 = f8.b((i17 >> 63) ^ (i17 + i17));
                        i9 = a13 + z10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (x(obj, i11)) {
                        Q = f8.y(i13, (z9) lb.k(obj, j11), n(i11));
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    Q = ma.J(i13, (List) lb.k(obj, j11), false);
                    i10 += Q;
                    break;
                case 19:
                    Q = ma.H(i13, (List) lb.k(obj, j11), false);
                    i10 += Q;
                    break;
                case 20:
                    Q = ma.O(i13, (List) lb.k(obj, j11), false);
                    i10 += Q;
                    break;
                case 21:
                    Q = ma.Z(i13, (List) lb.k(obj, j11), false);
                    i10 += Q;
                    break;
                case 22:
                    Q = ma.M(i13, (List) lb.k(obj, j11), false);
                    i10 += Q;
                    break;
                case 23:
                    Q = ma.J(i13, (List) lb.k(obj, j11), false);
                    i10 += Q;
                    break;
                case 24:
                    Q = ma.H(i13, (List) lb.k(obj, j11), false);
                    i10 += Q;
                    break;
                case 25:
                    Q = ma.A(i13, (List) lb.k(obj, j11), false);
                    i10 += Q;
                    break;
                case 26:
                    Q = ma.W(i13, (List) lb.k(obj, j11));
                    i10 += Q;
                    break;
                case 27:
                    Q = ma.R(i13, (List) lb.k(obj, j11), n(i11));
                    i10 += Q;
                    break;
                case 28:
                    Q = ma.E(i13, (List) lb.k(obj, j11));
                    i10 += Q;
                    break;
                case 29:
                    Q = ma.X(i13, (List) lb.k(obj, j11), false);
                    i10 += Q;
                    break;
                case 30:
                    Q = ma.F(i13, (List) lb.k(obj, j11), false);
                    i10 += Q;
                    break;
                case 31:
                    Q = ma.H(i13, (List) lb.k(obj, j11), false);
                    i10 += Q;
                    break;
                case 32:
                    Q = ma.J(i13, (List) lb.k(obj, j11), false);
                    i10 += Q;
                    break;
                case 33:
                    Q = ma.S(i13, (List) lb.k(obj, j11), false);
                    i10 += Q;
                    break;
                case 34:
                    Q = ma.U(i13, (List) lb.k(obj, j11), false);
                    i10 += Q;
                    break;
                case 35:
                    z10 = ma.K((List) unsafe.getObject(obj, j11));
                    if (z10 > 0) {
                        D = f8.D(i13);
                        a17 = f8.a(z10);
                        a13 = D + a17;
                        i9 = a13 + z10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    z10 = ma.I((List) unsafe.getObject(obj, j11));
                    if (z10 > 0) {
                        D = f8.D(i13);
                        a17 = f8.a(z10);
                        a13 = D + a17;
                        i9 = a13 + z10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    z10 = ma.P((List) unsafe.getObject(obj, j11));
                    if (z10 > 0) {
                        D = f8.D(i13);
                        a17 = f8.a(z10);
                        a13 = D + a17;
                        i9 = a13 + z10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    z10 = ma.a0((List) unsafe.getObject(obj, j11));
                    if (z10 > 0) {
                        D = f8.D(i13);
                        a17 = f8.a(z10);
                        a13 = D + a17;
                        i9 = a13 + z10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    z10 = ma.N((List) unsafe.getObject(obj, j11));
                    if (z10 > 0) {
                        D = f8.D(i13);
                        a17 = f8.a(z10);
                        a13 = D + a17;
                        i9 = a13 + z10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    z10 = ma.K((List) unsafe.getObject(obj, j11));
                    if (z10 > 0) {
                        D = f8.D(i13);
                        a17 = f8.a(z10);
                        a13 = D + a17;
                        i9 = a13 + z10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    z10 = ma.I((List) unsafe.getObject(obj, j11));
                    if (z10 > 0) {
                        D = f8.D(i13);
                        a17 = f8.a(z10);
                        a13 = D + a17;
                        i9 = a13 + z10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    z10 = ma.D((List) unsafe.getObject(obj, j11));
                    if (z10 > 0) {
                        D = f8.D(i13);
                        a17 = f8.a(z10);
                        a13 = D + a17;
                        i9 = a13 + z10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    z10 = ma.Y((List) unsafe.getObject(obj, j11));
                    if (z10 > 0) {
                        D = f8.D(i13);
                        a17 = f8.a(z10);
                        a13 = D + a17;
                        i9 = a13 + z10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    z10 = ma.G((List) unsafe.getObject(obj, j11));
                    if (z10 > 0) {
                        D = f8.D(i13);
                        a17 = f8.a(z10);
                        a13 = D + a17;
                        i9 = a13 + z10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    z10 = ma.I((List) unsafe.getObject(obj, j11));
                    if (z10 > 0) {
                        D = f8.D(i13);
                        a17 = f8.a(z10);
                        a13 = D + a17;
                        i9 = a13 + z10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    z10 = ma.K((List) unsafe.getObject(obj, j11));
                    if (z10 > 0) {
                        D = f8.D(i13);
                        a17 = f8.a(z10);
                        a13 = D + a17;
                        i9 = a13 + z10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    z10 = ma.T((List) unsafe.getObject(obj, j11));
                    if (z10 > 0) {
                        D = f8.D(i13);
                        a17 = f8.a(z10);
                        a13 = D + a17;
                        i9 = a13 + z10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    z10 = ma.V((List) unsafe.getObject(obj, j11));
                    if (z10 > 0) {
                        D = f8.D(i13);
                        a17 = f8.a(z10);
                        a13 = D + a17;
                        i9 = a13 + z10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    Q = ma.L(i13, (List) lb.k(obj, j11), n(i11));
                    i10 += Q;
                    break;
                case 50:
                    u9.a(i13, lb.k(obj, j11), o(i11));
                    break;
                case 51:
                    if (A(obj, i13, i11)) {
                        a10 = f8.a(i13 << 3);
                        Q = a10 + 8;
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (A(obj, i13, i11)) {
                        a11 = f8.a(i13 << 3);
                        Q = a11 + 4;
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (A(obj, i13, i11)) {
                        long k11 = k(obj, j11);
                        a12 = f8.a(i13 << 3);
                        b10 = f8.b(k11);
                        i10 += a12 + b10;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (A(obj, i13, i11)) {
                        long k12 = k(obj, j11);
                        a12 = f8.a(i13 << 3);
                        b10 = f8.b(k12);
                        i10 += a12 + b10;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (A(obj, i13, i11)) {
                        int L = L(obj, j11);
                        a13 = f8.a(i13 << 3);
                        z10 = f8.z(L);
                        i9 = a13 + z10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (A(obj, i13, i11)) {
                        a10 = f8.a(i13 << 3);
                        Q = a10 + 8;
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (A(obj, i13, i11)) {
                        a11 = f8.a(i13 << 3);
                        Q = a11 + 4;
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (A(obj, i13, i11)) {
                        a14 = f8.a(i13 << 3);
                        Q = a14 + 1;
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (!A(obj, i13, i11)) {
                        break;
                    } else {
                        Object k13 = lb.k(obj, j11);
                        if (k13 instanceof zzjd) {
                            a15 = f8.a(i13 << 3);
                            zzd = ((zzjd) k13).zzd();
                            a16 = f8.a(zzd);
                            i9 = a15 + a16 + zzd;
                            i10 += i9;
                            break;
                        } else {
                            a13 = f8.a(i13 << 3);
                            z10 = f8.C((String) k13);
                            i9 = a13 + z10;
                            i10 += i9;
                        }
                    }
                case 60:
                    if (A(obj, i13, i11)) {
                        Q = ma.Q(i13, lb.k(obj, j11), n(i11));
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (A(obj, i13, i11)) {
                        a15 = f8.a(i13 << 3);
                        zzd = ((zzjd) lb.k(obj, j11)).zzd();
                        a16 = f8.a(zzd);
                        i9 = a15 + a16 + zzd;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (A(obj, i13, i11)) {
                        int L2 = L(obj, j11);
                        a13 = f8.a(i13 << 3);
                        z10 = f8.a(L2);
                        i9 = a13 + z10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (A(obj, i13, i11)) {
                        int L3 = L(obj, j11);
                        a13 = f8.a(i13 << 3);
                        z10 = f8.z(L3);
                        i9 = a13 + z10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (A(obj, i13, i11)) {
                        a11 = f8.a(i13 << 3);
                        Q = a11 + 4;
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (A(obj, i13, i11)) {
                        a10 = f8.a(i13 << 3);
                        Q = a10 + 8;
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (A(obj, i13, i11)) {
                        int L4 = L(obj, j11);
                        a13 = f8.a(i13 << 3);
                        z10 = f8.a((L4 >> 31) ^ (L4 + L4));
                        i9 = a13 + z10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (A(obj, i13, i11)) {
                        long k14 = k(obj, j11);
                        a13 = f8.a(i13 << 3);
                        z10 = f8.b((k14 >> 63) ^ (k14 + k14));
                        i9 = a13 + z10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (A(obj, i13, i11)) {
                        Q = f8.y(i13, (z9) lb.k(obj, j11), n(i11));
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
            }
        }
        bb bbVar = this.f8010l;
        return i10 + bbVar.a(bbVar.c(obj));
    }

    private static int L(Object obj, long j10) {
        return ((Integer) lb.k(obj, j10)).intValue();
    }

    private final int M(Object obj, byte[] bArr, int i9, int i10, int i11, long j10, l7 l7Var) throws IOException {
        Unsafe unsafe = f7998q;
        Object o10 = o(i11);
        Object object = unsafe.getObject(obj, j10);
        if (!((zzlf) object).zze()) {
            zzlf zzb = zzlf.zza().zzb();
            u9.b(zzb, object);
            unsafe.putObject(obj, j10, zzb);
        }
        t9 t9Var = (t9) o10;
        throw null;
    }

    private final int N(Object obj, byte[] bArr, int i9, int i10, int i11, int i12, int i13, int i14, int i15, long j10, int i16, l7 l7Var) throws IOException {
        Unsafe unsafe = f7998q;
        long j11 = this.f7999a[i16 + 2] & 1048575;
        switch (i15) {
            case 51:
                if (i13 == 1) {
                    unsafe.putObject(obj, j10, Double.valueOf(Double.longBitsToDouble(m7.n(bArr, i9))));
                    unsafe.putInt(obj, j11, i12);
                    return i9 + 8;
                }
                break;
            case 52:
                if (i13 == 5) {
                    unsafe.putObject(obj, j10, Float.valueOf(Float.intBitsToFloat(m7.b(bArr, i9))));
                    unsafe.putInt(obj, j11, i12);
                    return i9 + 4;
                }
                break;
            case 53:
            case 54:
                if (i13 == 0) {
                    int m10 = m7.m(bArr, i9, l7Var);
                    unsafe.putObject(obj, j10, Long.valueOf(l7Var.f8181b));
                    unsafe.putInt(obj, j11, i12);
                    return m10;
                }
                break;
            case 55:
            case 62:
                if (i13 == 0) {
                    int j12 = m7.j(bArr, i9, l7Var);
                    unsafe.putObject(obj, j10, Integer.valueOf(l7Var.f8180a));
                    unsafe.putInt(obj, j11, i12);
                    return j12;
                }
                break;
            case 56:
            case 65:
                if (i13 == 1) {
                    unsafe.putObject(obj, j10, Long.valueOf(m7.n(bArr, i9)));
                    unsafe.putInt(obj, j11, i12);
                    return i9 + 8;
                }
                break;
            case 57:
            case 64:
                if (i13 == 5) {
                    unsafe.putObject(obj, j10, Integer.valueOf(m7.b(bArr, i9)));
                    unsafe.putInt(obj, j11, i12);
                    return i9 + 4;
                }
                break;
            case 58:
                if (i13 == 0) {
                    int m11 = m7.m(bArr, i9, l7Var);
                    unsafe.putObject(obj, j10, Boolean.valueOf(l7Var.f8181b != 0));
                    unsafe.putInt(obj, j11, i12);
                    return m11;
                }
                break;
            case 59:
                if (i13 == 2) {
                    int j13 = m7.j(bArr, i9, l7Var);
                    int i17 = l7Var.f8180a;
                    if (i17 == 0) {
                        unsafe.putObject(obj, j10, "");
                    } else if ((i14 & 536870912) != 0 && !rb.f(bArr, j13, j13 + i17)) {
                        throw zzko.zzc();
                    } else {
                        unsafe.putObject(obj, j10, new String(bArr, j13, i17, e9.f8050b));
                        j13 += i17;
                    }
                    unsafe.putInt(obj, j11, i12);
                    return j13;
                }
                break;
            case 60:
                if (i13 == 2) {
                    int d10 = m7.d(n(i16), bArr, i9, i10, l7Var);
                    Object object = unsafe.getInt(obj, j11) == i12 ? unsafe.getObject(obj, j10) : null;
                    if (object == null) {
                        unsafe.putObject(obj, j10, l7Var.f8182c);
                    } else {
                        unsafe.putObject(obj, j10, e9.g(object, l7Var.f8182c));
                    }
                    unsafe.putInt(obj, j11, i12);
                    return d10;
                }
                break;
            case 61:
                if (i13 == 2) {
                    int a10 = m7.a(bArr, i9, l7Var);
                    unsafe.putObject(obj, j10, l7Var.f8182c);
                    unsafe.putInt(obj, j11, i12);
                    return a10;
                }
                break;
            case 63:
                if (i13 == 0) {
                    int j14 = m7.j(bArr, i9, l7Var);
                    int i18 = l7Var.f8180a;
                    a9 m12 = m(i16);
                    if (m12 != null && !m12.h(i18)) {
                        E(obj).h(i11, Long.valueOf(i18));
                    } else {
                        unsafe.putObject(obj, j10, Integer.valueOf(i18));
                        unsafe.putInt(obj, j11, i12);
                    }
                    return j14;
                }
                break;
            case 66:
                if (i13 == 0) {
                    int j15 = m7.j(bArr, i9, l7Var);
                    unsafe.putObject(obj, j10, Integer.valueOf(c8.a(l7Var.f8180a)));
                    unsafe.putInt(obj, j11, i12);
                    return j15;
                }
                break;
            case 67:
                if (i13 == 0) {
                    int m13 = m7.m(bArr, i9, l7Var);
                    unsafe.putObject(obj, j10, Long.valueOf(c8.b(l7Var.f8181b)));
                    unsafe.putInt(obj, j11, i12);
                    return m13;
                }
                break;
            case 68:
                if (i13 == 3) {
                    int c10 = m7.c(n(i16), bArr, i9, i10, (i11 & (-8)) | 4, l7Var);
                    Object object2 = unsafe.getInt(obj, j11) == i12 ? unsafe.getObject(obj, j10) : null;
                    if (object2 == null) {
                        unsafe.putObject(obj, j10, l7Var.f8182c);
                    } else {
                        unsafe.putObject(obj, j10, e9.g(object2, l7Var.f8182c));
                    }
                    unsafe.putInt(obj, j11, i12);
                    return c10;
                }
                break;
        }
        return i9;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x02e7, code lost:
        if (r0 != r5) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x02e9, code lost:
        r15 = r30;
        r14 = r31;
        r12 = r32;
        r13 = r34;
        r11 = r35;
        r1 = r20;
        r2 = r23;
        r6 = r26;
        r7 = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x02fd, code lost:
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x032e, code lost:
        if (r0 != r15) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0351, code lost:
        if (r0 != r15) goto L106;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v9, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int O(java.lang.Object r31, byte[] r32, int r33, int r34, com.google.android.gms.internal.measurement.l7 r35) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 958
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.ca.O(java.lang.Object, byte[], int, int, com.google.android.gms.internal.measurement.l7):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0152  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:119:0x021a -> B:120:0x021b). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:66:0x014f -> B:67:0x0150). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:99:0x01cc -> B:100:0x01cd). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int P(java.lang.Object r16, byte[] r17, int r18, int r19, int r20, int r21, int r22, int r23, long r24, int r26, long r27, com.google.android.gms.internal.measurement.l7 r29) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1172
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.ca.P(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.measurement.l7):int");
    }

    private final int Q(int i9) {
        if (i9 < this.f8001c || i9 > this.f8002d) {
            return -1;
        }
        return T(i9, 0);
    }

    private final int R(int i9, int i10) {
        if (i9 < this.f8001c || i9 > this.f8002d) {
            return -1;
        }
        return T(i9, i10);
    }

    private final int S(int i9) {
        return this.f7999a[i9 + 2];
    }

    private final int T(int i9, int i10) {
        int length = (this.f7999a.length / 3) - 1;
        while (i10 <= length) {
            int i11 = (length + i10) >>> 1;
            int i12 = i11 * 3;
            int i13 = this.f7999a[i12];
            if (i9 == i13) {
                return i12;
            }
            if (i9 < i13) {
                length = i11 - 1;
            } else {
                i10 = i11 + 1;
            }
        }
        return -1;
    }

    private static int i(int i9) {
        return (i9 >>> 20) & 255;
    }

    private final int j(int i9) {
        return this.f7999a[i9 + 1];
    }

    private static long k(Object obj, long j10) {
        return ((Long) lb.k(obj, j10)).longValue();
    }

    private final a9 m(int i9) {
        int i10 = i9 / 3;
        return (a9) this.f8000b[i10 + i10 + 1];
    }

    private final ka n(int i9) {
        int i10 = i9 / 3;
        int i11 = i10 + i10;
        ka kaVar = (ka) this.f8000b[i11];
        if (kaVar != null) {
            return kaVar;
        }
        ka b10 = ha.a().b((Class) this.f8000b[i11 + 1]);
        this.f8000b[i11] = b10;
        return b10;
    }

    private final Object o(int i9) {
        int i10 = i9 / 3;
        return this.f8000b[i10 + i10];
    }

    private static Field p(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    private final void q(Object obj, Object obj2, int i9) {
        long j10 = j(i9) & 1048575;
        if (x(obj2, i9)) {
            Object k10 = lb.k(obj, j10);
            Object k11 = lb.k(obj2, j10);
            if (k10 != null && k11 != null) {
                lb.x(obj, j10, e9.g(k10, k11));
                s(obj, i9);
            } else if (k11 != null) {
                lb.x(obj, j10, k11);
                s(obj, i9);
            }
        }
    }

    private final void r(Object obj, Object obj2, int i9) {
        int j10 = j(i9);
        int i10 = this.f7999a[i9];
        long j11 = j10 & 1048575;
        if (A(obj2, i10, i9)) {
            Object k10 = A(obj, i10, i9) ? lb.k(obj, j11) : null;
            Object k11 = lb.k(obj2, j11);
            if (k10 != null && k11 != null) {
                lb.x(obj, j11, e9.g(k10, k11));
                t(obj, i10, i9);
            } else if (k11 != null) {
                lb.x(obj, j11, k11);
                t(obj, i10, i9);
            }
        }
    }

    private final void s(Object obj, int i9) {
        int S = S(i9);
        long j10 = 1048575 & S;
        if (j10 == 1048575) {
            return;
        }
        lb.v(obj, j10, (1 << (S >>> 20)) | lb.h(obj, j10));
    }

    private final void t(Object obj, int i9, int i10) {
        lb.v(obj, S(i10) & 1048575, i9);
    }

    private final void u(Object obj, sb sbVar) throws IOException {
        int i9;
        if (!this.f8004f) {
            int length = this.f7999a.length;
            Unsafe unsafe = f7998q;
            int i10 = 1048575;
            int i11 = 0;
            int i12 = 0;
            int i13 = 1048575;
            while (i11 < length) {
                int j10 = j(i11);
                int[] iArr = this.f7999a;
                int i14 = iArr[i11];
                int i15 = i(j10);
                if (i15 <= 17) {
                    int i16 = iArr[i11 + 2];
                    int i17 = i16 & i10;
                    if (i17 != i13) {
                        i12 = unsafe.getInt(obj, i17);
                        i13 = i17;
                    }
                    i9 = 1 << (i16 >>> 20);
                } else {
                    i9 = 0;
                }
                long j11 = j10 & i10;
                switch (i15) {
                    case 0:
                        if ((i12 & i9) != 0) {
                            sbVar.l(i14, lb.f(obj, j11));
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 1:
                        if ((i12 & i9) != 0) {
                            sbVar.s(i14, lb.g(obj, j11));
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 2:
                        if ((i12 & i9) != 0) {
                            sbVar.h(i14, unsafe.getLong(obj, j11));
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 3:
                        if ((i12 & i9) != 0) {
                            sbVar.L(i14, unsafe.getLong(obj, j11));
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 4:
                        if ((i12 & i9) != 0) {
                            sbVar.k(i14, unsafe.getInt(obj, j11));
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 5:
                        if ((i12 & i9) != 0) {
                            sbVar.v(i14, unsafe.getLong(obj, j11));
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 6:
                        if ((i12 & i9) != 0) {
                            sbVar.o(i14, unsafe.getInt(obj, j11));
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 7:
                        if ((i12 & i9) != 0) {
                            sbVar.g(i14, lb.B(obj, j11));
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 8:
                        if ((i12 & i9) != 0) {
                            C(i14, unsafe.getObject(obj, j11), sbVar);
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 9:
                        if ((i12 & i9) != 0) {
                            sbVar.M(i14, unsafe.getObject(obj, j11), n(i11));
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 10:
                        if ((i12 & i9) != 0) {
                            sbVar.y(i14, (zzjd) unsafe.getObject(obj, j11));
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 11:
                        if ((i12 & i9) != 0) {
                            sbVar.E(i14, unsafe.getInt(obj, j11));
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 12:
                        if ((i12 & i9) != 0) {
                            sbVar.q(i14, unsafe.getInt(obj, j11));
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 13:
                        if ((i12 & i9) != 0) {
                            sbVar.z(i14, unsafe.getInt(obj, j11));
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 14:
                        if ((i12 & i9) != 0) {
                            sbVar.G(i14, unsafe.getLong(obj, j11));
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 15:
                        if ((i12 & i9) != 0) {
                            sbVar.w(i14, unsafe.getInt(obj, j11));
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 16:
                        if ((i12 & i9) != 0) {
                            sbVar.D(i14, unsafe.getLong(obj, j11));
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 17:
                        if ((i12 & i9) != 0) {
                            sbVar.A(i14, unsafe.getObject(obj, j11), n(i11));
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 18:
                        ma.j(this.f7999a[i11], (List) unsafe.getObject(obj, j11), sbVar, false);
                        continue;
                        i11 += 3;
                        i10 = 1048575;
                    case 19:
                        ma.n(this.f7999a[i11], (List) unsafe.getObject(obj, j11), sbVar, false);
                        continue;
                        i11 += 3;
                        i10 = 1048575;
                    case 20:
                        ma.q(this.f7999a[i11], (List) unsafe.getObject(obj, j11), sbVar, false);
                        continue;
                        i11 += 3;
                        i10 = 1048575;
                    case 21:
                        ma.y(this.f7999a[i11], (List) unsafe.getObject(obj, j11), sbVar, false);
                        continue;
                        i11 += 3;
                        i10 = 1048575;
                    case 22:
                        ma.p(this.f7999a[i11], (List) unsafe.getObject(obj, j11), sbVar, false);
                        continue;
                        i11 += 3;
                        i10 = 1048575;
                    case 23:
                        ma.m(this.f7999a[i11], (List) unsafe.getObject(obj, j11), sbVar, false);
                        continue;
                        i11 += 3;
                        i10 = 1048575;
                    case 24:
                        ma.l(this.f7999a[i11], (List) unsafe.getObject(obj, j11), sbVar, false);
                        continue;
                        i11 += 3;
                        i10 = 1048575;
                    case 25:
                        ma.h(this.f7999a[i11], (List) unsafe.getObject(obj, j11), sbVar, false);
                        continue;
                        i11 += 3;
                        i10 = 1048575;
                    case 26:
                        ma.w(this.f7999a[i11], (List) unsafe.getObject(obj, j11), sbVar);
                        break;
                    case 27:
                        ma.r(this.f7999a[i11], (List) unsafe.getObject(obj, j11), sbVar, n(i11));
                        break;
                    case 28:
                        ma.i(this.f7999a[i11], (List) unsafe.getObject(obj, j11), sbVar);
                        break;
                    case 29:
                        ma.x(this.f7999a[i11], (List) unsafe.getObject(obj, j11), sbVar, false);
                        break;
                    case 30:
                        ma.k(this.f7999a[i11], (List) unsafe.getObject(obj, j11), sbVar, false);
                        break;
                    case 31:
                        ma.s(this.f7999a[i11], (List) unsafe.getObject(obj, j11), sbVar, false);
                        break;
                    case 32:
                        ma.t(this.f7999a[i11], (List) unsafe.getObject(obj, j11), sbVar, false);
                        break;
                    case 33:
                        ma.u(this.f7999a[i11], (List) unsafe.getObject(obj, j11), sbVar, false);
                        break;
                    case 34:
                        ma.v(this.f7999a[i11], (List) unsafe.getObject(obj, j11), sbVar, false);
                        break;
                    case 35:
                        ma.j(this.f7999a[i11], (List) unsafe.getObject(obj, j11), sbVar, true);
                        break;
                    case 36:
                        ma.n(this.f7999a[i11], (List) unsafe.getObject(obj, j11), sbVar, true);
                        break;
                    case 37:
                        ma.q(this.f7999a[i11], (List) unsafe.getObject(obj, j11), sbVar, true);
                        break;
                    case 38:
                        ma.y(this.f7999a[i11], (List) unsafe.getObject(obj, j11), sbVar, true);
                        break;
                    case 39:
                        ma.p(this.f7999a[i11], (List) unsafe.getObject(obj, j11), sbVar, true);
                        break;
                    case 40:
                        ma.m(this.f7999a[i11], (List) unsafe.getObject(obj, j11), sbVar, true);
                        break;
                    case 41:
                        ma.l(this.f7999a[i11], (List) unsafe.getObject(obj, j11), sbVar, true);
                        break;
                    case 42:
                        ma.h(this.f7999a[i11], (List) unsafe.getObject(obj, j11), sbVar, true);
                        break;
                    case 43:
                        ma.x(this.f7999a[i11], (List) unsafe.getObject(obj, j11), sbVar, true);
                        break;
                    case 44:
                        ma.k(this.f7999a[i11], (List) unsafe.getObject(obj, j11), sbVar, true);
                        break;
                    case 45:
                        ma.s(this.f7999a[i11], (List) unsafe.getObject(obj, j11), sbVar, true);
                        break;
                    case 46:
                        ma.t(this.f7999a[i11], (List) unsafe.getObject(obj, j11), sbVar, true);
                        break;
                    case 47:
                        ma.u(this.f7999a[i11], (List) unsafe.getObject(obj, j11), sbVar, true);
                        break;
                    case 48:
                        ma.v(this.f7999a[i11], (List) unsafe.getObject(obj, j11), sbVar, true);
                        break;
                    case 49:
                        ma.o(this.f7999a[i11], (List) unsafe.getObject(obj, j11), sbVar, n(i11));
                        break;
                    case 50:
                        v(sbVar, i14, unsafe.getObject(obj, j11), i11);
                        break;
                    case 51:
                        if (A(obj, i14, i11)) {
                            sbVar.l(i14, H(obj, j11));
                            break;
                        }
                        break;
                    case 52:
                        if (A(obj, i14, i11)) {
                            sbVar.s(i14, I(obj, j11));
                            break;
                        }
                        break;
                    case 53:
                        if (A(obj, i14, i11)) {
                            sbVar.h(i14, k(obj, j11));
                            break;
                        }
                        break;
                    case 54:
                        if (A(obj, i14, i11)) {
                            sbVar.L(i14, k(obj, j11));
                            break;
                        }
                        break;
                    case 55:
                        if (A(obj, i14, i11)) {
                            sbVar.k(i14, L(obj, j11));
                            break;
                        }
                        break;
                    case 56:
                        if (A(obj, i14, i11)) {
                            sbVar.v(i14, k(obj, j11));
                            break;
                        }
                        break;
                    case 57:
                        if (A(obj, i14, i11)) {
                            sbVar.o(i14, L(obj, j11));
                            break;
                        }
                        break;
                    case 58:
                        if (A(obj, i14, i11)) {
                            sbVar.g(i14, B(obj, j11));
                            break;
                        }
                        break;
                    case 59:
                        if (A(obj, i14, i11)) {
                            C(i14, unsafe.getObject(obj, j11), sbVar);
                            break;
                        }
                        break;
                    case 60:
                        if (A(obj, i14, i11)) {
                            sbVar.M(i14, unsafe.getObject(obj, j11), n(i11));
                            break;
                        }
                        break;
                    case 61:
                        if (A(obj, i14, i11)) {
                            sbVar.y(i14, (zzjd) unsafe.getObject(obj, j11));
                            break;
                        }
                        break;
                    case 62:
                        if (A(obj, i14, i11)) {
                            sbVar.E(i14, L(obj, j11));
                            break;
                        }
                        break;
                    case 63:
                        if (A(obj, i14, i11)) {
                            sbVar.q(i14, L(obj, j11));
                            break;
                        }
                        break;
                    case 64:
                        if (A(obj, i14, i11)) {
                            sbVar.z(i14, L(obj, j11));
                            break;
                        }
                        break;
                    case 65:
                        if (A(obj, i14, i11)) {
                            sbVar.G(i14, k(obj, j11));
                            break;
                        }
                        break;
                    case 66:
                        if (A(obj, i14, i11)) {
                            sbVar.w(i14, L(obj, j11));
                            break;
                        }
                        break;
                    case 67:
                        if (A(obj, i14, i11)) {
                            sbVar.D(i14, k(obj, j11));
                            break;
                        }
                        break;
                    case 68:
                        if (A(obj, i14, i11)) {
                            sbVar.A(i14, unsafe.getObject(obj, j11), n(i11));
                            break;
                        }
                        break;
                }
                i11 += 3;
                i10 = 1048575;
            }
            bb bbVar = this.f8010l;
            bbVar.i(bbVar.c(obj), sbVar);
            return;
        }
        this.f8011m.a(obj);
        throw null;
    }

    private final void v(sb sbVar, int i9, Object obj, int i10) throws IOException {
        if (obj == null) {
            return;
        }
        t9 t9Var = (t9) o(i10);
        throw null;
    }

    private final boolean w(Object obj, Object obj2, int i9) {
        return x(obj, i9) == x(obj2, i9);
    }

    private final boolean x(Object obj, int i9) {
        int S = S(i9);
        long j10 = S & 1048575;
        if (j10 != 1048575) {
            return (lb.h(obj, j10) & (1 << (S >>> 20))) != 0;
        }
        int j11 = j(i9);
        long j12 = j11 & 1048575;
        switch (i(j11)) {
            case 0:
                return Double.doubleToRawLongBits(lb.f(obj, j12)) != 0;
            case 1:
                return Float.floatToRawIntBits(lb.g(obj, j12)) != 0;
            case 2:
                return lb.i(obj, j12) != 0;
            case 3:
                return lb.i(obj, j12) != 0;
            case 4:
                return lb.h(obj, j12) != 0;
            case 5:
                return lb.i(obj, j12) != 0;
            case 6:
                return lb.h(obj, j12) != 0;
            case 7:
                return lb.B(obj, j12);
            case 8:
                Object k10 = lb.k(obj, j12);
                if (k10 instanceof String) {
                    return !((String) k10).isEmpty();
                } else if (k10 instanceof zzjd) {
                    return !zzjd.zzb.equals(k10);
                } else {
                    throw new IllegalArgumentException();
                }
            case 9:
                return lb.k(obj, j12) != null;
            case 10:
                return !zzjd.zzb.equals(lb.k(obj, j12));
            case 11:
                return lb.h(obj, j12) != 0;
            case 12:
                return lb.h(obj, j12) != 0;
            case 13:
                return lb.h(obj, j12) != 0;
            case 14:
                return lb.i(obj, j12) != 0;
            case 15:
                return lb.h(obj, j12) != 0;
            case 16:
                return lb.i(obj, j12) != 0;
            case 17:
                return lb.k(obj, j12) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean y(Object obj, int i9, int i10, int i11, int i12) {
        return i10 == 1048575 ? x(obj, i9) : (i11 & i12) != 0;
    }

    private static boolean z(Object obj, int i9, ka kaVar) {
        return kaVar.g(lb.k(obj, i9 & 1048575));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int D(Object obj, byte[] bArr, int i9, int i10, int i11, l7 l7Var) throws IOException {
        Unsafe unsafe;
        int i12;
        Object obj2;
        ca<T> caVar;
        byte b10;
        int Q;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        Object obj3;
        int i18;
        l7 l7Var2;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        ca<T> caVar2 = this;
        Object obj4 = obj;
        byte[] bArr2 = bArr;
        int i29 = i10;
        int i30 = i11;
        l7 l7Var3 = l7Var;
        Unsafe unsafe2 = f7998q;
        int i31 = i9;
        int i32 = 0;
        int i33 = -1;
        int i34 = 0;
        int i35 = 0;
        int i36 = 1048575;
        while (true) {
            if (i31 < i29) {
                int i37 = i31 + 1;
                byte b11 = bArr2[i31];
                if (b11 < 0) {
                    int k10 = m7.k(b11, bArr2, i37, l7Var3);
                    b10 = l7Var3.f8180a;
                    i37 = k10;
                } else {
                    b10 = b11;
                }
                int i38 = b10 >>> 3;
                int i39 = b10 & 7;
                if (i38 > i33) {
                    Q = caVar2.R(i38, i34 / 3);
                } else {
                    Q = caVar2.Q(i38);
                }
                if (Q == -1) {
                    i13 = i38;
                    i14 = i37;
                    i15 = b10;
                    i16 = i35;
                    unsafe = unsafe2;
                    i12 = i30;
                    i17 = 0;
                } else {
                    int[] iArr = caVar2.f7999a;
                    int i40 = iArr[Q + 1];
                    int i41 = i(i40);
                    int i42 = i37;
                    long j10 = i40 & 1048575;
                    if (i41 <= 17) {
                        int i43 = iArr[Q + 2];
                        int i44 = 1 << (i43 >>> 20);
                        int i45 = i43 & 1048575;
                        if (i45 != i36) {
                            i19 = b10;
                            if (i36 != 1048575) {
                                unsafe2.putInt(obj4, i36, i35);
                            }
                            i35 = unsafe2.getInt(obj4, i45);
                            i20 = i45;
                        } else {
                            i19 = b10;
                            i20 = i36;
                        }
                        int i46 = i35;
                        switch (i41) {
                            case 0:
                                i21 = Q;
                                i13 = i38;
                                i22 = i42;
                                if (i39 == 1) {
                                    lb.t(obj4, j10, Double.longBitsToDouble(m7.n(bArr2, i22)));
                                    i31 = i22 + 8;
                                    i35 = i46 | i44;
                                    i33 = i13;
                                    i30 = i11;
                                    i34 = i21;
                                    i32 = i19;
                                    i36 = i20;
                                    i29 = i10;
                                    break;
                                } else {
                                    i42 = i22;
                                    i12 = i11;
                                    i16 = i46;
                                    unsafe = unsafe2;
                                    i15 = i19;
                                    i14 = i42;
                                    i36 = i20;
                                    i17 = i21;
                                    break;
                                }
                            case 1:
                                i21 = Q;
                                i13 = i38;
                                i22 = i42;
                                if (i39 == 5) {
                                    lb.u(obj4, j10, Float.intBitsToFloat(m7.b(bArr2, i22)));
                                    i31 = i22 + 4;
                                    i35 = i46 | i44;
                                    i33 = i13;
                                    i30 = i11;
                                    i34 = i21;
                                    i32 = i19;
                                    i36 = i20;
                                    i29 = i10;
                                    break;
                                } else {
                                    i42 = i22;
                                    i12 = i11;
                                    i16 = i46;
                                    unsafe = unsafe2;
                                    i15 = i19;
                                    i14 = i42;
                                    i36 = i20;
                                    i17 = i21;
                                    break;
                                }
                            case 2:
                            case 3:
                                i21 = Q;
                                i13 = i38;
                                i22 = i42;
                                if (i39 == 0) {
                                    int m10 = m7.m(bArr2, i22, l7Var3);
                                    unsafe2.putLong(obj, j10, l7Var3.f8181b);
                                    i35 = i46 | i44;
                                    i33 = i13;
                                    i30 = i11;
                                    i31 = m10;
                                    i34 = i21;
                                    i32 = i19;
                                    i36 = i20;
                                    i29 = i10;
                                    break;
                                } else {
                                    i42 = i22;
                                    i12 = i11;
                                    i16 = i46;
                                    unsafe = unsafe2;
                                    i15 = i19;
                                    i14 = i42;
                                    i36 = i20;
                                    i17 = i21;
                                    break;
                                }
                            case 4:
                            case 11:
                                i21 = Q;
                                i13 = i38;
                                i22 = i42;
                                if (i39 == 0) {
                                    i31 = m7.j(bArr2, i22, l7Var3);
                                    unsafe2.putInt(obj4, j10, l7Var3.f8180a);
                                    i35 = i46 | i44;
                                    i33 = i13;
                                    i30 = i11;
                                    i34 = i21;
                                    i32 = i19;
                                    i36 = i20;
                                    i29 = i10;
                                    break;
                                } else {
                                    i42 = i22;
                                    i12 = i11;
                                    i16 = i46;
                                    unsafe = unsafe2;
                                    i15 = i19;
                                    i14 = i42;
                                    i36 = i20;
                                    i17 = i21;
                                    break;
                                }
                            case 5:
                            case 14:
                                int i47 = i19;
                                i13 = i38;
                                if (i39 == 1) {
                                    i21 = Q;
                                    i19 = i47;
                                    i22 = i42;
                                    unsafe2.putLong(obj, j10, m7.n(bArr2, i42));
                                    i31 = i22 + 8;
                                    i35 = i46 | i44;
                                    i33 = i13;
                                    i30 = i11;
                                    i34 = i21;
                                    i32 = i19;
                                    i36 = i20;
                                    i29 = i10;
                                    break;
                                } else {
                                    i21 = Q;
                                    i19 = i47;
                                    i42 = i42;
                                    i12 = i11;
                                    i16 = i46;
                                    unsafe = unsafe2;
                                    i15 = i19;
                                    i14 = i42;
                                    i36 = i20;
                                    i17 = i21;
                                    break;
                                }
                            case 6:
                            case 13:
                                i23 = i19;
                                i13 = i38;
                                i24 = i42;
                                if (i39 == 5) {
                                    unsafe2.putInt(obj4, j10, m7.b(bArr2, i24));
                                    i31 = i24 + 4;
                                    i35 = i46 | i44;
                                    i34 = Q;
                                    i32 = i23;
                                    i36 = i20;
                                    i33 = i13;
                                    i30 = i11;
                                    break;
                                } else {
                                    i21 = Q;
                                    i42 = i24;
                                    i19 = i23;
                                    i12 = i11;
                                    i16 = i46;
                                    unsafe = unsafe2;
                                    i15 = i19;
                                    i14 = i42;
                                    i36 = i20;
                                    i17 = i21;
                                    break;
                                }
                            case 7:
                                i23 = i19;
                                i13 = i38;
                                i24 = i42;
                                if (i39 == 0) {
                                    i31 = m7.m(bArr2, i24, l7Var3);
                                    lb.r(obj4, j10, l7Var3.f8181b != 0);
                                    i35 = i46 | i44;
                                    i34 = Q;
                                    i32 = i23;
                                    i36 = i20;
                                    i33 = i13;
                                    i30 = i11;
                                    break;
                                } else {
                                    i21 = Q;
                                    i42 = i24;
                                    i19 = i23;
                                    i12 = i11;
                                    i16 = i46;
                                    unsafe = unsafe2;
                                    i15 = i19;
                                    i14 = i42;
                                    i36 = i20;
                                    i17 = i21;
                                    break;
                                }
                            case 8:
                                i23 = i19;
                                i13 = i38;
                                i24 = i42;
                                if (i39 == 2) {
                                    if ((536870912 & i40) == 0) {
                                        i31 = m7.g(bArr2, i24, l7Var3);
                                    } else {
                                        i31 = m7.h(bArr2, i24, l7Var3);
                                    }
                                    unsafe2.putObject(obj4, j10, l7Var3.f8182c);
                                    i35 = i46 | i44;
                                    i34 = Q;
                                    i32 = i23;
                                    i36 = i20;
                                    i33 = i13;
                                    i30 = i11;
                                    break;
                                } else {
                                    i21 = Q;
                                    i42 = i24;
                                    i19 = i23;
                                    i12 = i11;
                                    i16 = i46;
                                    unsafe = unsafe2;
                                    i15 = i19;
                                    i14 = i42;
                                    i36 = i20;
                                    i17 = i21;
                                    break;
                                }
                            case 9:
                                i25 = Q;
                                i23 = i19;
                                i13 = i38;
                                i26 = i42;
                                if (i39 == 2) {
                                    i31 = m7.d(caVar2.n(i25), bArr2, i26, i29, l7Var3);
                                    if ((i46 & i44) == 0) {
                                        unsafe2.putObject(obj4, j10, l7Var3.f8182c);
                                    } else {
                                        unsafe2.putObject(obj4, j10, e9.g(unsafe2.getObject(obj4, j10), l7Var3.f8182c));
                                    }
                                    i35 = i46 | i44;
                                    i33 = i13;
                                    i34 = i25;
                                    i32 = i23;
                                    i36 = i20;
                                    i30 = i11;
                                    break;
                                } else {
                                    i42 = i26;
                                    i21 = i25;
                                    i19 = i23;
                                    i12 = i11;
                                    i16 = i46;
                                    unsafe = unsafe2;
                                    i15 = i19;
                                    i14 = i42;
                                    i36 = i20;
                                    i17 = i21;
                                    break;
                                }
                            case 10:
                                i25 = Q;
                                i23 = i19;
                                i13 = i38;
                                i26 = i42;
                                if (i39 == 2) {
                                    i31 = m7.a(bArr2, i26, l7Var3);
                                    unsafe2.putObject(obj4, j10, l7Var3.f8182c);
                                    i35 = i46 | i44;
                                    i33 = i13;
                                    i34 = i25;
                                    i32 = i23;
                                    i36 = i20;
                                    i30 = i11;
                                    break;
                                } else {
                                    i42 = i26;
                                    i21 = i25;
                                    i19 = i23;
                                    i12 = i11;
                                    i16 = i46;
                                    unsafe = unsafe2;
                                    i15 = i19;
                                    i14 = i42;
                                    i36 = i20;
                                    i17 = i21;
                                    break;
                                }
                            case 12:
                                i25 = Q;
                                i23 = i19;
                                i13 = i38;
                                i26 = i42;
                                if (i39 == 0) {
                                    i31 = m7.j(bArr2, i26, l7Var3);
                                    int i48 = l7Var3.f8180a;
                                    a9 m11 = caVar2.m(i25);
                                    if (m11 != null && !m11.h(i48)) {
                                        E(obj).h(i23, Long.valueOf(i48));
                                        i33 = i13;
                                        i35 = i46;
                                        i34 = i25;
                                        i32 = i23;
                                        i36 = i20;
                                        i30 = i11;
                                    } else {
                                        unsafe2.putInt(obj4, j10, i48);
                                        i35 = i46 | i44;
                                        i33 = i13;
                                        i34 = i25;
                                        i32 = i23;
                                        i36 = i20;
                                        i30 = i11;
                                        break;
                                    }
                                } else {
                                    i42 = i26;
                                    i21 = i25;
                                    i19 = i23;
                                    i12 = i11;
                                    i16 = i46;
                                    unsafe = unsafe2;
                                    i15 = i19;
                                    i14 = i42;
                                    i36 = i20;
                                    i17 = i21;
                                    break;
                                }
                                break;
                            case 15:
                                i25 = Q;
                                i23 = i19;
                                i13 = i38;
                                i26 = i42;
                                if (i39 == 0) {
                                    i31 = m7.j(bArr2, i26, l7Var3);
                                    unsafe2.putInt(obj4, j10, c8.a(l7Var3.f8180a));
                                    i35 = i46 | i44;
                                    i33 = i13;
                                    i34 = i25;
                                    i32 = i23;
                                    i36 = i20;
                                    i30 = i11;
                                    break;
                                } else {
                                    i42 = i26;
                                    i21 = i25;
                                    i19 = i23;
                                    i12 = i11;
                                    i16 = i46;
                                    unsafe = unsafe2;
                                    i15 = i19;
                                    i14 = i42;
                                    i36 = i20;
                                    i17 = i21;
                                    break;
                                }
                            case 16:
                                if (i39 == 0) {
                                    int m12 = m7.m(bArr2, i42, l7Var3);
                                    i25 = Q;
                                    i23 = i19;
                                    unsafe2.putLong(obj, j10, c8.b(l7Var3.f8181b));
                                    i35 = i46 | i44;
                                    i33 = i38;
                                    i31 = m12;
                                    i34 = i25;
                                    i32 = i23;
                                    i36 = i20;
                                    i30 = i11;
                                    break;
                                } else {
                                    i13 = i38;
                                    i21 = Q;
                                    i12 = i11;
                                    i16 = i46;
                                    unsafe = unsafe2;
                                    i15 = i19;
                                    i14 = i42;
                                    i36 = i20;
                                    i17 = i21;
                                    break;
                                }
                            default:
                                i21 = Q;
                                i13 = i38;
                                i22 = i42;
                                if (i39 == 3) {
                                    i31 = m7.c(caVar2.n(i21), bArr, i22, i10, (i13 << 3) | 4, l7Var);
                                    if ((i46 & i44) == 0) {
                                        unsafe2.putObject(obj4, j10, l7Var3.f8182c);
                                    } else {
                                        unsafe2.putObject(obj4, j10, e9.g(unsafe2.getObject(obj4, j10), l7Var3.f8182c));
                                    }
                                    i35 = i46 | i44;
                                    bArr2 = bArr;
                                    i33 = i13;
                                    i30 = i11;
                                    i34 = i21;
                                    i32 = i19;
                                    i36 = i20;
                                    i29 = i10;
                                    break;
                                } else {
                                    i42 = i22;
                                    i12 = i11;
                                    i16 = i46;
                                    unsafe = unsafe2;
                                    i15 = i19;
                                    i14 = i42;
                                    i36 = i20;
                                    i17 = i21;
                                    break;
                                }
                        }
                    } else {
                        int i49 = Q;
                        int i50 = b10;
                        if (i41 != 27) {
                            i16 = i35;
                            i27 = i36;
                            if (i41 <= 49) {
                                i13 = i38;
                                unsafe = unsafe2;
                                i17 = i49;
                                i31 = P(obj, bArr, i42, i10, i50, i13, i39, i49, i40, i41, j10, l7Var);
                                if (i31 != i42) {
                                    caVar2 = this;
                                    obj4 = obj;
                                    bArr2 = bArr;
                                    i33 = i13;
                                    i29 = i10;
                                    i30 = i11;
                                    l7Var3 = l7Var;
                                    i32 = i50;
                                    i34 = i17;
                                    i35 = i16;
                                    i36 = i27;
                                    unsafe2 = unsafe;
                                } else {
                                    i12 = i11;
                                    i14 = i31;
                                    i15 = i50;
                                    i36 = i27;
                                }
                            } else {
                                i13 = i38;
                                unsafe = unsafe2;
                                i28 = i42;
                                i17 = i49;
                                if (i41 != 50) {
                                    i31 = N(obj, bArr, i28, i10, i50, i13, i39, i40, i41, j10, i17, l7Var);
                                    if (i31 != i28) {
                                        caVar2 = this;
                                        obj4 = obj;
                                        bArr2 = bArr;
                                        i33 = i13;
                                        i29 = i10;
                                        i30 = i11;
                                        l7Var3 = l7Var;
                                        i32 = i50;
                                        i34 = i17;
                                        i35 = i16;
                                        i36 = i27;
                                        unsafe2 = unsafe;
                                    } else {
                                        i12 = i11;
                                        i14 = i31;
                                        i15 = i50;
                                        i36 = i27;
                                    }
                                } else if (i39 == 2) {
                                    i31 = M(obj, bArr, i28, i10, i17, j10, l7Var);
                                    if (i31 != i28) {
                                        caVar2 = this;
                                        obj4 = obj;
                                        bArr2 = bArr;
                                        i33 = i13;
                                        i29 = i10;
                                        i30 = i11;
                                        l7Var3 = l7Var;
                                        i32 = i50;
                                        i34 = i17;
                                        i35 = i16;
                                        i36 = i27;
                                        unsafe2 = unsafe;
                                    } else {
                                        i12 = i11;
                                        i14 = i31;
                                        i15 = i50;
                                        i36 = i27;
                                    }
                                }
                            }
                        } else if (i39 == 2) {
                            d9 d9Var = (d9) unsafe2.getObject(obj4, j10);
                            if (!d9Var.E()) {
                                int size = d9Var.size();
                                d9Var = d9Var.j(size == 0 ? 10 : size + size);
                                unsafe2.putObject(obj4, j10, d9Var);
                            }
                            i32 = i50;
                            i20 = i36;
                            i31 = m7.e(caVar2.n(i49), i32, bArr, i42, i10, d9Var, l7Var);
                            bArr2 = bArr;
                            i30 = i11;
                            i33 = i38;
                            i34 = i49;
                            i35 = i35;
                            i36 = i20;
                            i29 = i10;
                        } else {
                            i16 = i35;
                            i27 = i36;
                            i13 = i38;
                            unsafe = unsafe2;
                            i28 = i42;
                            i17 = i49;
                        }
                        i12 = i11;
                        i14 = i28;
                        i15 = i50;
                        i36 = i27;
                    }
                }
                if (i15 != i12 || i12 == 0) {
                    if (this.f8004f) {
                        l7Var2 = l7Var;
                        k8 k8Var = l7Var2.f8183d;
                        if (k8Var != k8.f8168c) {
                            i18 = i13;
                            if (k8Var.b(this.f8003e, i18) == null) {
                                i31 = m7.i(i15, bArr, i14, i10, E(obj), l7Var);
                                obj3 = obj;
                                i29 = i10;
                                i32 = i15;
                                caVar2 = this;
                                l7Var3 = l7Var2;
                                i33 = i18;
                                obj4 = obj3;
                                i34 = i17;
                                i35 = i16;
                                unsafe2 = unsafe;
                                bArr2 = bArr;
                                i30 = i12;
                            } else {
                                v8 v8Var = (v8) obj;
                                throw null;
                            }
                        } else {
                            obj3 = obj;
                            i18 = i13;
                        }
                    } else {
                        obj3 = obj;
                        i18 = i13;
                        l7Var2 = l7Var;
                    }
                    i31 = m7.i(i15, bArr, i14, i10, E(obj), l7Var);
                    i29 = i10;
                    i32 = i15;
                    caVar2 = this;
                    l7Var3 = l7Var2;
                    i33 = i18;
                    obj4 = obj3;
                    i34 = i17;
                    i35 = i16;
                    unsafe2 = unsafe;
                    bArr2 = bArr;
                    i30 = i12;
                } else {
                    caVar = this;
                    obj2 = obj;
                    i31 = i14;
                    i32 = i15;
                    i35 = i16;
                }
            } else {
                unsafe = unsafe2;
                i12 = i30;
                obj2 = obj4;
                caVar = caVar2;
            }
        }
        if (i36 != 1048575) {
            unsafe.putInt(obj2, i36, i35);
        }
        for (int i51 = caVar.f8007i; i51 < caVar.f8008j; i51++) {
            int i52 = caVar.f8006h[i51];
            int i53 = caVar.f7999a[i52];
            Object k11 = lb.k(obj2, caVar.j(i52) & 1048575);
            if (k11 != null && caVar.m(i52) != null) {
                zzlf zzlfVar = (zzlf) k11;
                t9 t9Var = (t9) caVar.o(i52);
                throw null;
            }
        }
        if (i12 == 0) {
            if (i31 != i10) {
                throw zzko.zze();
            }
        } else if (i31 > i10 || i32 != i12) {
            throw zzko.zze();
        }
        return i31;
    }

    @Override // com.google.android.gms.internal.measurement.ka
    public final int a(Object obj) {
        return this.f8005g ? K(obj) : J(obj);
    }

    @Override // com.google.android.gms.internal.measurement.ka
    public final int b(Object obj) {
        int i9;
        int c10;
        int length = this.f7999a.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11 += 3) {
            int j10 = j(i11);
            int i12 = this.f7999a[i11];
            long j11 = 1048575 & j10;
            int i13 = 37;
            switch (i(j10)) {
                case 0:
                    i9 = i10 * 53;
                    c10 = e9.c(Double.doubleToLongBits(lb.f(obj, j11)));
                    i10 = i9 + c10;
                    break;
                case 1:
                    i9 = i10 * 53;
                    c10 = Float.floatToIntBits(lb.g(obj, j11));
                    i10 = i9 + c10;
                    break;
                case 2:
                    i9 = i10 * 53;
                    c10 = e9.c(lb.i(obj, j11));
                    i10 = i9 + c10;
                    break;
                case 3:
                    i9 = i10 * 53;
                    c10 = e9.c(lb.i(obj, j11));
                    i10 = i9 + c10;
                    break;
                case 4:
                    i9 = i10 * 53;
                    c10 = lb.h(obj, j11);
                    i10 = i9 + c10;
                    break;
                case 5:
                    i9 = i10 * 53;
                    c10 = e9.c(lb.i(obj, j11));
                    i10 = i9 + c10;
                    break;
                case 6:
                    i9 = i10 * 53;
                    c10 = lb.h(obj, j11);
                    i10 = i9 + c10;
                    break;
                case 7:
                    i9 = i10 * 53;
                    c10 = e9.a(lb.B(obj, j11));
                    i10 = i9 + c10;
                    break;
                case 8:
                    i9 = i10 * 53;
                    c10 = ((String) lb.k(obj, j11)).hashCode();
                    i10 = i9 + c10;
                    break;
                case 9:
                    Object k10 = lb.k(obj, j11);
                    if (k10 != null) {
                        i13 = k10.hashCode();
                    }
                    i10 = (i10 * 53) + i13;
                    break;
                case 10:
                    i9 = i10 * 53;
                    c10 = lb.k(obj, j11).hashCode();
                    i10 = i9 + c10;
                    break;
                case 11:
                    i9 = i10 * 53;
                    c10 = lb.h(obj, j11);
                    i10 = i9 + c10;
                    break;
                case 12:
                    i9 = i10 * 53;
                    c10 = lb.h(obj, j11);
                    i10 = i9 + c10;
                    break;
                case 13:
                    i9 = i10 * 53;
                    c10 = lb.h(obj, j11);
                    i10 = i9 + c10;
                    break;
                case 14:
                    i9 = i10 * 53;
                    c10 = e9.c(lb.i(obj, j11));
                    i10 = i9 + c10;
                    break;
                case 15:
                    i9 = i10 * 53;
                    c10 = lb.h(obj, j11);
                    i10 = i9 + c10;
                    break;
                case 16:
                    i9 = i10 * 53;
                    c10 = e9.c(lb.i(obj, j11));
                    i10 = i9 + c10;
                    break;
                case 17:
                    Object k11 = lb.k(obj, j11);
                    if (k11 != null) {
                        i13 = k11.hashCode();
                    }
                    i10 = (i10 * 53) + i13;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i9 = i10 * 53;
                    c10 = lb.k(obj, j11).hashCode();
                    i10 = i9 + c10;
                    break;
                case 50:
                    i9 = i10 * 53;
                    c10 = lb.k(obj, j11).hashCode();
                    i10 = i9 + c10;
                    break;
                case 51:
                    if (A(obj, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = e9.c(Double.doubleToLongBits(H(obj, j11)));
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (A(obj, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = Float.floatToIntBits(I(obj, j11));
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (A(obj, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = e9.c(k(obj, j11));
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (A(obj, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = e9.c(k(obj, j11));
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (A(obj, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = L(obj, j11);
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (A(obj, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = e9.c(k(obj, j11));
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (A(obj, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = L(obj, j11);
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (A(obj, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = e9.a(B(obj, j11));
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (A(obj, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = ((String) lb.k(obj, j11)).hashCode();
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (A(obj, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = lb.k(obj, j11).hashCode();
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (A(obj, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = lb.k(obj, j11).hashCode();
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (A(obj, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = L(obj, j11);
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (A(obj, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = L(obj, j11);
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (A(obj, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = L(obj, j11);
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (A(obj, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = e9.c(k(obj, j11));
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (A(obj, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = L(obj, j11);
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (A(obj, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = e9.c(k(obj, j11));
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (A(obj, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = lb.k(obj, j11).hashCode();
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i10 * 53) + this.f8010l.c(obj).hashCode();
        if (this.f8004f) {
            this.f8011m.a(obj);
            throw null;
        }
        return hashCode;
    }

    @Override // com.google.android.gms.internal.measurement.ka
    public final void c(Object obj) {
        int i9;
        int i10 = this.f8007i;
        while (true) {
            i9 = this.f8008j;
            if (i10 >= i9) {
                break;
            }
            long j10 = j(this.f8006h[i10]) & 1048575;
            Object k10 = lb.k(obj, j10);
            if (k10 != null) {
                ((zzlf) k10).zzc();
                lb.x(obj, j10, k10);
            }
            i10++;
        }
        int length = this.f8006h.length;
        while (i9 < length) {
            this.f8009k.a(obj, this.f8006h[i9]);
            i9++;
        }
        this.f8010l.g(obj);
        if (this.f8004f) {
            this.f8011m.b(obj);
        }
    }

    @Override // com.google.android.gms.internal.measurement.ka
    public final void d(Object obj, sb sbVar) throws IOException {
        if (!this.f8005g) {
            u(obj, sbVar);
        } else if (!this.f8004f) {
            int length = this.f7999a.length;
            for (int i9 = 0; i9 < length; i9 += 3) {
                int j10 = j(i9);
                int i10 = this.f7999a[i9];
                switch (i(j10)) {
                    case 0:
                        if (x(obj, i9)) {
                            sbVar.l(i10, lb.f(obj, j10 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (x(obj, i9)) {
                            sbVar.s(i10, lb.g(obj, j10 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (x(obj, i9)) {
                            sbVar.h(i10, lb.i(obj, j10 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (x(obj, i9)) {
                            sbVar.L(i10, lb.i(obj, j10 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (x(obj, i9)) {
                            sbVar.k(i10, lb.h(obj, j10 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (x(obj, i9)) {
                            sbVar.v(i10, lb.i(obj, j10 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (x(obj, i9)) {
                            sbVar.o(i10, lb.h(obj, j10 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (x(obj, i9)) {
                            sbVar.g(i10, lb.B(obj, j10 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (x(obj, i9)) {
                            C(i10, lb.k(obj, j10 & 1048575), sbVar);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if (x(obj, i9)) {
                            sbVar.M(i10, lb.k(obj, j10 & 1048575), n(i9));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (x(obj, i9)) {
                            sbVar.y(i10, (zzjd) lb.k(obj, j10 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (x(obj, i9)) {
                            sbVar.E(i10, lb.h(obj, j10 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (x(obj, i9)) {
                            sbVar.q(i10, lb.h(obj, j10 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (x(obj, i9)) {
                            sbVar.z(i10, lb.h(obj, j10 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (x(obj, i9)) {
                            sbVar.G(i10, lb.i(obj, j10 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (x(obj, i9)) {
                            sbVar.w(i10, lb.h(obj, j10 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (x(obj, i9)) {
                            sbVar.D(i10, lb.i(obj, j10 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (x(obj, i9)) {
                            sbVar.A(i10, lb.k(obj, j10 & 1048575), n(i9));
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        ma.j(i10, (List) lb.k(obj, j10 & 1048575), sbVar, false);
                        break;
                    case 19:
                        ma.n(i10, (List) lb.k(obj, j10 & 1048575), sbVar, false);
                        break;
                    case 20:
                        ma.q(i10, (List) lb.k(obj, j10 & 1048575), sbVar, false);
                        break;
                    case 21:
                        ma.y(i10, (List) lb.k(obj, j10 & 1048575), sbVar, false);
                        break;
                    case 22:
                        ma.p(i10, (List) lb.k(obj, j10 & 1048575), sbVar, false);
                        break;
                    case 23:
                        ma.m(i10, (List) lb.k(obj, j10 & 1048575), sbVar, false);
                        break;
                    case 24:
                        ma.l(i10, (List) lb.k(obj, j10 & 1048575), sbVar, false);
                        break;
                    case 25:
                        ma.h(i10, (List) lb.k(obj, j10 & 1048575), sbVar, false);
                        break;
                    case 26:
                        ma.w(i10, (List) lb.k(obj, j10 & 1048575), sbVar);
                        break;
                    case 27:
                        ma.r(i10, (List) lb.k(obj, j10 & 1048575), sbVar, n(i9));
                        break;
                    case 28:
                        ma.i(i10, (List) lb.k(obj, j10 & 1048575), sbVar);
                        break;
                    case 29:
                        ma.x(i10, (List) lb.k(obj, j10 & 1048575), sbVar, false);
                        break;
                    case 30:
                        ma.k(i10, (List) lb.k(obj, j10 & 1048575), sbVar, false);
                        break;
                    case 31:
                        ma.s(i10, (List) lb.k(obj, j10 & 1048575), sbVar, false);
                        break;
                    case 32:
                        ma.t(i10, (List) lb.k(obj, j10 & 1048575), sbVar, false);
                        break;
                    case 33:
                        ma.u(i10, (List) lb.k(obj, j10 & 1048575), sbVar, false);
                        break;
                    case 34:
                        ma.v(i10, (List) lb.k(obj, j10 & 1048575), sbVar, false);
                        break;
                    case 35:
                        ma.j(i10, (List) lb.k(obj, j10 & 1048575), sbVar, true);
                        break;
                    case 36:
                        ma.n(i10, (List) lb.k(obj, j10 & 1048575), sbVar, true);
                        break;
                    case 37:
                        ma.q(i10, (List) lb.k(obj, j10 & 1048575), sbVar, true);
                        break;
                    case 38:
                        ma.y(i10, (List) lb.k(obj, j10 & 1048575), sbVar, true);
                        break;
                    case 39:
                        ma.p(i10, (List) lb.k(obj, j10 & 1048575), sbVar, true);
                        break;
                    case 40:
                        ma.m(i10, (List) lb.k(obj, j10 & 1048575), sbVar, true);
                        break;
                    case 41:
                        ma.l(i10, (List) lb.k(obj, j10 & 1048575), sbVar, true);
                        break;
                    case 42:
                        ma.h(i10, (List) lb.k(obj, j10 & 1048575), sbVar, true);
                        break;
                    case 43:
                        ma.x(i10, (List) lb.k(obj, j10 & 1048575), sbVar, true);
                        break;
                    case 44:
                        ma.k(i10, (List) lb.k(obj, j10 & 1048575), sbVar, true);
                        break;
                    case 45:
                        ma.s(i10, (List) lb.k(obj, j10 & 1048575), sbVar, true);
                        break;
                    case 46:
                        ma.t(i10, (List) lb.k(obj, j10 & 1048575), sbVar, true);
                        break;
                    case 47:
                        ma.u(i10, (List) lb.k(obj, j10 & 1048575), sbVar, true);
                        break;
                    case 48:
                        ma.v(i10, (List) lb.k(obj, j10 & 1048575), sbVar, true);
                        break;
                    case 49:
                        ma.o(i10, (List) lb.k(obj, j10 & 1048575), sbVar, n(i9));
                        break;
                    case 50:
                        v(sbVar, i10, lb.k(obj, j10 & 1048575), i9);
                        break;
                    case 51:
                        if (A(obj, i10, i9)) {
                            sbVar.l(i10, H(obj, j10 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (A(obj, i10, i9)) {
                            sbVar.s(i10, I(obj, j10 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (A(obj, i10, i9)) {
                            sbVar.h(i10, k(obj, j10 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (A(obj, i10, i9)) {
                            sbVar.L(i10, k(obj, j10 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (A(obj, i10, i9)) {
                            sbVar.k(i10, L(obj, j10 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (A(obj, i10, i9)) {
                            sbVar.v(i10, k(obj, j10 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (A(obj, i10, i9)) {
                            sbVar.o(i10, L(obj, j10 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (A(obj, i10, i9)) {
                            sbVar.g(i10, B(obj, j10 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (A(obj, i10, i9)) {
                            C(i10, lb.k(obj, j10 & 1048575), sbVar);
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        if (A(obj, i10, i9)) {
                            sbVar.M(i10, lb.k(obj, j10 & 1048575), n(i9));
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (A(obj, i10, i9)) {
                            sbVar.y(i10, (zzjd) lb.k(obj, j10 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (A(obj, i10, i9)) {
                            sbVar.E(i10, L(obj, j10 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (A(obj, i10, i9)) {
                            sbVar.q(i10, L(obj, j10 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (A(obj, i10, i9)) {
                            sbVar.z(i10, L(obj, j10 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (A(obj, i10, i9)) {
                            sbVar.G(i10, k(obj, j10 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (A(obj, i10, i9)) {
                            sbVar.w(i10, L(obj, j10 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (A(obj, i10, i9)) {
                            sbVar.D(i10, k(obj, j10 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (A(obj, i10, i9)) {
                            sbVar.A(i10, lb.k(obj, j10 & 1048575), n(i9));
                            break;
                        } else {
                            break;
                        }
                }
            }
            bb bbVar = this.f8010l;
            bbVar.i(bbVar.c(obj), sbVar);
        } else {
            this.f8011m.a(obj);
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.measurement.ka
    public final void e(Object obj, Object obj2) {
        Objects.requireNonNull(obj2);
        for (int i9 = 0; i9 < this.f7999a.length; i9 += 3) {
            int j10 = j(i9);
            long j11 = 1048575 & j10;
            int i10 = this.f7999a[i9];
            switch (i(j10)) {
                case 0:
                    if (x(obj2, i9)) {
                        lb.t(obj, j11, lb.f(obj2, j11));
                        s(obj, i9);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (x(obj2, i9)) {
                        lb.u(obj, j11, lb.g(obj2, j11));
                        s(obj, i9);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (x(obj2, i9)) {
                        lb.w(obj, j11, lb.i(obj2, j11));
                        s(obj, i9);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (x(obj2, i9)) {
                        lb.w(obj, j11, lb.i(obj2, j11));
                        s(obj, i9);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (x(obj2, i9)) {
                        lb.v(obj, j11, lb.h(obj2, j11));
                        s(obj, i9);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (x(obj2, i9)) {
                        lb.w(obj, j11, lb.i(obj2, j11));
                        s(obj, i9);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (x(obj2, i9)) {
                        lb.v(obj, j11, lb.h(obj2, j11));
                        s(obj, i9);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (x(obj2, i9)) {
                        lb.r(obj, j11, lb.B(obj2, j11));
                        s(obj, i9);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (x(obj2, i9)) {
                        lb.x(obj, j11, lb.k(obj2, j11));
                        s(obj, i9);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    q(obj, obj2, i9);
                    break;
                case 10:
                    if (x(obj2, i9)) {
                        lb.x(obj, j11, lb.k(obj2, j11));
                        s(obj, i9);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (x(obj2, i9)) {
                        lb.v(obj, j11, lb.h(obj2, j11));
                        s(obj, i9);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (x(obj2, i9)) {
                        lb.v(obj, j11, lb.h(obj2, j11));
                        s(obj, i9);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (x(obj2, i9)) {
                        lb.v(obj, j11, lb.h(obj2, j11));
                        s(obj, i9);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (x(obj2, i9)) {
                        lb.w(obj, j11, lb.i(obj2, j11));
                        s(obj, i9);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (x(obj2, i9)) {
                        lb.v(obj, j11, lb.h(obj2, j11));
                        s(obj, i9);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (x(obj2, i9)) {
                        lb.w(obj, j11, lb.i(obj2, j11));
                        s(obj, i9);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    q(obj, obj2, i9);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.f8009k.b(obj, obj2, j11);
                    break;
                case 50:
                    ma.B(this.f8013o, obj, obj2, j11);
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (A(obj2, i10, i9)) {
                        lb.x(obj, j11, lb.k(obj2, j11));
                        t(obj, i10, i9);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    r(obj, obj2, i9);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (A(obj2, i10, i9)) {
                        lb.x(obj, j11, lb.k(obj2, j11));
                        t(obj, i10, i9);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    r(obj, obj2, i9);
                    break;
            }
        }
        ma.f(this.f8010l, obj, obj2);
        if (this.f8004f) {
            ma.e(this.f8011m, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.ka
    public final boolean f(Object obj, Object obj2) {
        boolean z10;
        int length = this.f7999a.length;
        for (int i9 = 0; i9 < length; i9 += 3) {
            int j10 = j(i9);
            long j11 = j10 & 1048575;
            switch (i(j10)) {
                case 0:
                    if (w(obj, obj2, i9) && Double.doubleToLongBits(lb.f(obj, j11)) == Double.doubleToLongBits(lb.f(obj2, j11))) {
                        continue;
                    }
                    return false;
                case 1:
                    if (w(obj, obj2, i9) && Float.floatToIntBits(lb.g(obj, j11)) == Float.floatToIntBits(lb.g(obj2, j11))) {
                        continue;
                    }
                    return false;
                case 2:
                    if (w(obj, obj2, i9) && lb.i(obj, j11) == lb.i(obj2, j11)) {
                        continue;
                    }
                    return false;
                case 3:
                    if (w(obj, obj2, i9) && lb.i(obj, j11) == lb.i(obj2, j11)) {
                        continue;
                    }
                    return false;
                case 4:
                    if (w(obj, obj2, i9) && lb.h(obj, j11) == lb.h(obj2, j11)) {
                        continue;
                    }
                    return false;
                case 5:
                    if (w(obj, obj2, i9) && lb.i(obj, j11) == lb.i(obj2, j11)) {
                        continue;
                    }
                    return false;
                case 6:
                    if (w(obj, obj2, i9) && lb.h(obj, j11) == lb.h(obj2, j11)) {
                        continue;
                    }
                    return false;
                case 7:
                    if (w(obj, obj2, i9) && lb.B(obj, j11) == lb.B(obj2, j11)) {
                        continue;
                    }
                    return false;
                case 8:
                    if (w(obj, obj2, i9) && ma.z(lb.k(obj, j11), lb.k(obj2, j11))) {
                        continue;
                    }
                    return false;
                case 9:
                    if (w(obj, obj2, i9) && ma.z(lb.k(obj, j11), lb.k(obj2, j11))) {
                        continue;
                    }
                    return false;
                case 10:
                    if (w(obj, obj2, i9) && ma.z(lb.k(obj, j11), lb.k(obj2, j11))) {
                        continue;
                    }
                    return false;
                case 11:
                    if (w(obj, obj2, i9) && lb.h(obj, j11) == lb.h(obj2, j11)) {
                        continue;
                    }
                    return false;
                case 12:
                    if (w(obj, obj2, i9) && lb.h(obj, j11) == lb.h(obj2, j11)) {
                        continue;
                    }
                    return false;
                case 13:
                    if (w(obj, obj2, i9) && lb.h(obj, j11) == lb.h(obj2, j11)) {
                        continue;
                    }
                    return false;
                case 14:
                    if (w(obj, obj2, i9) && lb.i(obj, j11) == lb.i(obj2, j11)) {
                        continue;
                    }
                    return false;
                case 15:
                    if (w(obj, obj2, i9) && lb.h(obj, j11) == lb.h(obj2, j11)) {
                        continue;
                    }
                    return false;
                case 16:
                    if (w(obj, obj2, i9) && lb.i(obj, j11) == lb.i(obj2, j11)) {
                        continue;
                    }
                    return false;
                case 17:
                    if (w(obj, obj2, i9) && ma.z(lb.k(obj, j11), lb.k(obj2, j11))) {
                        continue;
                    }
                    return false;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    z10 = ma.z(lb.k(obj, j11), lb.k(obj2, j11));
                    break;
                case 50:
                    z10 = ma.z(lb.k(obj, j11), lb.k(obj2, j11));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    long S = S(i9) & 1048575;
                    if (lb.h(obj, S) == lb.h(obj2, S) && ma.z(lb.k(obj, j11), lb.k(obj2, j11))) {
                        continue;
                    }
                    return false;
                default:
            }
            if (!z10) {
                return false;
            }
        }
        if (this.f8010l.c(obj).equals(this.f8010l.c(obj2))) {
            if (this.f8004f) {
                this.f8011m.a(obj);
                this.f8011m.a(obj2);
                throw null;
            }
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.ka
    public final boolean g(Object obj) {
        int i9;
        int i10;
        int i11 = 1048575;
        int i12 = 0;
        int i13 = 0;
        while (i13 < this.f8007i) {
            int i14 = this.f8006h[i13];
            int i15 = this.f7999a[i14];
            int j10 = j(i14);
            int i16 = this.f7999a[i14 + 2];
            int i17 = i16 & 1048575;
            int i18 = 1 << (i16 >>> 20);
            if (i17 != i11) {
                if (i17 != 1048575) {
                    i12 = f7998q.getInt(obj, i17);
                }
                i10 = i12;
                i9 = i17;
            } else {
                i9 = i11;
                i10 = i12;
            }
            if ((268435456 & j10) != 0 && !y(obj, i14, i9, i10, i18)) {
                return false;
            }
            int i19 = i(j10);
            if (i19 != 9 && i19 != 17) {
                if (i19 != 27) {
                    if (i19 == 60 || i19 == 68) {
                        if (A(obj, i15, i14) && !z(obj, j10, n(i14))) {
                            return false;
                        }
                    } else if (i19 != 49) {
                        if (i19 == 50 && !((zzlf) lb.k(obj, j10 & 1048575)).isEmpty()) {
                            t9 t9Var = (t9) o(i14);
                            throw null;
                        }
                    }
                }
                List list = (List) lb.k(obj, j10 & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    ka n9 = n(i14);
                    for (int i20 = 0; i20 < list.size(); i20++) {
                        if (!n9.g(list.get(i20))) {
                            return false;
                        }
                    }
                    continue;
                }
            } else if (y(obj, i14, i9, i10, i18) && !z(obj, j10, n(i14))) {
                return false;
            }
            i13++;
            i11 = i9;
            i12 = i10;
        }
        if (this.f8004f) {
            this.f8011m.a(obj);
            throw null;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.ka
    public final void h(Object obj, byte[] bArr, int i9, int i10, l7 l7Var) throws IOException {
        if (this.f8005g) {
            O(obj, bArr, i9, i10, l7Var);
        } else {
            D(obj, bArr, i9, i10, 0, l7Var);
        }
    }

    @Override // com.google.android.gms.internal.measurement.ka
    public final Object l() {
        return ((x8) this.f8003e).v(4, null, null);
    }
}
