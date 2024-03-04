package com.google.protobuf;

import com.google.protobuf.ByteString;
import com.google.protobuf.WireFormat;
import com.google.protobuf.Writer;
import com.google.protobuf.f1;
import com.google.protobuf.j;
import com.google.protobuf.u0;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class s1<T> implements n2<T> {

    /* renamed from: r  reason: collision with root package name */
    private static final int[] f15250r = new int[0];

    /* renamed from: s  reason: collision with root package name */
    private static final Unsafe f15251s = m3.I();

    /* renamed from: a  reason: collision with root package name */
    private final int[] f15252a;

    /* renamed from: b  reason: collision with root package name */
    private final Object[] f15253b;

    /* renamed from: c  reason: collision with root package name */
    private final int f15254c;

    /* renamed from: d  reason: collision with root package name */
    private final int f15255d;

    /* renamed from: e  reason: collision with root package name */
    private final o1 f15256e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f15257f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f15258g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f15259h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f15260i;

    /* renamed from: j  reason: collision with root package name */
    private final int[] f15261j;

    /* renamed from: k  reason: collision with root package name */
    private final int f15262k;

    /* renamed from: l  reason: collision with root package name */
    private final int f15263l;

    /* renamed from: m  reason: collision with root package name */
    private final x1 f15264m;

    /* renamed from: n  reason: collision with root package name */
    private final a1 f15265n;

    /* renamed from: o  reason: collision with root package name */
    private final g3<?, ?> f15266o;

    /* renamed from: p  reason: collision with root package name */
    private final g0<?> f15267p;

    /* renamed from: q  reason: collision with root package name */
    private final h1 f15268q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15269a;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f15269a = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15269a[WireFormat.FieldType.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15269a[WireFormat.FieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15269a[WireFormat.FieldType.FIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15269a[WireFormat.FieldType.SFIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15269a[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f15269a[WireFormat.FieldType.SFIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f15269a[WireFormat.FieldType.FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f15269a[WireFormat.FieldType.ENUM.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f15269a[WireFormat.FieldType.INT32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f15269a[WireFormat.FieldType.UINT32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f15269a[WireFormat.FieldType.INT64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f15269a[WireFormat.FieldType.UINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f15269a[WireFormat.FieldType.MESSAGE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f15269a[WireFormat.FieldType.SINT32.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f15269a[WireFormat.FieldType.SINT64.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f15269a[WireFormat.FieldType.STRING.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    private s1(int[] iArr, Object[] objArr, int i9, int i10, o1 o1Var, boolean z10, boolean z11, int[] iArr2, int i11, int i12, x1 x1Var, a1 a1Var, g3<?, ?> g3Var, g0<?> g0Var, h1 h1Var) {
        this.f15252a = iArr;
        this.f15253b = objArr;
        this.f15254c = i9;
        this.f15255d = i10;
        this.f15258g = o1Var instanceof GeneratedMessageLite;
        this.f15259h = z10;
        this.f15257f = g0Var != null && g0Var.e(o1Var);
        this.f15260i = z11;
        this.f15261j = iArr2;
        this.f15262k = i11;
        this.f15263l = i12;
        this.f15264m = x1Var;
        this.f15265n = a1Var;
        this.f15266o = g3Var;
        this.f15267p = g0Var;
        this.f15256e = o1Var;
        this.f15268q = h1Var;
    }

    private static <T> int A(T t10, long j10) {
        return m3.C(t10, j10);
    }

    private static boolean B(int i9) {
        return (i9 & 536870912) != 0;
    }

    private boolean C(T t10, int i9) {
        int i02 = i0(i9);
        long j10 = 1048575 & i02;
        if (j10 != 1048575) {
            return (m3.C(t10, j10) & (1 << (i02 >>> 20))) != 0;
        }
        int t02 = t0(i9);
        long V = V(t02);
        switch (s0(t02)) {
            case 0:
                return Double.doubleToRawLongBits(m3.A(t10, V)) != 0;
            case 1:
                return Float.floatToRawIntBits(m3.B(t10, V)) != 0;
            case 2:
                return m3.E(t10, V) != 0;
            case 3:
                return m3.E(t10, V) != 0;
            case 4:
                return m3.C(t10, V) != 0;
            case 5:
                return m3.E(t10, V) != 0;
            case 6:
                return m3.C(t10, V) != 0;
            case 7:
                return m3.t(t10, V);
            case 8:
                Object G = m3.G(t10, V);
                if (G instanceof String) {
                    return !((String) G).isEmpty();
                }
                if (G instanceof ByteString) {
                    return !ByteString.EMPTY.equals(G);
                }
                throw new IllegalArgumentException();
            case 9:
                return m3.G(t10, V) != null;
            case 10:
                return !ByteString.EMPTY.equals(m3.G(t10, V));
            case 11:
                return m3.C(t10, V) != 0;
            case 12:
                return m3.C(t10, V) != 0;
            case 13:
                return m3.C(t10, V) != 0;
            case 14:
                return m3.E(t10, V) != 0;
            case 15:
                return m3.C(t10, V) != 0;
            case 16:
                return m3.E(t10, V) != 0;
            case 17:
                return m3.G(t10, V) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private boolean D(T t10, int i9, int i10, int i11, int i12) {
        return i10 == 1048575 ? C(t10, i9) : (i11 & i12) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean E(Object obj, int i9, n2 n2Var) {
        return n2Var.f(m3.G(obj, V(i9)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <N> boolean F(Object obj, int i9, int i10) {
        List list = (List) m3.G(obj, V(i9));
        if (list.isEmpty()) {
            return true;
        }
        n2 v10 = v(i10);
        for (int i11 = 0; i11 < list.size(); i11++) {
            if (!v10.f(list.get(i11))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v8, types: [com.google.protobuf.n2] */
    private boolean G(T t10, int i9, int i10) {
        Map<?, ?> e10 = this.f15268q.e(m3.G(t10, V(i9)));
        if (e10.isEmpty()) {
            return true;
        }
        if (this.f15268q.b(u(i10)).f14959c.getJavaType() != WireFormat.JavaType.MESSAGE) {
            return true;
        }
        n2<T> n2Var = 0;
        for (Object obj : e10.values()) {
            if (n2Var == null) {
                n2Var = g2.a().d(obj.getClass());
            }
            boolean f10 = n2Var.f(obj);
            n2Var = n2Var;
            if (!f10) {
                return false;
            }
        }
        return true;
    }

    private boolean H(T t10, T t11, int i9) {
        long i02 = i0(i9) & 1048575;
        return m3.C(t10, i02) == m3.C(t11, i02);
    }

    private boolean I(T t10, int i9, int i10) {
        return m3.C(t10, (long) (i0(i10) & 1048575)) == i9;
    }

    private static boolean J(int i9) {
        return (i9 & 268435456) != 0;
    }

    private static List<?> K(Object obj, long j10) {
        return (List) m3.G(obj, j10);
    }

    private static <T> long L(T t10, long j10) {
        return m3.E(t10, j10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0077, code lost:
        r0 = r16.f15262k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x007b, code lost:
        if (r0 >= r16.f15263l) goto L328;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007d, code lost:
        r13 = q(r19, r16.f15261j[r0], r13, r17);
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:363:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0088, code lost:
        if (r13 == null) goto L332;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x008a, code lost:
        r17.o(r19, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x008d, code lost:
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private <UT, UB, ET extends com.google.protobuf.o0.c<ET>> void M(com.google.protobuf.g3<UT, UB> r17, com.google.protobuf.g0<ET> r18, T r19, com.google.protobuf.k2 r20, com.google.protobuf.f0 r21) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1720
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.s1.M(com.google.protobuf.g3, com.google.protobuf.g0, java.lang.Object, com.google.protobuf.k2, com.google.protobuf.f0):void");
    }

    private final <K, V> void N(Object obj, int i9, Object obj2, f0 f0Var, k2 k2Var) throws IOException {
        long V = V(t0(i9));
        Object G = m3.G(obj, V);
        if (G == null) {
            G = this.f15268q.d(obj2);
            m3.X(obj, V, G);
        } else if (this.f15268q.h(G)) {
            Object d10 = this.f15268q.d(obj2);
            this.f15268q.a(d10, G);
            m3.X(obj, V, d10);
            G = d10;
        }
        k2Var.p(this.f15268q.c(G), this.f15268q.b(obj2), f0Var);
    }

    private void O(T t10, T t11, int i9) {
        long V = V(t0(i9));
        if (C(t11, i9)) {
            Object G = m3.G(t10, V);
            Object G2 = m3.G(t11, V);
            if (G != null && G2 != null) {
                m3.X(t10, V, u0.k(G, G2));
                o0(t10, i9);
            } else if (G2 != null) {
                m3.X(t10, V, G2);
                o0(t10, i9);
            }
        }
    }

    private void P(T t10, T t11, int i9) {
        int t02 = t0(i9);
        int U = U(i9);
        long V = V(t02);
        if (I(t11, U, i9)) {
            Object G = I(t10, U, i9) ? m3.G(t10, V) : null;
            Object G2 = m3.G(t11, V);
            if (G != null && G2 != null) {
                m3.X(t10, V, u0.k(G, G2));
                p0(t10, U, i9);
            } else if (G2 != null) {
                m3.X(t10, V, G2);
                p0(t10, U, i9);
            }
        }
    }

    private void Q(T t10, T t11, int i9) {
        int t02 = t0(i9);
        long V = V(t02);
        int U = U(i9);
        switch (s0(t02)) {
            case 0:
                if (C(t11, i9)) {
                    m3.T(t10, V, m3.A(t11, V));
                    o0(t10, i9);
                    return;
                }
                return;
            case 1:
                if (C(t11, i9)) {
                    m3.U(t10, V, m3.B(t11, V));
                    o0(t10, i9);
                    return;
                }
                return;
            case 2:
                if (C(t11, i9)) {
                    m3.W(t10, V, m3.E(t11, V));
                    o0(t10, i9);
                    return;
                }
                return;
            case 3:
                if (C(t11, i9)) {
                    m3.W(t10, V, m3.E(t11, V));
                    o0(t10, i9);
                    return;
                }
                return;
            case 4:
                if (C(t11, i9)) {
                    m3.V(t10, V, m3.C(t11, V));
                    o0(t10, i9);
                    return;
                }
                return;
            case 5:
                if (C(t11, i9)) {
                    m3.W(t10, V, m3.E(t11, V));
                    o0(t10, i9);
                    return;
                }
                return;
            case 6:
                if (C(t11, i9)) {
                    m3.V(t10, V, m3.C(t11, V));
                    o0(t10, i9);
                    return;
                }
                return;
            case 7:
                if (C(t11, i9)) {
                    m3.N(t10, V, m3.t(t11, V));
                    o0(t10, i9);
                    return;
                }
                return;
            case 8:
                if (C(t11, i9)) {
                    m3.X(t10, V, m3.G(t11, V));
                    o0(t10, i9);
                    return;
                }
                return;
            case 9:
                O(t10, t11, i9);
                return;
            case 10:
                if (C(t11, i9)) {
                    m3.X(t10, V, m3.G(t11, V));
                    o0(t10, i9);
                    return;
                }
                return;
            case 11:
                if (C(t11, i9)) {
                    m3.V(t10, V, m3.C(t11, V));
                    o0(t10, i9);
                    return;
                }
                return;
            case 12:
                if (C(t11, i9)) {
                    m3.V(t10, V, m3.C(t11, V));
                    o0(t10, i9);
                    return;
                }
                return;
            case 13:
                if (C(t11, i9)) {
                    m3.V(t10, V, m3.C(t11, V));
                    o0(t10, i9);
                    return;
                }
                return;
            case 14:
                if (C(t11, i9)) {
                    m3.W(t10, V, m3.E(t11, V));
                    o0(t10, i9);
                    return;
                }
                return;
            case 15:
                if (C(t11, i9)) {
                    m3.V(t10, V, m3.C(t11, V));
                    o0(t10, i9);
                    return;
                }
                return;
            case 16:
                if (C(t11, i9)) {
                    m3.W(t10, V, m3.E(t11, V));
                    o0(t10, i9);
                    return;
                }
                return;
            case 17:
                O(t10, t11, i9);
                return;
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
                this.f15265n.d(t10, t11, V);
                return;
            case 50:
                p2.G(this.f15268q, t10, t11, V);
                return;
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
                if (I(t11, U, i9)) {
                    m3.X(t10, V, m3.G(t11, V));
                    p0(t10, U, i9);
                    return;
                }
                return;
            case 60:
                P(t10, t11, i9);
                return;
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
                if (I(t11, U, i9)) {
                    m3.X(t10, V, m3.G(t11, V));
                    p0(t10, U, i9);
                    return;
                }
                return;
            case 68:
                P(t10, t11, i9);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> s1<T> R(Class<T> cls, m1 m1Var, x1 x1Var, a1 a1Var, g3<?, ?> g3Var, g0<?> g0Var, h1 h1Var) {
        if (m1Var instanceof j2) {
            return T((j2) m1Var, x1Var, a1Var, g3Var, g0Var, h1Var);
        }
        return S((w2) m1Var, x1Var, a1Var, g3Var, g0Var, h1Var);
    }

    static <T> s1<T> S(w2 w2Var, x1 x1Var, a1 a1Var, g3<?, ?> g3Var, g0<?> g0Var, h1 h1Var) {
        int p10;
        int p11;
        int i9;
        boolean z10 = w2Var.c() == ProtoSyntax.PROTO3;
        k0[] e10 = w2Var.e();
        if (e10.length == 0) {
            p10 = 0;
            p11 = 0;
        } else {
            p10 = e10[0].p();
            p11 = e10[e10.length - 1].p();
        }
        int length = e10.length;
        int[] iArr = new int[length * 3];
        Object[] objArr = new Object[length * 2];
        int i10 = 0;
        int i11 = 0;
        for (k0 k0Var : e10) {
            if (k0Var.v() == FieldType.MAP) {
                i10++;
            } else if (k0Var.v().id() >= 18 && k0Var.v().id() <= 49) {
                i11++;
            }
        }
        int[] iArr2 = i10 > 0 ? new int[i10] : null;
        int[] iArr3 = i11 > 0 ? new int[i11] : null;
        int[] d10 = w2Var.d();
        if (d10 == null) {
            d10 = f15250r;
        }
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        while (i12 < e10.length) {
            k0 k0Var2 = e10[i12];
            int p12 = k0Var2.p();
            r0(k0Var2, iArr, i13, objArr);
            if (i14 < d10.length && d10[i14] == p12) {
                d10[i14] = i13;
                i14++;
            }
            if (k0Var2.v() == FieldType.MAP) {
                iArr2[i15] = i13;
                i15++;
            } else if (k0Var2.v().id() >= 18 && k0Var2.v().id() <= 49) {
                i9 = i13;
                iArr3[i16] = (int) m3.M(k0Var2.o());
                i16++;
                i12++;
                i13 = i9 + 3;
            }
            i9 = i13;
            i12++;
            i13 = i9 + 3;
        }
        if (iArr2 == null) {
            iArr2 = f15250r;
        }
        if (iArr3 == null) {
            iArr3 = f15250r;
        }
        int[] iArr4 = new int[d10.length + iArr2.length + iArr3.length];
        System.arraycopy(d10, 0, iArr4, 0, d10.length);
        System.arraycopy(iArr2, 0, iArr4, d10.length, iArr2.length);
        System.arraycopy(iArr3, 0, iArr4, d10.length + iArr2.length, iArr3.length);
        return new s1<>(iArr, objArr, p10, p11, w2Var.b(), z10, true, iArr4, d10.length, d10.length + iArr2.length, x1Var, a1Var, g3Var, g0Var, h1Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:122:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x031a  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x031f  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x037c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static <T> com.google.protobuf.s1<T> T(com.google.protobuf.j2 r34, com.google.protobuf.x1 r35, com.google.protobuf.a1 r36, com.google.protobuf.g3<?, ?> r37, com.google.protobuf.g0<?> r38, com.google.protobuf.h1 r39) {
        /*
            Method dump skipped, instructions count: 999
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.s1.T(com.google.protobuf.j2, com.google.protobuf.x1, com.google.protobuf.a1, com.google.protobuf.g3, com.google.protobuf.g0, com.google.protobuf.h1):com.google.protobuf.s1");
    }

    private int U(int i9) {
        return this.f15252a[i9];
    }

    private static long V(int i9) {
        return i9 & 1048575;
    }

    private static <T> boolean W(T t10, long j10) {
        return ((Boolean) m3.G(t10, j10)).booleanValue();
    }

    private static <T> double X(T t10, long j10) {
        return ((Double) m3.G(t10, j10)).doubleValue();
    }

    private static <T> float Y(T t10, long j10) {
        return ((Float) m3.G(t10, j10)).floatValue();
    }

    private static <T> int Z(T t10, long j10) {
        return ((Integer) m3.G(t10, j10)).intValue();
    }

    private static <T> long a0(T t10, long j10) {
        return ((Long) m3.G(t10, j10)).longValue();
    }

    private <K, V> int b0(T t10, byte[] bArr, int i9, int i10, int i11, long j10, j.b bVar) throws IOException {
        Unsafe unsafe = f15251s;
        Object u10 = u(i11);
        Object object = unsafe.getObject(t10, j10);
        if (this.f15268q.h(object)) {
            Object d10 = this.f15268q.d(u10);
            this.f15268q.a(d10, object);
            unsafe.putObject(t10, j10, d10);
            object = d10;
        }
        return m(bArr, i9, i10, this.f15268q.b(u10), this.f15268q.c(object), bVar);
    }

    private int c0(T t10, byte[] bArr, int i9, int i10, int i11, int i12, int i13, int i14, int i15, long j10, int i16, j.b bVar) throws IOException {
        Unsafe unsafe = f15251s;
        long j11 = this.f15252a[i16 + 2] & 1048575;
        switch (i15) {
            case 51:
                if (i13 == 1) {
                    unsafe.putObject(t10, j10, Double.valueOf(j.d(bArr, i9)));
                    int i17 = i9 + 8;
                    unsafe.putInt(t10, j11, i12);
                    return i17;
                }
                break;
            case 52:
                if (i13 == 5) {
                    unsafe.putObject(t10, j10, Float.valueOf(j.l(bArr, i9)));
                    int i18 = i9 + 4;
                    unsafe.putInt(t10, j11, i12);
                    return i18;
                }
                break;
            case 53:
            case 54:
                if (i13 == 0) {
                    int L = j.L(bArr, i9, bVar);
                    unsafe.putObject(t10, j10, Long.valueOf(bVar.f15015b));
                    unsafe.putInt(t10, j11, i12);
                    return L;
                }
                break;
            case 55:
            case 62:
                if (i13 == 0) {
                    int I = j.I(bArr, i9, bVar);
                    unsafe.putObject(t10, j10, Integer.valueOf(bVar.f15014a));
                    unsafe.putInt(t10, j11, i12);
                    return I;
                }
                break;
            case 56:
            case 65:
                if (i13 == 1) {
                    unsafe.putObject(t10, j10, Long.valueOf(j.j(bArr, i9)));
                    int i19 = i9 + 8;
                    unsafe.putInt(t10, j11, i12);
                    return i19;
                }
                break;
            case 57:
            case 64:
                if (i13 == 5) {
                    unsafe.putObject(t10, j10, Integer.valueOf(j.h(bArr, i9)));
                    int i20 = i9 + 4;
                    unsafe.putInt(t10, j11, i12);
                    return i20;
                }
                break;
            case 58:
                if (i13 == 0) {
                    int L2 = j.L(bArr, i9, bVar);
                    unsafe.putObject(t10, j10, Boolean.valueOf(bVar.f15015b != 0));
                    unsafe.putInt(t10, j11, i12);
                    return L2;
                }
                break;
            case 59:
                if (i13 == 2) {
                    int I2 = j.I(bArr, i9, bVar);
                    int i21 = bVar.f15014a;
                    if (i21 == 0) {
                        unsafe.putObject(t10, j10, "");
                    } else if ((i14 & 536870912) != 0 && !n3.t(bArr, I2, I2 + i21)) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    } else {
                        unsafe.putObject(t10, j10, new String(bArr, I2, i21, u0.f15284b));
                        I2 += i21;
                    }
                    unsafe.putInt(t10, j11, i12);
                    return I2;
                }
                break;
            case 60:
                if (i13 == 2) {
                    int p10 = j.p(v(i16), bArr, i9, i10, bVar);
                    Object object = unsafe.getInt(t10, j11) == i12 ? unsafe.getObject(t10, j10) : null;
                    if (object == null) {
                        unsafe.putObject(t10, j10, bVar.f15016c);
                    } else {
                        unsafe.putObject(t10, j10, u0.k(object, bVar.f15016c));
                    }
                    unsafe.putInt(t10, j11, i12);
                    return p10;
                }
                break;
            case 61:
                if (i13 == 2) {
                    int b10 = j.b(bArr, i9, bVar);
                    unsafe.putObject(t10, j10, bVar.f15016c);
                    unsafe.putInt(t10, j11, i12);
                    return b10;
                }
                break;
            case 63:
                if (i13 == 0) {
                    int I3 = j.I(bArr, i9, bVar);
                    int i22 = bVar.f15014a;
                    u0.e t11 = t(i16);
                    if (t11 != null && !t11.a(i22)) {
                        w(t10).m(i11, Long.valueOf(i22));
                    } else {
                        unsafe.putObject(t10, j10, Integer.valueOf(i22));
                        unsafe.putInt(t10, j11, i12);
                    }
                    return I3;
                }
                break;
            case 66:
                if (i13 == 0) {
                    int I4 = j.I(bArr, i9, bVar);
                    unsafe.putObject(t10, j10, Integer.valueOf(p.c(bVar.f15014a)));
                    unsafe.putInt(t10, j11, i12);
                    return I4;
                }
                break;
            case 67:
                if (i13 == 0) {
                    int L3 = j.L(bArr, i9, bVar);
                    unsafe.putObject(t10, j10, Long.valueOf(p.d(bVar.f15015b)));
                    unsafe.putInt(t10, j11, i12);
                    return L3;
                }
                break;
            case 68:
                if (i13 == 3) {
                    int n9 = j.n(v(i16), bArr, i9, i10, (i11 & (-8)) | 4, bVar);
                    Object object2 = unsafe.getInt(t10, j11) == i12 ? unsafe.getObject(t10, j10) : null;
                    if (object2 == null) {
                        unsafe.putObject(t10, j10, bVar.f15016c);
                    } else {
                        unsafe.putObject(t10, j10, u0.k(object2, bVar.f15016c));
                    }
                    unsafe.putInt(t10, j11, i12);
                    return n9;
                }
                break;
        }
        return i9;
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x0296, code lost:
        if (r0 != r15) goto L151;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0298, code lost:
        r15 = r30;
        r14 = r31;
        r12 = r32;
        r13 = r34;
        r11 = r35;
        r1 = r19;
        r2 = r20;
        r6 = r24;
        r7 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x02dd, code lost:
        if (r0 != r15) goto L151;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0300, code lost:
        if (r0 != r15) goto L151;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0303, code lost:
        r2 = r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int e0(T r31, byte[] r32, int r33, int r34, com.google.protobuf.j.b r35) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 876
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.s1.e0(java.lang.Object, byte[], int, int, com.google.protobuf.j$b):int");
    }

    private int f0(T t10, byte[] bArr, int i9, int i10, int i11, int i12, int i13, int i14, long j10, int i15, long j11, j.b bVar) throws IOException {
        int J;
        Unsafe unsafe = f15251s;
        u0.j jVar = (u0.j) unsafe.getObject(t10, j11);
        if (!jVar.r0()) {
            int size = jVar.size();
            jVar = jVar.b(size == 0 ? 10 : size * 2);
            unsafe.putObject(t10, j11, jVar);
        }
        switch (i15) {
            case 18:
            case 35:
                if (i13 == 2) {
                    return j.s(bArr, i9, jVar, bVar);
                }
                if (i13 == 1) {
                    return j.e(i11, bArr, i9, i10, jVar, bVar);
                }
                break;
            case 19:
            case 36:
                if (i13 == 2) {
                    return j.v(bArr, i9, jVar, bVar);
                }
                if (i13 == 5) {
                    return j.m(i11, bArr, i9, i10, jVar, bVar);
                }
                break;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i13 == 2) {
                    return j.z(bArr, i9, jVar, bVar);
                }
                if (i13 == 0) {
                    return j.M(i11, bArr, i9, i10, jVar, bVar);
                }
                break;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i13 == 2) {
                    return j.y(bArr, i9, jVar, bVar);
                }
                if (i13 == 0) {
                    return j.J(i11, bArr, i9, i10, jVar, bVar);
                }
                break;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i13 == 2) {
                    return j.u(bArr, i9, jVar, bVar);
                }
                if (i13 == 1) {
                    return j.k(i11, bArr, i9, i10, jVar, bVar);
                }
                break;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i13 == 2) {
                    return j.t(bArr, i9, jVar, bVar);
                }
                if (i13 == 5) {
                    return j.i(i11, bArr, i9, i10, jVar, bVar);
                }
                break;
            case 25:
            case 42:
                if (i13 == 2) {
                    return j.r(bArr, i9, jVar, bVar);
                }
                if (i13 == 0) {
                    return j.a(i11, bArr, i9, i10, jVar, bVar);
                }
                break;
            case 26:
                if (i13 == 2) {
                    if ((j10 & 536870912) == 0) {
                        return j.D(i11, bArr, i9, i10, jVar, bVar);
                    }
                    return j.E(i11, bArr, i9, i10, jVar, bVar);
                }
                break;
            case 27:
                if (i13 == 2) {
                    return j.q(v(i14), i11, bArr, i9, i10, jVar, bVar);
                }
                break;
            case 28:
                if (i13 == 2) {
                    return j.c(i11, bArr, i9, i10, jVar, bVar);
                }
                break;
            case 30:
            case 44:
                if (i13 == 2) {
                    J = j.y(bArr, i9, jVar, bVar);
                } else if (i13 == 0) {
                    J = j.J(i11, bArr, i9, i10, jVar, bVar);
                }
                GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) t10;
                i3 i3Var = generatedMessageLite.f14689a;
                if (i3Var == i3.c()) {
                    i3Var = null;
                }
                i3 i3Var2 = (i3) p2.A(i12, jVar, t(i14), i3Var, this.f15266o);
                if (i3Var2 != null) {
                    generatedMessageLite.f14689a = i3Var2;
                }
                return J;
            case 33:
            case 47:
                if (i13 == 2) {
                    return j.w(bArr, i9, jVar, bVar);
                }
                if (i13 == 0) {
                    return j.A(i11, bArr, i9, i10, jVar, bVar);
                }
                break;
            case 34:
            case 48:
                if (i13 == 2) {
                    return j.x(bArr, i9, jVar, bVar);
                }
                if (i13 == 0) {
                    return j.B(i11, bArr, i9, i10, jVar, bVar);
                }
                break;
            case 49:
                if (i13 == 3) {
                    return j.o(v(i14), i11, bArr, i9, i10, jVar, bVar);
                }
                break;
        }
        return i9;
    }

    private int g0(int i9) {
        if (i9 < this.f15254c || i9 > this.f15255d) {
            return -1;
        }
        return q0(i9, 0);
    }

    private int h0(int i9, int i10) {
        if (i9 < this.f15254c || i9 > this.f15255d) {
            return -1;
        }
        return q0(i9, i10);
    }

    private int i0(int i9) {
        return this.f15252a[i9 + 2];
    }

    private <E> void j0(Object obj, long j10, k2 k2Var, n2<E> n2Var, f0 f0Var) throws IOException {
        k2Var.d(this.f15265n.e(obj, j10), n2Var, f0Var);
    }

    private boolean k(T t10, T t11, int i9) {
        return C(t10, i9) == C(t11, i9);
    }

    private <E> void k0(Object obj, int i9, k2 k2Var, n2<E> n2Var, f0 f0Var) throws IOException {
        k2Var.f(this.f15265n.e(obj, V(i9)), n2Var, f0Var);
    }

    private static <T> boolean l(T t10, long j10) {
        return m3.t(t10, j10);
    }

    private void l0(Object obj, int i9, k2 k2Var) throws IOException {
        if (B(i9)) {
            m3.X(obj, V(i9), k2Var.P());
        } else if (this.f15258g) {
            m3.X(obj, V(i9), k2Var.E());
        } else {
            m3.X(obj, V(i9), k2Var.r());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r19v0, types: [java.util.Map, java.util.Map<K, V>] */
    /* JADX WARN: Type inference failed for: r1v10, types: [int] */
    private <K, V> int m(byte[] bArr, int i9, int i10, f1.b<K, V> bVar, Map<K, V> map, j.b bVar2) throws IOException {
        int i11;
        int I = j.I(bArr, i9, bVar2);
        int i12 = bVar2.f15014a;
        if (i12 >= 0 && i12 <= i10 - I) {
            int i13 = I + i12;
            K k10 = bVar.f14958b;
            V v10 = bVar.f14960d;
            while (I < i13) {
                int i14 = I + 1;
                byte b10 = bArr[I];
                if (b10 < 0) {
                    i11 = j.H(b10, bArr, i14, bVar2);
                    b10 = bVar2.f15014a;
                } else {
                    i11 = i14;
                }
                int i15 = b10 >>> 3;
                int i16 = b10 & 7;
                if (i15 != 1) {
                    if (i15 == 2 && i16 == bVar.f14959c.getWireType()) {
                        I = n(bArr, i11, i10, bVar.f14959c, bVar.f14960d.getClass(), bVar2);
                        v10 = bVar2.f15016c;
                    }
                    I = j.N(b10, bArr, i11, i10, bVar2);
                } else if (i16 == bVar.f14957a.getWireType()) {
                    I = n(bArr, i11, i10, bVar.f14957a, null, bVar2);
                    k10 = bVar2.f15016c;
                } else {
                    I = j.N(b10, bArr, i11, i10, bVar2);
                }
            }
            if (I == i13) {
                map.put(k10, v10);
                return i13;
            }
            throw InvalidProtocolBufferException.parseFailure();
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    private void m0(Object obj, int i9, k2 k2Var) throws IOException {
        if (B(i9)) {
            k2Var.q(this.f15265n.e(obj, V(i9)));
        } else {
            k2Var.G(this.f15265n.e(obj, V(i9)));
        }
    }

    private int n(byte[] bArr, int i9, int i10, WireFormat.FieldType fieldType, Class<?> cls, j.b bVar) throws IOException {
        switch (a.f15269a[fieldType.ordinal()]) {
            case 1:
                int L = j.L(bArr, i9, bVar);
                bVar.f15016c = Boolean.valueOf(bVar.f15015b != 0);
                return L;
            case 2:
                return j.b(bArr, i9, bVar);
            case 3:
                bVar.f15016c = Double.valueOf(j.d(bArr, i9));
                return i9 + 8;
            case 4:
            case 5:
                bVar.f15016c = Integer.valueOf(j.h(bArr, i9));
                return i9 + 4;
            case 6:
            case 7:
                bVar.f15016c = Long.valueOf(j.j(bArr, i9));
                return i9 + 8;
            case 8:
                bVar.f15016c = Float.valueOf(j.l(bArr, i9));
                return i9 + 4;
            case 9:
            case 10:
            case 11:
                int I = j.I(bArr, i9, bVar);
                bVar.f15016c = Integer.valueOf(bVar.f15014a);
                return I;
            case 12:
            case 13:
                int L2 = j.L(bArr, i9, bVar);
                bVar.f15016c = Long.valueOf(bVar.f15015b);
                return L2;
            case 14:
                return j.p(g2.a().d(cls), bArr, i9, i10, bVar);
            case 15:
                int I2 = j.I(bArr, i9, bVar);
                bVar.f15016c = Integer.valueOf(p.c(bVar.f15014a));
                return I2;
            case 16:
                int L3 = j.L(bArr, i9, bVar);
                bVar.f15016c = Long.valueOf(p.d(bVar.f15015b));
                return L3;
            case 17:
                return j.F(bArr, i9, bVar);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    private static java.lang.reflect.Field n0(Class<?> cls, String str) {
        java.lang.reflect.Field[] declaredFields;
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            for (java.lang.reflect.Field field : cls.getDeclaredFields()) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    private static <T> double o(T t10, long j10) {
        return m3.A(t10, j10);
    }

    private void o0(T t10, int i9) {
        int i02 = i0(i9);
        long j10 = 1048575 & i02;
        if (j10 == 1048575) {
            return;
        }
        m3.V(t10, j10, (1 << (i02 >>> 20)) | m3.C(t10, j10));
    }

    private boolean p(T t10, T t11, int i9) {
        int t02 = t0(i9);
        long V = V(t02);
        switch (s0(t02)) {
            case 0:
                return k(t10, t11, i9) && Double.doubleToLongBits(m3.A(t10, V)) == Double.doubleToLongBits(m3.A(t11, V));
            case 1:
                return k(t10, t11, i9) && Float.floatToIntBits(m3.B(t10, V)) == Float.floatToIntBits(m3.B(t11, V));
            case 2:
                return k(t10, t11, i9) && m3.E(t10, V) == m3.E(t11, V);
            case 3:
                return k(t10, t11, i9) && m3.E(t10, V) == m3.E(t11, V);
            case 4:
                return k(t10, t11, i9) && m3.C(t10, V) == m3.C(t11, V);
            case 5:
                return k(t10, t11, i9) && m3.E(t10, V) == m3.E(t11, V);
            case 6:
                return k(t10, t11, i9) && m3.C(t10, V) == m3.C(t11, V);
            case 7:
                return k(t10, t11, i9) && m3.t(t10, V) == m3.t(t11, V);
            case 8:
                return k(t10, t11, i9) && p2.L(m3.G(t10, V), m3.G(t11, V));
            case 9:
                return k(t10, t11, i9) && p2.L(m3.G(t10, V), m3.G(t11, V));
            case 10:
                return k(t10, t11, i9) && p2.L(m3.G(t10, V), m3.G(t11, V));
            case 11:
                return k(t10, t11, i9) && m3.C(t10, V) == m3.C(t11, V);
            case 12:
                return k(t10, t11, i9) && m3.C(t10, V) == m3.C(t11, V);
            case 13:
                return k(t10, t11, i9) && m3.C(t10, V) == m3.C(t11, V);
            case 14:
                return k(t10, t11, i9) && m3.E(t10, V) == m3.E(t11, V);
            case 15:
                return k(t10, t11, i9) && m3.C(t10, V) == m3.C(t11, V);
            case 16:
                return k(t10, t11, i9) && m3.E(t10, V) == m3.E(t11, V);
            case 17:
                return k(t10, t11, i9) && p2.L(m3.G(t10, V), m3.G(t11, V));
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
                return p2.L(m3.G(t10, V), m3.G(t11, V));
            case 50:
                return p2.L(m3.G(t10, V), m3.G(t11, V));
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
                return H(t10, t11, i9) && p2.L(m3.G(t10, V), m3.G(t11, V));
            default:
                return true;
        }
    }

    private void p0(T t10, int i9, int i10) {
        m3.V(t10, i0(i10) & 1048575, i9);
    }

    private final <UT, UB> UB q(Object obj, int i9, UB ub2, g3<UT, UB> g3Var) {
        u0.e t10;
        int U = U(i9);
        Object G = m3.G(obj, V(t0(i9)));
        return (G == null || (t10 = t(i9)) == null) ? ub2 : (UB) r(i9, U, this.f15268q.c(G), t10, ub2, g3Var);
    }

    private int q0(int i9, int i10) {
        int length = (this.f15252a.length / 3) - 1;
        while (i10 <= length) {
            int i11 = (length + i10) >>> 1;
            int i12 = i11 * 3;
            int U = U(i12);
            if (i9 == U) {
                return i12;
            }
            if (i9 < U) {
                length = i11 - 1;
            } else {
                i10 = i11 + 1;
            }
        }
        return -1;
    }

    private final <K, V, UT, UB> UB r(int i9, int i10, Map<K, V> map, u0.e eVar, UB ub2, g3<UT, UB> g3Var) {
        f1.b<?, ?> b10 = this.f15268q.b(u(i9));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!eVar.a(((Integer) next.getValue()).intValue())) {
                if (ub2 == null) {
                    ub2 = g3Var.n();
                }
                ByteString.h newCodedBuilder = ByteString.newCodedBuilder(f1.b(b10, next.getKey(), next.getValue()));
                try {
                    f1.f(newCodedBuilder.b(), b10, next.getKey(), next.getValue());
                    g3Var.d(ub2, i10, newCodedBuilder.a());
                    it.remove();
                } catch (IOException e10) {
                    throw new RuntimeException(e10);
                }
            }
        }
        return ub2;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00bd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void r0(com.google.protobuf.k0 r8, int[] r9, int r10, java.lang.Object[] r11) {
        /*
            com.google.protobuf.c2 r0 = r8.s()
            r1 = 0
            if (r0 == 0) goto L25
            com.google.protobuf.FieldType r2 = r8.v()
            int r2 = r2.id()
            int r2 = r2 + 51
            java.lang.reflect.Field r3 = r0.b()
            long r3 = com.google.protobuf.m3.M(r3)
            int r4 = (int) r3
            java.lang.reflect.Field r0 = r0.a()
            long r5 = com.google.protobuf.m3.M(r0)
        L22:
            int r0 = (int) r5
        L23:
            r3 = 0
            goto L6b
        L25:
            com.google.protobuf.FieldType r0 = r8.v()
            java.lang.reflect.Field r2 = r8.o()
            long r2 = com.google.protobuf.m3.M(r2)
            int r4 = (int) r2
            int r2 = r0.id()
            boolean r3 = r0.isList()
            if (r3 != 0) goto L5a
            boolean r0 = r0.isMap()
            if (r0 != 0) goto L5a
            java.lang.reflect.Field r0 = r8.t()
            if (r0 != 0) goto L4c
            r0 = 1048575(0xfffff, float:1.469367E-39)
            goto L51
        L4c:
            long r5 = com.google.protobuf.m3.M(r0)
            int r0 = (int) r5
        L51:
            int r3 = r8.u()
            int r3 = java.lang.Integer.numberOfTrailingZeros(r3)
            goto L6b
        L5a:
            java.lang.reflect.Field r0 = r8.l()
            if (r0 != 0) goto L62
            r0 = 0
            goto L23
        L62:
            java.lang.reflect.Field r0 = r8.l()
            long r5 = com.google.protobuf.m3.M(r0)
            goto L22
        L6b:
            int r5 = r8.p()
            r9[r10] = r5
            int r5 = r10 + 1
            boolean r6 = r8.w()
            if (r6 == 0) goto L7c
            r6 = 536870912(0x20000000, float:1.0842022E-19)
            goto L7d
        L7c:
            r6 = 0
        L7d:
            boolean r7 = r8.y()
            if (r7 == 0) goto L85
            r1 = 268435456(0x10000000, float:2.524355E-29)
        L85:
            r1 = r1 | r6
            int r2 = r2 << 20
            r1 = r1 | r2
            r1 = r1 | r4
            r9[r5] = r1
            int r1 = r10 + 2
            int r2 = r3 << 20
            r0 = r0 | r2
            r9[r1] = r0
            java.lang.Class r9 = r8.r()
            java.lang.Object r0 = r8.q()
            if (r0 == 0) goto Lbd
            int r10 = r10 / 3
            int r10 = r10 * 2
            java.lang.Object r0 = r8.q()
            r11[r10] = r0
            if (r9 == 0) goto Lae
            int r10 = r10 + 1
            r11[r10] = r9
            goto Lda
        Lae:
            com.google.protobuf.u0$e r9 = r8.m()
            if (r9 == 0) goto Lda
            int r10 = r10 + 1
            com.google.protobuf.u0$e r8 = r8.m()
            r11[r10] = r8
            goto Lda
        Lbd:
            if (r9 == 0) goto Lc8
            int r10 = r10 / 3
            int r10 = r10 * 2
            int r10 = r10 + 1
            r11[r10] = r9
            goto Lda
        Lc8:
            com.google.protobuf.u0$e r9 = r8.m()
            if (r9 == 0) goto Lda
            int r10 = r10 / 3
            int r10 = r10 * 2
            int r10 = r10 + 1
            com.google.protobuf.u0$e r8 = r8.m()
            r11[r10] = r8
        Lda:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.s1.r0(com.google.protobuf.k0, int[], int, java.lang.Object[]):void");
    }

    private static <T> float s(T t10, long j10) {
        return m3.B(t10, j10);
    }

    private static int s0(int i9) {
        return (i9 & 267386880) >>> 20;
    }

    private u0.e t(int i9) {
        return (u0.e) this.f15253b[((i9 / 3) * 2) + 1];
    }

    private int t0(int i9) {
        return this.f15252a[i9 + 1];
    }

    private Object u(int i9) {
        return this.f15253b[(i9 / 3) * 2];
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0491  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void u0(T r18, com.google.protobuf.Writer r19) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.s1.u0(java.lang.Object, com.google.protobuf.Writer):void");
    }

    private n2 v(int i9) {
        int i10 = (i9 / 3) * 2;
        n2 n2Var = (n2) this.f15253b[i10];
        if (n2Var != null) {
            return n2Var;
        }
        n2<T> d10 = g2.a().d((Class) this.f15253b[i10 + 1]);
        this.f15253b[i10] = d10;
        return d10;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0588  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void v0(T r13, com.google.protobuf.Writer r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1584
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.s1.v0(java.lang.Object, com.google.protobuf.Writer):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i3 w(Object obj) {
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
        i3 i3Var = generatedMessageLite.f14689a;
        if (i3Var == i3.c()) {
            i3 j10 = i3.j();
            generatedMessageLite.f14689a = j10;
            return j10;
        }
        return i3Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x058e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void w0(T r11, com.google.protobuf.Writer r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1586
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.s1.w0(java.lang.Object, com.google.protobuf.Writer):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private int x(T t10) {
        int i9;
        int i10;
        int j10;
        int e10;
        int N;
        int i11;
        int X;
        int Z;
        Unsafe unsafe = f15251s;
        int i12 = 1048575;
        int i13 = 0;
        int i14 = 0;
        int i15 = 1048575;
        int i16 = 0;
        while (i13 < this.f15252a.length) {
            int t02 = t0(i13);
            int U = U(i13);
            int s02 = s0(t02);
            if (s02 <= 17) {
                i9 = this.f15252a[i13 + 2];
                int i17 = i9 & i12;
                i10 = 1 << (i9 >>> 20);
                if (i17 != i15) {
                    i16 = unsafe.getInt(t10, i17);
                    i15 = i17;
                }
            } else {
                i9 = (!this.f15260i || s02 < FieldType.DOUBLE_LIST_PACKED.id() || s02 > FieldType.SINT64_LIST_PACKED.id()) ? 0 : this.f15252a[i13 + 2] & i12;
                i10 = 0;
            }
            long V = V(t02);
            switch (s02) {
                case 0:
                    if ((i16 & i10) == 0) {
                        break;
                    } else {
                        j10 = CodedOutputStream.j(U, 0.0d);
                        i14 += j10;
                        break;
                    }
                case 1:
                    if ((i16 & i10) == 0) {
                        break;
                    } else {
                        j10 = CodedOutputStream.r(U, 0.0f);
                        i14 += j10;
                        break;
                    }
                case 2:
                    if ((i16 & i10) == 0) {
                        break;
                    } else {
                        j10 = CodedOutputStream.z(U, unsafe.getLong(t10, V));
                        i14 += j10;
                        break;
                    }
                case 3:
                    if ((i16 & i10) == 0) {
                        break;
                    } else {
                        j10 = CodedOutputStream.a0(U, unsafe.getLong(t10, V));
                        i14 += j10;
                        break;
                    }
                case 4:
                    if ((i16 & i10) == 0) {
                        break;
                    } else {
                        j10 = CodedOutputStream.x(U, unsafe.getInt(t10, V));
                        i14 += j10;
                        break;
                    }
                case 5:
                    if ((i16 & i10) == 0) {
                        break;
                    } else {
                        j10 = CodedOutputStream.p(U, 0L);
                        i14 += j10;
                        break;
                    }
                case 6:
                    if ((i16 & i10) != 0) {
                        j10 = CodedOutputStream.n(U, 0);
                        i14 += j10;
                        break;
                    }
                    break;
                case 7:
                    if ((i16 & i10) != 0) {
                        e10 = CodedOutputStream.e(U, true);
                        i14 += e10;
                    }
                    break;
                case 8:
                    if ((i16 & i10) != 0) {
                        Object object = unsafe.getObject(t10, V);
                        if (object instanceof ByteString) {
                            e10 = CodedOutputStream.h(U, (ByteString) object);
                        } else {
                            e10 = CodedOutputStream.V(U, (String) object);
                        }
                        i14 += e10;
                    }
                    break;
                case 9:
                    if ((i16 & i10) != 0) {
                        e10 = p2.o(U, unsafe.getObject(t10, V), v(i13));
                        i14 += e10;
                    }
                    break;
                case 10:
                    if ((i16 & i10) != 0) {
                        e10 = CodedOutputStream.h(U, (ByteString) unsafe.getObject(t10, V));
                        i14 += e10;
                    }
                    break;
                case 11:
                    if ((i16 & i10) != 0) {
                        e10 = CodedOutputStream.Y(U, unsafe.getInt(t10, V));
                        i14 += e10;
                    }
                    break;
                case 12:
                    if ((i16 & i10) != 0) {
                        e10 = CodedOutputStream.l(U, unsafe.getInt(t10, V));
                        i14 += e10;
                    }
                    break;
                case 13:
                    if ((i16 & i10) != 0) {
                        N = CodedOutputStream.N(U, 0);
                        i14 += N;
                    }
                    break;
                case 14:
                    if ((i16 & i10) != 0) {
                        e10 = CodedOutputStream.P(U, 0L);
                        i14 += e10;
                    }
                    break;
                case 15:
                    if ((i16 & i10) != 0) {
                        e10 = CodedOutputStream.R(U, unsafe.getInt(t10, V));
                        i14 += e10;
                    }
                    break;
                case 16:
                    if ((i16 & i10) != 0) {
                        e10 = CodedOutputStream.T(U, unsafe.getLong(t10, V));
                        i14 += e10;
                    }
                    break;
                case 17:
                    if ((i16 & i10) != 0) {
                        e10 = CodedOutputStream.u(U, (o1) unsafe.getObject(t10, V), v(i13));
                        i14 += e10;
                    }
                    break;
                case 18:
                    e10 = p2.h(U, (List) unsafe.getObject(t10, V), false);
                    i14 += e10;
                    break;
                case 19:
                    e10 = p2.f(U, (List) unsafe.getObject(t10, V), false);
                    i14 += e10;
                    break;
                case 20:
                    e10 = p2.m(U, (List) unsafe.getObject(t10, V), false);
                    i14 += e10;
                    break;
                case 21:
                    e10 = p2.x(U, (List) unsafe.getObject(t10, V), false);
                    i14 += e10;
                    break;
                case 22:
                    e10 = p2.k(U, (List) unsafe.getObject(t10, V), false);
                    i14 += e10;
                    break;
                case 23:
                    e10 = p2.h(U, (List) unsafe.getObject(t10, V), false);
                    i14 += e10;
                    break;
                case 24:
                    e10 = p2.f(U, (List) unsafe.getObject(t10, V), false);
                    i14 += e10;
                    break;
                case 25:
                    e10 = p2.a(U, (List) unsafe.getObject(t10, V), false);
                    i14 += e10;
                    break;
                case 26:
                    e10 = p2.u(U, (List) unsafe.getObject(t10, V));
                    i14 += e10;
                    break;
                case 27:
                    e10 = p2.p(U, (List) unsafe.getObject(t10, V), v(i13));
                    i14 += e10;
                    break;
                case 28:
                    e10 = p2.c(U, (List) unsafe.getObject(t10, V));
                    i14 += e10;
                    break;
                case 29:
                    e10 = p2.v(U, (List) unsafe.getObject(t10, V), false);
                    i14 += e10;
                    break;
                case 30:
                    e10 = p2.d(U, (List) unsafe.getObject(t10, V), false);
                    i14 += e10;
                    break;
                case 31:
                    e10 = p2.f(U, (List) unsafe.getObject(t10, V), false);
                    i14 += e10;
                    break;
                case 32:
                    e10 = p2.h(U, (List) unsafe.getObject(t10, V), false);
                    i14 += e10;
                    break;
                case 33:
                    e10 = p2.q(U, (List) unsafe.getObject(t10, V), false);
                    i14 += e10;
                    break;
                case 34:
                    e10 = p2.s(U, (List) unsafe.getObject(t10, V), false);
                    i14 += e10;
                    break;
                case 35:
                    i11 = p2.i((List) unsafe.getObject(t10, V));
                    if (i11 > 0) {
                        if (this.f15260i) {
                            unsafe.putInt(t10, i9, i11);
                        }
                        X = CodedOutputStream.X(U);
                        Z = CodedOutputStream.Z(i11);
                        N = X + Z + i11;
                        i14 += N;
                    }
                    break;
                case 36:
                    i11 = p2.g((List) unsafe.getObject(t10, V));
                    if (i11 > 0) {
                        if (this.f15260i) {
                            unsafe.putInt(t10, i9, i11);
                        }
                        X = CodedOutputStream.X(U);
                        Z = CodedOutputStream.Z(i11);
                        N = X + Z + i11;
                        i14 += N;
                    }
                    break;
                case 37:
                    i11 = p2.n((List) unsafe.getObject(t10, V));
                    if (i11 > 0) {
                        if (this.f15260i) {
                            unsafe.putInt(t10, i9, i11);
                        }
                        X = CodedOutputStream.X(U);
                        Z = CodedOutputStream.Z(i11);
                        N = X + Z + i11;
                        i14 += N;
                    }
                    break;
                case 38:
                    i11 = p2.y((List) unsafe.getObject(t10, V));
                    if (i11 > 0) {
                        if (this.f15260i) {
                            unsafe.putInt(t10, i9, i11);
                        }
                        X = CodedOutputStream.X(U);
                        Z = CodedOutputStream.Z(i11);
                        N = X + Z + i11;
                        i14 += N;
                    }
                    break;
                case 39:
                    i11 = p2.l((List) unsafe.getObject(t10, V));
                    if (i11 > 0) {
                        if (this.f15260i) {
                            unsafe.putInt(t10, i9, i11);
                        }
                        X = CodedOutputStream.X(U);
                        Z = CodedOutputStream.Z(i11);
                        N = X + Z + i11;
                        i14 += N;
                    }
                    break;
                case 40:
                    i11 = p2.i((List) unsafe.getObject(t10, V));
                    if (i11 > 0) {
                        if (this.f15260i) {
                            unsafe.putInt(t10, i9, i11);
                        }
                        X = CodedOutputStream.X(U);
                        Z = CodedOutputStream.Z(i11);
                        N = X + Z + i11;
                        i14 += N;
                    }
                    break;
                case 41:
                    i11 = p2.g((List) unsafe.getObject(t10, V));
                    if (i11 > 0) {
                        if (this.f15260i) {
                            unsafe.putInt(t10, i9, i11);
                        }
                        X = CodedOutputStream.X(U);
                        Z = CodedOutputStream.Z(i11);
                        N = X + Z + i11;
                        i14 += N;
                    }
                    break;
                case 42:
                    i11 = p2.b((List) unsafe.getObject(t10, V));
                    if (i11 > 0) {
                        if (this.f15260i) {
                            unsafe.putInt(t10, i9, i11);
                        }
                        X = CodedOutputStream.X(U);
                        Z = CodedOutputStream.Z(i11);
                        N = X + Z + i11;
                        i14 += N;
                    }
                    break;
                case 43:
                    i11 = p2.w((List) unsafe.getObject(t10, V));
                    if (i11 > 0) {
                        if (this.f15260i) {
                            unsafe.putInt(t10, i9, i11);
                        }
                        X = CodedOutputStream.X(U);
                        Z = CodedOutputStream.Z(i11);
                        N = X + Z + i11;
                        i14 += N;
                    }
                    break;
                case 44:
                    i11 = p2.e((List) unsafe.getObject(t10, V));
                    if (i11 > 0) {
                        if (this.f15260i) {
                            unsafe.putInt(t10, i9, i11);
                        }
                        X = CodedOutputStream.X(U);
                        Z = CodedOutputStream.Z(i11);
                        N = X + Z + i11;
                        i14 += N;
                    }
                    break;
                case 45:
                    i11 = p2.g((List) unsafe.getObject(t10, V));
                    if (i11 > 0) {
                        if (this.f15260i) {
                            unsafe.putInt(t10, i9, i11);
                        }
                        X = CodedOutputStream.X(U);
                        Z = CodedOutputStream.Z(i11);
                        N = X + Z + i11;
                        i14 += N;
                    }
                    break;
                case 46:
                    i11 = p2.i((List) unsafe.getObject(t10, V));
                    if (i11 > 0) {
                        if (this.f15260i) {
                            unsafe.putInt(t10, i9, i11);
                        }
                        X = CodedOutputStream.X(U);
                        Z = CodedOutputStream.Z(i11);
                        N = X + Z + i11;
                        i14 += N;
                    }
                    break;
                case 47:
                    i11 = p2.r((List) unsafe.getObject(t10, V));
                    if (i11 > 0) {
                        if (this.f15260i) {
                            unsafe.putInt(t10, i9, i11);
                        }
                        X = CodedOutputStream.X(U);
                        Z = CodedOutputStream.Z(i11);
                        N = X + Z + i11;
                        i14 += N;
                    }
                    break;
                case 48:
                    i11 = p2.t((List) unsafe.getObject(t10, V));
                    if (i11 > 0) {
                        if (this.f15260i) {
                            unsafe.putInt(t10, i9, i11);
                        }
                        X = CodedOutputStream.X(U);
                        Z = CodedOutputStream.Z(i11);
                        N = X + Z + i11;
                        i14 += N;
                    }
                    break;
                case 49:
                    e10 = p2.j(U, (List) unsafe.getObject(t10, V), v(i13));
                    i14 += e10;
                    break;
                case 50:
                    e10 = this.f15268q.g(U, unsafe.getObject(t10, V), u(i13));
                    i14 += e10;
                    break;
                case 51:
                    if (I(t10, U, i13)) {
                        e10 = CodedOutputStream.j(U, 0.0d);
                        i14 += e10;
                    }
                    break;
                case 52:
                    if (I(t10, U, i13)) {
                        e10 = CodedOutputStream.r(U, 0.0f);
                        i14 += e10;
                    }
                    break;
                case 53:
                    if (I(t10, U, i13)) {
                        e10 = CodedOutputStream.z(U, a0(t10, V));
                        i14 += e10;
                    }
                    break;
                case 54:
                    if (I(t10, U, i13)) {
                        e10 = CodedOutputStream.a0(U, a0(t10, V));
                        i14 += e10;
                    }
                    break;
                case 55:
                    if (I(t10, U, i13)) {
                        e10 = CodedOutputStream.x(U, Z(t10, V));
                        i14 += e10;
                    }
                    break;
                case 56:
                    if (I(t10, U, i13)) {
                        e10 = CodedOutputStream.p(U, 0L);
                        i14 += e10;
                    }
                    break;
                case 57:
                    if (I(t10, U, i13)) {
                        N = CodedOutputStream.n(U, 0);
                        i14 += N;
                    }
                    break;
                case 58:
                    if (I(t10, U, i13)) {
                        e10 = CodedOutputStream.e(U, true);
                        i14 += e10;
                    }
                    break;
                case 59:
                    if (I(t10, U, i13)) {
                        Object object2 = unsafe.getObject(t10, V);
                        if (object2 instanceof ByteString) {
                            e10 = CodedOutputStream.h(U, (ByteString) object2);
                        } else {
                            e10 = CodedOutputStream.V(U, (String) object2);
                        }
                        i14 += e10;
                    }
                    break;
                case 60:
                    if (I(t10, U, i13)) {
                        e10 = p2.o(U, unsafe.getObject(t10, V), v(i13));
                        i14 += e10;
                    }
                    break;
                case 61:
                    if (I(t10, U, i13)) {
                        e10 = CodedOutputStream.h(U, (ByteString) unsafe.getObject(t10, V));
                        i14 += e10;
                    }
                    break;
                case 62:
                    if (I(t10, U, i13)) {
                        e10 = CodedOutputStream.Y(U, Z(t10, V));
                        i14 += e10;
                    }
                    break;
                case 63:
                    if (I(t10, U, i13)) {
                        e10 = CodedOutputStream.l(U, Z(t10, V));
                        i14 += e10;
                    }
                    break;
                case 64:
                    if (I(t10, U, i13)) {
                        N = CodedOutputStream.N(U, 0);
                        i14 += N;
                    }
                    break;
                case 65:
                    if (I(t10, U, i13)) {
                        e10 = CodedOutputStream.P(U, 0L);
                        i14 += e10;
                    }
                    break;
                case 66:
                    if (I(t10, U, i13)) {
                        e10 = CodedOutputStream.R(U, Z(t10, V));
                        i14 += e10;
                    }
                    break;
                case 67:
                    if (I(t10, U, i13)) {
                        e10 = CodedOutputStream.T(U, a0(t10, V));
                        i14 += e10;
                    }
                    break;
                case 68:
                    if (I(t10, U, i13)) {
                        e10 = CodedOutputStream.u(U, (o1) unsafe.getObject(t10, V), v(i13));
                        i14 += e10;
                    }
                    break;
            }
            i13 += 3;
            i12 = 1048575;
        }
        int z10 = i14 + z(this.f15266o, t10);
        return this.f15257f ? z10 + this.f15267p.c(t10).w() : z10;
    }

    private <K, V> void x0(Writer writer, int i9, Object obj, int i10) throws IOException {
        if (obj != null) {
            writer.K(i9, this.f15268q.b(u(i10)), this.f15268q.e(obj));
        }
    }

    private int y(T t10) {
        int j10;
        int i9;
        int X;
        int Z;
        Unsafe unsafe = f15251s;
        int i10 = 0;
        for (int i11 = 0; i11 < this.f15252a.length; i11 += 3) {
            int t02 = t0(i11);
            int s02 = s0(t02);
            int U = U(i11);
            long V = V(t02);
            int i12 = (s02 < FieldType.DOUBLE_LIST_PACKED.id() || s02 > FieldType.SINT64_LIST_PACKED.id()) ? 0 : this.f15252a[i11 + 2] & 1048575;
            switch (s02) {
                case 0:
                    if (C(t10, i11)) {
                        j10 = CodedOutputStream.j(U, 0.0d);
                        break;
                    } else {
                        continue;
                    }
                case 1:
                    if (C(t10, i11)) {
                        j10 = CodedOutputStream.r(U, 0.0f);
                        break;
                    } else {
                        continue;
                    }
                case 2:
                    if (C(t10, i11)) {
                        j10 = CodedOutputStream.z(U, m3.E(t10, V));
                        break;
                    } else {
                        continue;
                    }
                case 3:
                    if (C(t10, i11)) {
                        j10 = CodedOutputStream.a0(U, m3.E(t10, V));
                        break;
                    } else {
                        continue;
                    }
                case 4:
                    if (C(t10, i11)) {
                        j10 = CodedOutputStream.x(U, m3.C(t10, V));
                        break;
                    } else {
                        continue;
                    }
                case 5:
                    if (C(t10, i11)) {
                        j10 = CodedOutputStream.p(U, 0L);
                        break;
                    } else {
                        continue;
                    }
                case 6:
                    if (C(t10, i11)) {
                        j10 = CodedOutputStream.n(U, 0);
                        break;
                    } else {
                        continue;
                    }
                case 7:
                    if (C(t10, i11)) {
                        j10 = CodedOutputStream.e(U, true);
                        break;
                    } else {
                        continue;
                    }
                case 8:
                    if (C(t10, i11)) {
                        Object G = m3.G(t10, V);
                        if (G instanceof ByteString) {
                            j10 = CodedOutputStream.h(U, (ByteString) G);
                            break;
                        } else {
                            j10 = CodedOutputStream.V(U, (String) G);
                            break;
                        }
                    } else {
                        continue;
                    }
                case 9:
                    if (C(t10, i11)) {
                        j10 = p2.o(U, m3.G(t10, V), v(i11));
                        break;
                    } else {
                        continue;
                    }
                case 10:
                    if (C(t10, i11)) {
                        j10 = CodedOutputStream.h(U, (ByteString) m3.G(t10, V));
                        break;
                    } else {
                        continue;
                    }
                case 11:
                    if (C(t10, i11)) {
                        j10 = CodedOutputStream.Y(U, m3.C(t10, V));
                        break;
                    } else {
                        continue;
                    }
                case 12:
                    if (C(t10, i11)) {
                        j10 = CodedOutputStream.l(U, m3.C(t10, V));
                        break;
                    } else {
                        continue;
                    }
                case 13:
                    if (C(t10, i11)) {
                        j10 = CodedOutputStream.N(U, 0);
                        break;
                    } else {
                        continue;
                    }
                case 14:
                    if (C(t10, i11)) {
                        j10 = CodedOutputStream.P(U, 0L);
                        break;
                    } else {
                        continue;
                    }
                case 15:
                    if (C(t10, i11)) {
                        j10 = CodedOutputStream.R(U, m3.C(t10, V));
                        break;
                    } else {
                        continue;
                    }
                case 16:
                    if (C(t10, i11)) {
                        j10 = CodedOutputStream.T(U, m3.E(t10, V));
                        break;
                    } else {
                        continue;
                    }
                case 17:
                    if (C(t10, i11)) {
                        j10 = CodedOutputStream.u(U, (o1) m3.G(t10, V), v(i11));
                        break;
                    } else {
                        continue;
                    }
                case 18:
                    j10 = p2.h(U, K(t10, V), false);
                    break;
                case 19:
                    j10 = p2.f(U, K(t10, V), false);
                    break;
                case 20:
                    j10 = p2.m(U, K(t10, V), false);
                    break;
                case 21:
                    j10 = p2.x(U, K(t10, V), false);
                    break;
                case 22:
                    j10 = p2.k(U, K(t10, V), false);
                    break;
                case 23:
                    j10 = p2.h(U, K(t10, V), false);
                    break;
                case 24:
                    j10 = p2.f(U, K(t10, V), false);
                    break;
                case 25:
                    j10 = p2.a(U, K(t10, V), false);
                    break;
                case 26:
                    j10 = p2.u(U, K(t10, V));
                    break;
                case 27:
                    j10 = p2.p(U, K(t10, V), v(i11));
                    break;
                case 28:
                    j10 = p2.c(U, K(t10, V));
                    break;
                case 29:
                    j10 = p2.v(U, K(t10, V), false);
                    break;
                case 30:
                    j10 = p2.d(U, K(t10, V), false);
                    break;
                case 31:
                    j10 = p2.f(U, K(t10, V), false);
                    break;
                case 32:
                    j10 = p2.h(U, K(t10, V), false);
                    break;
                case 33:
                    j10 = p2.q(U, K(t10, V), false);
                    break;
                case 34:
                    j10 = p2.s(U, K(t10, V), false);
                    break;
                case 35:
                    i9 = p2.i((List) unsafe.getObject(t10, V));
                    if (i9 > 0) {
                        if (this.f15260i) {
                            unsafe.putInt(t10, i12, i9);
                        }
                        X = CodedOutputStream.X(U);
                        Z = CodedOutputStream.Z(i9);
                        j10 = X + Z + i9;
                        break;
                    } else {
                        continue;
                    }
                case 36:
                    i9 = p2.g((List) unsafe.getObject(t10, V));
                    if (i9 > 0) {
                        if (this.f15260i) {
                            unsafe.putInt(t10, i12, i9);
                        }
                        X = CodedOutputStream.X(U);
                        Z = CodedOutputStream.Z(i9);
                        j10 = X + Z + i9;
                        break;
                    } else {
                        continue;
                    }
                case 37:
                    i9 = p2.n((List) unsafe.getObject(t10, V));
                    if (i9 > 0) {
                        if (this.f15260i) {
                            unsafe.putInt(t10, i12, i9);
                        }
                        X = CodedOutputStream.X(U);
                        Z = CodedOutputStream.Z(i9);
                        j10 = X + Z + i9;
                        break;
                    } else {
                        continue;
                    }
                case 38:
                    i9 = p2.y((List) unsafe.getObject(t10, V));
                    if (i9 > 0) {
                        if (this.f15260i) {
                            unsafe.putInt(t10, i12, i9);
                        }
                        X = CodedOutputStream.X(U);
                        Z = CodedOutputStream.Z(i9);
                        j10 = X + Z + i9;
                        break;
                    } else {
                        continue;
                    }
                case 39:
                    i9 = p2.l((List) unsafe.getObject(t10, V));
                    if (i9 > 0) {
                        if (this.f15260i) {
                            unsafe.putInt(t10, i12, i9);
                        }
                        X = CodedOutputStream.X(U);
                        Z = CodedOutputStream.Z(i9);
                        j10 = X + Z + i9;
                        break;
                    } else {
                        continue;
                    }
                case 40:
                    i9 = p2.i((List) unsafe.getObject(t10, V));
                    if (i9 > 0) {
                        if (this.f15260i) {
                            unsafe.putInt(t10, i12, i9);
                        }
                        X = CodedOutputStream.X(U);
                        Z = CodedOutputStream.Z(i9);
                        j10 = X + Z + i9;
                        break;
                    } else {
                        continue;
                    }
                case 41:
                    i9 = p2.g((List) unsafe.getObject(t10, V));
                    if (i9 > 0) {
                        if (this.f15260i) {
                            unsafe.putInt(t10, i12, i9);
                        }
                        X = CodedOutputStream.X(U);
                        Z = CodedOutputStream.Z(i9);
                        j10 = X + Z + i9;
                        break;
                    } else {
                        continue;
                    }
                case 42:
                    i9 = p2.b((List) unsafe.getObject(t10, V));
                    if (i9 > 0) {
                        if (this.f15260i) {
                            unsafe.putInt(t10, i12, i9);
                        }
                        X = CodedOutputStream.X(U);
                        Z = CodedOutputStream.Z(i9);
                        j10 = X + Z + i9;
                        break;
                    } else {
                        continue;
                    }
                case 43:
                    i9 = p2.w((List) unsafe.getObject(t10, V));
                    if (i9 > 0) {
                        if (this.f15260i) {
                            unsafe.putInt(t10, i12, i9);
                        }
                        X = CodedOutputStream.X(U);
                        Z = CodedOutputStream.Z(i9);
                        j10 = X + Z + i9;
                        break;
                    } else {
                        continue;
                    }
                case 44:
                    i9 = p2.e((List) unsafe.getObject(t10, V));
                    if (i9 > 0) {
                        if (this.f15260i) {
                            unsafe.putInt(t10, i12, i9);
                        }
                        X = CodedOutputStream.X(U);
                        Z = CodedOutputStream.Z(i9);
                        j10 = X + Z + i9;
                        break;
                    } else {
                        continue;
                    }
                case 45:
                    i9 = p2.g((List) unsafe.getObject(t10, V));
                    if (i9 > 0) {
                        if (this.f15260i) {
                            unsafe.putInt(t10, i12, i9);
                        }
                        X = CodedOutputStream.X(U);
                        Z = CodedOutputStream.Z(i9);
                        j10 = X + Z + i9;
                        break;
                    } else {
                        continue;
                    }
                case 46:
                    i9 = p2.i((List) unsafe.getObject(t10, V));
                    if (i9 > 0) {
                        if (this.f15260i) {
                            unsafe.putInt(t10, i12, i9);
                        }
                        X = CodedOutputStream.X(U);
                        Z = CodedOutputStream.Z(i9);
                        j10 = X + Z + i9;
                        break;
                    } else {
                        continue;
                    }
                case 47:
                    i9 = p2.r((List) unsafe.getObject(t10, V));
                    if (i9 > 0) {
                        if (this.f15260i) {
                            unsafe.putInt(t10, i12, i9);
                        }
                        X = CodedOutputStream.X(U);
                        Z = CodedOutputStream.Z(i9);
                        j10 = X + Z + i9;
                        break;
                    } else {
                        continue;
                    }
                case 48:
                    i9 = p2.t((List) unsafe.getObject(t10, V));
                    if (i9 > 0) {
                        if (this.f15260i) {
                            unsafe.putInt(t10, i12, i9);
                        }
                        X = CodedOutputStream.X(U);
                        Z = CodedOutputStream.Z(i9);
                        j10 = X + Z + i9;
                        break;
                    } else {
                        continue;
                    }
                case 49:
                    j10 = p2.j(U, K(t10, V), v(i11));
                    break;
                case 50:
                    j10 = this.f15268q.g(U, m3.G(t10, V), u(i11));
                    break;
                case 51:
                    if (I(t10, U, i11)) {
                        j10 = CodedOutputStream.j(U, 0.0d);
                        break;
                    } else {
                        continue;
                    }
                case 52:
                    if (I(t10, U, i11)) {
                        j10 = CodedOutputStream.r(U, 0.0f);
                        break;
                    } else {
                        continue;
                    }
                case 53:
                    if (I(t10, U, i11)) {
                        j10 = CodedOutputStream.z(U, a0(t10, V));
                        break;
                    } else {
                        continue;
                    }
                case 54:
                    if (I(t10, U, i11)) {
                        j10 = CodedOutputStream.a0(U, a0(t10, V));
                        break;
                    } else {
                        continue;
                    }
                case 55:
                    if (I(t10, U, i11)) {
                        j10 = CodedOutputStream.x(U, Z(t10, V));
                        break;
                    } else {
                        continue;
                    }
                case 56:
                    if (I(t10, U, i11)) {
                        j10 = CodedOutputStream.p(U, 0L);
                        break;
                    } else {
                        continue;
                    }
                case 57:
                    if (I(t10, U, i11)) {
                        j10 = CodedOutputStream.n(U, 0);
                        break;
                    } else {
                        continue;
                    }
                case 58:
                    if (I(t10, U, i11)) {
                        j10 = CodedOutputStream.e(U, true);
                        break;
                    } else {
                        continue;
                    }
                case 59:
                    if (I(t10, U, i11)) {
                        Object G2 = m3.G(t10, V);
                        if (G2 instanceof ByteString) {
                            j10 = CodedOutputStream.h(U, (ByteString) G2);
                            break;
                        } else {
                            j10 = CodedOutputStream.V(U, (String) G2);
                            break;
                        }
                    } else {
                        continue;
                    }
                case 60:
                    if (I(t10, U, i11)) {
                        j10 = p2.o(U, m3.G(t10, V), v(i11));
                        break;
                    } else {
                        continue;
                    }
                case 61:
                    if (I(t10, U, i11)) {
                        j10 = CodedOutputStream.h(U, (ByteString) m3.G(t10, V));
                        break;
                    } else {
                        continue;
                    }
                case 62:
                    if (I(t10, U, i11)) {
                        j10 = CodedOutputStream.Y(U, Z(t10, V));
                        break;
                    } else {
                        continue;
                    }
                case 63:
                    if (I(t10, U, i11)) {
                        j10 = CodedOutputStream.l(U, Z(t10, V));
                        break;
                    } else {
                        continue;
                    }
                case 64:
                    if (I(t10, U, i11)) {
                        j10 = CodedOutputStream.N(U, 0);
                        break;
                    } else {
                        continue;
                    }
                case 65:
                    if (I(t10, U, i11)) {
                        j10 = CodedOutputStream.P(U, 0L);
                        break;
                    } else {
                        continue;
                    }
                case 66:
                    if (I(t10, U, i11)) {
                        j10 = CodedOutputStream.R(U, Z(t10, V));
                        break;
                    } else {
                        continue;
                    }
                case 67:
                    if (I(t10, U, i11)) {
                        j10 = CodedOutputStream.T(U, a0(t10, V));
                        break;
                    } else {
                        continue;
                    }
                case 68:
                    if (I(t10, U, i11)) {
                        j10 = CodedOutputStream.u(U, (o1) m3.G(t10, V), v(i11));
                        break;
                    } else {
                        continue;
                    }
                default:
            }
            i10 += j10;
        }
        return i10 + z(this.f15266o, t10);
    }

    private void y0(int i9, Object obj, Writer writer) throws IOException {
        if (obj instanceof String) {
            writer.g(i9, (String) obj);
        } else {
            writer.k(i9, (ByteString) obj);
        }
    }

    private <UT, UB> int z(g3<UT, UB> g3Var, T t10) {
        return g3Var.h(g3Var.g(t10));
    }

    private <UT, UB> void z0(g3<UT, UB> g3Var, T t10, Writer writer) throws IOException {
        g3Var.t(g3Var.g(t10), writer);
    }

    @Override // com.google.protobuf.n2
    public void a(T t10, T t11) {
        Objects.requireNonNull(t11);
        for (int i9 = 0; i9 < this.f15252a.length; i9 += 3) {
            Q(t10, t11, i9);
        }
        p2.H(this.f15266o, t10, t11);
        if (this.f15257f) {
            p2.F(this.f15267p, t10, t11);
        }
    }

    @Override // com.google.protobuf.n2
    public int b(T t10) {
        int i9;
        int i10;
        int length = this.f15252a.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12 += 3) {
            int t02 = t0(i12);
            int U = U(i12);
            long V = V(t02);
            int i13 = 37;
            switch (s0(t02)) {
                case 0:
                    i9 = i11 * 53;
                    i10 = u0.i(Double.doubleToLongBits(m3.A(t10, V)));
                    i11 = i9 + i10;
                    break;
                case 1:
                    i9 = i11 * 53;
                    i10 = Float.floatToIntBits(m3.B(t10, V));
                    i11 = i9 + i10;
                    break;
                case 2:
                    i9 = i11 * 53;
                    i10 = u0.i(m3.E(t10, V));
                    i11 = i9 + i10;
                    break;
                case 3:
                    i9 = i11 * 53;
                    i10 = u0.i(m3.E(t10, V));
                    i11 = i9 + i10;
                    break;
                case 4:
                    i9 = i11 * 53;
                    i10 = m3.C(t10, V);
                    i11 = i9 + i10;
                    break;
                case 5:
                    i9 = i11 * 53;
                    i10 = u0.i(m3.E(t10, V));
                    i11 = i9 + i10;
                    break;
                case 6:
                    i9 = i11 * 53;
                    i10 = m3.C(t10, V);
                    i11 = i9 + i10;
                    break;
                case 7:
                    i9 = i11 * 53;
                    i10 = u0.d(m3.t(t10, V));
                    i11 = i9 + i10;
                    break;
                case 8:
                    i9 = i11 * 53;
                    i10 = ((String) m3.G(t10, V)).hashCode();
                    i11 = i9 + i10;
                    break;
                case 9:
                    Object G = m3.G(t10, V);
                    if (G != null) {
                        i13 = G.hashCode();
                    }
                    i11 = (i11 * 53) + i13;
                    break;
                case 10:
                    i9 = i11 * 53;
                    i10 = m3.G(t10, V).hashCode();
                    i11 = i9 + i10;
                    break;
                case 11:
                    i9 = i11 * 53;
                    i10 = m3.C(t10, V);
                    i11 = i9 + i10;
                    break;
                case 12:
                    i9 = i11 * 53;
                    i10 = m3.C(t10, V);
                    i11 = i9 + i10;
                    break;
                case 13:
                    i9 = i11 * 53;
                    i10 = m3.C(t10, V);
                    i11 = i9 + i10;
                    break;
                case 14:
                    i9 = i11 * 53;
                    i10 = u0.i(m3.E(t10, V));
                    i11 = i9 + i10;
                    break;
                case 15:
                    i9 = i11 * 53;
                    i10 = m3.C(t10, V);
                    i11 = i9 + i10;
                    break;
                case 16:
                    i9 = i11 * 53;
                    i10 = u0.i(m3.E(t10, V));
                    i11 = i9 + i10;
                    break;
                case 17:
                    Object G2 = m3.G(t10, V);
                    if (G2 != null) {
                        i13 = G2.hashCode();
                    }
                    i11 = (i11 * 53) + i13;
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
                    i9 = i11 * 53;
                    i10 = m3.G(t10, V).hashCode();
                    i11 = i9 + i10;
                    break;
                case 50:
                    i9 = i11 * 53;
                    i10 = m3.G(t10, V).hashCode();
                    i11 = i9 + i10;
                    break;
                case 51:
                    if (I(t10, U, i12)) {
                        i9 = i11 * 53;
                        i10 = u0.i(Double.doubleToLongBits(X(t10, V)));
                        i11 = i9 + i10;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (I(t10, U, i12)) {
                        i9 = i11 * 53;
                        i10 = Float.floatToIntBits(Y(t10, V));
                        i11 = i9 + i10;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (I(t10, U, i12)) {
                        i9 = i11 * 53;
                        i10 = u0.i(a0(t10, V));
                        i11 = i9 + i10;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (I(t10, U, i12)) {
                        i9 = i11 * 53;
                        i10 = u0.i(a0(t10, V));
                        i11 = i9 + i10;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (I(t10, U, i12)) {
                        i9 = i11 * 53;
                        i10 = Z(t10, V);
                        i11 = i9 + i10;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (I(t10, U, i12)) {
                        i9 = i11 * 53;
                        i10 = u0.i(a0(t10, V));
                        i11 = i9 + i10;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (I(t10, U, i12)) {
                        i9 = i11 * 53;
                        i10 = Z(t10, V);
                        i11 = i9 + i10;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (I(t10, U, i12)) {
                        i9 = i11 * 53;
                        i10 = u0.d(W(t10, V));
                        i11 = i9 + i10;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (I(t10, U, i12)) {
                        i9 = i11 * 53;
                        i10 = ((String) m3.G(t10, V)).hashCode();
                        i11 = i9 + i10;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (I(t10, U, i12)) {
                        i9 = i11 * 53;
                        i10 = m3.G(t10, V).hashCode();
                        i11 = i9 + i10;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (I(t10, U, i12)) {
                        i9 = i11 * 53;
                        i10 = m3.G(t10, V).hashCode();
                        i11 = i9 + i10;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (I(t10, U, i12)) {
                        i9 = i11 * 53;
                        i10 = Z(t10, V);
                        i11 = i9 + i10;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (I(t10, U, i12)) {
                        i9 = i11 * 53;
                        i10 = Z(t10, V);
                        i11 = i9 + i10;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (I(t10, U, i12)) {
                        i9 = i11 * 53;
                        i10 = Z(t10, V);
                        i11 = i9 + i10;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (I(t10, U, i12)) {
                        i9 = i11 * 53;
                        i10 = u0.i(a0(t10, V));
                        i11 = i9 + i10;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (I(t10, U, i12)) {
                        i9 = i11 * 53;
                        i10 = Z(t10, V);
                        i11 = i9 + i10;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (I(t10, U, i12)) {
                        i9 = i11 * 53;
                        i10 = u0.i(a0(t10, V));
                        i11 = i9 + i10;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (I(t10, U, i12)) {
                        i9 = i11 * 53;
                        i10 = m3.G(t10, V).hashCode();
                        i11 = i9 + i10;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i11 * 53) + this.f15266o.g(t10).hashCode();
        return this.f15257f ? (hashCode * 53) + this.f15267p.c(t10).hashCode() : hashCode;
    }

    @Override // com.google.protobuf.n2
    public boolean c(T t10, T t11) {
        int length = this.f15252a.length;
        for (int i9 = 0; i9 < length; i9 += 3) {
            if (!p(t10, t11, i9)) {
                return false;
            }
        }
        if (this.f15266o.g(t10).equals(this.f15266o.g(t11))) {
            if (this.f15257f) {
                return this.f15267p.c(t10).equals(this.f15267p.c(t11));
            }
            return true;
        }
        return false;
    }

    @Override // com.google.protobuf.n2
    public void d(T t10, Writer writer) throws IOException {
        if (writer.z() == Writer.FieldOrder.DESCENDING) {
            w0(t10, writer);
        } else if (this.f15259h) {
            v0(t10, writer);
        } else {
            u0(t10, writer);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d0(T t10, byte[] bArr, int i9, int i10, int i11, j.b bVar) throws IOException {
        Unsafe unsafe;
        int i12;
        s1<T> s1Var;
        int i13;
        T t11;
        byte b10;
        int g02;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        T t12;
        T t13;
        int i22;
        T t14;
        int i23;
        int i24;
        s1<T> s1Var2 = this;
        T t15 = t10;
        byte[] bArr2 = bArr;
        int i25 = i10;
        int i26 = i11;
        j.b bVar2 = bVar;
        Unsafe unsafe2 = f15251s;
        int i27 = i9;
        int i28 = -1;
        int i29 = 0;
        int i30 = 0;
        int i31 = 0;
        int i32 = 1048575;
        while (true) {
            if (i27 < i25) {
                int i33 = i27 + 1;
                byte b11 = bArr2[i27];
                if (b11 < 0) {
                    int H = j.H(b11, bArr2, i33, bVar2);
                    b10 = bVar2.f15014a;
                    i33 = H;
                } else {
                    b10 = b11;
                }
                int i34 = b10 >>> 3;
                int i35 = b10 & 7;
                if (i34 > i28) {
                    g02 = s1Var2.h0(i34, i29 / 3);
                } else {
                    g02 = s1Var2.g0(i34);
                }
                int i36 = g02;
                if (i36 == -1) {
                    i14 = i34;
                    i15 = i33;
                    i16 = b10;
                    i17 = i31;
                    i18 = i32;
                    unsafe = unsafe2;
                    i12 = i26;
                    i19 = 0;
                } else {
                    int i37 = s1Var2.f15252a[i36 + 1];
                    int s02 = s0(i37);
                    long V = V(i37);
                    int i38 = b10;
                    if (s02 <= 17) {
                        int i39 = s1Var2.f15252a[i36 + 2];
                        int i40 = 1 << (i39 >>> 20);
                        int i41 = i39 & 1048575;
                        if (i41 != i32) {
                            if (i32 != 1048575) {
                                unsafe2.putInt(t15, i32, i31);
                            }
                            i31 = unsafe2.getInt(t15, i41);
                            i18 = i41;
                        } else {
                            i18 = i32;
                        }
                        int i42 = i31;
                        switch (s02) {
                            case 0:
                                t12 = t15;
                                i20 = i36;
                                i14 = i34;
                                i21 = i38;
                                bArr2 = bArr;
                                if (i35 == 1) {
                                    m3.T(t12, V, j.d(bArr2, i33));
                                    i27 = i33 + 8;
                                    i31 = i42 | i40;
                                    i25 = i10;
                                    t15 = t12;
                                    i29 = i20;
                                    i30 = i21;
                                    i28 = i14;
                                    i32 = i18;
                                    i26 = i11;
                                    break;
                                } else {
                                    i15 = i33;
                                    i17 = i42;
                                    i19 = i20;
                                    unsafe = unsafe2;
                                    i16 = i21;
                                    i12 = i11;
                                    break;
                                }
                            case 1:
                                t12 = t15;
                                i20 = i36;
                                i14 = i34;
                                i21 = i38;
                                bArr2 = bArr;
                                if (i35 == 5) {
                                    m3.U(t12, V, j.l(bArr2, i33));
                                    i27 = i33 + 4;
                                    i31 = i42 | i40;
                                    i25 = i10;
                                    t15 = t12;
                                    i29 = i20;
                                    i30 = i21;
                                    i28 = i14;
                                    i32 = i18;
                                    i26 = i11;
                                    break;
                                } else {
                                    i15 = i33;
                                    i17 = i42;
                                    i19 = i20;
                                    unsafe = unsafe2;
                                    i16 = i21;
                                    i12 = i11;
                                    break;
                                }
                            case 2:
                            case 3:
                                T t16 = t15;
                                i20 = i36;
                                i14 = i34;
                                i21 = i38;
                                bArr2 = bArr;
                                if (i35 == 0) {
                                    int L = j.L(bArr2, i33, bVar2);
                                    t13 = t16;
                                    unsafe2.putLong(t10, V, bVar2.f15015b);
                                    i31 = i42 | i40;
                                    i27 = L;
                                    i29 = i20;
                                    i30 = i21;
                                    t15 = t13;
                                    i28 = i14;
                                    i32 = i18;
                                    i25 = i10;
                                    i26 = i11;
                                    break;
                                } else {
                                    i15 = i33;
                                    i17 = i42;
                                    i19 = i20;
                                    unsafe = unsafe2;
                                    i16 = i21;
                                    i12 = i11;
                                    break;
                                }
                            case 4:
                            case 11:
                                t12 = t15;
                                i20 = i36;
                                i14 = i34;
                                i21 = i38;
                                bArr2 = bArr;
                                if (i35 == 0) {
                                    i27 = j.I(bArr2, i33, bVar2);
                                    unsafe2.putInt(t12, V, bVar2.f15014a);
                                    i31 = i42 | i40;
                                    i25 = i10;
                                    t15 = t12;
                                    i29 = i20;
                                    i30 = i21;
                                    i28 = i14;
                                    i32 = i18;
                                    i26 = i11;
                                    break;
                                } else {
                                    i15 = i33;
                                    i17 = i42;
                                    i19 = i20;
                                    unsafe = unsafe2;
                                    i16 = i21;
                                    i12 = i11;
                                    break;
                                }
                            case 5:
                            case 14:
                                T t17 = t15;
                                i20 = i36;
                                i14 = i34;
                                i21 = i38;
                                bArr2 = bArr;
                                if (i35 == 1) {
                                    t13 = t17;
                                    unsafe2.putLong(t10, V, j.j(bArr2, i33));
                                    i27 = i33 + 8;
                                    i31 = i42 | i40;
                                    i29 = i20;
                                    i30 = i21;
                                    t15 = t13;
                                    i28 = i14;
                                    i32 = i18;
                                    i25 = i10;
                                    i26 = i11;
                                    break;
                                } else {
                                    i15 = i33;
                                    i17 = i42;
                                    i19 = i20;
                                    unsafe = unsafe2;
                                    i16 = i21;
                                    i12 = i11;
                                    break;
                                }
                            case 6:
                            case 13:
                                i22 = i10;
                                t14 = t15;
                                i20 = i36;
                                i14 = i34;
                                i21 = i38;
                                bArr2 = bArr;
                                if (i35 == 5) {
                                    unsafe2.putInt(t14, V, j.h(bArr2, i33));
                                    i27 = i33 + 4;
                                    int i43 = i42 | i40;
                                    t15 = t14;
                                    i25 = i22;
                                    i29 = i20;
                                    i30 = i21;
                                    i32 = i18;
                                    i26 = i11;
                                    i31 = i43;
                                    i28 = i14;
                                    break;
                                } else {
                                    i15 = i33;
                                    i17 = i42;
                                    i19 = i20;
                                    unsafe = unsafe2;
                                    i16 = i21;
                                    i12 = i11;
                                    break;
                                }
                            case 7:
                                i22 = i10;
                                t14 = t15;
                                i20 = i36;
                                i14 = i34;
                                i21 = i38;
                                bArr2 = bArr;
                                if (i35 == 0) {
                                    i27 = j.L(bArr2, i33, bVar2);
                                    m3.N(t14, V, bVar2.f15015b != 0);
                                    int i432 = i42 | i40;
                                    t15 = t14;
                                    i25 = i22;
                                    i29 = i20;
                                    i30 = i21;
                                    i32 = i18;
                                    i26 = i11;
                                    i31 = i432;
                                    i28 = i14;
                                    break;
                                } else {
                                    i15 = i33;
                                    i17 = i42;
                                    i19 = i20;
                                    unsafe = unsafe2;
                                    i16 = i21;
                                    i12 = i11;
                                    break;
                                }
                            case 8:
                                i22 = i10;
                                t14 = t15;
                                i20 = i36;
                                i14 = i34;
                                i21 = i38;
                                bArr2 = bArr;
                                if (i35 == 2) {
                                    if ((i37 & 536870912) == 0) {
                                        i27 = j.C(bArr2, i33, bVar2);
                                    } else {
                                        i27 = j.F(bArr2, i33, bVar2);
                                    }
                                    unsafe2.putObject(t14, V, bVar2.f15016c);
                                    int i4322 = i42 | i40;
                                    t15 = t14;
                                    i25 = i22;
                                    i29 = i20;
                                    i30 = i21;
                                    i32 = i18;
                                    i26 = i11;
                                    i31 = i4322;
                                    i28 = i14;
                                    break;
                                } else {
                                    i15 = i33;
                                    i17 = i42;
                                    i19 = i20;
                                    unsafe = unsafe2;
                                    i16 = i21;
                                    i12 = i11;
                                    break;
                                }
                            case 9:
                                t14 = t15;
                                i20 = i36;
                                i14 = i34;
                                i21 = i38;
                                bArr2 = bArr;
                                if (i35 == 2) {
                                    i22 = i10;
                                    i27 = j.p(s1Var2.v(i20), bArr2, i33, i22, bVar2);
                                    if ((i42 & i40) == 0) {
                                        unsafe2.putObject(t14, V, bVar2.f15016c);
                                    } else {
                                        unsafe2.putObject(t14, V, u0.k(unsafe2.getObject(t14, V), bVar2.f15016c));
                                    }
                                    int i43222 = i42 | i40;
                                    t15 = t14;
                                    i25 = i22;
                                    i29 = i20;
                                    i30 = i21;
                                    i32 = i18;
                                    i26 = i11;
                                    i31 = i43222;
                                    i28 = i14;
                                    break;
                                } else {
                                    i15 = i33;
                                    i17 = i42;
                                    i19 = i20;
                                    unsafe = unsafe2;
                                    i16 = i21;
                                    i12 = i11;
                                    break;
                                }
                            case 10:
                                t12 = t15;
                                i20 = i36;
                                i14 = i34;
                                i21 = i38;
                                bArr2 = bArr;
                                if (i35 == 2) {
                                    i27 = j.b(bArr2, i33, bVar2);
                                    unsafe2.putObject(t12, V, bVar2.f15016c);
                                    i31 = i42 | i40;
                                    i25 = i10;
                                    t15 = t12;
                                    i29 = i20;
                                    i30 = i21;
                                    i28 = i14;
                                    i32 = i18;
                                    i26 = i11;
                                    break;
                                } else {
                                    i15 = i33;
                                    i17 = i42;
                                    i19 = i20;
                                    unsafe = unsafe2;
                                    i16 = i21;
                                    i12 = i11;
                                    break;
                                }
                            case 12:
                                t12 = t15;
                                i20 = i36;
                                i14 = i34;
                                i21 = i38;
                                bArr2 = bArr;
                                if (i35 == 0) {
                                    i27 = j.I(bArr2, i33, bVar2);
                                    int i44 = bVar2.f15014a;
                                    u0.e t18 = s1Var2.t(i20);
                                    if (t18 != null && !t18.a(i44)) {
                                        w(t10).m(i21, Long.valueOf(i44));
                                        i25 = i10;
                                        t15 = t12;
                                        i31 = i42;
                                        i29 = i20;
                                        i30 = i21;
                                        i28 = i14;
                                        i32 = i18;
                                        i26 = i11;
                                    } else {
                                        unsafe2.putInt(t12, V, i44);
                                        i31 = i42 | i40;
                                        i25 = i10;
                                        t15 = t12;
                                        i29 = i20;
                                        i30 = i21;
                                        i28 = i14;
                                        i32 = i18;
                                        i26 = i11;
                                        break;
                                    }
                                } else {
                                    i15 = i33;
                                    i17 = i42;
                                    i19 = i20;
                                    unsafe = unsafe2;
                                    i16 = i21;
                                    i12 = i11;
                                    break;
                                }
                                break;
                            case 15:
                                i20 = i36;
                                i21 = i38;
                                bArr2 = bArr;
                                i14 = i34;
                                if (i35 == 0) {
                                    i27 = j.I(bArr2, i33, bVar2);
                                    t12 = t10;
                                    unsafe2.putInt(t12, V, p.c(bVar2.f15014a));
                                    i31 = i42 | i40;
                                    i25 = i10;
                                    t15 = t12;
                                    i29 = i20;
                                    i30 = i21;
                                    i28 = i14;
                                    i32 = i18;
                                    i26 = i11;
                                    break;
                                } else {
                                    i15 = i33;
                                    i17 = i42;
                                    i19 = i20;
                                    unsafe = unsafe2;
                                    i16 = i21;
                                    i12 = i11;
                                    break;
                                }
                            case 16:
                                i20 = i36;
                                i14 = i34;
                                if (i35 == 0) {
                                    bArr2 = bArr;
                                    int L2 = j.L(bArr2, i33, bVar2);
                                    i21 = i38;
                                    unsafe2.putLong(t10, V, p.d(bVar2.f15015b));
                                    i31 = i42 | i40;
                                    t15 = t10;
                                    i25 = i10;
                                    i27 = L2;
                                    i29 = i20;
                                    i30 = i21;
                                    i28 = i14;
                                    i32 = i18;
                                    i26 = i11;
                                    break;
                                } else {
                                    i21 = i38;
                                    i15 = i33;
                                    i17 = i42;
                                    i19 = i20;
                                    unsafe = unsafe2;
                                    i16 = i21;
                                    i12 = i11;
                                    break;
                                }
                            case 17:
                                if (i35 == 3) {
                                    i27 = j.n(s1Var2.v(i36), bArr, i33, i10, (i34 << 3) | 4, bVar);
                                    if ((i42 & i40) == 0) {
                                        unsafe2.putObject(t15, V, bVar2.f15016c);
                                    } else {
                                        unsafe2.putObject(t15, V, u0.k(unsafe2.getObject(t15, V), bVar2.f15016c));
                                    }
                                    i31 = i42 | i40;
                                    bArr2 = bArr;
                                    i25 = i10;
                                    i26 = i11;
                                    i30 = i38;
                                    i29 = i36;
                                    i28 = i34;
                                    i32 = i18;
                                    break;
                                } else {
                                    i20 = i36;
                                    i14 = i34;
                                    i21 = i38;
                                    i15 = i33;
                                    i17 = i42;
                                    i19 = i20;
                                    unsafe = unsafe2;
                                    i16 = i21;
                                    i12 = i11;
                                    break;
                                }
                            default:
                                i20 = i36;
                                i21 = i38;
                                i14 = i34;
                                i15 = i33;
                                i17 = i42;
                                i19 = i20;
                                unsafe = unsafe2;
                                i16 = i21;
                                i12 = i11;
                                break;
                        }
                    } else {
                        i14 = i34;
                        T t19 = t15;
                        bArr2 = bArr;
                        if (s02 != 27) {
                            i19 = i36;
                            i17 = i31;
                            i18 = i32;
                            if (s02 <= 49) {
                                int i45 = i33;
                                unsafe = unsafe2;
                                i24 = i38;
                                i27 = f0(t10, bArr, i33, i10, i38, i14, i35, i19, i37, s02, V, bVar);
                                if (i27 != i45) {
                                    s1Var2 = this;
                                    t15 = t10;
                                    bArr2 = bArr;
                                    i25 = i10;
                                    i26 = i11;
                                    bVar2 = bVar;
                                    i28 = i14;
                                    i30 = i24;
                                    i29 = i19;
                                    i31 = i17;
                                    i32 = i18;
                                    unsafe2 = unsafe;
                                } else {
                                    i12 = i11;
                                    i15 = i27;
                                    i16 = i24;
                                }
                            } else {
                                i23 = i33;
                                unsafe = unsafe2;
                                i24 = i38;
                                if (s02 != 50) {
                                    i27 = c0(t10, bArr, i23, i10, i24, i14, i35, i37, s02, V, i19, bVar);
                                    if (i27 != i23) {
                                        s1Var2 = this;
                                        t15 = t10;
                                        bArr2 = bArr;
                                        i25 = i10;
                                        i26 = i11;
                                        bVar2 = bVar;
                                        i28 = i14;
                                        i30 = i24;
                                        i29 = i19;
                                        i31 = i17;
                                        i32 = i18;
                                        unsafe2 = unsafe;
                                    } else {
                                        i12 = i11;
                                        i15 = i27;
                                        i16 = i24;
                                    }
                                } else if (i35 == 2) {
                                    i27 = b0(t10, bArr, i23, i10, i19, V, bVar);
                                    if (i27 != i23) {
                                        s1Var2 = this;
                                        t15 = t10;
                                        bArr2 = bArr;
                                        i25 = i10;
                                        i26 = i11;
                                        bVar2 = bVar;
                                        i28 = i14;
                                        i30 = i24;
                                        i29 = i19;
                                        i31 = i17;
                                        i32 = i18;
                                        unsafe2 = unsafe;
                                    } else {
                                        i12 = i11;
                                        i15 = i27;
                                        i16 = i24;
                                    }
                                }
                            }
                        } else if (i35 == 2) {
                            u0.j jVar = (u0.j) unsafe2.getObject(t19, V);
                            if (!jVar.r0()) {
                                int size = jVar.size();
                                jVar = jVar.b(size == 0 ? 10 : size * 2);
                                unsafe2.putObject(t19, V, jVar);
                            }
                            i18 = i32;
                            i27 = j.q(s1Var2.v(i36), i38, bArr, i33, i10, jVar, bVar);
                            t15 = t10;
                            i25 = i10;
                            i30 = i38;
                            i28 = i14;
                            i29 = i36;
                            i31 = i31;
                            i32 = i18;
                            i26 = i11;
                        } else {
                            i19 = i36;
                            i17 = i31;
                            i18 = i32;
                            i23 = i33;
                            unsafe = unsafe2;
                            i24 = i38;
                        }
                        i12 = i11;
                        i15 = i23;
                        i16 = i24;
                    }
                }
                if (i16 != i12 || i12 == 0) {
                    if (this.f15257f && bVar.f15017d != f0.b()) {
                        i27 = j.g(i16, bArr, i15, i10, t10, this.f15256e, this.f15266o, bVar);
                    } else {
                        i27 = j.G(i16, bArr, i15, i10, w(t10), bVar);
                    }
                    t15 = t10;
                    bArr2 = bArr;
                    i25 = i10;
                    i30 = i16;
                    s1Var2 = this;
                    bVar2 = bVar;
                    i28 = i14;
                    i29 = i19;
                    i31 = i17;
                    i32 = i18;
                    unsafe2 = unsafe;
                    i26 = i12;
                } else {
                    i13 = 1048575;
                    s1Var = this;
                    i27 = i15;
                    i30 = i16;
                    i31 = i17;
                    i32 = i18;
                }
            } else {
                unsafe = unsafe2;
                i12 = i26;
                s1Var = s1Var2;
                i13 = 1048575;
            }
        }
        if (i32 != i13) {
            t11 = t10;
            unsafe.putInt(t11, i32, i31);
        } else {
            t11 = t10;
        }
        i3 i3Var = null;
        for (int i46 = s1Var.f15262k; i46 < s1Var.f15263l; i46++) {
            i3Var = (i3) s1Var.q(t11, s1Var.f15261j[i46], i3Var, s1Var.f15266o);
        }
        if (i3Var != null) {
            s1Var.f15266o.o(t11, i3Var);
        }
        if (i12 == 0) {
            if (i27 != i10) {
                throw InvalidProtocolBufferException.parseFailure();
            }
        } else if (i27 > i10 || i30 != i12) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        return i27;
    }

    @Override // com.google.protobuf.n2
    public void e(T t10) {
        int i9;
        int i10 = this.f15262k;
        while (true) {
            i9 = this.f15263l;
            if (i10 >= i9) {
                break;
            }
            long V = V(t0(this.f15261j[i10]));
            Object G = m3.G(t10, V);
            if (G != null) {
                m3.X(t10, V, this.f15268q.f(G));
            }
            i10++;
        }
        int length = this.f15261j.length;
        while (i9 < length) {
            this.f15265n.c(t10, this.f15261j[i9]);
            i9++;
        }
        this.f15266o.j(t10);
        if (this.f15257f) {
            this.f15267p.f(t10);
        }
    }

    @Override // com.google.protobuf.n2
    public final boolean f(T t10) {
        int i9;
        int i10;
        int i11 = 1048575;
        int i12 = 0;
        int i13 = 0;
        while (i13 < this.f15262k) {
            int i14 = this.f15261j[i13];
            int U = U(i14);
            int t02 = t0(i14);
            int i15 = this.f15252a[i14 + 2];
            int i16 = i15 & 1048575;
            int i17 = 1 << (i15 >>> 20);
            if (i16 != i11) {
                if (i16 != 1048575) {
                    i12 = f15251s.getInt(t10, i16);
                }
                i10 = i12;
                i9 = i16;
            } else {
                i9 = i11;
                i10 = i12;
            }
            if (J(t02) && !D(t10, i14, i9, i10, i17)) {
                return false;
            }
            int s02 = s0(t02);
            if (s02 != 9 && s02 != 17) {
                if (s02 != 27) {
                    if (s02 == 60 || s02 == 68) {
                        if (I(t10, U, i14) && !E(t10, t02, v(i14))) {
                            return false;
                        }
                    } else if (s02 != 49) {
                        if (s02 == 50 && !G(t10, t02, i14)) {
                            return false;
                        }
                    }
                }
                if (!F(t10, t02, i14)) {
                    return false;
                }
            } else if (D(t10, i14, i9, i10, i17) && !E(t10, t02, v(i14))) {
                return false;
            }
            i13++;
            i11 = i9;
            i12 = i10;
        }
        return !this.f15257f || this.f15267p.c(t10).B();
    }

    @Override // com.google.protobuf.n2
    public int g(T t10) {
        return this.f15259h ? y(t10) : x(t10);
    }

    @Override // com.google.protobuf.n2
    public T h() {
        return (T) this.f15264m.a(this.f15256e);
    }

    @Override // com.google.protobuf.n2
    public void i(T t10, k2 k2Var, f0 f0Var) throws IOException {
        Objects.requireNonNull(f0Var);
        M(this.f15266o, this.f15267p, t10, k2Var, f0Var);
    }

    @Override // com.google.protobuf.n2
    public void j(T t10, byte[] bArr, int i9, int i10, j.b bVar) throws IOException {
        if (this.f15259h) {
            e0(t10, bArr, i9, i10, bVar);
        } else {
            d0(t10, bArr, i9, i10, 0, bVar);
        }
    }
}
