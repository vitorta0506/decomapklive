package com.google.protobuf;

import com.google.protobuf.o0;
import com.google.protobuf.u0;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class p2 {

    /* renamed from: a  reason: collision with root package name */
    private static final Class<?> f15174a = B();

    /* renamed from: b  reason: collision with root package name */
    private static final g3<?, ?> f15175b = D(false);

    /* renamed from: c  reason: collision with root package name */
    private static final g3<?, ?> f15176c = D(true);

    /* renamed from: d  reason: collision with root package name */
    private static final g3<?, ?> f15177d = new j3();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <UT, UB> UB A(int i9, List<Integer> list, u0.e eVar, UB ub2, g3<UT, UB> g3Var) {
        if (eVar == null) {
            return ub2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i10 = 0;
            for (int i11 = 0; i11 < size; i11++) {
                int intValue = list.get(i11).intValue();
                if (eVar.a(intValue)) {
                    if (i11 != i10) {
                        list.set(i10, Integer.valueOf(intValue));
                    }
                    i10++;
                } else {
                    ub2 = (UB) M(i9, intValue, ub2, g3Var);
                }
            }
            if (i10 != size) {
                list.subList(i10, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int intValue2 = it.next().intValue();
                if (!eVar.a(intValue2)) {
                    ub2 = (UB) M(i9, intValue2, ub2, g3Var);
                    it.remove();
                }
            }
        }
        return ub2;
    }

    private static Class<?> B() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessageV3");
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object C(Class<?> cls, String str) {
        try {
            java.lang.reflect.Field[] declaredFields = Class.forName(cls.getName() + "$" + N(str, true) + "DefaultEntryHolder").getDeclaredFields();
            if (declaredFields.length == 1) {
                return m3.H(declaredFields[0]);
            }
            throw new IllegalStateException("Unable to look up map field default entry holder class for " + str + " in " + cls.getName());
        } catch (Throwable th2) {
            throw new RuntimeException(th2);
        }
    }

    private static g3<?, ?> D(boolean z10) {
        try {
            Class<?> E = E();
            if (E == null) {
                return null;
            }
            return (g3) E.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z10));
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Class<?> E() {
        return k3.class;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, FT extends o0.c<FT>> void F(g0<FT> g0Var, T t10, T t11) {
        o0<FT> c10 = g0Var.c(t11);
        if (c10.z()) {
            return;
        }
        g0Var.d(t10).G(c10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> void G(h1 h1Var, T t10, T t11, long j10) {
        m3.X(t10, j10, h1Var.a(m3.G(t10, j10), m3.G(t11, j10)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, UT, UB> void H(g3<UT, UB> g3Var, T t10, T t11) {
        g3Var.p(t10, g3Var.k(g3Var.g(t10), g3Var.g(t11)));
    }

    public static g3<?, ?> I() {
        return f15175b;
    }

    public static g3<?, ?> J() {
        return f15176c;
    }

    public static void K(Class<?> cls) {
        Class<?> cls2;
        if (!GeneratedMessageLite.class.isAssignableFrom(cls) && (cls2 = f15174a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessageV3 or GeneratedMessageLite");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean L(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <UT, UB> UB M(int i9, int i10, UB ub2, g3<UT, UB> g3Var) {
        if (ub2 == null) {
            ub2 = g3Var.n();
        }
        g3Var.e(ub2, i9, i10);
        return ub2;
    }

    static String N(String str, boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        for (int i9 = 0; i9 < str.length(); i9++) {
            char charAt = str.charAt(i9);
            if ('a' > charAt || charAt > 'z') {
                if ('A' > charAt || charAt > 'Z') {
                    if ('0' <= charAt && charAt <= '9') {
                        sb2.append(charAt);
                    }
                    z10 = true;
                } else if (i9 == 0 && !z10) {
                    sb2.append((char) (charAt + ' '));
                } else {
                    sb2.append(charAt);
                }
            } else if (z10) {
                sb2.append((char) (charAt - ' '));
            } else {
                sb2.append(charAt);
            }
            z10 = false;
        }
        return sb2.toString();
    }

    public static g3<?, ?> O() {
        return f15177d;
    }

    public static void P(int i9, List<Boolean> list, Writer writer, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.I(i9, list, z10);
    }

    public static void Q(int i9, List<ByteString> list, Writer writer) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.S(i9, list);
    }

    public static void R(int i9, List<Double> list, Writer writer, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.Q(i9, list, z10);
    }

    public static void S(int i9, List<Integer> list, Writer writer, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.r(i9, list, z10);
    }

    public static void T(int i9, List<Integer> list, Writer writer, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.n(i9, list, z10);
    }

    public static void U(int i9, List<Long> list, Writer writer, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.G(i9, list, z10);
    }

    public static void V(int i9, List<Float> list, Writer writer, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.b(i9, list, z10);
    }

    public static void W(int i9, List<?> list, Writer writer) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.e(i9, list);
    }

    public static void X(int i9, List<?> list, Writer writer, n2 n2Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.s(i9, list, n2Var);
    }

    public static void Y(int i9, List<Integer> list, Writer writer, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.i(i9, list, z10);
    }

    public static void Z(int i9, List<Long> list, Writer writer, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.P(i9, list, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i9, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (z10) {
            return CodedOutputStream.X(i9) + CodedOutputStream.E(size);
        }
        return size * CodedOutputStream.e(i9, true);
    }

    public static void a0(int i9, List<?> list, Writer writer) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.A(i9, list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(List<?> list) {
        return list.size();
    }

    public static void b0(int i9, List<?> list, Writer writer, n2 n2Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.a(i9, list, n2Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(int i9, List<ByteString> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int X = size * CodedOutputStream.X(i9);
        for (int i10 = 0; i10 < list.size(); i10++) {
            X += CodedOutputStream.i(list.get(i10));
        }
        return X;
    }

    public static void c0(int i9, List<Integer> list, Writer writer, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.H(i9, list, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(int i9, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int e10 = e(list);
        if (z10) {
            return CodedOutputStream.X(i9) + CodedOutputStream.E(e10);
        }
        return e10 + (size * CodedOutputStream.X(i9));
    }

    public static void d0(int i9, List<Long> list, Writer writer, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.v(i9, list, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(List<Integer> list) {
        int i9;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof t0) {
            t0 t0Var = (t0) list;
            i9 = 0;
            while (i10 < size) {
                i9 += CodedOutputStream.m(t0Var.getInt(i10));
                i10++;
            }
        } else {
            i9 = 0;
            while (i10 < size) {
                i9 += CodedOutputStream.m(list.get(i10).intValue());
                i10++;
            }
        }
        return i9;
    }

    public static void e0(int i9, List<Integer> list, Writer writer, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.N(i9, list, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int f(int i9, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (z10) {
            return CodedOutputStream.X(i9) + CodedOutputStream.E(size * 4);
        }
        return size * CodedOutputStream.n(i9, 0);
    }

    public static void f0(int i9, List<Long> list, Writer writer, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.p(i9, list, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int g(List<?> list) {
        return list.size() * 4;
    }

    public static void g0(int i9, List<String> list, Writer writer) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.f(i9, list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(int i9, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (z10) {
            return CodedOutputStream.X(i9) + CodedOutputStream.E(size * 8);
        }
        return size * CodedOutputStream.p(i9, 0L);
    }

    public static void h0(int i9, List<Integer> list, Writer writer, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.o(i9, list, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int i(List<?> list) {
        return list.size() * 8;
    }

    public static void i0(int i9, List<Long> list, Writer writer, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.w(i9, list, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int j(int i9, List<o1> list, n2 n2Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            i10 += CodedOutputStream.u(i9, list.get(i11), n2Var);
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int k(int i9, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int l10 = l(list);
        if (z10) {
            return CodedOutputStream.X(i9) + CodedOutputStream.E(l10);
        }
        return l10 + (size * CodedOutputStream.X(i9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int l(List<Integer> list) {
        int i9;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof t0) {
            t0 t0Var = (t0) list;
            i9 = 0;
            while (i10 < size) {
                i9 += CodedOutputStream.y(t0Var.getInt(i10));
                i10++;
            }
        } else {
            i9 = 0;
            while (i10 < size) {
                i9 += CodedOutputStream.y(list.get(i10).intValue());
                i10++;
            }
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int m(int i9, List<Long> list, boolean z10) {
        if (list.size() == 0) {
            return 0;
        }
        int n9 = n(list);
        if (z10) {
            return CodedOutputStream.X(i9) + CodedOutputStream.E(n9);
        }
        return n9 + (list.size() * CodedOutputStream.X(i9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int n(List<Long> list) {
        int i9;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof c1) {
            c1 c1Var = (c1) list;
            i9 = 0;
            while (i10 < size) {
                i9 += CodedOutputStream.A(c1Var.getLong(i10));
                i10++;
            }
        } else {
            i9 = 0;
            while (i10 < size) {
                i9 += CodedOutputStream.A(list.get(i10).longValue());
                i10++;
            }
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int o(int i9, Object obj, n2 n2Var) {
        if (obj instanceof x0) {
            return CodedOutputStream.C(i9, (x0) obj);
        }
        return CodedOutputStream.H(i9, (o1) obj, n2Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int p(int i9, List<?> list, n2 n2Var) {
        int J;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int X = CodedOutputStream.X(i9) * size;
        for (int i10 = 0; i10 < size; i10++) {
            Object obj = list.get(i10);
            if (obj instanceof x0) {
                J = CodedOutputStream.D((x0) obj);
            } else {
                J = CodedOutputStream.J((o1) obj, n2Var);
            }
            X += J;
        }
        return X;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int q(int i9, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int r10 = r(list);
        if (z10) {
            return CodedOutputStream.X(i9) + CodedOutputStream.E(r10);
        }
        return r10 + (size * CodedOutputStream.X(i9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int r(List<Integer> list) {
        int i9;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof t0) {
            t0 t0Var = (t0) list;
            i9 = 0;
            while (i10 < size) {
                i9 += CodedOutputStream.S(t0Var.getInt(i10));
                i10++;
            }
        } else {
            i9 = 0;
            while (i10 < size) {
                i9 += CodedOutputStream.S(list.get(i10).intValue());
                i10++;
            }
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int s(int i9, List<Long> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int t10 = t(list);
        if (z10) {
            return CodedOutputStream.X(i9) + CodedOutputStream.E(t10);
        }
        return t10 + (size * CodedOutputStream.X(i9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int t(List<Long> list) {
        int i9;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof c1) {
            c1 c1Var = (c1) list;
            i9 = 0;
            while (i10 < size) {
                i9 += CodedOutputStream.U(c1Var.getLong(i10));
                i10++;
            }
        } else {
            i9 = 0;
            while (i10 < size) {
                i9 += CodedOutputStream.U(list.get(i10).longValue());
                i10++;
            }
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int u(int i9, List<?> list) {
        int W;
        int W2;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        int X = CodedOutputStream.X(i9) * size;
        if (list instanceof z0) {
            z0 z0Var = (z0) list;
            while (i10 < size) {
                Object c12 = z0Var.c1(i10);
                if (c12 instanceof ByteString) {
                    W2 = CodedOutputStream.i((ByteString) c12);
                } else {
                    W2 = CodedOutputStream.W((String) c12);
                }
                X += W2;
                i10++;
            }
        } else {
            while (i10 < size) {
                Object obj = list.get(i10);
                if (obj instanceof ByteString) {
                    W = CodedOutputStream.i((ByteString) obj);
                } else {
                    W = CodedOutputStream.W((String) obj);
                }
                X += W;
                i10++;
            }
        }
        return X;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int v(int i9, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int w6 = w(list);
        if (z10) {
            return CodedOutputStream.X(i9) + CodedOutputStream.E(w6);
        }
        return w6 + (size * CodedOutputStream.X(i9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int w(List<Integer> list) {
        int i9;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof t0) {
            t0 t0Var = (t0) list;
            i9 = 0;
            while (i10 < size) {
                i9 += CodedOutputStream.Z(t0Var.getInt(i10));
                i10++;
            }
        } else {
            i9 = 0;
            while (i10 < size) {
                i9 += CodedOutputStream.Z(list.get(i10).intValue());
                i10++;
            }
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int x(int i9, List<Long> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int y10 = y(list);
        if (z10) {
            return CodedOutputStream.X(i9) + CodedOutputStream.E(y10);
        }
        return y10 + (size * CodedOutputStream.X(i9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int y(List<Long> list) {
        int i9;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof c1) {
            c1 c1Var = (c1) list;
            i9 = 0;
            while (i10 < size) {
                i9 += CodedOutputStream.b0(c1Var.getLong(i10));
                i10++;
            }
        } else {
            i9 = 0;
            while (i10 < size) {
                i9 += CodedOutputStream.b0(list.get(i10).longValue());
                i10++;
            }
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <UT, UB> UB z(int i9, List<Integer> list, u0.d<?> dVar, UB ub2, g3<UT, UB> g3Var) {
        if (dVar == null) {
            return ub2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i10 = 0;
            for (int i11 = 0; i11 < size; i11++) {
                int intValue = list.get(i11).intValue();
                if (dVar.a(intValue) != null) {
                    if (i11 != i10) {
                        list.set(i10, Integer.valueOf(intValue));
                    }
                    i10++;
                } else {
                    ub2 = (UB) M(i9, intValue, ub2, g3Var);
                }
            }
            if (i10 != size) {
                list.subList(i10, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int intValue2 = it.next().intValue();
                if (dVar.a(intValue2) == null) {
                    ub2 = (UB) M(i9, intValue2, ub2, g3Var);
                    it.remove();
                }
            }
        }
        return ub2;
    }
}
