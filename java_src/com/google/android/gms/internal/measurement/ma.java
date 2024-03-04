package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class ma {

    /* renamed from: a  reason: collision with root package name */
    private static final Class f8196a;

    /* renamed from: b  reason: collision with root package name */
    private static final bb f8197b;

    /* renamed from: c  reason: collision with root package name */
    private static final bb f8198c;

    /* renamed from: d  reason: collision with root package name */
    private static final bb f8199d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        f8196a = cls;
        f8197b = C(false);
        f8198c = C(true);
        f8199d = new db();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int A(int i9, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (f8.a(i9 << 3) + 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void B(u9 u9Var, Object obj, Object obj2, long j10) {
        lb.x(obj, j10, u9.b(lb.k(obj, j10), lb.k(obj2, j10)));
    }

    private static bb C(boolean z10) {
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
            return (bb) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z10));
        } catch (Throwable unused2) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int D(List list) {
        return list.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int E(int i9, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int D = size * f8.D(i9);
        for (int i10 = 0; i10 < list.size(); i10++) {
            D += f8.x((zzjd) list.get(i10));
        }
        return D;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int F(int i9, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return G(list) + (size * f8.D(i9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int G(List list) {
        int i9;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof y8) {
            y8 y8Var = (y8) list;
            i9 = 0;
            while (i10 < size) {
                i9 += f8.z(y8Var.d(i10));
                i10++;
            }
        } else {
            i9 = 0;
            while (i10 < size) {
                i9 += f8.z(((Integer) list.get(i10)).intValue());
                i10++;
            }
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int H(int i9, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (f8.a(i9 << 3) + 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int I(List list) {
        return list.size() * 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int J(int i9, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (f8.a(i9 << 3) + 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int K(List list) {
        return list.size() * 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int L(int i9, List list, ka kaVar) {
        int size = list.size();
        if (size != 0) {
            int i10 = 0;
            for (int i11 = 0; i11 < size; i11++) {
                i10 += f8.y(i9, (z9) list.get(i11), kaVar);
            }
            return i10;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int M(int i9, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return N(list) + (size * f8.D(i9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int N(List list) {
        int i9;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof y8) {
            y8 y8Var = (y8) list;
            i9 = 0;
            while (i10 < size) {
                i9 += f8.z(y8Var.d(i10));
                i10++;
            }
        } else {
            i9 = 0;
            while (i10 < size) {
                i9 += f8.z(((Integer) list.get(i10)).intValue());
                i10++;
            }
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int O(int i9, List list, boolean z10) {
        if (list.size() == 0) {
            return 0;
        }
        return P(list) + (list.size() * f8.D(i9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int P(List list) {
        int i9;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof p9) {
            p9 p9Var = (p9) list;
            i9 = 0;
            while (i10 < size) {
                i9 += f8.b(p9Var.h(i10));
                i10++;
            }
        } else {
            i9 = 0;
            while (i10 < size) {
                i9 += f8.b(((Long) list.get(i10)).longValue());
                i10++;
            }
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int Q(int i9, Object obj, ka kaVar) {
        if (obj instanceof f9) {
            int a10 = f8.a(i9 << 3);
            int a11 = ((f9) obj).a();
            return a10 + f8.a(a11) + a11;
        }
        return f8.a(i9 << 3) + f8.B((z9) obj, kaVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int R(int i9, List list, ka kaVar) {
        int B;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int D = f8.D(i9) * size;
        for (int i10 = 0; i10 < size; i10++) {
            Object obj = list.get(i10);
            if (obj instanceof f9) {
                B = f8.A((f9) obj);
            } else {
                B = f8.B((z9) obj, kaVar);
            }
            D += B;
        }
        return D;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int S(int i9, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return T(list) + (size * f8.D(i9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int T(List list) {
        int i9;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof y8) {
            y8 y8Var = (y8) list;
            i9 = 0;
            while (i10 < size) {
                int d10 = y8Var.d(i10);
                i9 += f8.a((d10 >> 31) ^ (d10 + d10));
                i10++;
            }
        } else {
            i9 = 0;
            while (i10 < size) {
                int intValue = ((Integer) list.get(i10)).intValue();
                i9 += f8.a((intValue >> 31) ^ (intValue + intValue));
                i10++;
            }
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int U(int i9, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return V(list) + (size * f8.D(i9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int V(List list) {
        int i9;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof p9) {
            p9 p9Var = (p9) list;
            i9 = 0;
            while (i10 < size) {
                long h10 = p9Var.h(i10);
                i9 += f8.b((h10 >> 63) ^ (h10 + h10));
                i10++;
            }
        } else {
            i9 = 0;
            while (i10 < size) {
                long longValue = ((Long) list.get(i10)).longValue();
                i9 += f8.b((longValue >> 63) ^ (longValue + longValue));
                i10++;
            }
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int W(int i9, List list) {
        int C;
        int C2;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        int D = f8.D(i9) * size;
        if (list instanceof h9) {
            h9 h9Var = (h9) list;
            while (i10 < size) {
                Object o10 = h9Var.o(i10);
                if (o10 instanceof zzjd) {
                    C2 = f8.x((zzjd) o10);
                } else {
                    C2 = f8.C((String) o10);
                }
                D += C2;
                i10++;
            }
        } else {
            while (i10 < size) {
                Object obj = list.get(i10);
                if (obj instanceof zzjd) {
                    C = f8.x((zzjd) obj);
                } else {
                    C = f8.C((String) obj);
                }
                D += C;
                i10++;
            }
        }
        return D;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int X(int i9, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return Y(list) + (size * f8.D(i9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int Y(List list) {
        int i9;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof y8) {
            y8 y8Var = (y8) list;
            i9 = 0;
            while (i10 < size) {
                i9 += f8.a(y8Var.d(i10));
                i10++;
            }
        } else {
            i9 = 0;
            while (i10 < size) {
                i9 += f8.a(((Integer) list.get(i10)).intValue());
                i10++;
            }
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int Z(int i9, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return a0(list) + (size * f8.D(i9));
    }

    public static bb a() {
        return f8198c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a0(List list) {
        int i9;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof p9) {
            p9 p9Var = (p9) list;
            i9 = 0;
            while (i10 < size) {
                i9 += f8.b(p9Var.h(i10));
                i10++;
            }
        } else {
            i9 = 0;
            while (i10 < size) {
                i9 += f8.b(((Long) list.get(i10)).longValue());
                i10++;
            }
        }
        return i9;
    }

    public static bb b() {
        return f8199d;
    }

    public static bb b0() {
        return f8197b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object c(int i9, List list, a9 a9Var, Object obj, bb bbVar) {
        if (a9Var == null) {
            return obj;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i10 = 0;
            for (int i11 = 0; i11 < size; i11++) {
                int intValue = ((Integer) list.get(i11)).intValue();
                if (a9Var.h(intValue)) {
                    if (i11 != i10) {
                        list.set(i10, Integer.valueOf(intValue));
                    }
                    i10++;
                } else {
                    obj = d(i9, intValue, obj, bbVar);
                }
            }
            if (i10 != size) {
                list.subList(i10, size).clear();
                return obj;
            }
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                int intValue2 = ((Integer) it.next()).intValue();
                if (!a9Var.h(intValue2)) {
                    obj = d(i9, intValue2, obj, bbVar);
                    it.remove();
                }
            }
        }
        return obj;
    }

    static Object d(int i9, int i10, Object obj, bb bbVar) {
        if (obj == null) {
            obj = bbVar.e();
        }
        bbVar.f(obj, i9, i10);
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e(l8 l8Var, Object obj, Object obj2) {
        l8Var.a(obj2);
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void f(bb bbVar, Object obj, Object obj2) {
        bbVar.h(obj, bbVar.d(bbVar.c(obj), bbVar.c(obj2)));
    }

    public static void g(Class cls) {
        Class cls2;
        if (!x8.class.isAssignableFrom(cls) && (cls2 = f8196a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static void h(int i9, List list, sb sbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        sbVar.i(i9, list, z10);
    }

    public static void i(int i9, List list, sb sbVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        sbVar.f(i9, list);
    }

    public static void j(int i9, List list, sb sbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        sbVar.u(i9, list, z10);
    }

    public static void k(int i9, List list, sb sbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        sbVar.r(i9, list, z10);
    }

    public static void l(int i9, List list, sb sbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        sbVar.p(i9, list, z10);
    }

    public static void m(int i9, List list, sb sbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        sbVar.m(i9, list, z10);
    }

    public static void n(int i9, List list, sb sbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        sbVar.n(i9, list, z10);
    }

    public static void o(int i9, List list, sb sbVar, ka kaVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            ((g8) sbVar).A(i9, list.get(i10), kaVar);
        }
    }

    public static void p(int i9, List list, sb sbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        sbVar.j(i9, list, z10);
    }

    public static void q(int i9, List list, sb sbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        sbVar.t(i9, list, z10);
    }

    public static void r(int i9, List list, sb sbVar, ka kaVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            ((g8) sbVar).M(i9, list.get(i10), kaVar);
        }
    }

    public static void s(int i9, List list, sb sbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        sbVar.K(i9, list, z10);
    }

    public static void t(int i9, List list, sb sbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        sbVar.F(i9, list, z10);
    }

    public static void u(int i9, List list, sb sbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        sbVar.J(i9, list, z10);
    }

    public static void v(int i9, List list, sb sbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        sbVar.N(i9, list, z10);
    }

    public static void w(int i9, List list, sb sbVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        sbVar.I(i9, list);
    }

    public static void x(int i9, List list, sb sbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        sbVar.H(i9, list, z10);
    }

    public static void y(int i9, List list, sb sbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        sbVar.B(i9, list, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean z(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }
}
