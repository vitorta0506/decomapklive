package com.google.protobuf;

import com.google.protobuf.DescriptorProtos;
import com.google.protobuf.TextFormat;
import com.google.protobuf.WireFormat;
import com.google.protobuf.l1;
import com.google.protobuf.o0;
import com.google.protobuf.o1;
import com.google.protobuf.u0;
import io.jsonwebtoken.JwtParser;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;
import kotlin.text.Typography;
/* loaded from: classes3.dex */
public final class Descriptors {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f14532a = Logger.getLogger(Descriptors.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f14533b = new int[0];

    /* renamed from: c  reason: collision with root package name */
    private static final b[] f14534c = new b[0];

    /* renamed from: d  reason: collision with root package name */
    private static final FieldDescriptor[] f14535d = new FieldDescriptor[0];

    /* renamed from: e  reason: collision with root package name */
    private static final d[] f14536e = new d[0];

    /* renamed from: f  reason: collision with root package name */
    private static final j[] f14537f = new j[0];

    /* renamed from: g  reason: collision with root package name */
    private static final i[] f14538g = new i[0];

    /* loaded from: classes3.dex */
    public static class DescriptorValidationException extends Exception {
        private static final long serialVersionUID = 5750205775490483148L;
        private final String description;
        private final String name;
        private final l1 proto;

        /* synthetic */ DescriptorValidationException(FileDescriptor fileDescriptor, String str, a aVar) {
            this(fileDescriptor, str);
        }

        public String getDescription() {
            return this.description;
        }

        public l1 getProblemProto() {
            return this.proto;
        }

        public String getProblemSymbolName() {
            return this.name;
        }

        /* synthetic */ DescriptorValidationException(f fVar, String str, a aVar) {
            this(fVar, str);
        }

        /* synthetic */ DescriptorValidationException(f fVar, String str, Throwable th2, a aVar) {
            this(fVar, str, th2);
        }

        private DescriptorValidationException(f fVar, String str) {
            super(fVar.c() + ": " + str);
            this.name = fVar.c();
            this.proto = fVar.e();
            this.description = str;
        }

        private DescriptorValidationException(f fVar, String str, Throwable th2) {
            this(fVar, str);
            initCause(th2);
        }

        private DescriptorValidationException(FileDescriptor fileDescriptor, String str) {
            super(fileDescriptor.d() + ": " + str);
            this.name = fileDescriptor.d();
            this.proto = fileDescriptor.e();
            this.description = str;
        }
    }

    /* loaded from: classes3.dex */
    public static final class FieldDescriptor extends f implements Comparable<FieldDescriptor>, o0.c<FieldDescriptor> {

        /* renamed from: n  reason: collision with root package name */
        private static final h<FieldDescriptor> f14539n = new a();

        /* renamed from: o  reason: collision with root package name */
        private static final WireFormat.FieldType[] f14540o = WireFormat.FieldType.values();

        /* renamed from: a  reason: collision with root package name */
        private final int f14541a;

        /* renamed from: b  reason: collision with root package name */
        private DescriptorProtos.FieldDescriptorProto f14542b;

        /* renamed from: c  reason: collision with root package name */
        private final String f14543c;

        /* renamed from: d  reason: collision with root package name */
        private String f14544d;

        /* renamed from: e  reason: collision with root package name */
        private final FileDescriptor f14545e;

        /* renamed from: f  reason: collision with root package name */
        private final b f14546f;

        /* renamed from: g  reason: collision with root package name */
        private final boolean f14547g;

        /* renamed from: h  reason: collision with root package name */
        private Type f14548h;

        /* renamed from: i  reason: collision with root package name */
        private b f14549i;

        /* renamed from: j  reason: collision with root package name */
        private b f14550j;

        /* renamed from: k  reason: collision with root package name */
        private i f14551k;

        /* renamed from: l  reason: collision with root package name */
        private d f14552l;

        /* renamed from: m  reason: collision with root package name */
        private Object f14553m;

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
        }

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
        public static final class Type {
            private static final /* synthetic */ Type[] $VALUES;
            public static final Type BOOL;
            public static final Type BYTES;
            public static final Type DOUBLE;
            public static final Type ENUM;
            public static final Type FIXED32;
            public static final Type FIXED64;
            public static final Type FLOAT;
            public static final Type GROUP;
            public static final Type INT32;
            public static final Type INT64;
            public static final Type MESSAGE;
            public static final Type SFIXED32;
            public static final Type SFIXED64;
            public static final Type SINT32;
            public static final Type SINT64;
            public static final Type STRING;
            public static final Type UINT32;
            public static final Type UINT64;
            private static final Type[] types;
            private final JavaType javaType;

            static {
                Type type = new Type("DOUBLE", 0, JavaType.DOUBLE);
                DOUBLE = type;
                Type type2 = new Type("FLOAT", 1, JavaType.FLOAT);
                FLOAT = type2;
                JavaType javaType = JavaType.LONG;
                Type type3 = new Type("INT64", 2, javaType);
                INT64 = type3;
                Type type4 = new Type("UINT64", 3, javaType);
                UINT64 = type4;
                JavaType javaType2 = JavaType.INT;
                Type type5 = new Type("INT32", 4, javaType2);
                INT32 = type5;
                Type type6 = new Type("FIXED64", 5, javaType);
                FIXED64 = type6;
                Type type7 = new Type("FIXED32", 6, javaType2);
                FIXED32 = type7;
                Type type8 = new Type("BOOL", 7, JavaType.BOOLEAN);
                BOOL = type8;
                Type type9 = new Type("STRING", 8, JavaType.STRING);
                STRING = type9;
                JavaType javaType3 = JavaType.MESSAGE;
                Type type10 = new Type("GROUP", 9, javaType3);
                GROUP = type10;
                Type type11 = new Type("MESSAGE", 10, javaType3);
                MESSAGE = type11;
                Type type12 = new Type("BYTES", 11, JavaType.BYTE_STRING);
                BYTES = type12;
                Type type13 = new Type("UINT32", 12, javaType2);
                UINT32 = type13;
                Type type14 = new Type("ENUM", 13, JavaType.ENUM);
                ENUM = type14;
                Type type15 = new Type("SFIXED32", 14, javaType2);
                SFIXED32 = type15;
                Type type16 = new Type("SFIXED64", 15, javaType);
                SFIXED64 = type16;
                Type type17 = new Type("SINT32", 16, javaType2);
                SINT32 = type17;
                Type type18 = new Type("SINT64", 17, javaType);
                SINT64 = type18;
                $VALUES = new Type[]{type, type2, type3, type4, type5, type6, type7, type8, type9, type10, type11, type12, type13, type14, type15, type16, type17, type18};
                types = values();
            }

            private Type(String str, int i9, JavaType javaType) {
                this.javaType = javaType;
            }

            public static Type valueOf(String str) {
                return (Type) java.lang.Enum.valueOf(Type.class, str);
            }

            public static Type[] values() {
                return (Type[]) $VALUES.clone();
            }

            public JavaType getJavaType() {
                return this.javaType;
            }

            public DescriptorProtos.FieldDescriptorProto.Type toProto() {
                return DescriptorProtos.FieldDescriptorProto.Type.forNumber(ordinal() + 1);
            }

            public static Type valueOf(DescriptorProtos.FieldDescriptorProto.Type type) {
                return types[type.getNumber() - 1];
            }
        }

        /* loaded from: classes3.dex */
        static class a implements h<FieldDescriptor> {
            a() {
            }

            @Override // com.google.protobuf.Descriptors.h
            /* renamed from: b */
            public int a(FieldDescriptor fieldDescriptor) {
                return fieldDescriptor.getNumber();
            }
        }

        static {
            if (Type.types.length != DescriptorProtos.FieldDescriptorProto.Type.values().length) {
                throw new RuntimeException("descriptor.proto has a new declared type but Descriptors.java wasn't updated.");
            }
        }

        /* synthetic */ FieldDescriptor(DescriptorProtos.FieldDescriptorProto fieldDescriptorProto, FileDescriptor fileDescriptor, b bVar, int i9, boolean z10, a aVar) throws DescriptorValidationException {
            this(fieldDescriptorProto, fileDescriptor, bVar, i9, z10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void L(DescriptorProtos.FieldDescriptorProto fieldDescriptorProto) {
            this.f14542b = fieldDescriptorProto;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void k() throws DescriptorValidationException {
            if (this.f14542b.hasExtendee()) {
                f h10 = this.f14545e.f14561h.h(this.f14542b.getExtendee(), this, c.b.TYPES_ONLY);
                if (h10 instanceof b) {
                    this.f14549i = (b) h10;
                    if (!o().s(getNumber())) {
                        throw new DescriptorValidationException(this, Typography.quote + o().c() + "\" does not declare " + getNumber() + " as an extension number.", (a) null);
                    }
                } else {
                    throw new DescriptorValidationException(this, Typography.quote + this.f14542b.getExtendee() + "\" is not a message type.", (a) null);
                }
            }
            if (this.f14542b.hasTypeName()) {
                f h11 = this.f14545e.f14561h.h(this.f14542b.getTypeName(), this, c.b.TYPES_ONLY);
                if (!this.f14542b.hasType()) {
                    if (h11 instanceof b) {
                        this.f14548h = Type.MESSAGE;
                    } else if (h11 instanceof d) {
                        this.f14548h = Type.ENUM;
                    } else {
                        throw new DescriptorValidationException(this, Typography.quote + this.f14542b.getTypeName() + "\" is not a type.", (a) null);
                    }
                }
                if (t() == JavaType.MESSAGE) {
                    if (h11 instanceof b) {
                        this.f14550j = (b) h11;
                        if (this.f14542b.hasDefaultValue()) {
                            throw new DescriptorValidationException(this, "Messages can't have default values.", (a) null);
                        }
                    } else {
                        throw new DescriptorValidationException(this, Typography.quote + this.f14542b.getTypeName() + "\" is not a message type.", (a) null);
                    }
                } else if (t() == JavaType.ENUM) {
                    if (h11 instanceof d) {
                        this.f14552l = (d) h11;
                    } else {
                        throw new DescriptorValidationException(this, Typography.quote + this.f14542b.getTypeName() + "\" is not an enum type.", (a) null);
                    }
                } else {
                    throw new DescriptorValidationException(this, "Field with primitive type has type_name.", (a) null);
                }
            } else if (t() == JavaType.MESSAGE || t() == JavaType.ENUM) {
                throw new DescriptorValidationException(this, "Field with message or enum type missing type_name.", (a) null);
            }
            if (this.f14542b.getOptions().getPacked() && !C()) {
                throw new DescriptorValidationException(this, "[packed = true] can only be specified for repeated primitive fields.", (a) null);
            }
            if (this.f14542b.hasDefaultValue()) {
                if (!isRepeated()) {
                    try {
                        switch (a.f14562a[x().ordinal()]) {
                            case 1:
                            case 2:
                            case 3:
                                this.f14553m = Integer.valueOf(TextFormat.j(this.f14542b.getDefaultValue()));
                                break;
                            case 4:
                            case 5:
                                this.f14553m = Integer.valueOf(TextFormat.m(this.f14542b.getDefaultValue()));
                                break;
                            case 6:
                            case 7:
                            case 8:
                                this.f14553m = Long.valueOf(TextFormat.k(this.f14542b.getDefaultValue()));
                                break;
                            case 9:
                            case 10:
                                this.f14553m = Long.valueOf(TextFormat.n(this.f14542b.getDefaultValue()));
                                break;
                            case 11:
                                if (this.f14542b.getDefaultValue().equals("inf")) {
                                    this.f14553m = Float.valueOf(Float.POSITIVE_INFINITY);
                                    break;
                                } else if (this.f14542b.getDefaultValue().equals("-inf")) {
                                    this.f14553m = Float.valueOf(Float.NEGATIVE_INFINITY);
                                    break;
                                } else if (this.f14542b.getDefaultValue().equals("nan")) {
                                    this.f14553m = Float.valueOf(Float.NaN);
                                    break;
                                } else {
                                    this.f14553m = Float.valueOf(this.f14542b.getDefaultValue());
                                    break;
                                }
                            case 12:
                                if (this.f14542b.getDefaultValue().equals("inf")) {
                                    this.f14553m = Double.valueOf(Double.POSITIVE_INFINITY);
                                    break;
                                } else if (this.f14542b.getDefaultValue().equals("-inf")) {
                                    this.f14553m = Double.valueOf(Double.NEGATIVE_INFINITY);
                                    break;
                                } else if (this.f14542b.getDefaultValue().equals("nan")) {
                                    this.f14553m = Double.valueOf(Double.NaN);
                                    break;
                                } else {
                                    this.f14553m = Double.valueOf(this.f14542b.getDefaultValue());
                                    break;
                                }
                            case 13:
                                this.f14553m = Boolean.valueOf(this.f14542b.getDefaultValue());
                                break;
                            case 14:
                                this.f14553m = this.f14542b.getDefaultValue();
                                break;
                            case 15:
                                try {
                                    this.f14553m = TextFormat.p(this.f14542b.getDefaultValue());
                                    break;
                                } catch (TextFormat.InvalidEscapeSequenceException e10) {
                                    throw new DescriptorValidationException(this, "Couldn't parse default value: " + e10.getMessage(), e10, null);
                                }
                            case 16:
                                e h12 = this.f14552l.h(this.f14542b.getDefaultValue());
                                this.f14553m = h12;
                                if (h12 == null) {
                                    throw new DescriptorValidationException(this, "Unknown enum default value: \"" + this.f14542b.getDefaultValue() + Typography.quote, (a) null);
                                }
                                break;
                            case 17:
                            case 18:
                                throw new DescriptorValidationException(this, "Message type had default value.", (a) null);
                        }
                    } catch (NumberFormatException e11) {
                        throw new DescriptorValidationException(this, "Could not parse default value: \"" + this.f14542b.getDefaultValue() + Typography.quote, e11, null);
                    }
                } else {
                    throw new DescriptorValidationException(this, "Repeated fields cannot have default values.", (a) null);
                }
            } else if (isRepeated()) {
                this.f14553m = Collections.emptyList();
            } else {
                int i9 = a.f14563b[t().ordinal()];
                if (i9 == 1) {
                    this.f14553m = this.f14552l.k().get(0);
                } else if (i9 != 2) {
                    this.f14553m = t().defaultDefault;
                } else {
                    this.f14553m = null;
                }
            }
            b bVar = this.f14549i;
            if (bVar == null || !bVar.q().getMessageSetWireFormat()) {
                return;
            }
            if (z()) {
                if (!B() || x() != Type.MESSAGE) {
                    throw new DescriptorValidationException(this, "Extensions of MessageSets must be optional messages.", (a) null);
                }
                return;
            }
            throw new DescriptorValidationException(this, "MessageSets cannot have fields, only extensions.", (a) null);
        }

        private static String l(String str) {
            int length = str.length();
            StringBuilder sb2 = new StringBuilder(length);
            boolean z10 = false;
            for (int i9 = 0; i9 < length; i9++) {
                char charAt = str.charAt(i9);
                if (charAt == '_') {
                    z10 = true;
                } else if (z10) {
                    if ('a' <= charAt && charAt <= 'z') {
                        charAt = (char) ((charAt - 'a') + 65);
                    }
                    sb2.append(charAt);
                    z10 = false;
                } else {
                    sb2.append(charAt);
                }
            }
            return sb2.toString();
        }

        public boolean A() {
            return x() == Type.MESSAGE && isRepeated() && v().q().getMapEntry();
        }

        public boolean B() {
            return this.f14542b.getLabel() == DescriptorProtos.FieldDescriptorProto.Label.LABEL_OPTIONAL;
        }

        public boolean C() {
            return isRepeated() && e0().isPackable();
        }

        public boolean F() {
            return this.f14542b.getLabel() == DescriptorProtos.FieldDescriptorProto.Label.LABEL_REQUIRED;
        }

        public boolean I() {
            if (this.f14548h != Type.STRING) {
                return false;
            }
            if (o().q().getMapEntry() || b().r() == FileDescriptor.Syntax.PROTO3) {
                return true;
            }
            return b().o().getJavaStringCheckUtf8();
        }

        @Override // com.google.protobuf.Descriptors.f
        /* renamed from: M */
        public DescriptorProtos.FieldDescriptorProto e() {
            return this.f14542b;
        }

        @Override // com.google.protobuf.Descriptors.f
        public FileDescriptor b() {
            return this.f14545e;
        }

        @Override // com.google.protobuf.Descriptors.f
        public String c() {
            return this.f14543c;
        }

        @Override // com.google.protobuf.Descriptors.f
        public String d() {
            return this.f14542b.getName();
        }

        @Override // com.google.protobuf.o0.c
        public WireFormat.FieldType e0() {
            return f14540o[this.f14548h.ordinal()];
        }

        @Override // com.google.protobuf.o0.c
        public int getNumber() {
            return this.f14542b.getNumber();
        }

        @Override // com.google.protobuf.o0.c
        public boolean isPacked() {
            if (C()) {
                if (b().r() == FileDescriptor.Syntax.PROTO2) {
                    return w().getPacked();
                }
                return !w().hasPacked() || w().getPacked();
            }
            return false;
        }

        @Override // com.google.protobuf.o0.c
        public boolean isRepeated() {
            return this.f14542b.getLabel() == DescriptorProtos.FieldDescriptorProto.Label.LABEL_REPEATED;
        }

        @Override // java.lang.Comparable
        /* renamed from: j */
        public int compareTo(FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.f14549i == this.f14549i) {
                return getNumber() - fieldDescriptor.getNumber();
            }
            throw new IllegalArgumentException("FieldDescriptors can only be compared to other FieldDescriptors for fields of the same message type.");
        }

        public i m() {
            return this.f14551k;
        }

        @Override // com.google.protobuf.o0.c
        public o1.a n(o1.a aVar, o1 o1Var) {
            return ((l1.a) aVar).P0((l1) o1Var);
        }

        public b o() {
            return this.f14549i;
        }

        public Object p() {
            if (t() != JavaType.MESSAGE) {
                return this.f14553m;
            }
            throw new UnsupportedOperationException("FieldDescriptor.getDefaultValue() called on an embedded message field.");
        }

        public d q() {
            if (t() == JavaType.ENUM) {
                return this.f14552l;
            }
            throw new UnsupportedOperationException(String.format("This field is not of enum type. (%s)", this.f14543c));
        }

        public b r() {
            if (z()) {
                return this.f14546f;
            }
            throw new UnsupportedOperationException(String.format("This field is not an extension. (%s)", this.f14543c));
        }

        public int s() {
            return this.f14541a;
        }

        @Override // com.google.protobuf.o0.c
        public WireFormat.JavaType s0() {
            return e0().getJavaType();
        }

        public JavaType t() {
            return this.f14548h.getJavaType();
        }

        public String toString() {
            return c();
        }

        public String u() {
            String str = this.f14544d;
            if (str != null) {
                return str;
            }
            if (this.f14542b.hasJsonName()) {
                String jsonName = this.f14542b.getJsonName();
                this.f14544d = jsonName;
                return jsonName;
            }
            String l10 = l(this.f14542b.getName());
            this.f14544d = l10;
            return l10;
        }

        public b v() {
            if (t() == JavaType.MESSAGE) {
                return this.f14550j;
            }
            throw new UnsupportedOperationException(String.format("This field is not of message type. (%s)", this.f14543c));
        }

        public DescriptorProtos.FieldOptions w() {
            return this.f14542b.getOptions();
        }

        public Type x() {
            return this.f14548h;
        }

        public boolean y() {
            return this.f14547g || (this.f14545e.r() == FileDescriptor.Syntax.PROTO2 && B() && m() == null);
        }

        public boolean z() {
            return this.f14542b.hasExtendee();
        }

        private FieldDescriptor(DescriptorProtos.FieldDescriptorProto fieldDescriptorProto, FileDescriptor fileDescriptor, b bVar, int i9, boolean z10) throws DescriptorValidationException {
            super(null);
            this.f14541a = i9;
            this.f14542b = fieldDescriptorProto;
            this.f14543c = Descriptors.k(fileDescriptor, bVar, fieldDescriptorProto.getName());
            this.f14545e = fileDescriptor;
            if (fieldDescriptorProto.hasType()) {
                this.f14548h = Type.valueOf(fieldDescriptorProto.getType());
            }
            this.f14547g = fieldDescriptorProto.getProto3Optional();
            if (getNumber() > 0) {
                if (z10) {
                    if (fieldDescriptorProto.hasExtendee()) {
                        this.f14549i = null;
                        if (bVar != null) {
                            this.f14546f = bVar;
                        } else {
                            this.f14546f = null;
                        }
                        if (!fieldDescriptorProto.hasOneofIndex()) {
                            this.f14551k = null;
                        } else {
                            throw new DescriptorValidationException(this, "FieldDescriptorProto.oneof_index set for extension field.", (a) null);
                        }
                    } else {
                        throw new DescriptorValidationException(this, "FieldDescriptorProto.extendee not set for extension field.", (a) null);
                    }
                } else if (!fieldDescriptorProto.hasExtendee()) {
                    this.f14549i = bVar;
                    if (fieldDescriptorProto.hasOneofIndex()) {
                        if (fieldDescriptorProto.getOneofIndex() >= 0 && fieldDescriptorProto.getOneofIndex() < bVar.e().getOneofDeclCount()) {
                            i iVar = bVar.p().get(fieldDescriptorProto.getOneofIndex());
                            this.f14551k = iVar;
                            i.i(iVar);
                        } else {
                            throw new DescriptorValidationException(this, "FieldDescriptorProto.oneof_index is out of range for type " + bVar.d(), (a) null);
                        }
                    } else {
                        this.f14551k = null;
                    }
                    this.f14546f = null;
                } else {
                    throw new DescriptorValidationException(this, "FieldDescriptorProto.extendee set for non-extension field.", (a) null);
                }
                fileDescriptor.f14561h.b(this);
                return;
            }
            throw new DescriptorValidationException(this, "Field numbers must be positive integers.", (a) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14562a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f14563b;

        static {
            int[] iArr = new int[FieldDescriptor.JavaType.values().length];
            f14563b = iArr;
            try {
                iArr[FieldDescriptor.JavaType.ENUM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14563b[FieldDescriptor.JavaType.MESSAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[FieldDescriptor.Type.values().length];
            f14562a = iArr2;
            try {
                iArr2[FieldDescriptor.Type.INT32.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14562a[FieldDescriptor.Type.SINT32.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f14562a[FieldDescriptor.Type.SFIXED32.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f14562a[FieldDescriptor.Type.UINT32.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f14562a[FieldDescriptor.Type.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f14562a[FieldDescriptor.Type.INT64.ordinal()] = 6;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f14562a[FieldDescriptor.Type.SINT64.ordinal()] = 7;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f14562a[FieldDescriptor.Type.SFIXED64.ordinal()] = 8;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f14562a[FieldDescriptor.Type.UINT64.ordinal()] = 9;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f14562a[FieldDescriptor.Type.FIXED64.ordinal()] = 10;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f14562a[FieldDescriptor.Type.FLOAT.ordinal()] = 11;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f14562a[FieldDescriptor.Type.DOUBLE.ordinal()] = 12;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f14562a[FieldDescriptor.Type.BOOL.ordinal()] = 13;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f14562a[FieldDescriptor.Type.STRING.ordinal()] = 14;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f14562a[FieldDescriptor.Type.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f14562a[FieldDescriptor.Type.ENUM.ordinal()] = 16;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f14562a[FieldDescriptor.Type.MESSAGE.ordinal()] = 17;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f14562a[FieldDescriptor.Type.GROUP.ordinal()] = 18;
            } catch (NoSuchFieldError unused20) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class b extends f {

        /* renamed from: a  reason: collision with root package name */
        private final int f14564a;

        /* renamed from: b  reason: collision with root package name */
        private DescriptorProtos.DescriptorProto f14565b;

        /* renamed from: c  reason: collision with root package name */
        private final String f14566c;

        /* renamed from: d  reason: collision with root package name */
        private final FileDescriptor f14567d;

        /* renamed from: e  reason: collision with root package name */
        private final b f14568e;

        /* renamed from: f  reason: collision with root package name */
        private final b[] f14569f;

        /* renamed from: g  reason: collision with root package name */
        private final d[] f14570g;

        /* renamed from: h  reason: collision with root package name */
        private final FieldDescriptor[] f14571h;

        /* renamed from: i  reason: collision with root package name */
        private final FieldDescriptor[] f14572i;

        /* renamed from: j  reason: collision with root package name */
        private final FieldDescriptor[] f14573j;

        /* renamed from: k  reason: collision with root package name */
        private final i[] f14574k;

        /* renamed from: l  reason: collision with root package name */
        private final int f14575l;

        /* renamed from: m  reason: collision with root package name */
        private final int[] f14576m;

        /* renamed from: n  reason: collision with root package name */
        private final int[] f14577n;

        /* synthetic */ b(DescriptorProtos.DescriptorProto descriptorProto, FileDescriptor fileDescriptor, b bVar, int i9, a aVar) throws DescriptorValidationException {
            this(descriptorProto, fileDescriptor, bVar, i9);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h() throws DescriptorValidationException {
            for (b bVar : this.f14569f) {
                bVar.h();
            }
            for (FieldDescriptor fieldDescriptor : this.f14571h) {
                fieldDescriptor.k();
            }
            Arrays.sort(this.f14572i);
            v();
            for (FieldDescriptor fieldDescriptor2 : this.f14573j) {
                fieldDescriptor2.k();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void t(DescriptorProtos.DescriptorProto descriptorProto) {
            this.f14565b = descriptorProto;
            int i9 = 0;
            int i10 = 0;
            while (true) {
                b[] bVarArr = this.f14569f;
                if (i10 >= bVarArr.length) {
                    break;
                }
                bVarArr[i10].t(descriptorProto.getNestedType(i10));
                i10++;
            }
            int i11 = 0;
            while (true) {
                i[] iVarArr = this.f14574k;
                if (i11 >= iVarArr.length) {
                    break;
                }
                iVarArr[i11].q(descriptorProto.getOneofDecl(i11));
                i11++;
            }
            int i12 = 0;
            while (true) {
                d[] dVarArr = this.f14570g;
                if (i12 >= dVarArr.length) {
                    break;
                }
                dVarArr[i12].l(descriptorProto.getEnumType(i12));
                i12++;
            }
            int i13 = 0;
            while (true) {
                FieldDescriptor[] fieldDescriptorArr = this.f14571h;
                if (i13 >= fieldDescriptorArr.length) {
                    break;
                }
                fieldDescriptorArr[i13].L(descriptorProto.getField(i13));
                i13++;
            }
            while (true) {
                FieldDescriptor[] fieldDescriptorArr2 = this.f14573j;
                if (i9 >= fieldDescriptorArr2.length) {
                    return;
                }
                fieldDescriptorArr2[i9].L(descriptorProto.getExtension(i9));
                i9++;
            }
        }

        private void v() throws DescriptorValidationException {
            int i9 = 0;
            while (true) {
                int i10 = i9 + 1;
                FieldDescriptor[] fieldDescriptorArr = this.f14572i;
                if (i10 >= fieldDescriptorArr.length) {
                    return;
                }
                FieldDescriptor fieldDescriptor = fieldDescriptorArr[i9];
                FieldDescriptor fieldDescriptor2 = fieldDescriptorArr[i10];
                if (fieldDescriptor.getNumber() == fieldDescriptor2.getNumber()) {
                    throw new DescriptorValidationException(fieldDescriptor2, "Field number " + fieldDescriptor2.getNumber() + " has already been used in \"" + fieldDescriptor2.o().c() + "\" by field \"" + fieldDescriptor.d() + "\".", (a) null);
                }
                i9 = i10;
            }
        }

        @Override // com.google.protobuf.Descriptors.f
        public FileDescriptor b() {
            return this.f14567d;
        }

        @Override // com.google.protobuf.Descriptors.f
        public String c() {
            return this.f14566c;
        }

        @Override // com.google.protobuf.Descriptors.f
        public String d() {
            return this.f14565b.getName();
        }

        public FieldDescriptor i(String str) {
            c cVar = this.f14567d.f14561h;
            f c10 = cVar.c(this.f14566c + JwtParser.SEPARATOR_CHAR + str);
            if (c10 instanceof FieldDescriptor) {
                return (FieldDescriptor) c10;
            }
            return null;
        }

        public FieldDescriptor j(int i9) {
            FieldDescriptor[] fieldDescriptorArr = this.f14572i;
            return (FieldDescriptor) Descriptors.j(fieldDescriptorArr, fieldDescriptorArr.length, FieldDescriptor.f14539n, i9);
        }

        public List<d> k() {
            return Collections.unmodifiableList(Arrays.asList(this.f14570g));
        }

        public List<FieldDescriptor> l() {
            return Collections.unmodifiableList(Arrays.asList(this.f14573j));
        }

        public List<FieldDescriptor> m() {
            return Collections.unmodifiableList(Arrays.asList(this.f14571h));
        }

        public List<b> o() {
            return Collections.unmodifiableList(Arrays.asList(this.f14569f));
        }

        public List<i> p() {
            return Collections.unmodifiableList(Arrays.asList(this.f14574k));
        }

        public DescriptorProtos.MessageOptions q() {
            return this.f14565b.getOptions();
        }

        public boolean r() {
            return !this.f14565b.getExtensionRangeList().isEmpty();
        }

        public boolean s(int i9) {
            int binarySearch = Arrays.binarySearch(this.f14576m, i9);
            if (binarySearch < 0) {
                binarySearch = (~binarySearch) - 1;
            }
            return binarySearch >= 0 && i9 < this.f14577n[binarySearch];
        }

        @Override // com.google.protobuf.Descriptors.f
        /* renamed from: u */
        public DescriptorProtos.DescriptorProto e() {
            return this.f14565b;
        }

        b(String str) throws DescriptorValidationException {
            super(null);
            String str2;
            String str3;
            int lastIndexOf = str.lastIndexOf(46);
            if (lastIndexOf != -1) {
                str3 = str.substring(lastIndexOf + 1);
                str2 = str.substring(0, lastIndexOf);
            } else {
                str2 = "";
                str3 = str;
            }
            this.f14564a = 0;
            this.f14565b = DescriptorProtos.DescriptorProto.newBuilder().J0(str3).W(DescriptorProtos.DescriptorProto.ExtensionRange.newBuilder().n0(1).l0(536870912).build()).build();
            this.f14566c = str;
            this.f14568e = null;
            this.f14569f = Descriptors.f14534c;
            this.f14570g = Descriptors.f14536e;
            this.f14571h = Descriptors.f14535d;
            this.f14572i = Descriptors.f14535d;
            this.f14573j = Descriptors.f14535d;
            this.f14574k = Descriptors.f14538g;
            this.f14575l = 0;
            this.f14567d = new FileDescriptor(str2, this);
            this.f14576m = new int[]{1};
            this.f14577n = new int[]{536870912};
        }

        private b(DescriptorProtos.DescriptorProto descriptorProto, FileDescriptor fileDescriptor, b bVar, int i9) throws DescriptorValidationException {
            super(null);
            i[] iVarArr;
            b[] bVarArr;
            d[] dVarArr;
            FieldDescriptor[] fieldDescriptorArr;
            FieldDescriptor[] fieldDescriptorArr2;
            this.f14564a = i9;
            this.f14565b = descriptorProto;
            this.f14566c = Descriptors.k(fileDescriptor, bVar, descriptorProto.getName());
            this.f14567d = fileDescriptor;
            this.f14568e = bVar;
            if (descriptorProto.getOneofDeclCount() > 0) {
                iVarArr = new i[descriptorProto.getOneofDeclCount()];
            } else {
                iVarArr = Descriptors.f14538g;
            }
            this.f14574k = iVarArr;
            int i10 = 0;
            for (int i11 = 0; i11 < descriptorProto.getOneofDeclCount(); i11++) {
                this.f14574k[i11] = new i(descriptorProto.getOneofDecl(i11), fileDescriptor, this, i11, null);
            }
            if (descriptorProto.getNestedTypeCount() > 0) {
                bVarArr = new b[descriptorProto.getNestedTypeCount()];
            } else {
                bVarArr = Descriptors.f14534c;
            }
            this.f14569f = bVarArr;
            for (int i12 = 0; i12 < descriptorProto.getNestedTypeCount(); i12++) {
                this.f14569f[i12] = new b(descriptorProto.getNestedType(i12), fileDescriptor, this, i12);
            }
            if (descriptorProto.getEnumTypeCount() > 0) {
                dVarArr = new d[descriptorProto.getEnumTypeCount()];
            } else {
                dVarArr = Descriptors.f14536e;
            }
            this.f14570g = dVarArr;
            for (int i13 = 0; i13 < descriptorProto.getEnumTypeCount(); i13++) {
                this.f14570g[i13] = new d(descriptorProto.getEnumType(i13), fileDescriptor, this, i13, null);
            }
            if (descriptorProto.getFieldCount() > 0) {
                fieldDescriptorArr = new FieldDescriptor[descriptorProto.getFieldCount()];
            } else {
                fieldDescriptorArr = Descriptors.f14535d;
            }
            this.f14571h = fieldDescriptorArr;
            for (int i14 = 0; i14 < descriptorProto.getFieldCount(); i14++) {
                this.f14571h[i14] = new FieldDescriptor(descriptorProto.getField(i14), fileDescriptor, this, i14, false, null);
            }
            this.f14572i = descriptorProto.getFieldCount() > 0 ? (FieldDescriptor[]) this.f14571h.clone() : Descriptors.f14535d;
            if (descriptorProto.getExtensionCount() > 0) {
                fieldDescriptorArr2 = new FieldDescriptor[descriptorProto.getExtensionCount()];
            } else {
                fieldDescriptorArr2 = Descriptors.f14535d;
            }
            this.f14573j = fieldDescriptorArr2;
            for (int i15 = 0; i15 < descriptorProto.getExtensionCount(); i15++) {
                this.f14573j[i15] = new FieldDescriptor(descriptorProto.getExtension(i15), fileDescriptor, this, i15, true, null);
            }
            for (int i16 = 0; i16 < descriptorProto.getOneofDeclCount(); i16++) {
                i[] iVarArr2 = this.f14574k;
                iVarArr2[i16].f14618g = new FieldDescriptor[iVarArr2[i16].l()];
                this.f14574k[i16].f14617f = 0;
            }
            for (int i17 = 0; i17 < descriptorProto.getFieldCount(); i17++) {
                i m10 = this.f14571h[i17].m();
                if (m10 != null) {
                    m10.f14618g[i.i(m10)] = this.f14571h[i17];
                }
            }
            int i18 = 0;
            for (i iVar : this.f14574k) {
                if (iVar.p()) {
                    i18++;
                } else if (i18 > 0) {
                    throw new DescriptorValidationException(this, "Synthetic oneofs must come last.", (a) null);
                }
            }
            this.f14575l = this.f14574k.length - i18;
            fileDescriptor.f14561h.b(this);
            if (descriptorProto.getExtensionRangeCount() > 0) {
                this.f14576m = new int[descriptorProto.getExtensionRangeCount()];
                this.f14577n = new int[descriptorProto.getExtensionRangeCount()];
                for (DescriptorProtos.DescriptorProto.ExtensionRange extensionRange : descriptorProto.getExtensionRangeList()) {
                    this.f14576m[i10] = extensionRange.getStart();
                    this.f14577n[i10] = extensionRange.getEnd();
                    i10++;
                }
                Arrays.sort(this.f14576m);
                Arrays.sort(this.f14577n);
                return;
            }
            this.f14576m = Descriptors.f14533b;
            this.f14577n = Descriptors.f14533b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final Set<FileDescriptor> f14578a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f14579b;

        /* renamed from: c  reason: collision with root package name */
        private final Map<String, f> f14580c = new HashMap();

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public static final class a extends f {

            /* renamed from: a  reason: collision with root package name */
            private final String f14581a;

            /* renamed from: b  reason: collision with root package name */
            private final String f14582b;

            /* renamed from: c  reason: collision with root package name */
            private final FileDescriptor f14583c;

            a(String str, String str2, FileDescriptor fileDescriptor) {
                super(null);
                this.f14583c = fileDescriptor;
                this.f14582b = str2;
                this.f14581a = str;
            }

            @Override // com.google.protobuf.Descriptors.f
            public FileDescriptor b() {
                return this.f14583c;
            }

            @Override // com.google.protobuf.Descriptors.f
            public String c() {
                return this.f14582b;
            }

            @Override // com.google.protobuf.Descriptors.f
            public String d() {
                return this.f14581a;
            }

            @Override // com.google.protobuf.Descriptors.f
            public l1 e() {
                return this.f14583c.e();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public enum b {
            TYPES_ONLY,
            AGGREGATES_ONLY,
            ALL_SYMBOLS
        }

        c(FileDescriptor[] fileDescriptorArr, boolean z10) {
            this.f14578a = Collections.newSetFromMap(new IdentityHashMap(fileDescriptorArr.length));
            this.f14579b = z10;
            for (FileDescriptor fileDescriptor : fileDescriptorArr) {
                this.f14578a.add(fileDescriptor);
                e(fileDescriptor);
            }
            for (FileDescriptor fileDescriptor2 : this.f14578a) {
                try {
                    a(fileDescriptor2.p(), fileDescriptor2);
                } catch (DescriptorValidationException e10) {
                    throw new AssertionError(e10);
                }
            }
        }

        private void e(FileDescriptor fileDescriptor) {
            for (FileDescriptor fileDescriptor2 : fileDescriptor.q()) {
                if (this.f14578a.add(fileDescriptor2)) {
                    e(fileDescriptor2);
                }
            }
        }

        static void i(f fVar) throws DescriptorValidationException {
            String d10 = fVar.d();
            if (d10.length() != 0) {
                for (int i9 = 0; i9 < d10.length(); i9++) {
                    char charAt = d10.charAt(i9);
                    if (('a' > charAt || charAt > 'z') && (('A' > charAt || charAt > 'Z') && charAt != '_' && ('0' > charAt || charAt > '9' || i9 <= 0))) {
                        throw new DescriptorValidationException(fVar, Typography.quote + d10 + "\" is not a valid identifier.", (a) null);
                    }
                }
                return;
            }
            throw new DescriptorValidationException(fVar, "Missing name.", (a) null);
        }

        void a(String str, FileDescriptor fileDescriptor) throws DescriptorValidationException {
            String substring;
            int lastIndexOf = str.lastIndexOf(46);
            if (lastIndexOf == -1) {
                substring = str;
            } else {
                a(str.substring(0, lastIndexOf), fileDescriptor);
                substring = str.substring(lastIndexOf + 1);
            }
            f put = this.f14580c.put(str, new a(substring, str, fileDescriptor));
            if (put != null) {
                this.f14580c.put(str, put);
                if (put instanceof a) {
                    return;
                }
                throw new DescriptorValidationException(fileDescriptor, Typography.quote + substring + "\" is already defined (as something other than a package) in file \"" + put.b().d() + "\".", (a) null);
            }
        }

        void b(f fVar) throws DescriptorValidationException {
            i(fVar);
            String c10 = fVar.c();
            f put = this.f14580c.put(c10, fVar);
            if (put != null) {
                this.f14580c.put(c10, put);
                if (fVar.b() == put.b()) {
                    int lastIndexOf = c10.lastIndexOf(46);
                    if (lastIndexOf == -1) {
                        throw new DescriptorValidationException(fVar, Typography.quote + c10 + "\" is already defined.", (a) null);
                    }
                    throw new DescriptorValidationException(fVar, Typography.quote + c10.substring(lastIndexOf + 1) + "\" is already defined in \"" + c10.substring(0, lastIndexOf) + "\".", (a) null);
                }
                throw new DescriptorValidationException(fVar, Typography.quote + c10 + "\" is already defined in file \"" + put.b().d() + "\".", (a) null);
            }
        }

        f c(String str) {
            return d(str, b.ALL_SYMBOLS);
        }

        f d(String str, b bVar) {
            f fVar = this.f14580c.get(str);
            if (fVar == null || !(bVar == b.ALL_SYMBOLS || ((bVar == b.TYPES_ONLY && g(fVar)) || (bVar == b.AGGREGATES_ONLY && f(fVar))))) {
                for (FileDescriptor fileDescriptor : this.f14578a) {
                    f fVar2 = fileDescriptor.f14561h.f14580c.get(str);
                    if (fVar2 != null && (bVar == b.ALL_SYMBOLS || ((bVar == b.TYPES_ONLY && g(fVar2)) || (bVar == b.AGGREGATES_ONLY && f(fVar2))))) {
                        return fVar2;
                    }
                }
                return null;
            }
            return fVar;
        }

        boolean f(f fVar) {
            return (fVar instanceof b) || (fVar instanceof d) || (fVar instanceof a) || (fVar instanceof j);
        }

        boolean g(f fVar) {
            return (fVar instanceof b) || (fVar instanceof d);
        }

        f h(String str, f fVar, b bVar) throws DescriptorValidationException {
            f d10;
            String str2;
            if (str.startsWith(".")) {
                str2 = str.substring(1);
                d10 = d(str2, bVar);
            } else {
                int indexOf = str.indexOf(46);
                String substring = indexOf == -1 ? str : str.substring(0, indexOf);
                StringBuilder sb2 = new StringBuilder(fVar.c());
                while (true) {
                    int lastIndexOf = sb2.lastIndexOf(".");
                    if (lastIndexOf == -1) {
                        d10 = d(str, bVar);
                        str2 = str;
                        break;
                    }
                    int i9 = lastIndexOf + 1;
                    sb2.setLength(i9);
                    sb2.append(substring);
                    f d11 = d(sb2.toString(), b.AGGREGATES_ONLY);
                    if (d11 != null) {
                        if (indexOf != -1) {
                            sb2.setLength(i9);
                            sb2.append(str);
                            d10 = d(sb2.toString(), bVar);
                        } else {
                            d10 = d11;
                        }
                        str2 = sb2.toString();
                    } else {
                        sb2.setLength(lastIndexOf);
                    }
                }
            }
            if (d10 == null) {
                if (this.f14579b && bVar == b.TYPES_ONLY) {
                    Logger logger = Descriptors.f14532a;
                    logger.warning("The descriptor for message type \"" + str + "\" can not be found and a placeholder is created for it");
                    b bVar2 = new b(str2);
                    this.f14578a.add(bVar2.b());
                    return bVar2;
                }
                throw new DescriptorValidationException(fVar, Typography.quote + str + "\" is not defined.", (a) null);
            }
            return d10;
        }
    }

    /* loaded from: classes3.dex */
    public static final class d extends f implements u0.d<e> {

        /* renamed from: a  reason: collision with root package name */
        private final int f14588a;

        /* renamed from: b  reason: collision with root package name */
        private DescriptorProtos.EnumDescriptorProto f14589b;

        /* renamed from: c  reason: collision with root package name */
        private final String f14590c;

        /* renamed from: d  reason: collision with root package name */
        private final FileDescriptor f14591d;

        /* renamed from: e  reason: collision with root package name */
        private final b f14592e;

        /* renamed from: f  reason: collision with root package name */
        private final e[] f14593f;

        /* renamed from: g  reason: collision with root package name */
        private final e[] f14594g;

        /* renamed from: h  reason: collision with root package name */
        private final int f14595h;

        /* renamed from: i  reason: collision with root package name */
        private Map<Integer, WeakReference<e>> f14596i;

        /* renamed from: j  reason: collision with root package name */
        private ReferenceQueue<e> f14597j;

        /* loaded from: classes3.dex */
        private static class a extends WeakReference<e> {

            /* renamed from: a  reason: collision with root package name */
            private final int f14598a;

            /* synthetic */ a(int i9, e eVar, a aVar) {
                this(i9, eVar);
            }

            private a(int i9, e eVar) {
                super(eVar);
                this.f14598a = i9;
            }
        }

        /* synthetic */ d(DescriptorProtos.EnumDescriptorProto enumDescriptorProto, FileDescriptor fileDescriptor, b bVar, int i9, a aVar) throws DescriptorValidationException {
            this(enumDescriptorProto, fileDescriptor, bVar, i9);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void l(DescriptorProtos.EnumDescriptorProto enumDescriptorProto) {
            this.f14589b = enumDescriptorProto;
            int i9 = 0;
            while (true) {
                e[] eVarArr = this.f14593f;
                if (i9 >= eVarArr.length) {
                    return;
                }
                eVarArr[i9].i(enumDescriptorProto.getValue(i9));
                i9++;
            }
        }

        @Override // com.google.protobuf.Descriptors.f
        public FileDescriptor b() {
            return this.f14591d;
        }

        @Override // com.google.protobuf.Descriptors.f
        public String c() {
            return this.f14590c;
        }

        @Override // com.google.protobuf.Descriptors.f
        public String d() {
            return this.f14589b.getName();
        }

        public e h(String str) {
            c cVar = this.f14591d.f14561h;
            f c10 = cVar.c(this.f14590c + JwtParser.SEPARATOR_CHAR + str);
            if (c10 instanceof e) {
                return (e) c10;
            }
            return null;
        }

        @Override // com.google.protobuf.u0.d
        /* renamed from: i */
        public e a(int i9) {
            return (e) Descriptors.j(this.f14594g, this.f14595h, e.f14600f, i9);
        }

        public e j(int i9) {
            e eVar;
            e a10 = a(i9);
            if (a10 != null) {
                return a10;
            }
            synchronized (this) {
                if (this.f14597j == null) {
                    this.f14597j = new ReferenceQueue<>();
                    this.f14596i = new HashMap();
                } else {
                    while (true) {
                        a aVar = (a) this.f14597j.poll();
                        if (aVar == null) {
                            break;
                        }
                        this.f14596i.remove(Integer.valueOf(aVar.f14598a));
                    }
                }
                WeakReference<e> weakReference = this.f14596i.get(Integer.valueOf(i9));
                eVar = weakReference == null ? null : weakReference.get();
                if (eVar == null) {
                    eVar = new e(this, Integer.valueOf(i9), null);
                    this.f14596i.put(Integer.valueOf(i9), new a(i9, eVar, null));
                }
            }
            return eVar;
        }

        public List<e> k() {
            return Collections.unmodifiableList(Arrays.asList(this.f14593f));
        }

        @Override // com.google.protobuf.Descriptors.f
        /* renamed from: m */
        public DescriptorProtos.EnumDescriptorProto e() {
            return this.f14589b;
        }

        private d(DescriptorProtos.EnumDescriptorProto enumDescriptorProto, FileDescriptor fileDescriptor, b bVar, int i9) throws DescriptorValidationException {
            super(null);
            this.f14596i = null;
            this.f14597j = null;
            this.f14588a = i9;
            this.f14589b = enumDescriptorProto;
            this.f14590c = Descriptors.k(fileDescriptor, bVar, enumDescriptorProto.getName());
            this.f14591d = fileDescriptor;
            this.f14592e = bVar;
            if (enumDescriptorProto.getValueCount() != 0) {
                this.f14593f = new e[enumDescriptorProto.getValueCount()];
                int i10 = 0;
                for (int i11 = 0; i11 < enumDescriptorProto.getValueCount(); i11++) {
                    this.f14593f[i11] = new e(enumDescriptorProto.getValue(i11), fileDescriptor, this, i11, null);
                }
                e[] eVarArr = (e[]) this.f14593f.clone();
                this.f14594g = eVarArr;
                Arrays.sort(eVarArr, e.f14599e);
                for (int i12 = 1; i12 < enumDescriptorProto.getValueCount(); i12++) {
                    e[] eVarArr2 = this.f14594g;
                    e eVar = eVarArr2[i10];
                    e eVar2 = eVarArr2[i12];
                    if (eVar.getNumber() != eVar2.getNumber()) {
                        i10++;
                        this.f14594g[i10] = eVar2;
                    }
                }
                int i13 = i10 + 1;
                this.f14595h = i13;
                Arrays.fill(this.f14594g, i13, enumDescriptorProto.getValueCount(), (Object) null);
                fileDescriptor.f14561h.b(this);
                return;
            }
            throw new DescriptorValidationException(this, "Enums must contain at least one value.", (a) null);
        }
    }

    /* loaded from: classes3.dex */
    public static final class e extends f implements u0.c {

        /* renamed from: e  reason: collision with root package name */
        static final Comparator<e> f14599e = new a();

        /* renamed from: f  reason: collision with root package name */
        static final h<e> f14600f = new b();

        /* renamed from: a  reason: collision with root package name */
        private final int f14601a;

        /* renamed from: b  reason: collision with root package name */
        private DescriptorProtos.EnumValueDescriptorProto f14602b;

        /* renamed from: c  reason: collision with root package name */
        private final String f14603c;

        /* renamed from: d  reason: collision with root package name */
        private final d f14604d;

        /* loaded from: classes3.dex */
        static class a implements Comparator<e> {
            a() {
            }

            @Override // java.util.Comparator
            /* renamed from: a */
            public int compare(e eVar, e eVar2) {
                return Integer.compare(eVar.getNumber(), eVar2.getNumber());
            }
        }

        /* loaded from: classes3.dex */
        static class b implements h<e> {
            b() {
            }

            @Override // com.google.protobuf.Descriptors.h
            /* renamed from: b */
            public int a(e eVar) {
                return eVar.getNumber();
            }
        }

        /* synthetic */ e(DescriptorProtos.EnumValueDescriptorProto enumValueDescriptorProto, FileDescriptor fileDescriptor, d dVar, int i9, a aVar) throws DescriptorValidationException {
            this(enumValueDescriptorProto, fileDescriptor, dVar, i9);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void i(DescriptorProtos.EnumValueDescriptorProto enumValueDescriptorProto) {
            this.f14602b = enumValueDescriptorProto;
        }

        @Override // com.google.protobuf.Descriptors.f
        public FileDescriptor b() {
            return this.f14604d.f14591d;
        }

        @Override // com.google.protobuf.Descriptors.f
        public String c() {
            return this.f14603c;
        }

        @Override // com.google.protobuf.Descriptors.f
        public String d() {
            return this.f14602b.getName();
        }

        public int g() {
            return this.f14601a;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.f14602b.getNumber();
        }

        public d h() {
            return this.f14604d;
        }

        @Override // com.google.protobuf.Descriptors.f
        /* renamed from: j */
        public DescriptorProtos.EnumValueDescriptorProto e() {
            return this.f14602b;
        }

        public String toString() {
            return this.f14602b.getName();
        }

        /* synthetic */ e(d dVar, Integer num, a aVar) {
            this(dVar, num);
        }

        private e(DescriptorProtos.EnumValueDescriptorProto enumValueDescriptorProto, FileDescriptor fileDescriptor, d dVar, int i9) throws DescriptorValidationException {
            super(null);
            this.f14601a = i9;
            this.f14602b = enumValueDescriptorProto;
            this.f14604d = dVar;
            this.f14603c = dVar.c() + JwtParser.SEPARATOR_CHAR + enumValueDescriptorProto.getName();
            fileDescriptor.f14561h.b(this);
        }

        private e(d dVar, Integer num) {
            super(null);
            DescriptorProtos.EnumValueDescriptorProto build = DescriptorProtos.EnumValueDescriptorProto.newBuilder().m0("UNKNOWN_ENUM_VALUE_" + dVar.d() + "_" + num).n0(num.intValue()).build();
            this.f14601a = -1;
            this.f14602b = build;
            this.f14604d = dVar;
            this.f14603c = dVar.c() + JwtParser.SEPARATOR_CHAR + build.getName();
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class f {
        private f() {
        }

        /* synthetic */ f(a aVar) {
            this();
        }

        public abstract FileDescriptor b();

        public abstract String c();

        public abstract String d();

        public abstract l1 e();
    }

    /* loaded from: classes3.dex */
    public static final class g extends f {

        /* renamed from: a  reason: collision with root package name */
        private final int f14605a;

        /* renamed from: b  reason: collision with root package name */
        private DescriptorProtos.MethodDescriptorProto f14606b;

        /* renamed from: c  reason: collision with root package name */
        private final String f14607c;

        /* renamed from: d  reason: collision with root package name */
        private final FileDescriptor f14608d;

        /* renamed from: e  reason: collision with root package name */
        private final j f14609e;

        /* renamed from: f  reason: collision with root package name */
        private b f14610f;

        /* renamed from: g  reason: collision with root package name */
        private b f14611g;

        /* synthetic */ g(DescriptorProtos.MethodDescriptorProto methodDescriptorProto, FileDescriptor fileDescriptor, j jVar, int i9, a aVar) throws DescriptorValidationException {
            this(methodDescriptorProto, fileDescriptor, jVar, i9);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h() throws DescriptorValidationException {
            c cVar = b().f14561h;
            String inputType = this.f14606b.getInputType();
            c.b bVar = c.b.TYPES_ONLY;
            f h10 = cVar.h(inputType, this, bVar);
            if (h10 instanceof b) {
                this.f14610f = (b) h10;
                f h11 = b().f14561h.h(this.f14606b.getOutputType(), this, bVar);
                if (h11 instanceof b) {
                    this.f14611g = (b) h11;
                    return;
                }
                throw new DescriptorValidationException(this, Typography.quote + this.f14606b.getOutputType() + "\" is not a message type.", (a) null);
            }
            throw new DescriptorValidationException(this, Typography.quote + this.f14606b.getInputType() + "\" is not a message type.", (a) null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void i(DescriptorProtos.MethodDescriptorProto methodDescriptorProto) {
            this.f14606b = methodDescriptorProto;
        }

        @Override // com.google.protobuf.Descriptors.f
        public FileDescriptor b() {
            return this.f14608d;
        }

        @Override // com.google.protobuf.Descriptors.f
        public String c() {
            return this.f14607c;
        }

        @Override // com.google.protobuf.Descriptors.f
        public String d() {
            return this.f14606b.getName();
        }

        @Override // com.google.protobuf.Descriptors.f
        /* renamed from: j */
        public DescriptorProtos.MethodDescriptorProto e() {
            return this.f14606b;
        }

        private g(DescriptorProtos.MethodDescriptorProto methodDescriptorProto, FileDescriptor fileDescriptor, j jVar, int i9) throws DescriptorValidationException {
            super(null);
            this.f14605a = i9;
            this.f14606b = methodDescriptorProto;
            this.f14608d = fileDescriptor;
            this.f14609e = jVar;
            this.f14607c = jVar.c() + JwtParser.SEPARATOR_CHAR + methodDescriptorProto.getName();
            fileDescriptor.f14561h.b(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public interface h<T> {
        int a(T t10);
    }

    /* loaded from: classes3.dex */
    public static final class i extends f {

        /* renamed from: a  reason: collision with root package name */
        private final int f14612a;

        /* renamed from: b  reason: collision with root package name */
        private DescriptorProtos.OneofDescriptorProto f14613b;

        /* renamed from: c  reason: collision with root package name */
        private final String f14614c;

        /* renamed from: d  reason: collision with root package name */
        private final FileDescriptor f14615d;

        /* renamed from: e  reason: collision with root package name */
        private b f14616e;

        /* renamed from: f  reason: collision with root package name */
        private int f14617f;

        /* renamed from: g  reason: collision with root package name */
        private FieldDescriptor[] f14618g;

        /* synthetic */ i(DescriptorProtos.OneofDescriptorProto oneofDescriptorProto, FileDescriptor fileDescriptor, b bVar, int i9, a aVar) throws DescriptorValidationException {
            this(oneofDescriptorProto, fileDescriptor, bVar, i9);
        }

        static /* synthetic */ int i(i iVar) {
            int i9 = iVar.f14617f;
            iVar.f14617f = i9 + 1;
            return i9;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void q(DescriptorProtos.OneofDescriptorProto oneofDescriptorProto) {
            this.f14613b = oneofDescriptorProto;
        }

        @Override // com.google.protobuf.Descriptors.f
        public FileDescriptor b() {
            return this.f14615d;
        }

        @Override // com.google.protobuf.Descriptors.f
        public String c() {
            return this.f14614c;
        }

        @Override // com.google.protobuf.Descriptors.f
        public String d() {
            return this.f14613b.getName();
        }

        public b k() {
            return this.f14616e;
        }

        public int l() {
            return this.f14617f;
        }

        public List<FieldDescriptor> m() {
            return Collections.unmodifiableList(Arrays.asList(this.f14618g));
        }

        public int o() {
            return this.f14612a;
        }

        public boolean p() {
            FieldDescriptor[] fieldDescriptorArr = this.f14618g;
            return fieldDescriptorArr.length == 1 && fieldDescriptorArr[0].f14547g;
        }

        @Override // com.google.protobuf.Descriptors.f
        /* renamed from: r */
        public DescriptorProtos.OneofDescriptorProto e() {
            return this.f14613b;
        }

        private i(DescriptorProtos.OneofDescriptorProto oneofDescriptorProto, FileDescriptor fileDescriptor, b bVar, int i9) throws DescriptorValidationException {
            super(null);
            this.f14613b = oneofDescriptorProto;
            this.f14614c = Descriptors.k(fileDescriptor, bVar, oneofDescriptorProto.getName());
            this.f14615d = fileDescriptor;
            this.f14612a = i9;
            this.f14616e = bVar;
            this.f14617f = 0;
        }
    }

    /* loaded from: classes3.dex */
    public static final class j extends f {

        /* renamed from: a  reason: collision with root package name */
        private final int f14619a;

        /* renamed from: b  reason: collision with root package name */
        private DescriptorProtos.ServiceDescriptorProto f14620b;

        /* renamed from: c  reason: collision with root package name */
        private final String f14621c;

        /* renamed from: d  reason: collision with root package name */
        private final FileDescriptor f14622d;

        /* renamed from: e  reason: collision with root package name */
        private g[] f14623e;

        /* synthetic */ j(DescriptorProtos.ServiceDescriptorProto serviceDescriptorProto, FileDescriptor fileDescriptor, int i9, a aVar) throws DescriptorValidationException {
            this(serviceDescriptorProto, fileDescriptor, i9);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h() throws DescriptorValidationException {
            for (g gVar : this.f14623e) {
                gVar.h();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void i(DescriptorProtos.ServiceDescriptorProto serviceDescriptorProto) {
            this.f14620b = serviceDescriptorProto;
            int i9 = 0;
            while (true) {
                g[] gVarArr = this.f14623e;
                if (i9 >= gVarArr.length) {
                    return;
                }
                gVarArr[i9].i(serviceDescriptorProto.getMethod(i9));
                i9++;
            }
        }

        @Override // com.google.protobuf.Descriptors.f
        public FileDescriptor b() {
            return this.f14622d;
        }

        @Override // com.google.protobuf.Descriptors.f
        public String c() {
            return this.f14621c;
        }

        @Override // com.google.protobuf.Descriptors.f
        public String d() {
            return this.f14620b.getName();
        }

        @Override // com.google.protobuf.Descriptors.f
        /* renamed from: j */
        public DescriptorProtos.ServiceDescriptorProto e() {
            return this.f14620b;
        }

        private j(DescriptorProtos.ServiceDescriptorProto serviceDescriptorProto, FileDescriptor fileDescriptor, int i9) throws DescriptorValidationException {
            super(null);
            this.f14619a = i9;
            this.f14620b = serviceDescriptorProto;
            this.f14621c = Descriptors.k(fileDescriptor, null, serviceDescriptorProto.getName());
            this.f14622d = fileDescriptor;
            this.f14623e = new g[serviceDescriptorProto.getMethodCount()];
            for (int i10 = 0; i10 < serviceDescriptorProto.getMethodCount(); i10++) {
                this.f14623e[i10] = new g(serviceDescriptorProto.getMethod(i10), fileDescriptor, this, i10, null);
            }
            fileDescriptor.f14561h.b(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> T j(T[] tArr, int i9, h<T> hVar, int i10) {
        int i11 = i9 - 1;
        int i12 = 0;
        while (i12 <= i11) {
            int i13 = (i12 + i11) / 2;
            T t10 = tArr[i13];
            int a10 = hVar.a(t10);
            if (i10 < a10) {
                i11 = i13 - 1;
            } else if (i10 <= a10) {
                return t10;
            } else {
                i12 = i13 + 1;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String k(FileDescriptor fileDescriptor, b bVar, String str) {
        if (bVar != null) {
            return bVar.c() + JwtParser.SEPARATOR_CHAR + str;
        }
        String p10 = fileDescriptor.p();
        if (p10.isEmpty()) {
            return str;
        }
        return p10 + JwtParser.SEPARATOR_CHAR + str;
    }

    /* loaded from: classes3.dex */
    public static final class FileDescriptor extends f {

        /* renamed from: a  reason: collision with root package name */
        private DescriptorProtos.FileDescriptorProto f14554a;

        /* renamed from: b  reason: collision with root package name */
        private final b[] f14555b;

        /* renamed from: c  reason: collision with root package name */
        private final d[] f14556c;

        /* renamed from: d  reason: collision with root package name */
        private final j[] f14557d;

        /* renamed from: e  reason: collision with root package name */
        private final FieldDescriptor[] f14558e;

        /* renamed from: f  reason: collision with root package name */
        private final FileDescriptor[] f14559f;

        /* renamed from: g  reason: collision with root package name */
        private final FileDescriptor[] f14560g;

        /* renamed from: h  reason: collision with root package name */
        private final c f14561h;

        /* loaded from: classes3.dex */
        public enum Syntax {
            UNKNOWN("unknown"),
            PROTO2("proto2"),
            PROTO3("proto3");
            
            private final String name;

            Syntax(String str) {
                this.name = str;
            }
        }

        @Deprecated
        /* loaded from: classes3.dex */
        public interface a {
            d0 a(FileDescriptor fileDescriptor);
        }

        private FileDescriptor(DescriptorProtos.FileDescriptorProto fileDescriptorProto, FileDescriptor[] fileDescriptorArr, c cVar, boolean z10) throws DescriptorValidationException {
            super(null);
            b[] bVarArr;
            d[] dVarArr;
            j[] jVarArr;
            FieldDescriptor[] fieldDescriptorArr;
            this.f14561h = cVar;
            this.f14554a = fileDescriptorProto;
            this.f14559f = (FileDescriptor[]) fileDescriptorArr.clone();
            HashMap hashMap = new HashMap();
            for (FileDescriptor fileDescriptor : fileDescriptorArr) {
                hashMap.put(fileDescriptor.d(), fileDescriptor);
            }
            ArrayList arrayList = new ArrayList();
            for (int i9 = 0; i9 < fileDescriptorProto.getPublicDependencyCount(); i9++) {
                int publicDependency = fileDescriptorProto.getPublicDependency(i9);
                if (publicDependency >= 0 && publicDependency < fileDescriptorProto.getDependencyCount()) {
                    String dependency = fileDescriptorProto.getDependency(publicDependency);
                    FileDescriptor fileDescriptor2 = (FileDescriptor) hashMap.get(dependency);
                    if (fileDescriptor2 != null) {
                        arrayList.add(fileDescriptor2);
                    } else if (!z10) {
                        throw new DescriptorValidationException(this, "Invalid public dependency: " + dependency, (a) null);
                    }
                } else {
                    throw new DescriptorValidationException(this, "Invalid public dependency index.", (a) null);
                }
            }
            FileDescriptor[] fileDescriptorArr2 = new FileDescriptor[arrayList.size()];
            this.f14560g = fileDescriptorArr2;
            arrayList.toArray(fileDescriptorArr2);
            cVar.a(p(), this);
            if (fileDescriptorProto.getMessageTypeCount() > 0) {
                bVarArr = new b[fileDescriptorProto.getMessageTypeCount()];
            } else {
                bVarArr = Descriptors.f14534c;
            }
            this.f14555b = bVarArr;
            for (int i10 = 0; i10 < fileDescriptorProto.getMessageTypeCount(); i10++) {
                this.f14555b[i10] = new b(fileDescriptorProto.getMessageType(i10), this, null, i10, null);
            }
            if (fileDescriptorProto.getEnumTypeCount() > 0) {
                dVarArr = new d[fileDescriptorProto.getEnumTypeCount()];
            } else {
                dVarArr = Descriptors.f14536e;
            }
            this.f14556c = dVarArr;
            for (int i11 = 0; i11 < fileDescriptorProto.getEnumTypeCount(); i11++) {
                this.f14556c[i11] = new d(fileDescriptorProto.getEnumType(i11), this, null, i11, null);
            }
            if (fileDescriptorProto.getServiceCount() > 0) {
                jVarArr = new j[fileDescriptorProto.getServiceCount()];
            } else {
                jVarArr = Descriptors.f14537f;
            }
            this.f14557d = jVarArr;
            for (int i12 = 0; i12 < fileDescriptorProto.getServiceCount(); i12++) {
                this.f14557d[i12] = new j(fileDescriptorProto.getService(i12), this, i12, null);
            }
            if (fileDescriptorProto.getExtensionCount() > 0) {
                fieldDescriptorArr = new FieldDescriptor[fileDescriptorProto.getExtensionCount()];
            } else {
                fieldDescriptorArr = Descriptors.f14535d;
            }
            this.f14558e = fieldDescriptorArr;
            for (int i13 = 0; i13 < fileDescriptorProto.getExtensionCount(); i13++) {
                this.f14558e[i13] = new FieldDescriptor(fileDescriptorProto.getExtension(i13), this, null, i13, true, null);
            }
        }

        public static FileDescriptor g(DescriptorProtos.FileDescriptorProto fileDescriptorProto, FileDescriptor[] fileDescriptorArr, boolean z10) throws DescriptorValidationException {
            FileDescriptor fileDescriptor = new FileDescriptor(fileDescriptorProto, fileDescriptorArr, new c(fileDescriptorArr, z10), z10);
            fileDescriptor.h();
            return fileDescriptor;
        }

        private void h() throws DescriptorValidationException {
            for (b bVar : this.f14555b) {
                bVar.h();
            }
            for (j jVar : this.f14557d) {
                jVar.h();
            }
            for (FieldDescriptor fieldDescriptor : this.f14558e) {
                fieldDescriptor.k();
            }
        }

        public static FileDescriptor s(String[] strArr, FileDescriptor[] fileDescriptorArr) {
            DescriptorProtos.FileDescriptorProto fileDescriptorProto;
            try {
                try {
                    return g(DescriptorProtos.FileDescriptorProto.parseFrom(v(strArr)), fileDescriptorArr, true);
                } catch (DescriptorValidationException e10) {
                    throw new IllegalArgumentException("Invalid embedded descriptor for \"" + fileDescriptorProto.getName() + "\".", e10);
                }
            } catch (InvalidProtocolBufferException e11) {
                throw new IllegalArgumentException("Failed to parse protocol buffer descriptor for generated code.", e11);
            }
        }

        @Deprecated
        public static void t(String[] strArr, FileDescriptor[] fileDescriptorArr, a aVar) {
            byte[] v10 = v(strArr);
            try {
                DescriptorProtos.FileDescriptorProto parseFrom = DescriptorProtos.FileDescriptorProto.parseFrom(v10);
                try {
                    FileDescriptor g10 = g(parseFrom, fileDescriptorArr, true);
                    d0 a10 = aVar.a(g10);
                    if (a10 != null) {
                        try {
                            g10.w(DescriptorProtos.FileDescriptorProto.parseFrom(v10, a10));
                        } catch (InvalidProtocolBufferException e10) {
                            throw new IllegalArgumentException("Failed to parse protocol buffer descriptor for generated code.", e10);
                        }
                    }
                } catch (DescriptorValidationException e11) {
                    throw new IllegalArgumentException("Invalid embedded descriptor for \"" + parseFrom.getName() + "\".", e11);
                }
            } catch (InvalidProtocolBufferException e12) {
                throw new IllegalArgumentException("Failed to parse protocol buffer descriptor for generated code.", e12);
            }
        }

        public static void u(FileDescriptor fileDescriptor, d0 d0Var) {
            try {
                fileDescriptor.w(DescriptorProtos.FileDescriptorProto.parseFrom(fileDescriptor.f14554a.toByteString(), d0Var));
            } catch (InvalidProtocolBufferException e10) {
                throw new IllegalArgumentException("Failed to parse protocol buffer descriptor for generated code.", e10);
            }
        }

        private static byte[] v(String[] strArr) {
            if (strArr.length == 1) {
                return strArr[0].getBytes(u0.f15285c);
            }
            StringBuilder sb2 = new StringBuilder();
            for (String str : strArr) {
                sb2.append(str);
            }
            return sb2.toString().getBytes(u0.f15285c);
        }

        private void w(DescriptorProtos.FileDescriptorProto fileDescriptorProto) {
            this.f14554a = fileDescriptorProto;
            int i9 = 0;
            int i10 = 0;
            while (true) {
                b[] bVarArr = this.f14555b;
                if (i10 >= bVarArr.length) {
                    break;
                }
                bVarArr[i10].t(fileDescriptorProto.getMessageType(i10));
                i10++;
            }
            int i11 = 0;
            while (true) {
                d[] dVarArr = this.f14556c;
                if (i11 >= dVarArr.length) {
                    break;
                }
                dVarArr[i11].l(fileDescriptorProto.getEnumType(i11));
                i11++;
            }
            int i12 = 0;
            while (true) {
                j[] jVarArr = this.f14557d;
                if (i12 >= jVarArr.length) {
                    break;
                }
                jVarArr[i12].i(fileDescriptorProto.getService(i12));
                i12++;
            }
            while (true) {
                FieldDescriptor[] fieldDescriptorArr = this.f14558e;
                if (i9 >= fieldDescriptorArr.length) {
                    return;
                }
                fieldDescriptorArr[i9].L(fileDescriptorProto.getExtension(i9));
                i9++;
            }
        }

        @Override // com.google.protobuf.Descriptors.f
        public FileDescriptor b() {
            return this;
        }

        @Override // com.google.protobuf.Descriptors.f
        public String c() {
            return this.f14554a.getName();
        }

        @Override // com.google.protobuf.Descriptors.f
        public String d() {
            return this.f14554a.getName();
        }

        public FieldDescriptor i(String str) {
            if (str.indexOf(46) != -1) {
                return null;
            }
            String p10 = p();
            if (!p10.isEmpty()) {
                str = p10 + JwtParser.SEPARATOR_CHAR + str;
            }
            f c10 = this.f14561h.c(str);
            if ((c10 instanceof FieldDescriptor) && c10.b() == this) {
                return (FieldDescriptor) c10;
            }
            return null;
        }

        public List<FileDescriptor> j() {
            return Collections.unmodifiableList(Arrays.asList(this.f14559f));
        }

        public List<d> k() {
            return Collections.unmodifiableList(Arrays.asList(this.f14556c));
        }

        public List<FieldDescriptor> l() {
            return Collections.unmodifiableList(Arrays.asList(this.f14558e));
        }

        public List<b> m() {
            return Collections.unmodifiableList(Arrays.asList(this.f14555b));
        }

        public DescriptorProtos.FileOptions o() {
            return this.f14554a.getOptions();
        }

        public String p() {
            return this.f14554a.getPackage();
        }

        public List<FileDescriptor> q() {
            return Collections.unmodifiableList(Arrays.asList(this.f14560g));
        }

        public Syntax r() {
            Syntax syntax = Syntax.PROTO3;
            return syntax.name.equals(this.f14554a.getSyntax()) ? syntax : Syntax.PROTO2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean x() {
            return r() == Syntax.PROTO3;
        }

        @Override // com.google.protobuf.Descriptors.f
        /* renamed from: y */
        public DescriptorProtos.FileDescriptorProto e() {
            return this.f14554a;
        }

        FileDescriptor(String str, b bVar) throws DescriptorValidationException {
            super(null);
            c cVar = new c(new FileDescriptor[0], true);
            this.f14561h = cVar;
            DescriptorProtos.FileDescriptorProto.b newBuilder = DescriptorProtos.FileDescriptorProto.newBuilder();
            this.f14554a = newBuilder.I0(bVar.c() + ".placeholder.proto").J0(str).W(bVar.e()).build();
            this.f14559f = new FileDescriptor[0];
            this.f14560g = new FileDescriptor[0];
            this.f14555b = new b[]{bVar};
            this.f14556c = Descriptors.f14536e;
            this.f14557d = Descriptors.f14537f;
            this.f14558e = Descriptors.f14535d;
            cVar.a(str, this);
            cVar.b(bVar);
        }
    }
}
