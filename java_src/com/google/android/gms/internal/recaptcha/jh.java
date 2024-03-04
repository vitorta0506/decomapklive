package com.google.android.gms.internal.recaptcha;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import sun.misc.Unsafe;
/* loaded from: classes2.dex */
final class jh<T> implements uh<T> {

    /* renamed from: q  reason: collision with root package name */
    private static final int[] f8783q = new int[0];

    /* renamed from: r  reason: collision with root package name */
    private static final Unsafe f8784r = vi.l();

    /* renamed from: a  reason: collision with root package name */
    private final int[] f8785a;

    /* renamed from: b  reason: collision with root package name */
    private final Object[] f8786b;

    /* renamed from: c  reason: collision with root package name */
    private final int f8787c;

    /* renamed from: d  reason: collision with root package name */
    private final int f8788d;

    /* renamed from: e  reason: collision with root package name */
    private final gh f8789e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f8790f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f8791g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f8792h;

    /* renamed from: i  reason: collision with root package name */
    private final int[] f8793i;

    /* renamed from: j  reason: collision with root package name */
    private final int f8794j;

    /* renamed from: k  reason: collision with root package name */
    private final int f8795k;

    /* renamed from: l  reason: collision with root package name */
    private final ug f8796l;

    /* renamed from: m  reason: collision with root package name */
    private final ki<?, ?> f8797m;

    /* renamed from: n  reason: collision with root package name */
    private final qf<?> f8798n;

    /* renamed from: o  reason: collision with root package name */
    private final lh f8799o;

    /* renamed from: p  reason: collision with root package name */
    private final bh f8800p;

    /* JADX WARN: Multi-variable type inference failed */
    private jh(int[] iArr, int[] iArr2, Object[] objArr, int i9, int i10, gh ghVar, boolean z10, boolean z11, int[] iArr3, int i11, int i12, lh lhVar, ug ugVar, ki<?, ?> kiVar, qf<?> qfVar, bh bhVar) {
        this.f8785a = iArr;
        this.f8786b = iArr2;
        this.f8787c = objArr;
        this.f8788d = i9;
        this.f8791g = i10 instanceof dg;
        this.f8792h = ghVar;
        boolean z12 = false;
        if (kiVar != 0 && kiVar.h(i10)) {
            z12 = true;
        }
        this.f8790f = z12;
        this.f8793i = z11;
        this.f8794j = iArr3;
        this.f8795k = i11;
        this.f8799o = i12;
        this.f8796l = lhVar;
        this.f8797m = ugVar;
        this.f8798n = kiVar;
        this.f8789e = i10;
        this.f8800p = qfVar;
    }

