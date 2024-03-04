package com.google.protobuf;

import com.google.protobuf.WireFormat;
import com.google.protobuf.o0.c;
import com.google.protobuf.o1;
import com.google.protobuf.u0;
import com.google.protobuf.w0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class o0<T extends c<T>> {

    /* renamed from: d  reason: collision with root package name */
    private static final o0 f15112d = new o0(true);

    /* renamed from: a  reason: collision with root package name */
    private final r2<T, Object> f15113a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f15114b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f15115c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15116a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f15117b;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f15117b = iArr;
            try {
                iArr[WireFormat.FieldType.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15117b[WireFormat.FieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15117b[WireFormat.FieldType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15117b[WireFormat.FieldType.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15117b[WireFormat.FieldType.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15117b[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f15117b[WireFormat.FieldType.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f15117b[WireFormat.FieldType.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f15117b[WireFormat.FieldType.GROUP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f15117b[WireFormat.FieldType.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f15117b[WireFormat.FieldType.STRING.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f15117b[WireFormat.FieldType.BYTES.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f15117b[WireFormat.FieldType.UINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f15117b[WireFormat.FieldType.SFIXED32.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f15117b[WireFormat.FieldType.SFIXED64.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f15117b[WireFormat.FieldType.SINT32.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f15117b[WireFormat.FieldType.SINT64.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f15117b[WireFormat.FieldType.ENUM.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr2 = new int[WireFormat.JavaType.values().length];
            f15116a = iArr2;
            try {
                iArr2[WireFormat.JavaType.INT.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f15116a[WireFormat.JavaType.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f15116a[WireFormat.JavaType.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f15116a[WireFormat.JavaType.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f15116a[WireFormat.JavaType.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f15116a[WireFormat.JavaType.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f15116a[WireFormat.JavaType.BYTE_STRING.ordinal()] = 7;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f15116a[WireFormat.JavaType.ENUM.ordinal()] = 8;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f15116a[WireFormat.JavaType.MESSAGE.ordinal()] = 9;
            } catch (NoSuchFieldError unused27) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class b<T extends c<T>> {

        /* renamed from: a  reason: collision with root package name */
        private r2<T, Object> f15118a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f15119b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f15120c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f15121d;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void c() {
            if (this.f15120c) {
                return;
            }
            this.f15118a = o0.i(this.f15118a, true);
            this.f15120c = true;
        }

        private void i(Map.Entry<T, Object> entry) {
            T key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof w0) {
                value = ((w0) value).g();
            }
            if (key.isRepeated()) {
                Object e10 = e(key);
                if (e10 == null) {
                    e10 = new ArrayList();
                }
                for (Object obj : (List) value) {
                    ((List) e10).add(o0.k(obj));
                }
                this.f15118a.put(key, e10);
            } else if (key.s0() == WireFormat.JavaType.MESSAGE) {
                Object e11 = e(key);
                if (e11 == null) {
                    this.f15118a.put(key, o0.k(value));
                } else if (e11 instanceof o1.a) {
                    key.n((o1.a) e11, (o1) value);
                } else {
                    this.f15118a.put(key, key.n(((o1) e11).toBuilder(), (o1) value).build());
                }
            } else {
                this.f15118a.put(key, o0.k(value));
            }
        }

        private static Object j(Object obj) {
            return obj instanceof o1.a ? ((o1.a) obj).build() : obj;
        }

        private static <T extends c<T>> Object k(T t10, Object obj) {
            if (obj != null && t10.s0() == WireFormat.JavaType.MESSAGE) {
                if (t10.isRepeated()) {
                    if (obj instanceof List) {
                        List list = (List) obj;
                        for (int i9 = 0; i9 < list.size(); i9++) {
                            Object obj2 = list.get(i9);
                            Object j10 = j(obj2);
                            if (j10 != obj2) {
                                if (list == obj) {
                                    list = new ArrayList(list);
                                }
                                list.set(i9, j10);
                            }
                        }
                        return list;
                    }
                    throw new IllegalStateException("Repeated field should contains a List but actually contains type: " + obj.getClass());
                }
                return j(obj);
            }
            return obj;
        }

        private static <T extends c<T>> void l(r2<T, Object> r2Var) {
            for (int i9 = 0; i9 < r2Var.k(); i9++) {
                m(r2Var.j(i9));
            }
            for (Map.Entry<T, Object> entry : r2Var.m()) {
                m(entry);
            }
        }

        private static <T extends c<T>> void m(Map.Entry<T, Object> entry) {
            entry.setValue(k(entry.getKey(), entry.getValue()));
        }

        private void o(T t10, Object obj) {
            if (o0.D(t10.e0(), obj)) {
                return;
            }
            if (t10.e0().getJavaType() != WireFormat.JavaType.MESSAGE || !(obj instanceof o1.a)) {
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(t10.getNumber()), t10.e0().getJavaType(), obj.getClass().getName()));
            }
        }

        public void a(T t10, Object obj) {
            List list;
            c();
            if (t10.isRepeated()) {
                this.f15121d = this.f15121d || (obj instanceof o1.a);
                o(t10, obj);
                Object e10 = e(t10);
                if (e10 == null) {
                    list = new ArrayList();
                    this.f15118a.put(t10, list);
                } else {
                    list = (List) e10;
                }
                list.add(obj);
                return;
            }
            throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
        }

        public o0<T> b() {
            if (this.f15118a.isEmpty()) {
                return o0.p();
            }
            this.f15120c = false;
            r2<T, Object> r2Var = this.f15118a;
            if (this.f15121d) {
                r2Var = o0.i(r2Var, false);
                l(r2Var);
            }
            o0<T> o0Var = new o0<>(r2Var, null);
            ((o0) o0Var).f15115c = this.f15119b;
            return o0Var;
        }

        public Map<T, Object> d() {
            if (!this.f15119b) {
                return this.f15118a.o() ? this.f15118a : Collections.unmodifiableMap(this.f15118a);
            }
            r2 i9 = o0.i(this.f15118a, false);
            if (this.f15118a.o()) {
                i9.p();
            } else {
                l(i9);
            }
            return i9;
        }

        public Object e(T t10) {
            return k(t10, f(t10));
        }

        Object f(T t10) {
            Object obj = this.f15118a.get(t10);
            return obj instanceof w0 ? ((w0) obj).g() : obj;
        }

        public boolean g(T t10) {
            if (t10.isRepeated()) {
                throw new IllegalArgumentException("hasField() can only be called on non-repeated fields.");
            }
            return this.f15118a.get(t10) != null;
        }

        public void h(o0<T> o0Var) {
            c();
            for (int i9 = 0; i9 < ((o0) o0Var).f15113a.k(); i9++) {
                i(((o0) o0Var).f15113a.j(i9));
            }
            for (Map.Entry<T, Object> entry : ((o0) o0Var).f15113a.m()) {
                i(entry);
            }
        }

        public void n(T t10, Object obj) {
            c();
            boolean z10 = false;
            if (t10.isRepeated()) {
                if (obj instanceof List) {
                    ArrayList arrayList = new ArrayList((List) obj);
                    for (Object obj2 : arrayList) {
                        o(t10, obj2);
                        this.f15121d = this.f15121d || (obj2 instanceof o1.a);
                    }
                    obj = arrayList;
                } else {
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
            } else {
                o(t10, obj);
            }
            if (obj instanceof w0) {
                this.f15119b = true;
            }
            this.f15121d = (this.f15121d || (obj instanceof o1.a)) ? true : true;
            this.f15118a.put(t10, obj);
        }

        private b() {
            this(r2.q(16));
        }

        private b(r2<T, Object> r2Var) {
            this.f15118a = r2Var;
            this.f15120c = true;
        }
    }

    /* loaded from: classes3.dex */
    public interface c<T extends c<T>> extends Comparable<T> {
        WireFormat.FieldType e0();

        int getNumber();

        boolean isPacked();

        boolean isRepeated();

        o1.a n(o1.a aVar, o1 o1Var);

        WireFormat.JavaType s0();
    }

    /* synthetic */ o0(r2 r2Var, a aVar) {
        this(r2Var);
    }

    private static <T extends c<T>> boolean C(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.s0() == WireFormat.JavaType.MESSAGE) {
            if (key.isRepeated()) {
                for (o1 o1Var : (List) entry.getValue()) {
                    if (!o1Var.isInitialized()) {
                        return false;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (value instanceof o1) {
                    if (!((o1) value).isInitialized()) {
                        return false;
                    }
                } else if (value instanceof w0) {
                    return true;
                } else {
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean D(WireFormat.FieldType fieldType, Object obj) {
        u0.a(obj);
        switch (a.f15116a[fieldType.getJavaType().ordinal()]) {
            case 1:
                return obj instanceof Integer;
            case 2:
                return obj instanceof Long;
            case 3:
                return obj instanceof Float;
            case 4:
                return obj instanceof Double;
            case 5:
                return obj instanceof Boolean;
            case 6:
                return obj instanceof String;
            case 7:
                return (obj instanceof ByteString) || (obj instanceof byte[]);
            case 8:
                return (obj instanceof Integer) || (obj instanceof u0.c);
            case 9:
                return (obj instanceof o1) || (obj instanceof w0);
            default:
                return false;
        }
    }

    private void H(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof w0) {
            value = ((w0) value).g();
        }
        if (key.isRepeated()) {
            Object r10 = r(key);
            if (r10 == null) {
                r10 = new ArrayList();
            }
            for (Object obj : (List) value) {
                ((List) r10).add(k(obj));
            }
            this.f15113a.put(key, r10);
        } else if (key.s0() == WireFormat.JavaType.MESSAGE) {
            Object r11 = r(key);
            if (r11 == null) {
                this.f15113a.put(key, k(value));
                return;
            }
            this.f15113a.put(key, key.n(((o1) r11).toBuilder(), (o1) value).build());
        } else {
            this.f15113a.put(key, k(value));
        }
    }

    public static <T extends c<T>> b<T> I() {
        return new b<>((a) null);
    }

    public static <T extends c<T>> o0<T> J() {
        return new o0<>();
    }

    public static Object K(p pVar, WireFormat.FieldType fieldType, boolean z10) throws IOException {
        if (z10) {
            return WireFormat.d(pVar, fieldType, WireFormat.b.f14848b);
        }
        return WireFormat.d(pVar, fieldType, WireFormat.b.f14847a);
    }

    private void M(T t10, Object obj) {
        if (!D(t10.e0(), obj)) {
            throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(t10.getNumber()), t10.e0().getJavaType(), obj.getClass().getName()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void N(CodedOutputStream codedOutputStream, WireFormat.FieldType fieldType, int i9, Object obj) throws IOException {
        if (fieldType == WireFormat.FieldType.GROUP) {
            codedOutputStream.D0(i9, (o1) obj);
            return;
        }
        codedOutputStream.b1(i9, x(fieldType, false));
        O(codedOutputStream, fieldType, obj);
    }

    static void O(CodedOutputStream codedOutputStream, WireFormat.FieldType fieldType, Object obj) throws IOException {
        switch (a.f15117b[fieldType.ordinal()]) {
            case 1:
                codedOutputStream.u0(((Double) obj).doubleValue());
                return;
            case 2:
                codedOutputStream.C0(((Float) obj).floatValue());
                return;
            case 3:
                codedOutputStream.K0(((Long) obj).longValue());
                return;
            case 4:
                codedOutputStream.f1(((Long) obj).longValue());
                return;
            case 5:
                codedOutputStream.I0(((Integer) obj).intValue());
                return;
            case 6:
                codedOutputStream.A0(((Long) obj).longValue());
                return;
            case 7:
                codedOutputStream.y0(((Integer) obj).intValue());
                return;
            case 8:
                codedOutputStream.o0(((Boolean) obj).booleanValue());
                return;
            case 9:
                codedOutputStream.F0((o1) obj);
                return;
            case 10:
                codedOutputStream.N0((o1) obj);
                return;
            case 11:
                if (obj instanceof ByteString) {
                    codedOutputStream.s0((ByteString) obj);
                    return;
                } else {
                    codedOutputStream.a1((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof ByteString) {
                    codedOutputStream.s0((ByteString) obj);
                    return;
                } else {
                    codedOutputStream.p0((byte[]) obj);
                    return;
                }
            case 13:
                codedOutputStream.d1(((Integer) obj).intValue());
                return;
            case 14:
                codedOutputStream.S0(((Integer) obj).intValue());
                return;
            case 15:
                codedOutputStream.U0(((Long) obj).longValue());
                return;
            case 16:
                codedOutputStream.W0(((Integer) obj).intValue());
                return;
            case 17:
                codedOutputStream.Y0(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof u0.c) {
                    codedOutputStream.w0(((u0.c) obj).getNumber());
                    return;
                } else {
                    codedOutputStream.w0(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    public static void P(c<?> cVar, Object obj, CodedOutputStream codedOutputStream) throws IOException {
        WireFormat.FieldType e02 = cVar.e0();
        int number = cVar.getNumber();
        if (cVar.isRepeated()) {
            List<Object> list = (List) obj;
            if (cVar.isPacked()) {
                codedOutputStream.b1(number, 2);
                int i9 = 0;
                for (Object obj2 : list) {
                    i9 += m(e02, obj2);
                }
                codedOutputStream.Q0(i9);
                for (Object obj3 : list) {
                    O(codedOutputStream, e02, obj3);
                }
                return;
            }
            for (Object obj4 : list) {
                N(codedOutputStream, e02, number, obj4);
            }
        } else if (obj instanceof w0) {
            N(codedOutputStream, e02, number, ((w0) obj).g());
        } else {
            N(codedOutputStream, e02, number, obj);
        }
    }

    private void R(Map.Entry<T, Object> entry, CodedOutputStream codedOutputStream) throws IOException {
        T key = entry.getKey();
        if (key.s0() == WireFormat.JavaType.MESSAGE && !key.isRepeated() && !key.isPacked()) {
            Object value = entry.getValue();
            if (value instanceof w0) {
                value = ((w0) value).g();
            }
            codedOutputStream.O0(entry.getKey().getNumber(), (o1) value);
            return;
        }
        P(key, entry.getValue(), codedOutputStream);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T extends c<T>> r2<T, Object> i(r2<T, Object> r2Var, boolean z10) {
        r2<T, Object> q10 = r2.q(16);
        for (int i9 = 0; i9 < r2Var.k(); i9++) {
            j(q10, r2Var.j(i9), z10);
        }
        for (Map.Entry<T, Object> entry : r2Var.m()) {
            j(q10, entry, z10);
        }
        return q10;
    }

    private static <T extends c<T>> void j(Map<T, Object> map, Map.Entry<T, Object> entry, boolean z10) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof w0) {
            map.put(key, ((w0) value).g());
        } else if (z10 && (value instanceof List)) {
            map.put(key, new ArrayList((List) value));
        } else {
            map.put(key, value);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object k(Object obj) {
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            byte[] bArr2 = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            return bArr2;
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int l(WireFormat.FieldType fieldType, int i9, Object obj) {
        int X = CodedOutputStream.X(i9);
        if (fieldType == WireFormat.FieldType.GROUP) {
            X *= 2;
        }
        return X + m(fieldType, obj);
    }

    static int m(WireFormat.FieldType fieldType, Object obj) {
        switch (a.f15117b[fieldType.ordinal()]) {
            case 1:
                return CodedOutputStream.k(((Double) obj).doubleValue());
            case 2:
                return CodedOutputStream.s(((Float) obj).floatValue());
            case 3:
                return CodedOutputStream.A(((Long) obj).longValue());
            case 4:
                return CodedOutputStream.b0(((Long) obj).longValue());
            case 5:
                return CodedOutputStream.y(((Integer) obj).intValue());
            case 6:
                return CodedOutputStream.q(((Long) obj).longValue());
            case 7:
                return CodedOutputStream.o(((Integer) obj).intValue());
            case 8:
                return CodedOutputStream.f(((Boolean) obj).booleanValue());
            case 9:
                return CodedOutputStream.v((o1) obj);
            case 10:
                if (obj instanceof w0) {
                    return CodedOutputStream.D((w0) obj);
                }
                return CodedOutputStream.I((o1) obj);
            case 11:
                if (obj instanceof ByteString) {
                    return CodedOutputStream.i((ByteString) obj);
                }
                return CodedOutputStream.W((String) obj);
            case 12:
                if (obj instanceof ByteString) {
                    return CodedOutputStream.i((ByteString) obj);
                }
                return CodedOutputStream.g((byte[]) obj);
            case 13:
                return CodedOutputStream.Z(((Integer) obj).intValue());
            case 14:
                return CodedOutputStream.O(((Integer) obj).intValue());
            case 15:
                return CodedOutputStream.Q(((Long) obj).longValue());
            case 16:
                return CodedOutputStream.S(((Integer) obj).intValue());
            case 17:
                return CodedOutputStream.U(((Long) obj).longValue());
            case 18:
                if (obj instanceof u0.c) {
                    return CodedOutputStream.m(((u0.c) obj).getNumber());
                }
                return CodedOutputStream.m(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static int n(c<?> cVar, Object obj) {
        WireFormat.FieldType e02 = cVar.e0();
        int number = cVar.getNumber();
        if (cVar.isRepeated()) {
            int i9 = 0;
            if (cVar.isPacked()) {
                for (Object obj2 : (List) obj) {
                    i9 += m(e02, obj2);
                }
                return CodedOutputStream.X(number) + i9 + CodedOutputStream.M(i9);
            }
            for (Object obj3 : (List) obj) {
                i9 += l(e02, number, obj3);
            }
            return i9;
        }
        return l(e02, number, obj);
    }

    public static <T extends c<T>> o0<T> p() {
        return f15112d;
    }

    private int t(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (key.s0() == WireFormat.JavaType.MESSAGE && !key.isRepeated() && !key.isPacked()) {
            if (value instanceof w0) {
                return CodedOutputStream.B(entry.getKey().getNumber(), (w0) value);
            }
            return CodedOutputStream.F(entry.getKey().getNumber(), (o1) value);
        }
        return n(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int x(WireFormat.FieldType fieldType, boolean z10) {
        if (z10) {
            return 2;
        }
        return fieldType.getWireType();
    }

    public boolean A() {
        return this.f15114b;
    }

    public boolean B() {
        for (int i9 = 0; i9 < this.f15113a.k(); i9++) {
            if (!C(this.f15113a.j(i9))) {
                return false;
            }
        }
        for (Map.Entry<T, Object> entry : this.f15113a.m()) {
            if (!C(entry)) {
                return false;
            }
        }
        return true;
    }

    public Iterator<Map.Entry<T, Object>> E() {
        if (this.f15115c) {
            return new w0.c(this.f15113a.entrySet().iterator());
        }
        return this.f15113a.entrySet().iterator();
    }

    public void F() {
        if (this.f15114b) {
            return;
        }
        this.f15113a.p();
        this.f15114b = true;
    }

    public void G(o0<T> o0Var) {
        for (int i9 = 0; i9 < o0Var.f15113a.k(); i9++) {
            H(o0Var.f15113a.j(i9));
        }
        for (Map.Entry<T, Object> entry : o0Var.f15113a.m()) {
            H(entry);
        }
    }

    public void L(T t10, Object obj) {
        if (t10.isRepeated()) {
            if (obj instanceof List) {
                ArrayList<Object> arrayList = new ArrayList();
                arrayList.addAll((List) obj);
                for (Object obj2 : arrayList) {
                    M(t10, obj2);
                }
                obj = arrayList;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        } else {
            M(t10, obj);
        }
        if (obj instanceof w0) {
            this.f15115c = true;
        }
        this.f15113a.put(t10, obj);
    }

    public void Q(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.f15113a.k(); i9++) {
            R(this.f15113a.j(i9), codedOutputStream);
        }
        for (Map.Entry<T, Object> entry : this.f15113a.m()) {
            R(entry, codedOutputStream);
        }
    }

    public void S(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.f15113a.k(); i9++) {
            Map.Entry<T, Object> j10 = this.f15113a.j(i9);
            P(j10.getKey(), j10.getValue(), codedOutputStream);
        }
        for (Map.Entry<T, Object> entry : this.f15113a.m()) {
            P(entry.getKey(), entry.getValue(), codedOutputStream);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof o0) {
            return this.f15113a.equals(((o0) obj).f15113a);
        }
        return false;
    }

    public void f(T t10, Object obj) {
        List list;
        if (t10.isRepeated()) {
            M(t10, obj);
            Object r10 = r(t10);
            if (r10 == null) {
                list = new ArrayList();
                this.f15113a.put(t10, list);
            } else {
                list = (List) r10;
            }
            list.add(obj);
            return;
        }
        throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
    }

    public void g(T t10) {
        this.f15113a.remove(t10);
        if (this.f15113a.isEmpty()) {
            this.f15115c = false;
        }
    }

    /* renamed from: h */
    public o0<T> clone() {
        o0<T> J = J();
        for (int i9 = 0; i9 < this.f15113a.k(); i9++) {
            Map.Entry<T, Object> j10 = this.f15113a.j(i9);
            J.L(j10.getKey(), j10.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f15113a.m()) {
            J.L(entry.getKey(), entry.getValue());
        }
        J.f15115c = this.f15115c;
        return J;
    }

    public int hashCode() {
        return this.f15113a.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Iterator<Map.Entry<T, Object>> o() {
        if (this.f15115c) {
            return new w0.c(this.f15113a.h().iterator());
        }
        return this.f15113a.h().iterator();
    }

    public Map<T, Object> q() {
        if (!this.f15115c) {
            return this.f15113a.o() ? this.f15113a : Collections.unmodifiableMap(this.f15113a);
        }
        r2 i9 = i(this.f15113a, false);
        if (this.f15113a.o()) {
            i9.p();
        }
        return i9;
    }

    public Object r(T t10) {
        Object obj = this.f15113a.get(t10);
        return obj instanceof w0 ? ((w0) obj).g() : obj;
    }

    public int s() {
        int i9 = 0;
        for (int i10 = 0; i10 < this.f15113a.k(); i10++) {
            i9 += t(this.f15113a.j(i10));
        }
        for (Map.Entry<T, Object> entry : this.f15113a.m()) {
            i9 += t(entry);
        }
        return i9;
    }

    public Object u(T t10, int i9) {
        if (t10.isRepeated()) {
            Object r10 = r(t10);
            if (r10 != null) {
                return ((List) r10).get(i9);
            }
            throw new IndexOutOfBoundsException();
        }
        throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
    }

    public int v(T t10) {
        if (t10.isRepeated()) {
            Object r10 = r(t10);
            if (r10 == null) {
                return 0;
            }
            return ((List) r10).size();
        }
        throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
    }

    public int w() {
        int i9 = 0;
        for (int i10 = 0; i10 < this.f15113a.k(); i10++) {
            Map.Entry<T, Object> j10 = this.f15113a.j(i10);
            i9 += n(j10.getKey(), j10.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f15113a.m()) {
            i9 += n(entry.getKey(), entry.getValue());
        }
        return i9;
    }

    public boolean y(T t10) {
        if (t10.isRepeated()) {
            throw new IllegalArgumentException("hasField() can only be called on non-repeated fields.");
        }
        return this.f15113a.get(t10) != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean z() {
        return this.f15113a.isEmpty();
    }

    private o0() {
        this.f15113a = r2.q(16);
    }

    private o0(boolean z10) {
        this(r2.q(0));
        F();
    }

    private o0(r2<T, Object> r2Var) {
        this.f15113a = r2Var;
        F();
    }
}
