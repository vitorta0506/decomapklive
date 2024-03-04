package com.google.cloud.speech.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.r1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class CustomClass extends GeneratedMessageV3 implements com.google.cloud.speech.v1.a {
    public static final int CUSTOM_CLASS_ID_FIELD_NUMBER = 2;
    public static final int ITEMS_FIELD_NUMBER = 3;
    public static final int NAME_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private volatile Object customClassId_;
    private List<ClassItem> items_;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private static final CustomClass DEFAULT_INSTANCE = new CustomClass();
    private static final e2<CustomClass> PARSER = new a();

    /* loaded from: classes2.dex */
    public static final class ClassItem extends GeneratedMessageV3 implements c {
        private static final ClassItem DEFAULT_INSTANCE = new ClassItem();
        private static final e2<ClassItem> PARSER = new a();
        public static final int VALUE_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private volatile Object value_;

        /* loaded from: classes2.dex */
        static class a extends com.google.protobuf.c<ClassItem> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public ClassItem m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new ClassItem(pVar, f0Var, null);
            }
        }

        /* loaded from: classes2.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private Object f11824e;

            /* synthetic */ b(a aVar) {
                this();
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return m.f11992d.d(ClassItem.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public ClassItem build() {
                ClassItem I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public ClassItem I() {
                ClassItem classItem = new ClassItem(this, (a) null);
                classItem.value_ = this.f11824e;
                Q();
                return classItem;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public ClassItem getDefaultInstanceForType() {
                return ClassItem.getDefaultInstance();
            }

            public b d0(ClassItem classItem) {
                if (classItem == ClassItem.getDefaultInstance()) {
                    return this;
                }
                if (!classItem.getValue().isEmpty()) {
                    this.f11824e = classItem.value_;
                    R();
                }
                z(((GeneratedMessageV3) classItem).unknownFields);
                R();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.google.cloud.speech.v1.CustomClass.ClassItem.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = com.google.cloud.speech.v1.CustomClass.ClassItem.access$600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.google.cloud.speech.v1.CustomClass$ClassItem r3 = (com.google.cloud.speech.v1.CustomClass.ClassItem) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.d0(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    com.google.cloud.speech.v1.CustomClass$ClassItem r4 = (com.google.cloud.speech.v1.CustomClass.ClassItem) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.d0(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1.CustomClass.ClassItem.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1.CustomClass$ClassItem$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof ClassItem) {
                    return d0((ClassItem) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return m.f11991c;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: i0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: j0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private b() {
                this.f11824e = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f11824e = "";
                b0();
            }
        }

        /* synthetic */ ClassItem(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static ClassItem getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return m.f11991c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ClassItem parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ClassItem) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ClassItem parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<ClassItem> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ClassItem)) {
                return super.equals(obj);
            }
            ClassItem classItem = (ClassItem) obj;
            return getValue().equals(classItem.getValue()) && this.unknownFields.equals(classItem.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<ClassItem> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = (GeneratedMessageV3.isStringEmpty(this.value_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.value_)) + this.unknownFields.getSerializedSize();
            this.memoizedSize = computeStringSize;
            return computeStringSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public String getValue() {
            Object obj = this.value_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.value_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getValueBytes() {
            Object obj = this.value_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.value_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getValue().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return m.f11992d.d(ClassItem.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.p1
        public final boolean isInitialized() {
            byte b10 = this.memoizedIsInitialized;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new ClassItem();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.value_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.value_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ ClassItem(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(ClassItem classItem) {
            return DEFAULT_INSTANCE.toBuilder().d0(classItem);
        }

        public static ClassItem parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (ClassItem) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static ClassItem parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private ClassItem(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ClassItem parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public ClassItem getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).d0(this);
        }

        public static ClassItem parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private ClassItem() {
            this.memoizedIsInitialized = (byte) -1;
            this.value_ = "";
        }

        public static ClassItem parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static ClassItem parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static ClassItem parseFrom(InputStream inputStream) throws IOException {
            return (ClassItem) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private ClassItem(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L != 10) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.value_ = pVar.K();
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static ClassItem parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (ClassItem) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static ClassItem parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (ClassItem) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static ClassItem parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (ClassItem) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<CustomClass> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public CustomClass m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new CustomClass(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements com.google.cloud.speech.v1.a {

        /* renamed from: e  reason: collision with root package name */
        private int f11825e;

        /* renamed from: f  reason: collision with root package name */
        private Object f11826f;

        /* renamed from: g  reason: collision with root package name */
        private Object f11827g;

        /* renamed from: h  reason: collision with root package name */
        private List<ClassItem> f11828h;

        /* renamed from: i  reason: collision with root package name */
        private l2<ClassItem, ClassItem.b, c> f11829i;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f11825e & 1) == 0) {
                this.f11828h = new ArrayList(this.f11828h);
                this.f11825e |= 1;
            }
        }

        private l2<ClassItem, ClassItem.b, c> d0() {
            if (this.f11829i == null) {
                this.f11829i = new l2<>(this.f11828h, (this.f11825e & 1) != 0, H(), O());
                this.f11828h = null;
            }
            return this.f11829i;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return m.f11990b.d(CustomClass.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public CustomClass build() {
            CustomClass I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public CustomClass I() {
            CustomClass customClass = new CustomClass(this, (a) null);
            customClass.name_ = this.f11826f;
            customClass.customClassId_ = this.f11827g;
            l2<ClassItem, ClassItem.b, c> l2Var = this.f11829i;
            if (l2Var == null) {
                if ((this.f11825e & 1) != 0) {
                    this.f11828h = Collections.unmodifiableList(this.f11828h);
                    this.f11825e &= -2;
                }
                customClass.items_ = this.f11828h;
            } else {
                customClass.items_ = l2Var.e();
            }
            Q();
            return customClass;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public CustomClass getDefaultInstanceForType() {
            return CustomClass.getDefaultInstance();
        }

        public b g0(CustomClass customClass) {
            if (customClass == CustomClass.getDefaultInstance()) {
                return this;
            }
            if (!customClass.getName().isEmpty()) {
                this.f11826f = customClass.name_;
                R();
            }
            if (!customClass.getCustomClassId().isEmpty()) {
                this.f11827g = customClass.customClassId_;
                R();
            }
            if (this.f11829i == null) {
                if (!customClass.items_.isEmpty()) {
                    if (this.f11828h.isEmpty()) {
                        this.f11828h = customClass.items_;
                        this.f11825e &= -2;
                    } else {
                        a0();
                        this.f11828h.addAll(customClass.items_);
                    }
                    R();
                }
            } else if (!customClass.items_.isEmpty()) {
                if (this.f11829i.k()) {
                    this.f11829i.f();
                    this.f11829i = null;
                    this.f11828h = customClass.items_;
                    this.f11825e &= -2;
                    this.f11829i = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f11829i.b(customClass.items_);
                }
            }
            z(((GeneratedMessageV3) customClass).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return m.f11989a;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.cloud.speech.v1.CustomClass.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1.CustomClass.access$1800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1.CustomClass r3 = (com.google.cloud.speech.v1.CustomClass) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.g0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                com.google.cloud.speech.v1.CustomClass r4 = (com.google.cloud.speech.v1.CustomClass) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.g0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1.CustomClass.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1.CustomClass$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof CustomClass) {
                return g0((CustomClass) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f11826f = "";
            this.f11827g = "";
            this.f11828h = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f11826f = "";
            this.f11827g = "";
            this.f11828h = Collections.emptyList();
            e0();
        }
    }

    /* loaded from: classes2.dex */
    public interface c extends r1 {
    }

    /* synthetic */ CustomClass(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static CustomClass getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return m.f11989a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static CustomClass parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (CustomClass) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static CustomClass parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<CustomClass> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CustomClass)) {
            return super.equals(obj);
        }
        CustomClass customClass = (CustomClass) obj;
        return getName().equals(customClass.getName()) && getCustomClassId().equals(customClass.getCustomClassId()) && getItemsList().equals(customClass.getItemsList()) && this.unknownFields.equals(customClass.unknownFields);
    }

    public String getCustomClassId() {
        Object obj = this.customClassId_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.customClassId_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getCustomClassIdBytes() {
        Object obj = this.customClassId_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.customClassId_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public ClassItem getItems(int i9) {
        return this.items_.get(i9);
    }

    public int getItemsCount() {
        return this.items_.size();
    }

    public List<ClassItem> getItemsList() {
        return this.items_;
    }

    public c getItemsOrBuilder(int i9) {
        return this.items_.get(i9);
    }

    public List<? extends c> getItemsOrBuilderList() {
        return this.items_;
    }

    public String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getNameBytes() {
        Object obj = this.name_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<CustomClass> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.name_) ? GeneratedMessageV3.computeStringSize(1, this.name_) + 0 : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.customClassId_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.customClassId_);
        }
        for (int i10 = 0; i10 < this.items_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(3, this.items_.get(i10));
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + getCustomClassId().hashCode();
        if (getItemsCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getItemsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return m.f11990b.d(CustomClass.class, b.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.p1
    public final boolean isInitialized() {
        byte b10 = this.memoizedIsInitialized;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.f fVar) {
        return new CustomClass();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.customClassId_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.customClassId_);
        }
        for (int i9 = 0; i9 < this.items_.size(); i9++) {
            codedOutputStream.L0(3, this.items_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ CustomClass(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(CustomClass customClass) {
        return DEFAULT_INSTANCE.toBuilder().g0(customClass);
    }

    public static CustomClass parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (CustomClass) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static CustomClass parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private CustomClass(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static CustomClass parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public CustomClass getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static CustomClass parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private CustomClass() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.customClassId_ = "";
        this.items_ = Collections.emptyList();
    }

    public static CustomClass parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static CustomClass parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static CustomClass parseFrom(InputStream inputStream) throws IOException {
        return (CustomClass) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static CustomClass parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (CustomClass) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static CustomClass parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (CustomClass) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private CustomClass(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 10) {
                                this.name_ = pVar.K();
                            } else if (L == 18) {
                                this.customClassId_ = pVar.K();
                            } else if (L != 26) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.items_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.items_.add(pVar.B(ClassItem.parser(), f0Var));
                            }
                        }
                        z10 = true;
                    } catch (IOException e10) {
                        throw new InvalidProtocolBufferException(e10).setUnfinishedMessage(this);
                    }
                } catch (InvalidProtocolBufferException e11) {
                    throw e11.setUnfinishedMessage(this);
                }
            } finally {
                if (z11 & true) {
                    this.items_ = Collections.unmodifiableList(this.items_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static CustomClass parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (CustomClass) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