    private final int A(T t10) {
        int i9;
        int l10;
        int l11;
        int l12;
        int m10;
        int l13;
        int e10;
        int l14;
        int l15;
        int zzd;
        int l16;
        int Q;
        int k10;
        int l17;
        int i10;
        Unsafe unsafe = f8784r;
        int i11 = 0;
        int i12 = 0;
        int i13 = 1048575;
        for (int i14 = 0; i14 < this.f8785a.length; i14 += 3) {
            int G = G(i14);
            int i15 = this.f8785a[i14];
            int F = F(G);
            if (F <= 17) {
                int i16 = this.f8785a[i14 + 2];
                int i17 = i16 & 1048575;
                i9 = 1 << (i16 >>> 20);
                if (i17 != i13) {
                    i12 = unsafe.getInt(t10, i17);
                    i13 = i17;
                }
            } else {
                i9 = 0;
            }
            long j10 = G & 1048575;
            switch (F) {
                case 0:
                    if ((i12 & i9) != 0) {
                        l10 = hf.l(i15 << 3);
                        Q = l10 + 8;
                        break;
                    } else {
                        continue;
                    }
                case 1:
                    if ((i12 & i9) != 0) {
                        l11 = hf.l(i15 << 3);
                        Q = l11 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 2:
                    if ((i12 & i9) != 0) {
                        long j11 = unsafe.getLong(t10, j10);
                        l12 = hf.l(i15 << 3);
                        m10 = hf.m(j11);
                        Q = l12 + m10;
                        break;
                    } else {
                        continue;
                    }
                case 3:
                    if ((i12 & i9) != 0) {
                        long j12 = unsafe.getLong(t10, j10);
                        l12 = hf.l(i15 << 3);
                        m10 = hf.m(j12);
                        Q = l12 + m10;
                        break;
                    } else {
                        continue;
                    }
                case 4:
                    if ((i12 & i9) != 0) {
                        int i18 = unsafe.getInt(t10, j10);
                        l13 = hf.l(i15 << 3);
                        e10 = hf.e(i18);
                        i10 = l13 + e10;
                        i11 += i10;
                    } else {
                        continue;
                    }
                case 5:
                    if ((i12 & i9) != 0) {
                        l10 = hf.l(i15 << 3);
                        Q = l10 + 8;
                        break;
                    } else {
                        continue;
                    }
                case 6:
                    if ((i12 & i9) != 0) {
                        l11 = hf.l(i15 << 3);
                        Q = l11 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 7:
                    if ((i12 & i9) != 0) {
                        l14 = hf.l(i15 << 3);
                        Q = l14 + 1;
                        break;
                    } else {
                        continue;
                    }
                case 8:
                    if ((i12 & i9) != 0) {
                        Object object = unsafe.getObject(t10, j10);
                        if (object instanceof zzpy) {
                            l15 = hf.l(i15 << 3);
                            zzd = ((zzpy) object).zzd();
                            l16 = hf.l(zzd);
                            i10 = l15 + l16 + zzd;
                            i11 += i10;
                        } else {
                            l13 = hf.l(i15 << 3);
                            e10 = hf.j((String) object);
                            i10 = l13 + e10;
                            i11 += i10;
                        }
                    } else {
                        continue;
                    }
                case 9:
                    if ((i12 & i9) != 0) {
                        Q = wh.Q(i15, unsafe.getObject(t10, j10), J(i14));
                        break;
                    } else {
                        continue;
                    }
                case 10:
                    if ((i12 & i9) != 0) {
                        l15 = hf.l(i15 << 3);
                        zzd = ((zzpy) unsafe.getObject(t10, j10)).zzd();
                        l16 = hf.l(zzd);
                        i10 = l15 + l16 + zzd;
                        i11 += i10;
                    } else {
                        continue;
                    }
                case 11:
                    if ((i12 & i9) != 0) {
                        int i19 = unsafe.getInt(t10, j10);
                        l13 = hf.l(i15 << 3);
                        e10 = hf.l(i19);
                        i10 = l13 + e10;
                        i11 += i10;
                    } else {
                        continue;
                    }
                case 12:
                    if ((i12 & i9) != 0) {
                        int i20 = unsafe.getInt(t10, j10);
                        l13 = hf.l(i15 << 3);
                        e10 = hf.e(i20);
                        i10 = l13 + e10;
                        i11 += i10;
                    } else {
                        continue;
                    }
                case 13:
                    if ((i12 & i9) != 0) {
                        l11 = hf.l(i15 << 3);
                        Q = l11 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 14:
                    if ((i12 & i9) != 0) {
                        l10 = hf.l(i15 << 3);
                        Q = l10 + 8;
                        break;
                    } else {
                        continue;
                    }
                case 15:
                    if ((i12 & i9) != 0) {
                        int i21 = unsafe.getInt(t10, j10);
                        l13 = hf.l(i15 << 3);
                        e10 = hf.l((i21 >> 31) ^ (i21 + i21));
                        i10 = l13 + e10;
                        i11 += i10;
                    } else {
                        continue;
                    }
                case 16:
                    if ((i12 & i9) != 0) {
                        long j13 = unsafe.getLong(t10, j10);
                        l13 = hf.l(i15 << 3);
                        e10 = hf.m((j13 >> 63) ^ (j13 + j13));
                        i10 = l13 + e10;
                        i11 += i10;
                    } else {
                        continue;
                    }
                case 17:
                    if ((i12 & i9) != 0) {
                        Q = hf.c(i15, (gh) unsafe.getObject(t10, j10), J(i14));
                        break;
                    } else {
                        continue;
                    }
                case 18:
                    Q = wh.J(i15, (List) unsafe.getObject(t10, j10), false);
                    break;
                case 19:
                    Q = wh.H(i15, (List) unsafe.getObject(t10, j10), false);
                    break;
                case 20:
                    Q = wh.O(i15, (List) unsafe.getObject(t10, j10), false);
                    break;
                case 21:
                    Q = wh.Z(i15, (List) unsafe.getObject(t10, j10), false);
                    break;
                case 22:
                    Q = wh.M(i15, (List) unsafe.getObject(t10, j10), false);
                    break;
                case 23:
                    Q = wh.J(i15, (List) unsafe.getObject(t10, j10), false);
                    break;
                case 24:
                    Q = wh.H(i15, (List) unsafe.getObject(t10, j10), false);
                    break;
                case 25:
                    Q = wh.A(i15, (List) unsafe.getObject(t10, j10), false);
                    break;
                case 26:
                    Q = wh.W(i15, (List) unsafe.getObject(t10, j10));
                    break;
                case 27:
                    Q = wh.R(i15, (List) unsafe.getObject(t10, j10), J(i14));
                    break;
                case 28:
                    Q = wh.E(i15, (List) unsafe.getObject(t10, j10));
                    break;
                case 29:
                    Q = wh.X(i15, (List) unsafe.getObject(t10, j10), false);
                    break;
                case 30:
                    Q = wh.F(i15, (List) unsafe.getObject(t10, j10), false);
                    break;
                case 31:
                    Q = wh.H(i15, (List) unsafe.getObject(t10, j10), false);
                    break;
                case 32:
                    Q = wh.J(i15, (List) unsafe.getObject(t10, j10), false);
                    break;
                case 33:
                    Q = wh.S(i15, (List) unsafe.getObject(t10, j10), false);
                    break;
                case 34:
                    Q = wh.U(i15, (List) unsafe.getObject(t10, j10), false);
                    break;
                case 35:
                    e10 = wh.K((List) unsafe.getObject(t10, j10));
                    if (e10 > 0) {
                        k10 = hf.k(i15);
                        l17 = hf.l(e10);
                        l13 = k10 + l17;
                        i10 = l13 + e10;
                        i11 += i10;
                    } else {
                        continue;
                    }
                case 36:
                    e10 = wh.I((List) unsafe.getObject(t10, j10));
                    if (e10 > 0) {
                        k10 = hf.k(i15);
                        l17 = hf.l(e10);
                        l13 = k10 + l17;
                        i10 = l13 + e10;
                        i11 += i10;
                    } else {
                        continue;
                    }
                case 37:
                    e10 = wh.P((List) unsafe.getObject(t10, j10));
                    if (e10 > 0) {
                        k10 = hf.k(i15);
                        l17 = hf.l(e10);
                        l13 = k10 + l17;
                        i10 = l13 + e10;
                        i11 += i10;
                    } else {
                        continue;
                    }
                case 38:
                    e10 = wh.a0((List) unsafe.getObject(t10, j10));
                    if (e10 > 0) {
                        k10 = hf.k(i15);
                        l17 = hf.l(e10);
                        l13 = k10 + l17;
                        i10 = l13 + e10;
                        i11 += i10;
                    } else {
                        continue;
                    }
                case 39:
                    e10 = wh.N((List) unsafe.getObject(t10, j10));
                    if (e10 > 0) {
                        k10 = hf.k(i15);
                        l17 = hf.l(e10);
                        l13 = k10 + l17;
                        i10 = l13 + e10;
                        i11 += i10;
                    } else {
                        continue;
                    }
                case 40:
                    e10 = wh.K((List) unsafe.getObject(t10, j10));
                    if (e10 > 0) {
                        k10 = hf.k(i15);
                        l17 = hf.l(e10);
                        l13 = k10 + l17;
                        i10 = l13 + e10;
                        i11 += i10;
                    } else {
                        continue;
                    }
                case 41:
                    e10 = wh.I((List) unsafe.getObject(t10, j10));
                    if (e10 > 0) {
                        k10 = hf.k(i15);
                        l17 = hf.l(e10);
                        l13 = k10 + l17;
                        i10 = l13 + e10;
                        i11 += i10;
                    } else {
                        continue;
                    }
                case 42:
                    e10 = wh.D((List) unsafe.getObject(t10, j10));
                    if (e10 > 0) {
                        k10 = hf.k(i15);
                        l17 = hf.l(e10);
                        l13 = k10 + l17;
                        i10 = l13 + e10;
                        i11 += i10;
                    } else {
                        continue;
                    }
                case 43:
                    e10 = wh.Y((List) unsafe.getObject(t10, j10));
                    if (e10 > 0) {
                        k10 = hf.k(i15);
                        l17 = hf.l(e10);
                        l13 = k10 + l17;
                        i10 = l13 + e10;
                        i11 += i10;
                    } else {
                        continue;
                    }
                case 44:
                    e10 = wh.G((List) unsafe.getObject(t10, j10));
                    if (e10 > 0) {
                        k10 = hf.k(i15);
                        l17 = hf.l(e10);
                        l13 = k10 + l17;
                        i10 = l13 + e10;
                        i11 += i10;
                    } else {
                        continue;
                    }
                case 45:
                    e10 = wh.I((List) unsafe.getObject(t10, j10));
                    if (e10 > 0) {
                        k10 = hf.k(i15);
                        l17 = hf.l(e10);
                        l13 = k10 + l17;
                        i10 = l13 + e10;
                        i11 += i10;
                    } else {
                        continue;
                    }
                case 46:
                    e10 = wh.K((List) unsafe.getObject(t10, j10));
                    if (e10 > 0) {
                        k10 = hf.k(i15);
                        l17 = hf.l(e10);
                        l13 = k10 + l17;
                        i10 = l13 + e10;
                        i11 += i10;
                    } else {
                        continue;
                    }
                case 47:
                    e10 = wh.T((List) unsafe.getObject(t10, j10));
                    if (e10 > 0) {
                        k10 = hf.k(i15);
                        l17 = hf.l(e10);
                        l13 = k10 + l17;
                        i10 = l13 + e10;
                        i11 += i10;
                    } else {
                        continue;
                    }
                case 48:
                    e10 = wh.V((List) unsafe.getObject(t10, j10));
                    if (e10 > 0) {
                        k10 = hf.k(i15);
                        l17 = hf.l(e10);
                        l13 = k10 + l17;
                        i10 = l13 + e10;
                        i11 += i10;
                    } else {
                        continue;
                    }
                case 49:
                    Q = wh.L(i15, (List) unsafe.getObject(t10, j10), J(i14));
                    break;
                case 50:
                    Q = bh.a(i15, unsafe.getObject(t10, j10), L(i14));
                    break;
                case 51:
                    if (t(t10, i15, i14)) {
                        l10 = hf.l(i15 << 3);
                        Q = l10 + 8;
                        break;
                    } else {
                        continue;
                    }
                case 52:
                    if (t(t10, i15, i14)) {
                        l11 = hf.l(i15 << 3);
                        Q = l11 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 53:
                    if (t(t10, i15, i14)) {
                        long H = H(t10, j10);
                        l12 = hf.l(i15 << 3);
                        m10 = hf.m(H);
                        Q = l12 + m10;
                        break;
                    } else {
                        continue;
                    }
                case 54:
                    if (t(t10, i15, i14)) {
                        long H2 = H(t10, j10);
                        l12 = hf.l(i15 << 3);
                        m10 = hf.m(H2);
                        Q = l12 + m10;
                        break;
                    } else {
                        continue;
                    }
                case 55:
                    if (t(t10, i15, i14)) {
                        int C = C(t10, j10);
                        l13 = hf.l(i15 << 3);
                        e10 = hf.e(C);
                        i10 = l13 + e10;
                        i11 += i10;
                    } else {
                        continue;
                    }
                case 56:
                    if (t(t10, i15, i14)) {
                        l10 = hf.l(i15 << 3);
                        Q = l10 + 8;
                        break;
                    } else {
                        continue;
                    }
                case 57:
                    if (t(t10, i15, i14)) {
                        l11 = hf.l(i15 << 3);
                        Q = l11 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 58:
                    if (t(t10, i15, i14)) {
                        l14 = hf.l(i15 << 3);
                        Q = l14 + 1;
                        break;
                    } else {
                        continue;
                    }
                case 59:
                    if (t(t10, i15, i14)) {
                        Object object2 = unsafe.getObject(t10, j10);
                        if (object2 instanceof zzpy) {
                            l15 = hf.l(i15 << 3);
                            zzd = ((zzpy) object2).zzd();
                            l16 = hf.l(zzd);
                            i10 = l15 + l16 + zzd;
                            i11 += i10;
                        } else {
                            l13 = hf.l(i15 << 3);
                            e10 = hf.j((String) object2);
                            i10 = l13 + e10;
                            i11 += i10;
                        }
                    } else {
                        continue;
                    }
                case 60:
                    if (t(t10, i15, i14)) {
                        Q = wh.Q(i15, unsafe.getObject(t10, j10), J(i14));
                        break;
                    } else {
                        continue;
                    }
                case 61:
                    if (t(t10, i15, i14)) {
                        l15 = hf.l(i15 << 3);
                        zzd = ((zzpy) unsafe.getObject(t10, j10)).zzd();
                        l16 = hf.l(zzd);
                        i10 = l15 + l16 + zzd;
                        i11 += i10;
                    } else {
                        continue;
                    }
                case 62:
                    if (t(t10, i15, i14)) {
                        int C2 = C(t10, j10);
                        l13 = hf.l(i15 << 3);
                        e10 = hf.l(C2);
                        i10 = l13 + e10;
                        i11 += i10;
                    } else {
                        continue;
                    }
                case 63:
                    if (t(t10, i15, i14)) {
                        int C3 = C(t10, j10);
                        l13 = hf.l(i15 << 3);
                        e10 = hf.e(C3);
                        i10 = l13 + e10;
                        i11 += i10;
                    } else {
                        continue;
                    }
                case 64:
                    if (t(t10, i15, i14)) {
                        l11 = hf.l(i15 << 3);
                        Q = l11 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 65:
                    if (t(t10, i15, i14)) {
                        l10 = hf.l(i15 << 3);
                        Q = l10 + 8;
                        break;
                    } else {
                        continue;
                    }
                case 66:
                    if (t(t10, i15, i14)) {
                        int C4 = C(t10, j10);
                        l13 = hf.l(i15 << 3);
                        e10 = hf.l((C4 >> 31) ^ (C4 + C4));
                        i10 = l13 + e10;
                        i11 += i10;
                    } else {
                        continue;
                    }
                case 67:
                    if (t(t10, i15, i14)) {
                        long H3 = H(t10, j10);
                        l13 = hf.l(i15 << 3);
                        e10 = hf.m((H3 >> 63) ^ (H3 + H3));
                        i10 = l13 + e10;
                        i11 += i10;
                    } else {
                        continue;
                    }
                case 68:
                    if (t(t10, i15, i14)) {
                        Q = hf.c(i15, (gh) unsafe.getObject(t10, j10), J(i14));
                        break;
                    } else {
                        continue;
                    }
                default:
            }
            i11 += Q;
        }
        ki<?, ?> kiVar = this.f8797m;
        int a10 = i11 + kiVar.a(kiVar.d(t10));
        if (this.f8790f) {
            this.f8798n.a(t10);
            throw null;
        }
        return a10;
    }

    private final int B(T t10) {
        int l10;
        int l11;
        int l12;
        int m10;
        int l13;
        int e10;
        int l14;
        int l15;
        int zzd;
        int l16;
        int Q;
        int k10;
        int l17;
        int i9;
        Unsafe unsafe = f8784r;
        int i10 = 0;
        for (int i11 = 0; i11 < this.f8785a.length; i11 += 3) {
            int G = G(i11);
            int F = F(G);
            int i12 = this.f8785a[i11];
            long j10 = G & 1048575;
            if (F >= zzqx.zzJ.zza() && F <= zzqx.zzW.zza()) {
                int i13 = this.f8785a[i11 + 2];
            }
            switch (F) {
                case 0:
                    if (q(t10, i11)) {
                        l10 = hf.l(i12 << 3);
                        Q = l10 + 8;
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (q(t10, i11)) {
                        l11 = hf.l(i12 << 3);
                        Q = l11 + 4;
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (q(t10, i11)) {
                        long i14 = vi.i(t10, j10);
                        l12 = hf.l(i12 << 3);
                        m10 = hf.m(i14);
                        i10 += l12 + m10;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (q(t10, i11)) {
                        long i15 = vi.i(t10, j10);
                        l12 = hf.l(i12 << 3);
                        m10 = hf.m(i15);
                        i10 += l12 + m10;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (q(t10, i11)) {
                        int h10 = vi.h(t10, j10);
                        l13 = hf.l(i12 << 3);
                        e10 = hf.e(h10);
                        i9 = l13 + e10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (q(t10, i11)) {
                        l10 = hf.l(i12 << 3);
                        Q = l10 + 8;
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (q(t10, i11)) {
                        l11 = hf.l(i12 << 3);
                        Q = l11 + 4;
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (q(t10, i11)) {
                        l14 = hf.l(i12 << 3);
                        Q = l14 + 1;
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (!q(t10, i11)) {
                        break;
                    } else {
                        Object k11 = vi.k(t10, j10);
                        if (k11 instanceof zzpy) {
                            l15 = hf.l(i12 << 3);
                            zzd = ((zzpy) k11).zzd();
                            l16 = hf.l(zzd);
                            i9 = l15 + l16 + zzd;
                            i10 += i9;
                            break;
                        } else {
                            l13 = hf.l(i12 << 3);
                            e10 = hf.j((String) k11);
                            i9 = l13 + e10;
                            i10 += i9;
                        }
                    }
                case 9:
                    if (q(t10, i11)) {
                        Q = wh.Q(i12, vi.k(t10, j10), J(i11));
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (q(t10, i11)) {
                        l15 = hf.l(i12 << 3);
                        zzd = ((zzpy) vi.k(t10, j10)).zzd();
                        l16 = hf.l(zzd);
                        i9 = l15 + l16 + zzd;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (q(t10, i11)) {
                        int h11 = vi.h(t10, j10);
                        l13 = hf.l(i12 << 3);
                        e10 = hf.l(h11);
                        i9 = l13 + e10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (q(t10, i11)) {
                        int h12 = vi.h(t10, j10);
                        l13 = hf.l(i12 << 3);
                        e10 = hf.e(h12);
                        i9 = l13 + e10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (q(t10, i11)) {
                        l11 = hf.l(i12 << 3);
                        Q = l11 + 4;
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (q(t10, i11)) {
                        l10 = hf.l(i12 << 3);
                        Q = l10 + 8;
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (q(t10, i11)) {
                        int h13 = vi.h(t10, j10);
                        l13 = hf.l(i12 << 3);
                        e10 = hf.l((h13 >> 31) ^ (h13 + h13));
                        i9 = l13 + e10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (q(t10, i11)) {
                        long i16 = vi.i(t10, j10);
                        l13 = hf.l(i12 << 3);
                        e10 = hf.m((i16 >> 63) ^ (i16 + i16));
                        i9 = l13 + e10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (q(t10, i11)) {
                        Q = hf.c(i12, (gh) vi.k(t10, j10), J(i11));
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    Q = wh.J(i12, (List) vi.k(t10, j10), false);
                    i10 += Q;
                    break;
                case 19:
                    Q = wh.H(i12, (List) vi.k(t10, j10), false);
                    i10 += Q;
                    break;
                case 20:
                    Q = wh.O(i12, (List) vi.k(t10, j10), false);
                    i10 += Q;
                    break;
                case 21:
                    Q = wh.Z(i12, (List) vi.k(t10, j10), false);
                    i10 += Q;
                    break;
                case 22:
                    Q = wh.M(i12, (List) vi.k(t10, j10), false);
                    i10 += Q;
                    break;
                case 23:
                    Q = wh.J(i12, (List) vi.k(t10, j10), false);
                    i10 += Q;
                    break;
                case 24:
                    Q = wh.H(i12, (List) vi.k(t10, j10), false);
                    i10 += Q;
                    break;
                case 25:
                    Q = wh.A(i12, (List) vi.k(t10, j10), false);
                    i10 += Q;
                    break;
                case 26:
                    Q = wh.W(i12, (List) vi.k(t10, j10));
                    i10 += Q;
                    break;
                case 27:
                    Q = wh.R(i12, (List) vi.k(t10, j10), J(i11));
                    i10 += Q;
                    break;
                case 28:
                    Q = wh.E(i12, (List) vi.k(t10, j10));
                    i10 += Q;
                    break;
                case 29:
                    Q = wh.X(i12, (List) vi.k(t10, j10), false);
                    i10 += Q;
                    break;
                case 30:
                    Q = wh.F(i12, (List) vi.k(t10, j10), false);
                    i10 += Q;
                    break;
                case 31:
                    Q = wh.H(i12, (List) vi.k(t10, j10), false);
                    i10 += Q;
                    break;
                case 32:
                    Q = wh.J(i12, (List) vi.k(t10, j10), false);
                    i10 += Q;
                    break;
                case 33:
                    Q = wh.S(i12, (List) vi.k(t10, j10), false);
                    i10 += Q;
                    break;
                case 34:
                    Q = wh.U(i12, (List) vi.k(t10, j10), false);
                    i10 += Q;
                    break;
                case 35:
                    e10 = wh.K((List) unsafe.getObject(t10, j10));
                    if (e10 > 0) {
                        k10 = hf.k(i12);
                        l17 = hf.l(e10);
                        l13 = k10 + l17;
                        i9 = l13 + e10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    e10 = wh.I((List) unsafe.getObject(t10, j10));
                    if (e10 > 0) {
                        k10 = hf.k(i12);
                        l17 = hf.l(e10);
                        l13 = k10 + l17;
                        i9 = l13 + e10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    e10 = wh.P((List) unsafe.getObject(t10, j10));
                    if (e10 > 0) {
                        k10 = hf.k(i12);
                        l17 = hf.l(e10);
                        l13 = k10 + l17;
                        i9 = l13 + e10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    e10 = wh.a0((List) unsafe.getObject(t10, j10));
                    if (e10 > 0) {
                        k10 = hf.k(i12);
                        l17 = hf.l(e10);
                        l13 = k10 + l17;
                        i9 = l13 + e10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    e10 = wh.N((List) unsafe.getObject(t10, j10));
                    if (e10 > 0) {
                        k10 = hf.k(i12);
                        l17 = hf.l(e10);
                        l13 = k10 + l17;
                        i9 = l13 + e10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    e10 = wh.K((List) unsafe.getObject(t10, j10));
                    if (e10 > 0) {
                        k10 = hf.k(i12);
                        l17 = hf.l(e10);
                        l13 = k10 + l17;
                        i9 = l13 + e10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    e10 = wh.I((List) unsafe.getObject(t10, j10));
                    if (e10 > 0) {
                        k10 = hf.k(i12);
                        l17 = hf.l(e10);
                        l13 = k10 + l17;
                        i9 = l13 + e10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    e10 = wh.D((List) unsafe.getObject(t10, j10));
                    if (e10 > 0) {
                        k10 = hf.k(i12);
                        l17 = hf.l(e10);
                        l13 = k10 + l17;
                        i9 = l13 + e10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    e10 = wh.Y((List) unsafe.getObject(t10, j10));
                    if (e10 > 0) {
                        k10 = hf.k(i12);
                        l17 = hf.l(e10);
                        l13 = k10 + l17;
                        i9 = l13 + e10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    e10 = wh.G((List) unsafe.getObject(t10, j10));
                    if (e10 > 0) {
                        k10 = hf.k(i12);
                        l17 = hf.l(e10);
                        l13 = k10 + l17;
                        i9 = l13 + e10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    e10 = wh.I((List) unsafe.getObject(t10, j10));
                    if (e10 > 0) {
                        k10 = hf.k(i12);
                        l17 = hf.l(e10);
                        l13 = k10 + l17;
                        i9 = l13 + e10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    e10 = wh.K((List) unsafe.getObject(t10, j10));
                    if (e10 > 0) {
                        k10 = hf.k(i12);
                        l17 = hf.l(e10);
                        l13 = k10 + l17;
                        i9 = l13 + e10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    e10 = wh.T((List) unsafe.getObject(t10, j10));
                    if (e10 > 0) {
                        k10 = hf.k(i12);
                        l17 = hf.l(e10);
                        l13 = k10 + l17;
                        i9 = l13 + e10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    e10 = wh.V((List) unsafe.getObject(t10, j10));
                    if (e10 > 0) {
                        k10 = hf.k(i12);
                        l17 = hf.l(e10);
                        l13 = k10 + l17;
                        i9 = l13 + e10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    Q = wh.L(i12, (List) vi.k(t10, j10), J(i11));
                    i10 += Q;
                    break;
                case 50:
                    Q = bh.a(i12, vi.k(t10, j10), L(i11));
                    i10 += Q;
                    break;
                case 51:
                    if (t(t10, i12, i11)) {
                        l10 = hf.l(i12 << 3);
                        Q = l10 + 8;
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (t(t10, i12, i11)) {
                        l11 = hf.l(i12 << 3);
                        Q = l11 + 4;
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (t(t10, i12, i11)) {
                        long H = H(t10, j10);
                        l12 = hf.l(i12 << 3);
                        m10 = hf.m(H);
                        i10 += l12 + m10;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (t(t10, i12, i11)) {
                        long H2 = H(t10, j10);
                        l12 = hf.l(i12 << 3);
                        m10 = hf.m(H2);
                        i10 += l12 + m10;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (t(t10, i12, i11)) {
                        int C = C(t10, j10);
                        l13 = hf.l(i12 << 3);
                        e10 = hf.e(C);
                        i9 = l13 + e10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (t(t10, i12, i11)) {
                        l10 = hf.l(i12 << 3);
                        Q = l10 + 8;
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (t(t10, i12, i11)) {
                        l11 = hf.l(i12 << 3);
                        Q = l11 + 4;
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (t(t10, i12, i11)) {
                        l14 = hf.l(i12 << 3);
                        Q = l14 + 1;
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (!t(t10, i12, i11)) {
                        break;
                    } else {
                        Object k12 = vi.k(t10, j10);
                        if (k12 instanceof zzpy) {
                            l15 = hf.l(i12 << 3);
                            zzd = ((zzpy) k12).zzd();
                            l16 = hf.l(zzd);
                            i9 = l15 + l16 + zzd;
                            i10 += i9;
                            break;
                        } else {
                            l13 = hf.l(i12 << 3);
                            e10 = hf.j((String) k12);
                            i9 = l13 + e10;
                            i10 += i9;
                        }
                    }
                case 60:
                    if (t(t10, i12, i11)) {
                        Q = wh.Q(i12, vi.k(t10, j10), J(i11));
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (t(t10, i12, i11)) {
                        l15 = hf.l(i12 << 3);
                        zzd = ((zzpy) vi.k(t10, j10)).zzd();
                        l16 = hf.l(zzd);
                        i9 = l15 + l16 + zzd;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (t(t10, i12, i11)) {
                        int C2 = C(t10, j10);
                        l13 = hf.l(i12 << 3);
                        e10 = hf.l(C2);
                        i9 = l13 + e10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (t(t10, i12, i11)) {
                        int C3 = C(t10, j10);
                        l13 = hf.l(i12 << 3);
                        e10 = hf.e(C3);
                        i9 = l13 + e10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (t(t10, i12, i11)) {
                        l11 = hf.l(i12 << 3);
                        Q = l11 + 4;
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (t(t10, i12, i11)) {
                        l10 = hf.l(i12 << 3);
                        Q = l10 + 8;
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (t(t10, i12, i11)) {
                        int C4 = C(t10, j10);
                        l13 = hf.l(i12 << 3);
                        e10 = hf.l((C4 >> 31) ^ (C4 + C4));
                        i9 = l13 + e10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (t(t10, i12, i11)) {
                        long H3 = H(t10, j10);
                        l13 = hf.l(i12 << 3);
                        e10 = hf.m((H3 >> 63) ^ (H3 + H3));
                        i9 = l13 + e10;
                        i10 += i9;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (t(t10, i12, i11)) {
                        Q = hf.c(i12, (gh) vi.k(t10, j10), J(i11));
                        i10 += Q;
                        break;
                    } else {
                        break;
                    }
            }
        }
        ki<?, ?> kiVar = this.f8797m;
        return i10 + kiVar.a(kiVar.d(t10));
    }

    private static <T> int C(T t10, long j10) {
        return ((Integer) vi.k(t10, j10)).intValue();
    }

    private final int D(int i9) {
        return this.f8785a[i9 + 2];
    }

    private static int F(int i9) {
        return (i9 >>> 20) & 255;
    }

    private final int G(int i9) {
        return this.f8785a[i9 + 1];
    }

    private static <T> long H(T t10, long j10) {
        return ((Long) vi.k(t10, j10)).longValue();
    }

    private final hg I(int i9) {
        int i10 = i9 / 3;
        return (hg) this.f8786b[i10 + i10 + 1];
    }

    private final uh J(int i9) {
        int i10 = i9 / 3;
        int i11 = i10 + i10;
        uh uhVar = (uh) this.f8786b[i11];
        if (uhVar != null) {
            return uhVar;
        }
        uh<T> b10 = ph.a().b((Class) this.f8786b[i11 + 1]);
        this.f8786b[i11] = b10;
        return b10;
    }

    private final <UT, UB> UB K(Object obj, int i9, UB ub2, ki<UT, UB> kiVar) {
        hg I;
        int i10 = this.f8785a[i9];
        Object k10 = vi.k(obj, G(i9) & 1048575);
        if (k10 == null || (I = I(i9)) == null) {
            return ub2;
        }
        zg c10 = ((ah) L(i9)).c();
        Iterator it = ((zzsh) k10).entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (!I.h(((Integer) entry.getValue()).intValue())) {
                if (ub2 == null) {
                    ub2 = kiVar.f();
                }
                int b10 = ah.b(c10, entry.getKey(), entry.getValue());
                zzpy zzpyVar = zzpy.zzb;
                byte[] bArr = new byte[b10];
                hf n9 = hf.n(bArr);
                try {
                    ah.e(n9, c10, entry.getKey(), entry.getValue());
                    kiVar.k(ub2, i10, te.a(n9, bArr));
                    it.remove();
                } catch (IOException e10) {
                    throw new RuntimeException(e10);
                }
            }
        }
        return ub2;
    }

    private final Object L(int i9) {
        int i10 = i9 / 3;
        return this.f8786b[i10 + i10];
    }

    private static Field M(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 40 + name.length() + String.valueOf(arrays).length());
            sb2.append("Field ");
            sb2.append(str);
            sb2.append(" for ");
            sb2.append(name);
            sb2.append(" not found. Known fields are ");
            sb2.append(arrays);
            throw new RuntimeException(sb2.toString());
        }
    }

    private final void N(T t10, T t11, int i9) {
        long G = G(i9) & 1048575;
        if (q(t11, i9)) {
            Object k10 = vi.k(t10, G);
            Object k11 = vi.k(t11, G);
            if (k10 != null && k11 != null) {
                vi.x(t10, G, mg.g(k10, k11));
                k(t10, i9);
            } else if (k11 != null) {
                vi.x(t10, G, k11);
                k(t10, i9);
            }
        }
    }

    private final void i(T t10, T t11, int i9) {
        int G = G(i9);
        int i10 = this.f8785a[i9];
        long j10 = G & 1048575;
        if (t(t11, i10, i9)) {
            Object k10 = t(t10, i10, i9) ? vi.k(t10, j10) : null;
            Object k11 = vi.k(t11, j10);
            if (k10 != null && k11 != null) {
                vi.x(t10, j10, mg.g(k10, k11));
                l(t10, i10, i9);
            } else if (k11 != null) {
                vi.x(t10, j10, k11);
                l(t10, i10, i9);
            }
        }
    }

    private final void j(Object obj, int i9, sh shVar) throws IOException {
        if (p(i9)) {
            vi.x(obj, i9 & 1048575, shVar.L());
        } else if (this.f8791g) {
            vi.x(obj, i9 & 1048575, shVar.K());
        } else {
            vi.x(obj, i9 & 1048575, shVar.H());
        }
    }

    private final void k(T t10, int i9) {
        int D = D(i9);
        long j10 = 1048575 & D;
        if (j10 == 1048575) {
            return;
        }
        vi.v(t10, j10, (1 << (D >>> 20)) | vi.h(t10, j10));
    }

    private final void l(T t10, int i9, int i10) {
        vi.v(t10, D(i10) & 1048575, i9);
    }

    private final void m(T t10, bj bjVar) throws IOException {
        int i9;
        if (!this.f8790f) {
            int length = this.f8785a.length;
            Unsafe unsafe = f8784r;
            int i10 = 1048575;
            int i11 = 0;
            int i12 = 0;
            int i13 = 1048575;
            while (i11 < length) {
                int G = G(i11);
                int i14 = this.f8785a[i11];
                int F = F(G);
                if (F <= 17) {
                    int i15 = this.f8785a[i11 + 2];
                    int i16 = i15 & i10;
                    if (i16 != i13) {
                        i12 = unsafe.getInt(t10, i16);
                        i13 = i16;
                    }
                    i9 = 1 << (i15 >>> 20);
                } else {
                    i9 = 0;
                }
                long j10 = G & i10;
                switch (F) {
                    case 0:
                        if ((i12 & i9) != 0) {
                            bjVar.l(i14, vi.f(t10, j10));
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 1:
                        if ((i12 & i9) != 0) {
                            bjVar.s(i14, vi.g(t10, j10));
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 2:
                        if ((i12 & i9) != 0) {
                            bjVar.h(i14, unsafe.getLong(t10, j10));
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 3:
                        if ((i12 & i9) != 0) {
                            bjVar.K(i14, unsafe.getLong(t10, j10));
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 4:
                        if ((i12 & i9) != 0) {
                            bjVar.k(i14, unsafe.getInt(t10, j10));
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 5:
                        if ((i12 & i9) != 0) {
                            bjVar.v(i14, unsafe.getLong(t10, j10));
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 6:
                        if ((i12 & i9) != 0) {
                            bjVar.o(i14, unsafe.getInt(t10, j10));
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 7:
                        if ((i12 & i9) != 0) {
                            bjVar.g(i14, vi.B(t10, j10));
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 8:
                        if ((i12 & i9) != 0) {
                            v(i14, unsafe.getObject(t10, j10), bjVar);
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 9:
                        if ((i12 & i9) != 0) {
                            bjVar.z(i14, unsafe.getObject(t10, j10), J(i11));
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 10:
                        if ((i12 & i9) != 0) {
                            bjVar.F(i14, (zzpy) unsafe.getObject(t10, j10));
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 11:
                        if ((i12 & i9) != 0) {
                            bjVar.C(i14, unsafe.getInt(t10, j10));
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 12:
                        if ((i12 & i9) != 0) {
                            bjVar.q(i14, unsafe.getInt(t10, j10));
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 13:
                        if ((i12 & i9) != 0) {
                            bjVar.y(i14, unsafe.getInt(t10, j10));
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 14:
                        if ((i12 & i9) != 0) {
                            bjVar.G(i14, unsafe.getLong(t10, j10));
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 15:
                        if ((i12 & i9) != 0) {
                            bjVar.A(i14, unsafe.getInt(t10, j10));
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 16:
                        if ((i12 & i9) != 0) {
                            bjVar.w(i14, unsafe.getLong(t10, j10));
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 17:
                        if ((i12 & i9) != 0) {
                            bjVar.a(i14, unsafe.getObject(t10, j10), J(i11));
                        } else {
                            continue;
                        }
                        i11 += 3;
                        i10 = 1048575;
                    case 18:
                        wh.j(this.f8785a[i11], (List) unsafe.getObject(t10, j10), bjVar, false);
                        continue;
                        i11 += 3;
                        i10 = 1048575;
                    case 19:
                        wh.n(this.f8785a[i11], (List) unsafe.getObject(t10, j10), bjVar, false);
                        continue;
                        i11 += 3;
                        i10 = 1048575;
                    case 20:
                        wh.q(this.f8785a[i11], (List) unsafe.getObject(t10, j10), bjVar, false);
                        continue;
                        i11 += 3;
                        i10 = 1048575;
                    case 21:
                        wh.y(this.f8785a[i11], (List) unsafe.getObject(t10, j10), bjVar, false);
                        continue;
                        i11 += 3;
                        i10 = 1048575;
                    case 22:
                        wh.p(this.f8785a[i11], (List) unsafe.getObject(t10, j10), bjVar, false);
                        continue;
                        i11 += 3;
                        i10 = 1048575;
                    case 23:
                        wh.m(this.f8785a[i11], (List) unsafe.getObject(t10, j10), bjVar, false);
                        continue;
                        i11 += 3;
                        i10 = 1048575;
                    case 24:
                        wh.l(this.f8785a[i11], (List) unsafe.getObject(t10, j10), bjVar, false);
                        continue;
                        i11 += 3;
                        i10 = 1048575;
                    case 25:
                        wh.h(this.f8785a[i11], (List) unsafe.getObject(t10, j10), bjVar, false);
                        continue;
                        i11 += 3;
                        i10 = 1048575;
                    case 26:
                        wh.w(this.f8785a[i11], (List) unsafe.getObject(t10, j10), bjVar);
                        break;
                    case 27:
                        wh.r(this.f8785a[i11], (List) unsafe.getObject(t10, j10), bjVar, J(i11));
                        break;
                    case 28:
                        wh.i(this.f8785a[i11], (List) unsafe.getObject(t10, j10), bjVar);
                        break;
                    case 29:
                        wh.x(this.f8785a[i11], (List) unsafe.getObject(t10, j10), bjVar, false);
                        break;
                    case 30:
                        wh.k(this.f8785a[i11], (List) unsafe.getObject(t10, j10), bjVar, false);
                        break;
                    case 31:
                        wh.s(this.f8785a[i11], (List) unsafe.getObject(t10, j10), bjVar, false);
                        break;
                    case 32:
                        wh.t(this.f8785a[i11], (List) unsafe.getObject(t10, j10), bjVar, false);
                        break;
                    case 33:
                        wh.u(this.f8785a[i11], (List) unsafe.getObject(t10, j10), bjVar, false);
                        break;
                    case 34:
                        wh.v(this.f8785a[i11], (List) unsafe.getObject(t10, j10), bjVar, false);
                        break;
                    case 35:
                        wh.j(this.f8785a[i11], (List) unsafe.getObject(t10, j10), bjVar, true);
                        break;
                    case 36:
                        wh.n(this.f8785a[i11], (List) unsafe.getObject(t10, j10), bjVar, true);
                        break;
                    case 37:
                        wh.q(this.f8785a[i11], (List) unsafe.getObject(t10, j10), bjVar, true);
                        break;
                    case 38:
                        wh.y(this.f8785a[i11], (List) unsafe.getObject(t10, j10), bjVar, true);
                        break;
                    case 39:
                        wh.p(this.f8785a[i11], (List) unsafe.getObject(t10, j10), bjVar, true);
                        break;
                    case 40:
                        wh.m(this.f8785a[i11], (List) unsafe.getObject(t10, j10), bjVar, true);
                        break;
                    case 41:
                        wh.l(this.f8785a[i11], (List) unsafe.getObject(t10, j10), bjVar, true);
                        break;
                    case 42:
                        wh.h(this.f8785a[i11], (List) unsafe.getObject(t10, j10), bjVar, true);
                        break;
                    case 43:
                        wh.x(this.f8785a[i11], (List) unsafe.getObject(t10, j10), bjVar, true);
                        break;
                    case 44:
                        wh.k(this.f8785a[i11], (List) unsafe.getObject(t10, j10), bjVar, true);
                        break;
                    case 45:
                        wh.s(this.f8785a[i11], (List) unsafe.getObject(t10, j10), bjVar, true);
                        break;
                    case 46:
                        wh.t(this.f8785a[i11], (List) unsafe.getObject(t10, j10), bjVar, true);
                        break;
                    case 47:
                        wh.u(this.f8785a[i11], (List) unsafe.getObject(t10, j10), bjVar, true);
                        break;
                    case 48:
                        wh.v(this.f8785a[i11], (List) unsafe.getObject(t10, j10), bjVar, true);
                        break;
                    case 49:
                        wh.o(this.f8785a[i11], (List) unsafe.getObject(t10, j10), bjVar, J(i11));
                        break;
                    case 50:
                        n(bjVar, i14, unsafe.getObject(t10, j10), i11);
                        break;
                    case 51:
                        if (t(t10, i14, i11)) {
                            bjVar.l(i14, y(t10, j10));
                            break;
                        }
                        break;
                    case 52:
                        if (t(t10, i14, i11)) {
                            bjVar.s(i14, z(t10, j10));
                            break;
                        }
                        break;
                    case 53:
                        if (t(t10, i14, i11)) {
                            bjVar.h(i14, H(t10, j10));
                            break;
                        }
                        break;
                    case 54:
                        if (t(t10, i14, i11)) {
                            bjVar.K(i14, H(t10, j10));
                            break;
                        }
                        break;
                    case 55:
                        if (t(t10, i14, i11)) {
                            bjVar.k(i14, C(t10, j10));
                            break;
                        }
                        break;
                    case 56:
                        if (t(t10, i14, i11)) {
                            bjVar.v(i14, H(t10, j10));
                            break;
                        }
                        break;
                    case 57:
                        if (t(t10, i14, i11)) {
                            bjVar.o(i14, C(t10, j10));
                            break;
                        }
                        break;
                    case 58:
                        if (t(t10, i14, i11)) {
                            bjVar.g(i14, u(t10, j10));
                            break;
                        }
                        break;
                    case 59:
                        if (t(t10, i14, i11)) {
                            v(i14, unsafe.getObject(t10, j10), bjVar);
                            break;
                        }
                        break;
                    case 60:
                        if (t(t10, i14, i11)) {
                            bjVar.z(i14, unsafe.getObject(t10, j10), J(i11));
                            break;
                        }
                        break;
                    case 61:
                        if (t(t10, i14, i11)) {
                            bjVar.F(i14, (zzpy) unsafe.getObject(t10, j10));
                            break;
                        }
                        break;
                    case 62:
                        if (t(t10, i14, i11)) {
                            bjVar.C(i14, C(t10, j10));
                            break;
                        }
                        break;
                    case 63:
                        if (t(t10, i14, i11)) {
                            bjVar.q(i14, C(t10, j10));
                            break;
                        }
                        break;
                    case 64:
                        if (t(t10, i14, i11)) {
                            bjVar.y(i14, C(t10, j10));
                            break;
                        }
                        break;
                    case 65:
                        if (t(t10, i14, i11)) {
                            bjVar.G(i14, H(t10, j10));
                            break;
                        }
                        break;
                    case 66:
                        if (t(t10, i14, i11)) {
                            bjVar.A(i14, C(t10, j10));
                            break;
                        }
                        break;
                    case 67:
                        if (t(t10, i14, i11)) {
                            bjVar.w(i14, H(t10, j10));
                            break;
                        }
                        break;
                    case 68:
                        if (t(t10, i14, i11)) {
                            bjVar.a(i14, unsafe.getObject(t10, j10), J(i11));
                            break;
                        }
                        break;
                }
                i11 += 3;
                i10 = 1048575;
            }
            ki<?, ?> kiVar = this.f8797m;
            kiVar.p(kiVar.d(t10), bjVar);
            return;
        }
        this.f8798n.a(t10);
        throw null;
    }

    private final <K, V> void n(bj bjVar, int i9, Object obj, int i10) throws IOException {
        if (obj != null) {
            bjVar.b(i9, ((ah) L(i10)).c(), (zzsh) obj);
        }
    }

    private final boolean o(T t10, T t11, int i9) {
        return q(t10, i9) == q(t11, i9);
    }

    private static boolean p(int i9) {
        return (i9 & 536870912) != 0;
    }

    private final boolean q(T t10, int i9) {
        int D = D(i9);
        long j10 = D & 1048575;
        if (j10 != 1048575) {
            return (vi.h(t10, j10) & (1 << (D >>> 20))) != 0;
        }
        int G = G(i9);
        long j11 = G & 1048575;
        switch (F(G)) {
            case 0:
                return vi.f(t10, j11) != 0.0d;
            case 1:
                return vi.g(t10, j11) != 0.0f;
            case 2:
                return vi.i(t10, j11) != 0;
            case 3:
                return vi.i(t10, j11) != 0;
            case 4:
                return vi.h(t10, j11) != 0;
            case 5:
                return vi.i(t10, j11) != 0;
            case 6:
                return vi.h(t10, j11) != 0;
            case 7:
                return vi.B(t10, j11);
            case 8:
                Object k10 = vi.k(t10, j11);
                if (k10 instanceof String) {
                    return !((String) k10).isEmpty();
                } else if (k10 instanceof zzpy) {
                    return !zzpy.zzb.equals(k10);
                } else {
                    throw new IllegalArgumentException();
                }
            case 9:
                return vi.k(t10, j11) != null;
            case 10:
                return !zzpy.zzb.equals(vi.k(t10, j11));
            case 11:
                return vi.h(t10, j11) != 0;
            case 12:
                return vi.h(t10, j11) != 0;
            case 13:
                return vi.h(t10, j11) != 0;
            case 14:
                return vi.i(t10, j11) != 0;
            case 15:
                return vi.h(t10, j11) != 0;
            case 16:
                return vi.i(t10, j11) != 0;
            case 17:
                return vi.k(t10, j11) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean r(T t10, int i9, int i10, int i11, int i12) {
        return i10 == 1048575 ? q(t10, i9) : (i11 & i12) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean s(Object obj, int i9, uh uhVar) {
        return uhVar.h(vi.k(obj, i9 & 1048575));
    }

    private final boolean t(T t10, int i9, int i10) {
        return vi.h(t10, (long) (D(i10) & 1048575)) == i9;
    }

    private static <T> boolean u(T t10, long j10) {
        return ((Boolean) vi.k(t10, j10)).booleanValue();
    }

    private static final void v(int i9, Object obj, bj bjVar) throws IOException {
        if (obj instanceof String) {
            bjVar.c(i9, (String) obj);
        } else {
            bjVar.F(i9, (zzpy) obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> jh<T> w(Class<T> cls, dh dhVar, lh lhVar, ug ugVar, ki<?, ?> kiVar, qf<?> qfVar, bh bhVar) {
        if (dhVar instanceof rh) {
            return x((rh) dhVar, lhVar, ugVar, kiVar, qfVar, bhVar);
        }
        fi fiVar = (fi) dhVar;
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
    static <T> com.google.android.gms.internal.recaptcha.jh<T> x(com.google.android.gms.internal.recaptcha.rh r34, com.google.android.gms.internal.recaptcha.lh r35, com.google.android.gms.internal.recaptcha.ug r36, com.google.android.gms.internal.recaptcha.ki<?, ?> r37, com.google.android.gms.internal.recaptcha.qf<?> r38, com.google.android.gms.internal.recaptcha.bh r39) {
        /*
            Method dump skipped, instructions count: 1016
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.recaptcha.jh.x(com.google.android.gms.internal.recaptcha.rh, com.google.android.gms.internal.recaptcha.lh, com.google.android.gms.internal.recaptcha.ug, com.google.android.gms.internal.recaptcha.ki, com.google.android.gms.internal.recaptcha.qf, com.google.android.gms.internal.recaptcha.bh):com.google.android.gms.internal.recaptcha.jh");
    }

    private static <T> double y(T t10, long j10) {
        return ((Double) vi.k(t10, j10)).doubleValue();
    }

    private static <T> float z(T t10, long j10) {
        return ((Float) vi.k(t10, j10)).floatValue();
    }

    @Override // com.google.android.gms.internal.recaptcha.uh
    public final T E() {
        return (T) ((dg) this.f8789e).m(4, null, null);
    }

    @Override // com.google.android.gms.internal.recaptcha.uh
    public final int a(T t10) {
        return this.f8792h ? B(t10) : A(t10);
    }

    @Override // com.google.android.gms.internal.recaptcha.uh
    public final int b(T t10) {
        int i9;
        int c10;
        int length = this.f8785a.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11 += 3) {
            int G = G(i11);
            int i12 = this.f8785a[i11];
            long j10 = 1048575 & G;
            int i13 = 37;
            switch (F(G)) {
                case 0:
                    i9 = i10 * 53;
                    c10 = mg.c(Double.doubleToLongBits(vi.f(t10, j10)));
                    i10 = i9 + c10;
                    break;
                case 1:
                    i9 = i10 * 53;
                    c10 = Float.floatToIntBits(vi.g(t10, j10));
                    i10 = i9 + c10;
                    break;
                case 2:
                    i9 = i10 * 53;
                    c10 = mg.c(vi.i(t10, j10));
                    i10 = i9 + c10;
                    break;
                case 3:
                    i9 = i10 * 53;
                    c10 = mg.c(vi.i(t10, j10));
                    i10 = i9 + c10;
                    break;
                case 4:
                    i9 = i10 * 53;
                    c10 = vi.h(t10, j10);
                    i10 = i9 + c10;
                    break;
                case 5:
                    i9 = i10 * 53;
                    c10 = mg.c(vi.i(t10, j10));
                    i10 = i9 + c10;
                    break;
                case 6:
                    i9 = i10 * 53;
                    c10 = vi.h(t10, j10);
                    i10 = i9 + c10;
                    break;
                case 7:
                    i9 = i10 * 53;
                    c10 = mg.a(vi.B(t10, j10));
                    i10 = i9 + c10;
                    break;
                case 8:
                    i9 = i10 * 53;
                    c10 = ((String) vi.k(t10, j10)).hashCode();
                    i10 = i9 + c10;
                    break;
                case 9:
                    Object k10 = vi.k(t10, j10);
                    if (k10 != null) {
                        i13 = k10.hashCode();
                    }
                    i10 = (i10 * 53) + i13;
                    break;
                case 10:
                    i9 = i10 * 53;
                    c10 = vi.k(t10, j10).hashCode();
                    i10 = i9 + c10;
                    break;
                case 11:
                    i9 = i10 * 53;
                    c10 = vi.h(t10, j10);
                    i10 = i9 + c10;
                    break;
                case 12:
                    i9 = i10 * 53;
                    c10 = vi.h(t10, j10);
                    i10 = i9 + c10;
                    break;
                case 13:
                    i9 = i10 * 53;
                    c10 = vi.h(t10, j10);
                    i10 = i9 + c10;
                    break;
                case 14:
                    i9 = i10 * 53;
                    c10 = mg.c(vi.i(t10, j10));
                    i10 = i9 + c10;
                    break;
                case 15:
                    i9 = i10 * 53;
                    c10 = vi.h(t10, j10);
                    i10 = i9 + c10;
                    break;
                case 16:
                    i9 = i10 * 53;
                    c10 = mg.c(vi.i(t10, j10));
                    i10 = i9 + c10;
                    break;
                case 17:
                    Object k11 = vi.k(t10, j10);
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
                    c10 = vi.k(t10, j10).hashCode();
                    i10 = i9 + c10;
                    break;
                case 50:
                    i9 = i10 * 53;
                    c10 = vi.k(t10, j10).hashCode();
                    i10 = i9 + c10;
                    break;
                case 51:
                    if (t(t10, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = mg.c(Double.doubleToLongBits(y(t10, j10)));
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (t(t10, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = Float.floatToIntBits(z(t10, j10));
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (t(t10, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = mg.c(H(t10, j10));
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (t(t10, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = mg.c(H(t10, j10));
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (t(t10, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = C(t10, j10);
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (t(t10, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = mg.c(H(t10, j10));
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (t(t10, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = C(t10, j10);
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (t(t10, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = mg.a(u(t10, j10));
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (t(t10, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = ((String) vi.k(t10, j10)).hashCode();
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (t(t10, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = vi.k(t10, j10).hashCode();
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (t(t10, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = vi.k(t10, j10).hashCode();
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (t(t10, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = C(t10, j10);
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (t(t10, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = C(t10, j10);
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (t(t10, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = C(t10, j10);
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (t(t10, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = mg.c(H(t10, j10));
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (t(t10, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = C(t10, j10);
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (t(t10, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = mg.c(H(t10, j10));
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (t(t10, i12, i11)) {
                        i9 = i10 * 53;
                        c10 = vi.k(t10, j10).hashCode();
                        i10 = i9 + c10;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i10 * 53) + this.f8797m.d(t10).hashCode();
        if (this.f8790f) {
            this.f8798n.a(t10);
            throw null;
        }
        return hashCode;
    }

    @Override // com.google.android.gms.internal.recaptcha.uh
    public final void c(T t10) {
        int i9;
        int i10 = this.f8794j;
        while (true) {
            i9 = this.f8795k;
            if (i10 >= i9) {
                break;
            }
            long G = G(this.f8793i[i10]) & 1048575;
            Object k10 = vi.k(t10, G);
            if (k10 != null) {
                ((zzsh) k10).zzc();
                vi.x(t10, G, k10);
            }
            i10++;
        }
        int length = this.f8793i.length;
        while (i9 < length) {
            this.f8796l.b(t10, this.f8793i[i9]);
            i9++;
        }
        this.f8797m.m(t10);
        if (this.f8790f) {
            this.f8798n.e(t10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:187:0x00af A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0045 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.recaptcha.uh
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d(T r18, com.google.android.gms.internal.recaptcha.sh r19, com.google.android.gms.internal.recaptcha.pf r20) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1672
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.recaptcha.jh.d(java.lang.Object, com.google.android.gms.internal.recaptcha.sh, com.google.android.gms.internal.recaptcha.pf):void");
    }

    @Override // com.google.android.gms.internal.recaptcha.uh
    public final boolean e(T t10, T t11) {
        boolean z10;
        int length = this.f8785a.length;
        for (int i9 = 0; i9 < length; i9 += 3) {
            int G = G(i9);
            long j10 = G & 1048575;
            switch (F(G)) {
                case 0:
                    if (o(t10, t11, i9) && Double.doubleToLongBits(vi.f(t10, j10)) == Double.doubleToLongBits(vi.f(t11, j10))) {
                        continue;
                    }
                    return false;
                case 1:
                    if (o(t10, t11, i9) && Float.floatToIntBits(vi.g(t10, j10)) == Float.floatToIntBits(vi.g(t11, j10))) {
                        continue;
                    }
                    return false;
                case 2:
                    if (o(t10, t11, i9) && vi.i(t10, j10) == vi.i(t11, j10)) {
                        continue;
                    }
                    return false;
                case 3:
                    if (o(t10, t11, i9) && vi.i(t10, j10) == vi.i(t11, j10)) {
                        continue;
                    }
                    return false;
                case 4:
                    if (o(t10, t11, i9) && vi.h(t10, j10) == vi.h(t11, j10)) {
                        continue;
                    }
                    return false;
                case 5:
                    if (o(t10, t11, i9) && vi.i(t10, j10) == vi.i(t11, j10)) {
                        continue;
                    }
                    return false;
                case 6:
                    if (o(t10, t11, i9) && vi.h(t10, j10) == vi.h(t11, j10)) {
                        continue;
                    }
                    return false;
                case 7:
                    if (o(t10, t11, i9) && vi.B(t10, j10) == vi.B(t11, j10)) {
                        continue;
                    }
                    return false;
                case 8:
                    if (o(t10, t11, i9) && wh.z(vi.k(t10, j10), vi.k(t11, j10))) {
                        continue;
                    }
                    return false;
                case 9:
                    if (o(t10, t11, i9) && wh.z(vi.k(t10, j10), vi.k(t11, j10))) {
                        continue;
                    }
                    return false;
                case 10:
                    if (o(t10, t11, i9) && wh.z(vi.k(t10, j10), vi.k(t11, j10))) {
                        continue;
                    }
                    return false;
                case 11:
                    if (o(t10, t11, i9) && vi.h(t10, j10) == vi.h(t11, j10)) {
                        continue;
                    }
                    return false;
                case 12:
                    if (o(t10, t11, i9) && vi.h(t10, j10) == vi.h(t11, j10)) {
                        continue;
                    }
                    return false;
                case 13:
                    if (o(t10, t11, i9) && vi.h(t10, j10) == vi.h(t11, j10)) {
                        continue;
                    }
                    return false;
                case 14:
                    if (o(t10, t11, i9) && vi.i(t10, j10) == vi.i(t11, j10)) {
                        continue;
                    }
                    return false;
                case 15:
                    if (o(t10, t11, i9) && vi.h(t10, j10) == vi.h(t11, j10)) {
                        continue;
                    }
                    return false;
                case 16:
                    if (o(t10, t11, i9) && vi.i(t10, j10) == vi.i(t11, j10)) {
                        continue;
                    }
                    return false;
                case 17:
                    if (o(t10, t11, i9) && wh.z(vi.k(t10, j10), vi.k(t11, j10))) {
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
                    z10 = wh.z(vi.k(t10, j10), vi.k(t11, j10));
                    break;
                case 50:
                    z10 = wh.z(vi.k(t10, j10), vi.k(t11, j10));
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
                    long D = D(i9) & 1048575;
                    if (vi.h(t10, D) == vi.h(t11, D) && wh.z(vi.k(t10, j10), vi.k(t11, j10))) {
                        continue;
                    }
                    return false;
                default:
            }
            if (!z10) {
                return false;
            }
        }
        if (this.f8797m.d(t10).equals(this.f8797m.d(t11))) {
            if (this.f8790f) {
                this.f8798n.a(t10);
                this.f8798n.a(t11);
                throw null;
            }
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.recaptcha.uh
    public final void f(T t10, T t11) {
        Objects.requireNonNull(t11);
        for (int i9 = 0; i9 < this.f8785a.length; i9 += 3) {
            int G = G(i9);
            long j10 = 1048575 & G;
            int i10 = this.f8785a[i9];
            switch (F(G)) {
                case 0:
                    if (q(t11, i9)) {
                        vi.t(t10, j10, vi.f(t11, j10));
                        k(t10, i9);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (q(t11, i9)) {
                        vi.u(t10, j10, vi.g(t11, j10));
                        k(t10, i9);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (q(t11, i9)) {
                        vi.w(t10, j10, vi.i(t11, j10));
                        k(t10, i9);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (q(t11, i9)) {
                        vi.w(t10, j10, vi.i(t11, j10));
                        k(t10, i9);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (q(t11, i9)) {
                        vi.v(t10, j10, vi.h(t11, j10));
                        k(t10, i9);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (q(t11, i9)) {
                        vi.w(t10, j10, vi.i(t11, j10));
                        k(t10, i9);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (q(t11, i9)) {
                        vi.v(t10, j10, vi.h(t11, j10));
                        k(t10, i9);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (q(t11, i9)) {
                        vi.r(t10, j10, vi.B(t11, j10));
                        k(t10, i9);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (q(t11, i9)) {
                        vi.x(t10, j10, vi.k(t11, j10));
                        k(t10, i9);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    N(t10, t11, i9);
                    break;
                case 10:
                    if (q(t11, i9)) {
                        vi.x(t10, j10, vi.k(t11, j10));
                        k(t10, i9);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (q(t11, i9)) {
                        vi.v(t10, j10, vi.h(t11, j10));
                        k(t10, i9);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (q(t11, i9)) {
                        vi.v(t10, j10, vi.h(t11, j10));
                        k(t10, i9);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (q(t11, i9)) {
                        vi.v(t10, j10, vi.h(t11, j10));
                        k(t10, i9);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (q(t11, i9)) {
                        vi.w(t10, j10, vi.i(t11, j10));
                        k(t10, i9);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (q(t11, i9)) {
                        vi.v(t10, j10, vi.h(t11, j10));
                        k(t10, i9);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (q(t11, i9)) {
                        vi.w(t10, j10, vi.i(t11, j10));
                        k(t10, i9);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    N(t10, t11, i9);
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
                    this.f8796l.c(t10, t11, j10);
                    break;
                case 50:
                    wh.B(this.f8800p, t10, t11, j10);
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
                    if (t(t11, i10, i9)) {
                        vi.x(t10, j10, vi.k(t11, j10));
                        l(t10, i10, i9);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    i(t10, t11, i9);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (t(t11, i10, i9)) {
                        vi.x(t10, j10, vi.k(t11, j10));
                        l(t10, i10, i9);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    i(t10, t11, i9);
                    break;
            }
        }
        wh.f(this.f8797m, t10, t11);
        if (this.f8790f) {
            wh.e(this.f8798n, t10, t11);
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.uh
    public final void g(T t10, bj bjVar) throws IOException {
        if (!this.f8792h) {
            m(t10, bjVar);
        } else if (!this.f8790f) {
            int length = this.f8785a.length;
            for (int i9 = 0; i9 < length; i9 += 3) {
                int G = G(i9);
                int i10 = this.f8785a[i9];
                switch (F(G)) {
                    case 0:
                        if (q(t10, i9)) {
                            bjVar.l(i10, vi.f(t10, G & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (q(t10, i9)) {
                            bjVar.s(i10, vi.g(t10, G & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (q(t10, i9)) {
                            bjVar.h(i10, vi.i(t10, G & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (q(t10, i9)) {
                            bjVar.K(i10, vi.i(t10, G & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (q(t10, i9)) {
                            bjVar.k(i10, vi.h(t10, G & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (q(t10, i9)) {
                            bjVar.v(i10, vi.i(t10, G & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (q(t10, i9)) {
                            bjVar.o(i10, vi.h(t10, G & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (q(t10, i9)) {
                            bjVar.g(i10, vi.B(t10, G & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (q(t10, i9)) {
                            v(i10, vi.k(t10, G & 1048575), bjVar);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if (q(t10, i9)) {
                            bjVar.z(i10, vi.k(t10, G & 1048575), J(i9));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (q(t10, i9)) {
                            bjVar.F(i10, (zzpy) vi.k(t10, G & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (q(t10, i9)) {
                            bjVar.C(i10, vi.h(t10, G & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (q(t10, i9)) {
                            bjVar.q(i10, vi.h(t10, G & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (q(t10, i9)) {
                            bjVar.y(i10, vi.h(t10, G & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (q(t10, i9)) {
                            bjVar.G(i10, vi.i(t10, G & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (q(t10, i9)) {
                            bjVar.A(i10, vi.h(t10, G & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (q(t10, i9)) {
                            bjVar.w(i10, vi.i(t10, G & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (q(t10, i9)) {
                            bjVar.a(i10, vi.k(t10, G & 1048575), J(i9));
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        wh.j(this.f8785a[i9], (List) vi.k(t10, G & 1048575), bjVar, false);
                        break;
                    case 19:
                        wh.n(this.f8785a[i9], (List) vi.k(t10, G & 1048575), bjVar, false);
                        break;
                    case 20:
                        wh.q(this.f8785a[i9], (List) vi.k(t10, G & 1048575), bjVar, false);
                        break;
                    case 21:
                        wh.y(this.f8785a[i9], (List) vi.k(t10, G & 1048575), bjVar, false);
                        break;
                    case 22:
                        wh.p(this.f8785a[i9], (List) vi.k(t10, G & 1048575), bjVar, false);
                        break;
                    case 23:
                        wh.m(this.f8785a[i9], (List) vi.k(t10, G & 1048575), bjVar, false);
                        break;
                    case 24:
                        wh.l(this.f8785a[i9], (List) vi.k(t10, G & 1048575), bjVar, false);
                        break;
                    case 25:
                        wh.h(this.f8785a[i9], (List) vi.k(t10, G & 1048575), bjVar, false);
                        break;
                    case 26:
                        wh.w(this.f8785a[i9], (List) vi.k(t10, G & 1048575), bjVar);
                        break;
                    case 27:
                        wh.r(this.f8785a[i9], (List) vi.k(t10, G & 1048575), bjVar, J(i9));
                        break;
                    case 28:
                        wh.i(this.f8785a[i9], (List) vi.k(t10, G & 1048575), bjVar);
                        break;
                    case 29:
                        wh.x(this.f8785a[i9], (List) vi.k(t10, G & 1048575), bjVar, false);
                        break;
                    case 30:
                        wh.k(this.f8785a[i9], (List) vi.k(t10, G & 1048575), bjVar, false);
                        break;
                    case 31:
                        wh.s(this.f8785a[i9], (List) vi.k(t10, G & 1048575), bjVar, false);
                        break;
                    case 32:
                        wh.t(this.f8785a[i9], (List) vi.k(t10, G & 1048575), bjVar, false);
                        break;
                    case 33:
                        wh.u(this.f8785a[i9], (List) vi.k(t10, G & 1048575), bjVar, false);
                        break;
                    case 34:
                        wh.v(this.f8785a[i9], (List) vi.k(t10, G & 1048575), bjVar, false);
                        break;
                    case 35:
                        wh.j(this.f8785a[i9], (List) vi.k(t10, G & 1048575), bjVar, true);
                        break;
                    case 36:
                        wh.n(this.f8785a[i9], (List) vi.k(t10, G & 1048575), bjVar, true);
                        break;
                    case 37:
                        wh.q(this.f8785a[i9], (List) vi.k(t10, G & 1048575), bjVar, true);
                        break;
                    case 38:
                        wh.y(this.f8785a[i9], (List) vi.k(t10, G & 1048575), bjVar, true);
                        break;
                    case 39:
                        wh.p(this.f8785a[i9], (List) vi.k(t10, G & 1048575), bjVar, true);
                        break;
                    case 40:
                        wh.m(this.f8785a[i9], (List) vi.k(t10, G & 1048575), bjVar, true);
                        break;
                    case 41:
                        wh.l(this.f8785a[i9], (List) vi.k(t10, G & 1048575), bjVar, true);
                        break;
                    case 42:
                        wh.h(this.f8785a[i9], (List) vi.k(t10, G & 1048575), bjVar, true);
                        break;
                    case 43:
                        wh.x(this.f8785a[i9], (List) vi.k(t10, G & 1048575), bjVar, true);
                        break;
                    case 44:
                        wh.k(this.f8785a[i9], (List) vi.k(t10, G & 1048575), bjVar, true);
                        break;
                    case 45:
                        wh.s(this.f8785a[i9], (List) vi.k(t10, G & 1048575), bjVar, true);
                        break;
                    case 46:
                        wh.t(this.f8785a[i9], (List) vi.k(t10, G & 1048575), bjVar, true);
                        break;
                    case 47:
                        wh.u(this.f8785a[i9], (List) vi.k(t10, G & 1048575), bjVar, true);
                        break;
                    case 48:
                        wh.v(this.f8785a[i9], (List) vi.k(t10, G & 1048575), bjVar, true);
                        break;
                    case 49:
                        wh.o(this.f8785a[i9], (List) vi.k(t10, G & 1048575), bjVar, J(i9));
                        break;
                    case 50:
                        n(bjVar, i10, vi.k(t10, G & 1048575), i9);
                        break;
                    case 51:
                        if (t(t10, i10, i9)) {
                            bjVar.l(i10, y(t10, G & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (t(t10, i10, i9)) {
                            bjVar.s(i10, z(t10, G & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (t(t10, i10, i9)) {
                            bjVar.h(i10, H(t10, G & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (t(t10, i10, i9)) {
                            bjVar.K(i10, H(t10, G & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (t(t10, i10, i9)) {
                            bjVar.k(i10, C(t10, G & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (t(t10, i10, i9)) {
                            bjVar.v(i10, H(t10, G & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (t(t10, i10, i9)) {
                            bjVar.o(i10, C(t10, G & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (t(t10, i10, i9)) {
                            bjVar.g(i10, u(t10, G & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (t(t10, i10, i9)) {
                            v(i10, vi.k(t10, G & 1048575), bjVar);
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        if (t(t10, i10, i9)) {
                            bjVar.z(i10, vi.k(t10, G & 1048575), J(i9));
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (t(t10, i10, i9)) {
                            bjVar.F(i10, (zzpy) vi.k(t10, G & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (t(t10, i10, i9)) {
                            bjVar.C(i10, C(t10, G & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (t(t10, i10, i9)) {
                            bjVar.q(i10, C(t10, G & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (t(t10, i10, i9)) {
                            bjVar.y(i10, C(t10, G & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (t(t10, i10, i9)) {
                            bjVar.G(i10, H(t10, G & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (t(t10, i10, i9)) {
                            bjVar.A(i10, C(t10, G & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (t(t10, i10, i9)) {
                            bjVar.w(i10, H(t10, G & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (t(t10, i10, i9)) {
                            bjVar.a(i10, vi.k(t10, G & 1048575), J(i9));
                            break;
                        } else {
                            break;
                        }
                }
            }
            ki<?, ?> kiVar = this.f8797m;
            kiVar.p(kiVar.d(t10), bjVar);
        } else {
            this.f8798n.a(t10);
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v2, types: [com.google.android.gms.internal.recaptcha.uh] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r1v8, types: [com.google.android.gms.internal.recaptcha.uh] */
    @Override // com.google.android.gms.internal.recaptcha.uh
    public final boolean h(T t10) {
        int i9;
        int i10;
        int i11 = 1048575;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            uh<T> uhVar = 0;
            if (i13 >= this.f8794j) {
                if (this.f8790f) {
                    this.f8798n.a(t10);
                    throw null;
                }
                return true;
            }
            int i14 = this.f8793i[i13];
            int i15 = this.f8785a[i14];
            int G = G(i14);
            int i16 = this.f8785a[i14 + 2];
            int i17 = i16 & 1048575;
            int i18 = 1 << (i16 >>> 20);
            if (i17 != i11) {
                if (i17 != 1048575) {
                    i12 = f8784r.getInt(t10, i17);
                }
                i10 = i12;
                i9 = i17;
            } else {
                i9 = i11;
                i10 = i12;
            }
            if ((268435456 & G) != 0 && !r(t10, i14, i9, i10, i18)) {
                return false;
            }
            int F = F(G);
            if (F != 9 && F != 17) {
                if (F != 27) {
                    if (F == 60 || F == 68) {
                        if (t(t10, i15, i14) && !s(t10, G, J(i14))) {
                            return false;
                        }
                    } else if (F != 49) {
                        if (F != 50) {
                            continue;
                        } else {
                            zzsh zzshVar = (zzsh) vi.k(t10, G & 1048575);
                            if (!zzshVar.isEmpty() && ((ah) L(i14)).c().f9244c.zzb() == zzui.MESSAGE) {
                                for (Object obj : zzshVar.values()) {
                                    if (uhVar == null) {
                                        uhVar = ph.a().b(obj.getClass());
                                    }
                                    boolean h10 = uhVar.h(obj);
                                    uhVar = uhVar;
                                    if (!h10) {
                                        return false;
                                    }
                                }
                                continue;
                            }
                        }
                    }
                }
                List list = (List) vi.k(t10, G & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    ?? J = J(i14);
                    for (int i19 = 0; i19 < list.size(); i19++) {
                        if (!J.h(list.get(i19))) {
                            return false;
                        }
                    }
                    continue;
                }
            } else if (r(t10, i14, i9, i10, i18) && !s(t10, G, J(i14))) {
                return false;
            }
            i13++;
            i11 = i9;
            i12 = i10;
        }
    }
}
