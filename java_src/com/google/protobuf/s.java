package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.u0;
import com.google.protobuf.w2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class s implements n1 {

    /* renamed from: a  reason: collision with root package name */
    private static final s f15230a = new s();

    /* renamed from: b  reason: collision with root package name */
    private static final Set<String> f15231b = new HashSet(Arrays.asList("cached_size", "serialized_size", "class"));

    /* renamed from: c  reason: collision with root package name */
    private static d f15232c = new d();

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f15233d = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class a implements u0.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Descriptors.FieldDescriptor f15234a;

        a(Descriptors.FieldDescriptor fieldDescriptor) {
            this.f15234a = fieldDescriptor;
        }

        @Override // com.google.protobuf.u0.e
        public boolean a(int i9) {
            return this.f15234a.q().a(i9) != null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class b implements u0.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Descriptors.FieldDescriptor f15235a;

        b(Descriptors.FieldDescriptor fieldDescriptor) {
            this.f15235a = fieldDescriptor;
        }

        @Override // com.google.protobuf.u0.e
        public boolean a(int i9) {
            return this.f15235a.q().a(i9) != null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class c {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15236a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f15237b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f15238c;

        static {
            int[] iArr = new int[Descriptors.FieldDescriptor.Type.values().length];
            f15238c = iArr;
            try {
                iArr[Descriptors.FieldDescriptor.Type.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15238c[Descriptors.FieldDescriptor.Type.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15238c[Descriptors.FieldDescriptor.Type.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15238c[Descriptors.FieldDescriptor.Type.ENUM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15238c[Descriptors.FieldDescriptor.Type.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15238c[Descriptors.FieldDescriptor.Type.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f15238c[Descriptors.FieldDescriptor.Type.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f15238c[Descriptors.FieldDescriptor.Type.GROUP.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f15238c[Descriptors.FieldDescriptor.Type.INT32.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f15238c[Descriptors.FieldDescriptor.Type.INT64.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f15238c[Descriptors.FieldDescriptor.Type.MESSAGE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f15238c[Descriptors.FieldDescriptor.Type.SFIXED32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f15238c[Descriptors.FieldDescriptor.Type.SFIXED64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f15238c[Descriptors.FieldDescriptor.Type.SINT32.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f15238c[Descriptors.FieldDescriptor.Type.SINT64.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f15238c[Descriptors.FieldDescriptor.Type.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f15238c[Descriptors.FieldDescriptor.Type.UINT32.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f15238c[Descriptors.FieldDescriptor.Type.UINT64.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr2 = new int[JavaType.values().length];
            f15237b = iArr2;
            try {
                iArr2[JavaType.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f15237b[JavaType.BYTE_STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f15237b[JavaType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f15237b[JavaType.FLOAT.ordinal()] = 4;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f15237b[JavaType.ENUM.ordinal()] = 5;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f15237b[JavaType.INT.ordinal()] = 6;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f15237b[JavaType.LONG.ordinal()] = 7;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f15237b[JavaType.STRING.ordinal()] = 8;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f15237b[JavaType.MESSAGE.ordinal()] = 9;
            } catch (NoSuchFieldError unused27) {
            }
            int[] iArr3 = new int[Descriptors.FileDescriptor.Syntax.values().length];
            f15236a = iArr3;
            try {
                iArr3[Descriptors.FileDescriptor.Syntax.PROTO2.ordinal()] = 1;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f15236a[Descriptors.FileDescriptor.Syntax.PROTO3.ordinal()] = 2;
            } catch (NoSuchFieldError unused29) {
            }
        }
    }

    private s() {
    }

    private static java.lang.reflect.Field e(Class<?> cls, int i9) {
        return m(cls, "bitField" + i9 + "_");
    }

    private static k0 f(Class<?> cls, Descriptors.FieldDescriptor fieldDescriptor, e eVar, boolean z10, u0.e eVar2) {
        c2 a10 = eVar.a(cls, fieldDescriptor.m());
        FieldType q10 = q(fieldDescriptor);
        return k0.f(fieldDescriptor.getNumber(), q10, a10, r(cls, fieldDescriptor, q10), z10, eVar2);
    }

    private static java.lang.reflect.Field g(Class<?> cls, Descriptors.FieldDescriptor fieldDescriptor) {
        return m(cls, n(fieldDescriptor));
    }

    private static m1 h(Class<?> cls, Descriptors.b bVar) {
        int i9 = c.f15236a[bVar.b().r().ordinal()];
        if (i9 != 1) {
            if (i9 == 2) {
                return j(cls, bVar);
            }
            throw new IllegalArgumentException("Unsupported syntax: " + bVar.b().r());
        }
        return i(cls, bVar);
    }

    private static w2 i(Class<?> cls, Descriptors.b bVar) {
        List<Descriptors.FieldDescriptor> m10 = bVar.m();
        w2.a f10 = w2.f(m10.size());
        f10.c(o(cls));
        f10.f(ProtoSyntax.PROTO2);
        f10.e(bVar.q().getMessageSetWireFormat());
        u0.e eVar = null;
        e eVar2 = new e(null);
        java.lang.reflect.Field field = null;
        int i9 = 0;
        int i10 = 0;
        int i11 = 1;
        while (i9 < m10.size()) {
            Descriptors.FieldDescriptor fieldDescriptor = m10.get(i9);
            boolean javaStringCheckUtf8 = fieldDescriptor.b().o().getJavaStringCheckUtf8();
            Descriptors.FieldDescriptor.JavaType t10 = fieldDescriptor.t();
            Descriptors.FieldDescriptor.JavaType javaType = Descriptors.FieldDescriptor.JavaType.ENUM;
            u0.e aVar = t10 == javaType ? new a(fieldDescriptor) : eVar;
            if (fieldDescriptor.m() != null) {
                f10.d(f(cls, fieldDescriptor, eVar2, javaStringCheckUtf8, aVar));
            } else {
                java.lang.reflect.Field l10 = l(cls, fieldDescriptor);
                int number = fieldDescriptor.getNumber();
                FieldType q10 = q(fieldDescriptor);
                if (fieldDescriptor.A()) {
                    Descriptors.FieldDescriptor j10 = fieldDescriptor.v().j(2);
                    if (j10.t() == javaType) {
                        aVar = new b(j10);
                    }
                    f10.d(k0.e(l10, number, p2.C(cls, fieldDescriptor.d()), aVar));
                } else if (!fieldDescriptor.isRepeated()) {
                    if (field == null) {
                        field = e(cls, i10);
                    }
                    if (fieldDescriptor.F()) {
                        f10.d(k0.j(l10, number, q10, field, i11, javaStringCheckUtf8, aVar));
                    } else {
                        f10.d(k0.i(l10, number, q10, field, i11, javaStringCheckUtf8, aVar));
                    }
                } else if (aVar != null) {
                    if (fieldDescriptor.isPacked()) {
                        f10.d(k0.h(l10, number, q10, aVar, g(cls, fieldDescriptor)));
                    } else {
                        f10.d(k0.d(l10, number, q10, aVar));
                    }
                } else if (fieldDescriptor.t() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                    f10.d(k0.k(l10, number, q10, t(cls, fieldDescriptor)));
                } else if (fieldDescriptor.isPacked()) {
                    f10.d(k0.g(l10, number, q10, g(cls, fieldDescriptor)));
                } else {
                    f10.d(k0.c(l10, number, q10, javaStringCheckUtf8));
                }
                i9++;
                eVar = null;
            }
            i11 <<= 1;
            if (i11 == 0) {
                i10++;
                field = null;
                i11 = 1;
            }
            i9++;
            eVar = null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i12 = 0; i12 < m10.size(); i12++) {
            Descriptors.FieldDescriptor fieldDescriptor2 = m10.get(i12);
            if (fieldDescriptor2.F() || (fieldDescriptor2.t() == Descriptors.FieldDescriptor.JavaType.MESSAGE && v(fieldDescriptor2.v()))) {
                arrayList.add(Integer.valueOf(fieldDescriptor2.getNumber()));
            }
        }
        int[] iArr = new int[arrayList.size()];
        for (int i13 = 0; i13 < arrayList.size(); i13++) {
            iArr[i13] = ((Integer) arrayList.get(i13)).intValue();
        }
        f10.b(iArr);
        return f10.a();
    }

    private static w2 j(Class<?> cls, Descriptors.b bVar) {
        List<Descriptors.FieldDescriptor> m10 = bVar.m();
        w2.a f10 = w2.f(m10.size());
        f10.c(o(cls));
        f10.f(ProtoSyntax.PROTO3);
        e eVar = new e(null);
        for (int i9 = 0; i9 < m10.size(); i9++) {
            Descriptors.FieldDescriptor fieldDescriptor = m10.get(i9);
            if (fieldDescriptor.m() != null) {
                f10.d(f(cls, fieldDescriptor, eVar, true, null));
            } else if (fieldDescriptor.A()) {
                f10.d(k0.e(l(cls, fieldDescriptor), fieldDescriptor.getNumber(), p2.C(cls, fieldDescriptor.d()), null));
            } else if (fieldDescriptor.isRepeated() && fieldDescriptor.t() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                f10.d(k0.k(l(cls, fieldDescriptor), fieldDescriptor.getNumber(), q(fieldDescriptor), t(cls, fieldDescriptor)));
            } else if (fieldDescriptor.isPacked()) {
                f10.d(k0.g(l(cls, fieldDescriptor), fieldDescriptor.getNumber(), q(fieldDescriptor), g(cls, fieldDescriptor)));
            } else {
                f10.d(k0.c(l(cls, fieldDescriptor), fieldDescriptor.getNumber(), q(fieldDescriptor), true));
            }
        }
        return f10.a();
    }

    private static Descriptors.b k(Class<?> cls) {
        return o(cls).getDescriptorForType();
    }

    private static java.lang.reflect.Field l(Class<?> cls, Descriptors.FieldDescriptor fieldDescriptor) {
        return m(cls, p(fieldDescriptor));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static java.lang.reflect.Field m(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Exception unused) {
            throw new IllegalArgumentException("Unable to find field " + str + " in message class " + cls.getName());
        }
    }

    private static String n(Descriptors.FieldDescriptor fieldDescriptor) {
        return w(fieldDescriptor.d()) + "MemoizedSerializedSize";
    }

    private static l1 o(Class<?> cls) {
        try {
            return (l1) cls.getDeclaredMethod("getDefaultInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e10) {
            throw new IllegalArgumentException("Unable to get default instance for message class " + cls.getName(), e10);
        }
    }

    static String p(Descriptors.FieldDescriptor fieldDescriptor) {
        String d10;
        if (fieldDescriptor.x() == Descriptors.FieldDescriptor.Type.GROUP) {
            d10 = fieldDescriptor.v().d();
        } else {
            d10 = fieldDescriptor.d();
        }
        String str = f15231b.contains(d10) ? "__" : "_";
        return w(d10) + str;
    }

    private static FieldType q(Descriptors.FieldDescriptor fieldDescriptor) {
        switch (c.f15238c[fieldDescriptor.x().ordinal()]) {
            case 1:
                if (fieldDescriptor.isRepeated()) {
                    return fieldDescriptor.isPacked() ? FieldType.BOOL_LIST_PACKED : FieldType.BOOL_LIST;
                }
                return FieldType.BOOL;
            case 2:
                return fieldDescriptor.isRepeated() ? FieldType.BYTES_LIST : FieldType.BYTES;
            case 3:
                if (fieldDescriptor.isRepeated()) {
                    return fieldDescriptor.isPacked() ? FieldType.DOUBLE_LIST_PACKED : FieldType.DOUBLE_LIST;
                }
                return FieldType.DOUBLE;
            case 4:
                if (fieldDescriptor.isRepeated()) {
                    return fieldDescriptor.isPacked() ? FieldType.ENUM_LIST_PACKED : FieldType.ENUM_LIST;
                }
                return FieldType.ENUM;
            case 5:
                if (fieldDescriptor.isRepeated()) {
                    return fieldDescriptor.isPacked() ? FieldType.FIXED32_LIST_PACKED : FieldType.FIXED32_LIST;
                }
                return FieldType.FIXED32;
            case 6:
                if (fieldDescriptor.isRepeated()) {
                    return fieldDescriptor.isPacked() ? FieldType.FIXED64_LIST_PACKED : FieldType.FIXED64_LIST;
                }
                return FieldType.FIXED64;
            case 7:
                if (fieldDescriptor.isRepeated()) {
                    return fieldDescriptor.isPacked() ? FieldType.FLOAT_LIST_PACKED : FieldType.FLOAT_LIST;
                }
                return FieldType.FLOAT;
            case 8:
                return fieldDescriptor.isRepeated() ? FieldType.GROUP_LIST : FieldType.GROUP;
            case 9:
                if (fieldDescriptor.isRepeated()) {
                    return fieldDescriptor.isPacked() ? FieldType.INT32_LIST_PACKED : FieldType.INT32_LIST;
                }
                return FieldType.INT32;
            case 10:
                if (fieldDescriptor.isRepeated()) {
                    return fieldDescriptor.isPacked() ? FieldType.INT64_LIST_PACKED : FieldType.INT64_LIST;
                }
                return FieldType.INT64;
            case 11:
                if (fieldDescriptor.A()) {
                    return FieldType.MAP;
                }
                return fieldDescriptor.isRepeated() ? FieldType.MESSAGE_LIST : FieldType.MESSAGE;
            case 12:
                if (fieldDescriptor.isRepeated()) {
                    return fieldDescriptor.isPacked() ? FieldType.SFIXED32_LIST_PACKED : FieldType.SFIXED32_LIST;
                }
                return FieldType.SFIXED32;
            case 13:
                if (fieldDescriptor.isRepeated()) {
                    return fieldDescriptor.isPacked() ? FieldType.SFIXED64_LIST_PACKED : FieldType.SFIXED64_LIST;
                }
                return FieldType.SFIXED64;
            case 14:
                if (fieldDescriptor.isRepeated()) {
                    return fieldDescriptor.isPacked() ? FieldType.SINT32_LIST_PACKED : FieldType.SINT32_LIST;
                }
                return FieldType.SINT32;
            case 15:
                if (fieldDescriptor.isRepeated()) {
                    return fieldDescriptor.isPacked() ? FieldType.SINT64_LIST_PACKED : FieldType.SINT64_LIST;
                }
                return FieldType.SINT64;
            case 16:
                return fieldDescriptor.isRepeated() ? FieldType.STRING_LIST : FieldType.STRING;
            case 17:
                if (fieldDescriptor.isRepeated()) {
                    return fieldDescriptor.isPacked() ? FieldType.UINT32_LIST_PACKED : FieldType.UINT32_LIST;
                }
                return FieldType.UINT32;
            case 18:
                if (fieldDescriptor.isRepeated()) {
                    return fieldDescriptor.isPacked() ? FieldType.UINT64_LIST_PACKED : FieldType.UINT64_LIST;
                }
                return FieldType.UINT64;
            default:
                throw new IllegalArgumentException("Unsupported field type: " + fieldDescriptor.x());
        }
    }

    private static Class<?> r(Class<?> cls, Descriptors.FieldDescriptor fieldDescriptor, FieldType fieldType) {
        switch (c.f15237b[fieldType.getJavaType().ordinal()]) {
            case 1:
                return Boolean.class;
            case 2:
                return ByteString.class;
            case 3:
                return Double.class;
            case 4:
                return Float.class;
            case 5:
            case 6:
                return Integer.class;
            case 7:
                return Long.class;
            case 8:
                return String.class;
            case 9:
                return s(cls, fieldDescriptor);
            default:
                throw new IllegalArgumentException("Invalid type for oneof: " + fieldType);
        }
    }

    private static Class<?> s(Class<?> cls, Descriptors.FieldDescriptor fieldDescriptor) {
        try {
            return cls.getDeclaredMethod(u(fieldDescriptor.x() == Descriptors.FieldDescriptor.Type.GROUP ? fieldDescriptor.v().d() : fieldDescriptor.d()), new Class[0]).getReturnType();
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    private static Class<?> t(Class<?> cls, Descriptors.FieldDescriptor fieldDescriptor) {
        try {
            return cls.getDeclaredMethod(u(fieldDescriptor.x() == Descriptors.FieldDescriptor.Type.GROUP ? fieldDescriptor.v().d() : fieldDescriptor.d()), Integer.TYPE).getReturnType();
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    private static String u(String str) {
        String w6 = w(str);
        return "get" + Character.toUpperCase(w6.charAt(0)) + w6.substring(1, w6.length());
    }

    private static boolean v(Descriptors.b bVar) {
        return f15232c.c(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String w(String str) {
        StringBuilder sb2 = new StringBuilder(str.length() + 1);
        boolean z10 = false;
        for (int i9 = 0; i9 < str.length(); i9++) {
            char charAt = str.charAt(i9);
            if (charAt != '_') {
                if (Character.isDigit(charAt)) {
                    sb2.append(charAt);
                } else {
                    if (z10) {
                        sb2.append(Character.toUpperCase(charAt));
                        z10 = false;
                    } else if (i9 == 0) {
                        sb2.append(Character.toLowerCase(charAt));
                    } else {
                        sb2.append(charAt);
                    }
                }
            }
            z10 = true;
        }
        return sb2.toString();
    }

    @Override // com.google.protobuf.n1
    public m1 a(Class<?> cls) {
        if (GeneratedMessageV3.class.isAssignableFrom(cls)) {
            return h(cls, k(cls));
        }
        throw new IllegalArgumentException("Unsupported message type: " + cls.getName());
    }

    @Override // com.google.protobuf.n1
    public boolean b(Class<?> cls) {
        return GeneratedMessageV3.class.isAssignableFrom(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        private final Map<Descriptors.b, Boolean> f15239a = new ConcurrentHashMap();

        /* renamed from: b  reason: collision with root package name */
        private int f15240b = 0;

        /* renamed from: c  reason: collision with root package name */
        private final Stack<a> f15241c = new Stack<>();

        /* renamed from: d  reason: collision with root package name */
        private final Map<Descriptors.b, a> f15242d = new HashMap();

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            final Descriptors.b f15243a;

            /* renamed from: b  reason: collision with root package name */
            final int f15244b;

            /* renamed from: c  reason: collision with root package name */
            int f15245c;

            /* renamed from: d  reason: collision with root package name */
            b f15246d = null;

            a(Descriptors.b bVar, int i9) {
                this.f15243a = bVar;
                this.f15244b = i9;
                this.f15245c = i9;
            }
        }

        d() {
        }

        private void a(b bVar) {
            boolean z10;
            b bVar2;
            Iterator<Descriptors.b> it = bVar.f15247a.iterator();
            loop0: while (true) {
                z10 = true;
                if (!it.hasNext()) {
                    z10 = false;
                    break;
                }
                Descriptors.b next = it.next();
                if (next.r()) {
                    break;
                }
                for (Descriptors.FieldDescriptor fieldDescriptor : next.m()) {
                    if (fieldDescriptor.F() || (fieldDescriptor.t() == Descriptors.FieldDescriptor.JavaType.MESSAGE && (bVar2 = this.f15242d.get(fieldDescriptor.v()).f15246d) != bVar && bVar2.f15248b)) {
                        break loop0;
                    }
                }
            }
            bVar.f15248b = z10;
            for (Descriptors.b bVar3 : bVar.f15247a) {
                this.f15239a.put(bVar3, Boolean.valueOf(bVar.f15248b));
            }
        }

        private a b(Descriptors.b bVar) {
            a pop;
            int i9 = this.f15240b;
            this.f15240b = i9 + 1;
            a aVar = new a(bVar, i9);
            this.f15241c.push(aVar);
            this.f15242d.put(bVar, aVar);
            for (Descriptors.FieldDescriptor fieldDescriptor : bVar.m()) {
                if (fieldDescriptor.t() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                    a aVar2 = this.f15242d.get(fieldDescriptor.v());
                    if (aVar2 == null) {
                        aVar.f15245c = Math.min(aVar.f15245c, b(fieldDescriptor.v()).f15245c);
                    } else if (aVar2.f15246d == null) {
                        aVar.f15245c = Math.min(aVar.f15245c, aVar2.f15245c);
                    }
                }
            }
            if (aVar.f15244b == aVar.f15245c) {
                b bVar2 = new b(null);
                do {
                    pop = this.f15241c.pop();
                    pop.f15246d = bVar2;
                    bVar2.f15247a.add(pop.f15243a);
                } while (pop != aVar);
                a(bVar2);
            }
            return aVar;
        }

        public boolean c(Descriptors.b bVar) {
            Boolean bool = this.f15239a.get(bVar);
            if (bool != null) {
                return bool.booleanValue();
            }
            synchronized (this) {
                Boolean bool2 = this.f15239a.get(bVar);
                if (bool2 != null) {
                    return bool2.booleanValue();
                }
                return b(bVar).f15246d.f15248b;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public static class b {

            /* renamed from: a  reason: collision with root package name */
            final List<Descriptors.b> f15247a;

            /* renamed from: b  reason: collision with root package name */
            boolean f15248b;

            private b() {
                this.f15247a = new ArrayList();
                this.f15248b = false;
            }

            /* synthetic */ b(a aVar) {
                this();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        private c2[] f15249a;

        private e() {
            this.f15249a = new c2[2];
        }

        private static c2 b(Class<?> cls, Descriptors.i iVar) {
            String w6 = s.w(iVar.d());
            return new c2(iVar.o(), s.m(cls, w6 + "Case_"), s.m(cls, w6 + "_"));
        }

        c2 a(Class<?> cls, Descriptors.i iVar) {
            int o10 = iVar.o();
            c2[] c2VarArr = this.f15249a;
            if (o10 >= c2VarArr.length) {
                this.f15249a = (c2[]) Arrays.copyOf(c2VarArr, o10 * 2);
            }
            c2 c2Var = this.f15249a[o10];
            if (c2Var == null) {
                c2 b10 = b(cls, iVar);
                this.f15249a[o10] = b10;
                return b10;
            }
            return c2Var;
        }

        /* synthetic */ e(a aVar) {
            this();
        }
    }
}
