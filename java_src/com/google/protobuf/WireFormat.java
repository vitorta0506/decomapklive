package com.google.protobuf;

import java.io.IOException;
/* loaded from: classes3.dex */
public final class WireFormat {

    /* renamed from: a  reason: collision with root package name */
    static final int f14842a = c(1, 3);

    /* renamed from: b  reason: collision with root package name */
    static final int f14843b = c(1, 4);

    /* renamed from: c  reason: collision with root package name */
    static final int f14844c = c(2, 0);

    /* renamed from: d  reason: collision with root package name */
    static final int f14845d = c(3, 2);

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum INT64 uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* loaded from: classes3.dex */
    public static class FieldType {
        private static final /* synthetic */ FieldType[] $VALUES;
        public static final FieldType BOOL;
        public static final FieldType BYTES;
        public static final FieldType DOUBLE;
        public static final FieldType ENUM;
        public static final FieldType FIXED32;
        public static final FieldType FIXED64;
        public static final FieldType FLOAT;
        public static final FieldType GROUP;
        public static final FieldType INT32;
        public static final FieldType INT64;
        public static final FieldType MESSAGE;
        public static final FieldType SFIXED32;
        public static final FieldType SFIXED64;
        public static final FieldType SINT32;
        public static final FieldType SINT64;
        public static final FieldType STRING;
        public static final FieldType UINT32;
        public static final FieldType UINT64;
        private final JavaType javaType;
        private final int wireType;

        /* loaded from: classes3.dex */
        enum a extends FieldType {
            a(String str, int i9, JavaType javaType, int i10) {
                super(str, i9, javaType, i10, null);
            }

            @Override // com.google.protobuf.WireFormat.FieldType
            public boolean isPackable() {
                return false;
            }
        }

        /* loaded from: classes3.dex */
        enum b extends FieldType {
            b(String str, int i9, JavaType javaType, int i10) {
                super(str, i9, javaType, i10, null);
            }

            @Override // com.google.protobuf.WireFormat.FieldType
            public boolean isPackable() {
                return false;
            }
        }

        /* loaded from: classes3.dex */
        enum c extends FieldType {
            c(String str, int i9, JavaType javaType, int i10) {
                super(str, i9, javaType, i10, null);
            }

            @Override // com.google.protobuf.WireFormat.FieldType
            public boolean isPackable() {
                return false;
            }
        }

        /* loaded from: classes3.dex */
        enum d extends FieldType {
            d(String str, int i9, JavaType javaType, int i10) {
                super(str, i9, javaType, i10, null);
            }

            @Override // com.google.protobuf.WireFormat.FieldType
            public boolean isPackable() {
                return false;
            }
        }

        static {
            FieldType fieldType = new FieldType("DOUBLE", 0, JavaType.DOUBLE, 1);
            DOUBLE = fieldType;
            FieldType fieldType2 = new FieldType("FLOAT", 1, JavaType.FLOAT, 5);
            FLOAT = fieldType2;
            JavaType javaType = JavaType.LONG;
            FieldType fieldType3 = new FieldType("INT64", 2, javaType, 0);
            INT64 = fieldType3;
            FieldType fieldType4 = new FieldType("UINT64", 3, javaType, 0);
            UINT64 = fieldType4;
            JavaType javaType2 = JavaType.INT;
            FieldType fieldType5 = new FieldType("INT32", 4, javaType2, 0);
            INT32 = fieldType5;
            FieldType fieldType6 = new FieldType("FIXED64", 5, javaType, 1);
            FIXED64 = fieldType6;
            FieldType fieldType7 = new FieldType("FIXED32", 6, javaType2, 5);
            FIXED32 = fieldType7;
            FieldType fieldType8 = new FieldType("BOOL", 7, JavaType.BOOLEAN, 0);
            BOOL = fieldType8;
            a aVar = new a("STRING", 8, JavaType.STRING, 2);
            STRING = aVar;
            JavaType javaType3 = JavaType.MESSAGE;
            b bVar = new b("GROUP", 9, javaType3, 3);
            GROUP = bVar;
            c cVar = new c("MESSAGE", 10, javaType3, 2);
            MESSAGE = cVar;
            d dVar = new d("BYTES", 11, JavaType.BYTE_STRING, 2);
            BYTES = dVar;
            FieldType fieldType9 = new FieldType("UINT32", 12, javaType2, 0);
            UINT32 = fieldType9;
            FieldType fieldType10 = new FieldType("ENUM", 13, JavaType.ENUM, 0);
            ENUM = fieldType10;
            FieldType fieldType11 = new FieldType("SFIXED32", 14, javaType2, 5);
            SFIXED32 = fieldType11;
            FieldType fieldType12 = new FieldType("SFIXED64", 15, javaType, 1);
            SFIXED64 = fieldType12;
            FieldType fieldType13 = new FieldType("SINT32", 16, javaType2, 0);
            SINT32 = fieldType13;
            FieldType fieldType14 = new FieldType("SINT64", 17, javaType, 0);
            SINT64 = fieldType14;
            $VALUES = new FieldType[]{fieldType, fieldType2, fieldType3, fieldType4, fieldType5, fieldType6, fieldType7, fieldType8, aVar, bVar, cVar, dVar, fieldType9, fieldType10, fieldType11, fieldType12, fieldType13, fieldType14};
        }

