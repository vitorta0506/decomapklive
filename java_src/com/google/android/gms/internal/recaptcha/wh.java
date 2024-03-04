package com.google.android.gms.internal.recaptcha;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class wh {

    /* renamed from: a  reason: collision with root package name */
    private static final Class<?> f9148a;

    /* renamed from: b  reason: collision with root package name */
    private static final ki<?, ?> f9149b;

    /* renamed from: c  reason: collision with root package name */
    private static final ki<?, ?> f9150c;

    /* renamed from: d  reason: collision with root package name */
    private static final ki<?, ?> f9151d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        f9148a = cls;
        f9149b = C(false);
        f9150c = C(true);
        f9151d = new mi();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int A(int i9, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (hf.l(i9 << 3) + 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> void B(bh bhVar, T t10, T t11, long j10) {
        vi.x(t10, j10, bh.b(vi.k(t10, j10), vi.k(t11, j10)));
    }

    private static ki<?, ?> C(boolean z10) {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.k3");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        try {
            return (ki) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z10));
        } catch (Throwable unused2) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int D(List<?> list) {
        return list.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int E(int i9, List<zzpy> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int k10 = size * hf.k(i9);
        for (int i10 = 0; i10 < list.size(); i10++) {
            k10 += hf.b(list.get(i10));
        }
        return k10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int F(int i9, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return G(list) + (size * hf.k(i9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int G(List<Integer> list) {
        int i9;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof eg) {
            eg egVar = (eg) list;
            i9 = 0;
            while (i10 < size) {
                i9 += hf.e(egVar.d(i10));
                i10++;
            }
        } else {
            i9 = 0;
            while (i10 < size) {
                i9 += hf.e(list.get(i10).intValue());
                i10++;
            }
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int H(int i9, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (hf.l(i9 << 3) + 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int I(List<?> list) {
        return list.size() * 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int J(int i9, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (hf.l(i9 << 3) + 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int K(List<?> list) {
        return list.size() * 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int L(int i9, List<gh> list, uh uhVar) {
        int size = list.size();
        if (size != 0) {
            int i10 = 0;
            for (int i11 = 0; i11 < size; i11++) {
                i10 += hf.c(i9, list.get(i11), uhVar);
            }
            return i10;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int M(int i9, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return N(list) + (size * hf.k(i9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int N(List<Integer> list) {
        int i9;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof eg) {
            eg egVar = (eg) list;
            i9 = 0;
            while (i10 < size) {
                i9 += hf.e(egVar.d(i10));
                i10++;
            }
        } else {
            i9 = 0;
            while (i10 < size) {
                i9 += hf.e(list.get(i10).intValue());
                i10++;
            }
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int O(int i9, List<Long> list, boolean z10) {
        if (list.size() == 0) {
            return 0;
        }
        return P(list) + (list.size() * hf.k(i9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int P(List<Long> list) {
        int i9;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof vg) {
            vg vgVar = (vg) list;
            i9 = 0;
            while (i10 < size) {
                i9 += hf.m(vgVar.d(i10));
                i10++;
            }
        } else {
            i9 = 0;
            while (i10 < size) {
                i9 += hf.m(list.get(i10).longValue());
                i10++;
            }
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int Q(int i9, Object obj, uh uhVar) {
        if (obj instanceof og) {
            int l10 = hf.l(i9 << 3);
            int a10 = ((og) obj).a();
            return l10 + hf.l(a10) + a10;
        }
        return hf.l(i9 << 3) + hf.h((gh) obj, uhVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int R(int i9, List<?> list, uh uhVar) {
        int h10;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int k10 = hf.k(i9) * size;
        for (int i10 = 0; i10 < size; i10++) {
            Object obj = list.get(i10);
            if (obj instanceof og) {
                h10 = hf.f((og) obj);
            } else {
                h10 = hf.h((gh) obj, uhVar);
            }
            k10 += h10;
        }
        return k10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int S(int i9, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return T(list) + (size * hf.k(i9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int T(List<Integer> list) {
        int i9;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof eg) {
            eg egVar = (eg) list;
            i9 = 0;
            while (i10 < size) {
                int d10 = egVar.d(i10);
                i9 += hf.l((d10 >> 31) ^ (d10 + d10));
                i10++;
            }
        } else {
            i9 = 0;
            while (i10 < size) {
                int intValue = list.get(i10).intValue();
                i9 += hf.l((intValue >> 31) ^ (intValue + intValue));
                i10++;
            }
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int U(int i9, List<Long> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return V(list) + (size * hf.k(i9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int V(List<Long> list) {
        int i9;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof vg) {
            vg vgVar = (vg) list;
            i9 = 0;
            while (i10 < size) {
                long d10 = vgVar.d(i10);
                i9 += hf.m((d10 >> 63) ^ (d10 + d10));
                i10++;
            }
        } else {
            i9 = 0;
            while (i10 < size) {
                long longValue = list.get(i10).longValue();
                i9 += hf.m((longValue >> 63) ^ (longValue + longValue));
                i10++;
            }
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int W(int i9, List<?> list) {
        int j10;
        int j11;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        int k10 = hf.k(i9) * size;
        if (list instanceof qg) {
            qg qgVar = (qg) list;
            while (i10 < size) {
                Object o10 = qgVar.o(i10);
                if (o10 instanceof zzpy) {
                    j11 = hf.b((zzpy) o10);
                } else {
                    j11 = hf.j((String) o10);
                }
                k10 += j11;
                i10++;
            }
        } else {
            while (i10 < size) {
                Object obj = list.get(i10);
                if (obj instanceof zzpy) {
                    j10 = hf.b((zzpy) obj);
                } else {
                    j10 = hf.j((String) obj);
                }
                k10 += j10;
                i10++;
            }
        }
        return k10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int X(int i9, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return Y(list) + (size * hf.k(i9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int Y(List<Integer> list) {
        int i9;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof eg) {
            eg egVar = (eg) list;
            i9 = 0;
            while (i10 < size) {
                i9 += hf.l(egVar.d(i10));
                i10++;
            }
        } else {
            i9 = 0;
            while (i10 < size) {
                i9 += hf.l(list.get(i10).intValue());
                i10++;
            }
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int Z(int i9, List<Long> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return a0(list) + (size * hf.k(i9));
    }

    public static ki<?, ?> a() {
        return f9150c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a0(List<Long> list) {
        int i9;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof vg) {
            vg vgVar = (vg) list;
            i9 = 0;
            while (i10 < size) {
                i9 += hf.m(vgVar.d(i10));
                i10++;
            }
        } else {
            i9 = 0;
            while (i10 < size) {
                i9 += hf.m(list.get(i10).longValue());
                i10++;
            }
        }
        return i9;
    }

    public static ki<?, ?> b() {
        return f9151d;
    }

    public static ki<?, ?> b0() {
        return f9149b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <UT, UB> UB c(int i9, List<Integer> list, hg hgVar, UB ub2, ki<UT, UB> kiVar) {
        if (hgVar == null) {
            return ub2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i10 = 0;
            for (int i11 = 0; i11 < size; i11++) {
                int intValue = list.get(i11).intValue();
                if (hgVar.h(intValue)) {
                    if (i11 != i10) {
                        list.set(i10, Integer.valueOf(intValue));
                    }
                    i10++;
                } else {
                    ub2 = (UB) d(i9, intValue, ub2, kiVar);
                }
            }
            if (i10 != size) {
                list.subList(i10, size).clear();
                return ub2;
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int intValue2 = it.next().intValue();
                if (!hgVar.h(intValue2)) {
                    ub2 = (UB) d(i9, intValue2, ub2, kiVar);
                    it.remove();
                }
            }
        }
        return ub2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <UT, UB> UB d(int i9, int i10, UB ub2, ki<UT, UB> kiVar) {
        if (ub2 == null) {
            ub2 = kiVar.f();
        }
        kiVar.l(ub2, i9, i10);
        return ub2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, FT extends tf<FT>> void e(qf<FT> qfVar, T t10, T t11) {
        qfVar.a(t11);
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, UT, UB> void f(ki<UT, UB> kiVar, T t10, T t11) {
        kiVar.o(t10, kiVar.e(kiVar.d(t10), kiVar.d(t11)));
    }

    public static void g(Class<?> cls) {
        Class<?> cls2;
        if (!dg.class.isAssignableFrom(cls) && (cls2 = f9148a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static void h(int i9, List<Boolean> list, bj bjVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bjVar.i(i9, list, z10);
    }

    public static void i(int i9, List<zzpy> list, bj bjVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bjVar.f(i9, list);
    }

    public static void j(int i9, List<Double> list, bj bjVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bjVar.u(i9, list, z10);
    }

    public static void k(int i9, List<Integer> list, bj bjVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bjVar.r(i9, list, z10);
    }

    public static void l(int i9, List<Integer> list, bj bjVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bjVar.p(i9, list, z10);
    }

    public static void m(int i9, List<Long> list, bj bjVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bjVar.m(i9, list, z10);
    }

    public static void n(int i9, List<Float> list, bj bjVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bjVar.n(i9, list, z10);
    }

    public static void o(int i9, List<?> list, bj bjVar, uh uhVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            ((Cif) bjVar).a(i9, list.get(i10), uhVar);
        }
    }

    public static void p(int i9, List<Integer> list, bj bjVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bjVar.j(i9, list, z10);
    }

    public static void q(int i9, List<Long> list, bj bjVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bjVar.t(i9, list, z10);
    }

    public static void r(int i9, List<?> list, bj bjVar, uh uhVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            ((Cif) bjVar).z(i9, list.get(i10), uhVar);
        }
    }

    public static void s(int i9, List<Integer> list, bj bjVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bjVar.D(i9, list, z10);
    }

    public static void t(int i9, List<Long> list, bj bjVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bjVar.d(i9, list, z10);
    }

    public static void u(int i9, List<Integer> list, bj bjVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bjVar.H(i9, list, z10);
    }

    public static void v(int i9, List<Long> list, bj bjVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bjVar.I(i9, list, z10);
    }

    public static void w(int i9, List<String> list, bj bjVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bjVar.J(i9, list);
    }

    public static void x(int i9, List<Integer> list, bj bjVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bjVar.E(i9, list, z10);
    }

    public static void y(int i9, List<Long> list, bj bjVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bjVar.x(i9, list, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean z(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }
}
