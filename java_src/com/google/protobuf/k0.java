package com.google.protobuf;

import com.google.protobuf.u0;
/* loaded from: classes3.dex */
final class k0 implements Comparable<k0> {

    /* renamed from: a  reason: collision with root package name */
    private final java.lang.reflect.Field f15032a;

    /* renamed from: b  reason: collision with root package name */
    private final FieldType f15033b;

    /* renamed from: c  reason: collision with root package name */
    private final Class<?> f15034c;

    /* renamed from: d  reason: collision with root package name */
    private final int f15035d;

    /* renamed from: e  reason: collision with root package name */
    private final java.lang.reflect.Field f15036e;

    /* renamed from: f  reason: collision with root package name */
    private final int f15037f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f15038g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f15039h;

    /* renamed from: i  reason: collision with root package name */
    private final c2 f15040i;

    /* renamed from: j  reason: collision with root package name */
    private final java.lang.reflect.Field f15041j;

    /* renamed from: k  reason: collision with root package name */
    private final Class<?> f15042k;

    /* renamed from: l  reason: collision with root package name */
    private final Object f15043l;

    /* renamed from: m  reason: collision with root package name */
    private final u0.e f15044m;

    /* loaded from: classes3.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15045a;

        static {
            int[] iArr = new int[FieldType.values().length];
            f15045a = iArr;
            try {
                iArr[FieldType.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15045a[FieldType.GROUP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15045a[FieldType.MESSAGE_LIST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15045a[FieldType.GROUP_LIST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private k0(java.lang.reflect.Field field, int i9, FieldType fieldType, Class<?> cls, java.lang.reflect.Field field2, int i10, boolean z10, boolean z11, c2 c2Var, Class<?> cls2, Object obj, u0.e eVar, java.lang.reflect.Field field3) {
        this.f15032a = field;
        this.f15033b = fieldType;
        this.f15034c = cls;
        this.f15035d = i9;
        this.f15036e = field2;
        this.f15037f = i10;
        this.f15038g = z10;
        this.f15039h = z11;
        this.f15040i = c2Var;
        this.f15042k = cls2;
        this.f15043l = obj;
        this.f15044m = eVar;
        this.f15041j = field3;
    }

    private static void a(int i9) {
        if (i9 > 0) {
            return;
        }
        throw new IllegalArgumentException("fieldNumber must be positive: " + i9);
    }

    public static k0 c(java.lang.reflect.Field field, int i9, FieldType fieldType, boolean z10) {
        a(i9);
        u0.b(field, "field");
        u0.b(fieldType, "fieldType");
        if (fieldType != FieldType.MESSAGE_LIST && fieldType != FieldType.GROUP_LIST) {
            return new k0(field, i9, fieldType, null, null, 0, false, z10, null, null, null, null, null);
        }
        throw new IllegalStateException("Shouldn't be called for repeated message fields.");
    }

    public static k0 d(java.lang.reflect.Field field, int i9, FieldType fieldType, u0.e eVar) {
        a(i9);
        u0.b(field, "field");
        return new k0(field, i9, fieldType, null, null, 0, false, false, null, null, null, eVar, null);
    }

    public static k0 e(java.lang.reflect.Field field, int i9, Object obj, u0.e eVar) {
        u0.b(obj, "mapDefaultEntry");
        a(i9);
        u0.b(field, "field");
        return new k0(field, i9, FieldType.MAP, null, null, 0, false, true, null, null, obj, eVar, null);
    }

    public static k0 f(int i9, FieldType fieldType, c2 c2Var, Class<?> cls, boolean z10, u0.e eVar) {
        a(i9);
        u0.b(fieldType, "fieldType");
        u0.b(c2Var, "oneof");
        u0.b(cls, "oneofStoredType");
        if (fieldType.isScalar()) {
            return new k0(null, i9, fieldType, null, null, 0, false, z10, c2Var, cls, null, eVar, null);
        }
        throw new IllegalArgumentException("Oneof is only supported for scalar fields. Field " + i9 + " is of type " + fieldType);
    }

    public static k0 g(java.lang.reflect.Field field, int i9, FieldType fieldType, java.lang.reflect.Field field2) {
        a(i9);
        u0.b(field, "field");
        u0.b(fieldType, "fieldType");
        if (fieldType != FieldType.MESSAGE_LIST && fieldType != FieldType.GROUP_LIST) {
            return new k0(field, i9, fieldType, null, null, 0, false, false, null, null, null, null, field2);
        }
        throw new IllegalStateException("Shouldn't be called for repeated message fields.");
    }

    public static k0 h(java.lang.reflect.Field field, int i9, FieldType fieldType, u0.e eVar, java.lang.reflect.Field field2) {
        a(i9);
        u0.b(field, "field");
        return new k0(field, i9, fieldType, null, null, 0, false, false, null, null, null, eVar, field2);
    }

    public static k0 i(java.lang.reflect.Field field, int i9, FieldType fieldType, java.lang.reflect.Field field2, int i10, boolean z10, u0.e eVar) {
        a(i9);
        u0.b(field, "field");
        u0.b(fieldType, "fieldType");
        u0.b(field2, "presenceField");
        if (field2 != null && !x(i10)) {
            throw new IllegalArgumentException("presenceMask must have exactly one bit set: " + i10);
        }
        return new k0(field, i9, fieldType, null, field2, i10, false, z10, null, null, null, eVar, null);
    }

    public static k0 j(java.lang.reflect.Field field, int i9, FieldType fieldType, java.lang.reflect.Field field2, int i10, boolean z10, u0.e eVar) {
        a(i9);
        u0.b(field, "field");
        u0.b(fieldType, "fieldType");
        u0.b(field2, "presenceField");
        if (field2 != null && !x(i10)) {
            throw new IllegalArgumentException("presenceMask must have exactly one bit set: " + i10);
        }
        return new k0(field, i9, fieldType, null, field2, i10, true, z10, null, null, null, eVar, null);
    }

    public static k0 k(java.lang.reflect.Field field, int i9, FieldType fieldType, Class<?> cls) {
        a(i9);
        u0.b(field, "field");
        u0.b(fieldType, "fieldType");
        u0.b(cls, "messageClass");
        return new k0(field, i9, fieldType, cls, null, 0, false, false, null, null, null, null, null);
    }

    private static boolean x(int i9) {
        return i9 != 0 && (i9 & (i9 + (-1))) == 0;
    }

    @Override // java.lang.Comparable
    /* renamed from: b */
    public int compareTo(k0 k0Var) {
        return this.f15035d - k0Var.f15035d;
    }

    public java.lang.reflect.Field l() {
        return this.f15041j;
    }

    public u0.e m() {
        return this.f15044m;
    }

    public java.lang.reflect.Field o() {
        return this.f15032a;
    }

    public int p() {
        return this.f15035d;
    }

    public Object q() {
        return this.f15043l;
    }

    public Class<?> r() {
        int i9 = a.f15045a[this.f15033b.ordinal()];
        if (i9 == 1 || i9 == 2) {
            java.lang.reflect.Field field = this.f15032a;
            return field != null ? field.getType() : this.f15042k;
        } else if (i9 == 3 || i9 == 4) {
            return this.f15034c;
        } else {
            return null;
        }
    }

    public c2 s() {
        return this.f15040i;
    }

    public java.lang.reflect.Field t() {
        return this.f15036e;
    }

    public int u() {
        return this.f15037f;
    }

    public FieldType v() {
        return this.f15033b;
    }

    public boolean w() {
        return this.f15039h;
    }

    public boolean y() {
        return this.f15038g;
    }
}