        /* synthetic */ FieldType(String str, int i9, JavaType javaType, int i10, a aVar) {
            this(str, i9, javaType, i10);
        }

        public static FieldType valueOf(String str) {
            return (FieldType) java.lang.Enum.valueOf(FieldType.class, str);
        }

        public static FieldType[] values() {
            return (FieldType[]) $VALUES.clone();
        }

        public JavaType getJavaType() {
            return this.javaType;
        }

        public int getWireType() {
            return this.wireType;
        }

        public boolean isPackable() {
            return true;
        }

        private FieldType(String str, int i9, JavaType javaType, int i10) {
            this.javaType = javaType;
            this.wireType = i10;
        }
    }

    /* loaded from: classes3.dex */
    public enum JavaType {
        INT(0),
        LONG(0L),
        FLOAT(Float.valueOf(0.0f)),
        DOUBLE(Double.valueOf(0.0d)),
        BOOLEAN(Boolean.FALSE),
        STRING(""),
        BYTE_STRING(ByteString.EMPTY),
        ENUM(null),
        MESSAGE(null);
        
        private final Object defaultDefault;

        JavaType(Object obj) {
            this.defaultDefault = obj;
        }

        Object getDefaultDefault() {
            return this.defaultDefault;
        }
    }

    /* loaded from: classes3.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14846a;

        static {
            int[] iArr = new int[FieldType.values().length];
            f14846a = iArr;
            try {
                iArr[FieldType.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14846a[FieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14846a[FieldType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14846a[FieldType.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f14846a[FieldType.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f14846a[FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f14846a[FieldType.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f14846a[FieldType.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f14846a[FieldType.BYTES.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f14846a[FieldType.UINT32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f14846a[FieldType.SFIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f14846a[FieldType.SFIXED64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f14846a[FieldType.SINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f14846a[FieldType.SINT64.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f14846a[FieldType.STRING.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f14846a[FieldType.GROUP.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f14846a[FieldType.MESSAGE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f14846a[FieldType.ENUM.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    static abstract class b {

        /* renamed from: a  reason: collision with root package name */
        public static final b f14847a;

        /* renamed from: b  reason: collision with root package name */
        public static final b f14848b;

        /* renamed from: c  reason: collision with root package name */
        public static final b f14849c;

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ b[] f14850d;

        /* loaded from: classes3.dex */
        enum a extends b {
            a(String str, int i9) {
                super(str, i9, null);
            }

            @Override // com.google.protobuf.WireFormat.b
            Object a(p pVar) throws IOException {
                return pVar.J();
            }
        }

        /* renamed from: com.google.protobuf.WireFormat$b$b  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        enum C0141b extends b {
            C0141b(String str, int i9) {
                super(str, i9, null);
            }

            @Override // com.google.protobuf.WireFormat.b
            Object a(p pVar) throws IOException {
                return pVar.K();
            }
        }

        /* loaded from: classes3.dex */
        enum c extends b {
            c(String str, int i9) {
                super(str, i9, null);
            }

            @Override // com.google.protobuf.WireFormat.b
            Object a(p pVar) throws IOException {
                return pVar.s();
            }
        }

        static {
            a aVar = new a("LOOSE", 0);
            f14847a = aVar;
            C0141b c0141b = new C0141b("STRICT", 1);
            f14848b = c0141b;
            c cVar = new c("LAZY", 2);
            f14849c = cVar;
            f14850d = new b[]{aVar, c0141b, cVar};
        }

        private b(String str, int i9) {
        }

        public static b valueOf(String str) {
            return (b) java.lang.Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) f14850d.clone();
        }

        abstract Object a(p pVar) throws IOException;

        /* synthetic */ b(String str, int i9, a aVar) {
            this(str, i9);
        }
    }

    public static int a(int i9) {
        return i9 >>> 3;
    }

    public static int b(int i9) {
        return i9 & 7;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(int i9, int i10) {
        return (i9 << 3) | i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object d(p pVar, FieldType fieldType, b bVar) throws IOException {
        switch (a.f14846a[fieldType.ordinal()]) {
            case 1:
                return Double.valueOf(pVar.t());
            case 2:
                return Float.valueOf(pVar.x());
            case 3:
                return Long.valueOf(pVar.A());
            case 4:
                return Long.valueOf(pVar.N());
            case 5:
                return Integer.valueOf(pVar.z());
            case 6:
                return Long.valueOf(pVar.w());
            case 7:
                return Integer.valueOf(pVar.v());
            case 8:
                return Boolean.valueOf(pVar.r());
            case 9:
                return pVar.s();
            case 10:
                return Integer.valueOf(pVar.M());
            case 11:
                return Integer.valueOf(pVar.F());
            case 12:
                return Long.valueOf(pVar.G());
            case 13:
                return Integer.valueOf(pVar.H());
            case 14:
                return Long.valueOf(pVar.I());
            case 15:
                return bVar.a(pVar);
            case 16:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle nested groups.");
            case 17:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle embedded messages.");
            case 18:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle enums.");
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }
}
