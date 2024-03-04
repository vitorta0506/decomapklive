package io.grpc.xds.shaded.udpa.annotations;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.DescriptorProtos;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.c;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.r1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class Migrate {

    /* renamed from: a  reason: collision with root package name */
    public static final GeneratedMessage.l<DescriptorProtos.MessageOptions, MigrateAnnotation> f50817a;

    /* renamed from: b  reason: collision with root package name */
    public static final GeneratedMessage.l<DescriptorProtos.FieldOptions, FieldMigrateAnnotation> f50818b;

    /* renamed from: c  reason: collision with root package name */
    public static final GeneratedMessage.l<DescriptorProtos.EnumOptions, MigrateAnnotation> f50819c;

    /* renamed from: d  reason: collision with root package name */
    public static final GeneratedMessage.l<DescriptorProtos.EnumValueOptions, MigrateAnnotation> f50820d;

    /* renamed from: e  reason: collision with root package name */
    public static final GeneratedMessage.l<DescriptorProtos.FileOptions, FileMigrateAnnotation> f50821e;

    /* renamed from: f  reason: collision with root package name */
    private static final Descriptors.b f50822f;

    /* renamed from: g  reason: collision with root package name */
    private static final GeneratedMessageV3.e f50823g;

    /* renamed from: h  reason: collision with root package name */
    private static final Descriptors.b f50824h;

    /* renamed from: i  reason: collision with root package name */
    private static final GeneratedMessageV3.e f50825i;

    /* renamed from: j  reason: collision with root package name */
    private static final Descriptors.b f50826j;

    /* renamed from: k  reason: collision with root package name */
    private static final GeneratedMessageV3.e f50827k;

    /* renamed from: l  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50828l;

    /* loaded from: classes5.dex */
    public static final class FieldMigrateAnnotation extends GeneratedMessageV3 implements r1 {
        public static final int ONEOF_PROMOTION_FIELD_NUMBER = 2;
        public static final int RENAME_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private volatile Object oneofPromotion_;
        private volatile Object rename_;
        private static final FieldMigrateAnnotation DEFAULT_INSTANCE = new FieldMigrateAnnotation();
        private static final e2<FieldMigrateAnnotation> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends c<FieldMigrateAnnotation> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public FieldMigrateAnnotation m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new FieldMigrateAnnotation(pVar, f0Var);
            }
        }

        public static FieldMigrateAnnotation getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return Migrate.f50824h;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static FieldMigrateAnnotation parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (FieldMigrateAnnotation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static FieldMigrateAnnotation parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<FieldMigrateAnnotation> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof FieldMigrateAnnotation)) {
                return super.equals(obj);
            }
            FieldMigrateAnnotation fieldMigrateAnnotation = (FieldMigrateAnnotation) obj;
            return getRename().equals(fieldMigrateAnnotation.getRename()) && getOneofPromotion().equals(fieldMigrateAnnotation.getOneofPromotion()) && this.unknownFields.equals(fieldMigrateAnnotation.unknownFields);
        }

        public String getOneofPromotion() {
            Object obj = this.oneofPromotion_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.oneofPromotion_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getOneofPromotionBytes() {
            Object obj = this.oneofPromotion_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.oneofPromotion_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<FieldMigrateAnnotation> getParserForType() {
            return PARSER;
        }

        public String getRename() {
            Object obj = this.rename_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.rename_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getRenameBytes() {
            Object obj = this.rename_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.rename_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.rename_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.rename_);
            if (!GeneratedMessageV3.isStringEmpty(this.oneofPromotion_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(2, this.oneofPromotion_);
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
            int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getRename().hashCode()) * 37) + 2) * 53) + getOneofPromotion().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return Migrate.f50825i.d(FieldMigrateAnnotation.class, b.class);
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
            return new FieldMigrateAnnotation();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.rename_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.rename_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.oneofPromotion_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.oneofPromotion_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements r1 {

            /* renamed from: e  reason: collision with root package name */
            private Object f50829e;

            /* renamed from: f  reason: collision with root package name */
            private Object f50830f;

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return Migrate.f50825i.d(FieldMigrateAnnotation.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public FieldMigrateAnnotation build() {
                FieldMigrateAnnotation I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public FieldMigrateAnnotation I() {
                FieldMigrateAnnotation fieldMigrateAnnotation = new FieldMigrateAnnotation(this);
                fieldMigrateAnnotation.rename_ = this.f50829e;
                fieldMigrateAnnotation.oneofPromotion_ = this.f50830f;
                Q();
                return fieldMigrateAnnotation;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public FieldMigrateAnnotation getDefaultInstanceForType() {
                return FieldMigrateAnnotation.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.udpa.annotations.Migrate.FieldMigrateAnnotation.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.udpa.annotations.Migrate.FieldMigrateAnnotation.access$2000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.udpa.annotations.Migrate$FieldMigrateAnnotation r3 = (io.grpc.xds.shaded.udpa.annotations.Migrate.FieldMigrateAnnotation) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.udpa.annotations.Migrate$FieldMigrateAnnotation r4 = (io.grpc.xds.shaded.udpa.annotations.Migrate.FieldMigrateAnnotation) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.udpa.annotations.Migrate.FieldMigrateAnnotation.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.udpa.annotations.Migrate$FieldMigrateAnnotation$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof FieldMigrateAnnotation) {
                    return g0((FieldMigrateAnnotation) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(FieldMigrateAnnotation fieldMigrateAnnotation) {
                if (fieldMigrateAnnotation == FieldMigrateAnnotation.getDefaultInstance()) {
                    return this;
                }
                if (!fieldMigrateAnnotation.getRename().isEmpty()) {
                    this.f50829e = fieldMigrateAnnotation.rename_;
                    R();
                }
                if (!fieldMigrateAnnotation.getOneofPromotion().isEmpty()) {
                    this.f50830f = fieldMigrateAnnotation.oneofPromotion_;
                    R();
                }
                z(((GeneratedMessageV3) fieldMigrateAnnotation).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return Migrate.f50824h;
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

            private b() {
                this.f50829e = "";
                this.f50830f = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50829e = "";
                this.f50830f = "";
                b0();
            }
        }

        public static b newBuilder(FieldMigrateAnnotation fieldMigrateAnnotation) {
            return DEFAULT_INSTANCE.toBuilder().g0(fieldMigrateAnnotation);
        }

        public static FieldMigrateAnnotation parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private FieldMigrateAnnotation(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static FieldMigrateAnnotation parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (FieldMigrateAnnotation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static FieldMigrateAnnotation parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public FieldMigrateAnnotation getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b() : new b().g0(this);
        }

        public static FieldMigrateAnnotation parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private FieldMigrateAnnotation() {
            this.memoizedIsInitialized = (byte) -1;
            this.rename_ = "";
            this.oneofPromotion_ = "";
        }

        public static FieldMigrateAnnotation parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar);
        }

        public static FieldMigrateAnnotation parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static FieldMigrateAnnotation parseFrom(InputStream inputStream) throws IOException {
            return (FieldMigrateAnnotation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private FieldMigrateAnnotation(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L == 10) {
                                    this.rename_ = pVar.K();
                                } else if (L != 18) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.oneofPromotion_ = pVar.K();
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
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static FieldMigrateAnnotation parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (FieldMigrateAnnotation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static FieldMigrateAnnotation parseFrom(p pVar) throws IOException {
            return (FieldMigrateAnnotation) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static FieldMigrateAnnotation parseFrom(p pVar, f0 f0Var) throws IOException {
            return (FieldMigrateAnnotation) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class FileMigrateAnnotation extends GeneratedMessageV3 implements r1 {
        public static final int MOVE_TO_PACKAGE_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private volatile Object moveToPackage_;
        private static final FileMigrateAnnotation DEFAULT_INSTANCE = new FileMigrateAnnotation();
        private static final e2<FileMigrateAnnotation> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends c<FileMigrateAnnotation> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public FileMigrateAnnotation m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new FileMigrateAnnotation(pVar, f0Var);
            }
        }

        public static FileMigrateAnnotation getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return Migrate.f50826j;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static FileMigrateAnnotation parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (FileMigrateAnnotation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static FileMigrateAnnotation parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<FileMigrateAnnotation> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof FileMigrateAnnotation)) {
                return super.equals(obj);
            }
            FileMigrateAnnotation fileMigrateAnnotation = (FileMigrateAnnotation) obj;
            return getMoveToPackage().equals(fileMigrateAnnotation.getMoveToPackage()) && this.unknownFields.equals(fileMigrateAnnotation.unknownFields);
        }

        public String getMoveToPackage() {
            Object obj = this.moveToPackage_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.moveToPackage_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getMoveToPackageBytes() {
            Object obj = this.moveToPackage_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.moveToPackage_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<FileMigrateAnnotation> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = (GeneratedMessageV3.isStringEmpty(this.moveToPackage_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(2, this.moveToPackage_)) + this.unknownFields.getSerializedSize();
            this.memoizedSize = computeStringSize;
            return computeStringSize;
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
            int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 2) * 53) + getMoveToPackage().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return Migrate.f50827k.d(FileMigrateAnnotation.class, b.class);
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
            return new FileMigrateAnnotation();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.moveToPackage_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.moveToPackage_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements r1 {

            /* renamed from: e  reason: collision with root package name */
            private Object f50831e;

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return Migrate.f50827k.d(FileMigrateAnnotation.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public FileMigrateAnnotation build() {
                FileMigrateAnnotation I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public FileMigrateAnnotation I() {
                FileMigrateAnnotation fileMigrateAnnotation = new FileMigrateAnnotation(this);
                fileMigrateAnnotation.moveToPackage_ = this.f50831e;
                Q();
                return fileMigrateAnnotation;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public FileMigrateAnnotation getDefaultInstanceForType() {
                return FileMigrateAnnotation.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.udpa.annotations.Migrate.FileMigrateAnnotation.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.udpa.annotations.Migrate.FileMigrateAnnotation.access$3200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.udpa.annotations.Migrate$FileMigrateAnnotation r3 = (io.grpc.xds.shaded.udpa.annotations.Migrate.FileMigrateAnnotation) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.udpa.annotations.Migrate$FileMigrateAnnotation r4 = (io.grpc.xds.shaded.udpa.annotations.Migrate.FileMigrateAnnotation) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.udpa.annotations.Migrate.FileMigrateAnnotation.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.udpa.annotations.Migrate$FileMigrateAnnotation$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof FileMigrateAnnotation) {
                    return g0((FileMigrateAnnotation) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(FileMigrateAnnotation fileMigrateAnnotation) {
                if (fileMigrateAnnotation == FileMigrateAnnotation.getDefaultInstance()) {
                    return this;
                }
                if (!fileMigrateAnnotation.getMoveToPackage().isEmpty()) {
                    this.f50831e = fileMigrateAnnotation.moveToPackage_;
                    R();
                }
                z(((GeneratedMessageV3) fileMigrateAnnotation).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return Migrate.f50826j;
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

            private b() {
                this.f50831e = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50831e = "";
                b0();
            }
        }

        public static b newBuilder(FileMigrateAnnotation fileMigrateAnnotation) {
            return DEFAULT_INSTANCE.toBuilder().g0(fileMigrateAnnotation);
        }

        public static FileMigrateAnnotation parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private FileMigrateAnnotation(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static FileMigrateAnnotation parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (FileMigrateAnnotation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static FileMigrateAnnotation parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public FileMigrateAnnotation getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b() : new b().g0(this);
        }

        public static FileMigrateAnnotation parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private FileMigrateAnnotation() {
            this.memoizedIsInitialized = (byte) -1;
            this.moveToPackage_ = "";
        }

        public static FileMigrateAnnotation parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar);
        }

        public static FileMigrateAnnotation parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static FileMigrateAnnotation parseFrom(InputStream inputStream) throws IOException {
            return (FileMigrateAnnotation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private FileMigrateAnnotation(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.moveToPackage_ = pVar.K();
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

        public static FileMigrateAnnotation parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (FileMigrateAnnotation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static FileMigrateAnnotation parseFrom(p pVar) throws IOException {
            return (FileMigrateAnnotation) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static FileMigrateAnnotation parseFrom(p pVar, f0 f0Var) throws IOException {
            return (FileMigrateAnnotation) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class MigrateAnnotation extends GeneratedMessageV3 implements r1 {
        private static final MigrateAnnotation DEFAULT_INSTANCE = new MigrateAnnotation();
        private static final e2<MigrateAnnotation> PARSER = new a();
        public static final int RENAME_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private volatile Object rename_;

        /* loaded from: classes5.dex */
        class a extends c<MigrateAnnotation> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public MigrateAnnotation m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new MigrateAnnotation(pVar, f0Var);
            }
        }

        public static MigrateAnnotation getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return Migrate.f50822f;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MigrateAnnotation parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (MigrateAnnotation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static MigrateAnnotation parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<MigrateAnnotation> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MigrateAnnotation)) {
                return super.equals(obj);
            }
            MigrateAnnotation migrateAnnotation = (MigrateAnnotation) obj;
            return getRename().equals(migrateAnnotation.getRename()) && this.unknownFields.equals(migrateAnnotation.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<MigrateAnnotation> getParserForType() {
            return PARSER;
        }

        public String getRename() {
            Object obj = this.rename_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.rename_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getRenameBytes() {
            Object obj = this.rename_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.rename_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = (GeneratedMessageV3.isStringEmpty(this.rename_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.rename_)) + this.unknownFields.getSerializedSize();
            this.memoizedSize = computeStringSize;
            return computeStringSize;
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
            int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getRename().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return Migrate.f50823g.d(MigrateAnnotation.class, b.class);
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
            return new MigrateAnnotation();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.rename_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.rename_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements r1 {

            /* renamed from: e  reason: collision with root package name */
            private Object f50832e;

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return Migrate.f50823g.d(MigrateAnnotation.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public MigrateAnnotation build() {
                MigrateAnnotation I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public MigrateAnnotation I() {
                MigrateAnnotation migrateAnnotation = new MigrateAnnotation(this);
                migrateAnnotation.rename_ = this.f50832e;
                Q();
                return migrateAnnotation;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public MigrateAnnotation getDefaultInstanceForType() {
                return MigrateAnnotation.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.udpa.annotations.Migrate.MigrateAnnotation.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.udpa.annotations.Migrate.MigrateAnnotation.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.udpa.annotations.Migrate$MigrateAnnotation r3 = (io.grpc.xds.shaded.udpa.annotations.Migrate.MigrateAnnotation) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.udpa.annotations.Migrate$MigrateAnnotation r4 = (io.grpc.xds.shaded.udpa.annotations.Migrate.MigrateAnnotation) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.udpa.annotations.Migrate.MigrateAnnotation.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.udpa.annotations.Migrate$MigrateAnnotation$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof MigrateAnnotation) {
                    return g0((MigrateAnnotation) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(MigrateAnnotation migrateAnnotation) {
                if (migrateAnnotation == MigrateAnnotation.getDefaultInstance()) {
                    return this;
                }
                if (!migrateAnnotation.getRename().isEmpty()) {
                    this.f50832e = migrateAnnotation.rename_;
                    R();
                }
                z(((GeneratedMessageV3) migrateAnnotation).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return Migrate.f50822f;
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

            private b() {
                this.f50832e = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50832e = "";
                b0();
            }
        }

        public static b newBuilder(MigrateAnnotation migrateAnnotation) {
            return DEFAULT_INSTANCE.toBuilder().g0(migrateAnnotation);
        }

        public static MigrateAnnotation parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private MigrateAnnotation(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MigrateAnnotation parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (MigrateAnnotation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static MigrateAnnotation parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public MigrateAnnotation getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b() : new b().g0(this);
        }

        public static MigrateAnnotation parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private MigrateAnnotation() {
            this.memoizedIsInitialized = (byte) -1;
            this.rename_ = "";
        }

        public static MigrateAnnotation parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar);
        }

        public static MigrateAnnotation parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static MigrateAnnotation parseFrom(InputStream inputStream) throws IOException {
            return (MigrateAnnotation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private MigrateAnnotation(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.rename_ = pVar.K();
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

        public static MigrateAnnotation parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (MigrateAnnotation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static MigrateAnnotation parseFrom(p pVar) throws IOException {
            return (MigrateAnnotation) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static MigrateAnnotation parseFrom(p pVar, f0 f0Var) throws IOException {
            return (MigrateAnnotation) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    static {
        GeneratedMessage.l<DescriptorProtos.MessageOptions, MigrateAnnotation> newFileScopedGeneratedExtension = GeneratedMessage.newFileScopedGeneratedExtension(MigrateAnnotation.class, MigrateAnnotation.getDefaultInstance());
        f50817a = newFileScopedGeneratedExtension;
        GeneratedMessage.l<DescriptorProtos.FieldOptions, FieldMigrateAnnotation> newFileScopedGeneratedExtension2 = GeneratedMessage.newFileScopedGeneratedExtension(FieldMigrateAnnotation.class, FieldMigrateAnnotation.getDefaultInstance());
        f50818b = newFileScopedGeneratedExtension2;
        GeneratedMessage.l<DescriptorProtos.EnumOptions, MigrateAnnotation> newFileScopedGeneratedExtension3 = GeneratedMessage.newFileScopedGeneratedExtension(MigrateAnnotation.class, MigrateAnnotation.getDefaultInstance());
        f50819c = newFileScopedGeneratedExtension3;
        GeneratedMessage.l<DescriptorProtos.EnumValueOptions, MigrateAnnotation> newFileScopedGeneratedExtension4 = GeneratedMessage.newFileScopedGeneratedExtension(MigrateAnnotation.class, MigrateAnnotation.getDefaultInstance());
        f50820d = newFileScopedGeneratedExtension4;
        GeneratedMessage.l<DescriptorProtos.FileOptions, FileMigrateAnnotation> newFileScopedGeneratedExtension5 = GeneratedMessage.newFileScopedGeneratedExtension(FileMigrateAnnotation.class, FileMigrateAnnotation.getDefaultInstance());
        f50821e = newFileScopedGeneratedExtension5;
        f50828l = Descriptors.FileDescriptor.s(new String[]{"\n\u001eudpa/annotations/migrate.proto\u0012\u0010udpa.annotations\u001a google/protobuf/descriptor.proto\"#\n\u0011MigrateAnnotation\u0012\u000e\n\u0006rename\u0018\u0001 \u0001(\t\"A\n\u0016FieldMigrateAnnotation\u0012\u000e\n\u0006rename\u0018\u0001 \u0001(\t\u0012\u0017\n\u000foneof_promotion\u0018\u0002 \u0001(\t\"0\n\u0015FileMigrateAnnotation\u0012\u0017\n\u000fmove_to_package\u0018\u0002 \u0001(\t:`\n\u000fmessage_migrate\u0012\u001f.google.protobuf.MessageOptions\u0018\u008eãÿQ \u0001(\u000b2#.udpa.annotations.MigrateAnnotation:a\n\rfield_migrate\u0012\u001d.google.protobuf.FieldOptions\u0018\u008eãÿQ \u0001(\u000b2(.udpa.annotations.FieldMigrateAnnotation:Z\n\fenum_migrate\u0012\u001c.google.protobuf.EnumOptions\u0018\u008eãÿQ \u0001(\u000b2#.udpa.annotations.MigrateAnnotation:e\n\u0012enum_value_migrate\u0012!.google.protobuf.EnumValueOptions\u0018\u008eãÿQ \u0001(\u000b2#.udpa.annotations.MigrateAnnotation:^\n\ffile_migrate\u0012\u001c.google.protobuf.FileOptions\u0018\u008eãÿQ \u0001(\u000b2'.udpa.annotations.FileMigrateAnnotationB$Z\"github.com/cncf/xds/go/annotationsb\u0006proto3"}, new Descriptors.FileDescriptor[]{DescriptorProtos.c0()});
        Descriptors.b bVar = g().m().get(0);
        f50822f = bVar;
        f50823g = new GeneratedMessageV3.e(bVar, new String[]{"Rename"});
        Descriptors.b bVar2 = g().m().get(1);
        f50824h = bVar2;
        f50825i = new GeneratedMessageV3.e(bVar2, new String[]{"Rename", "OneofPromotion"});
        Descriptors.b bVar3 = g().m().get(2);
        f50826j = bVar3;
        f50827k = new GeneratedMessageV3.e(bVar3, new String[]{"MoveToPackage"});
        newFileScopedGeneratedExtension.g(f50828l.l().get(0));
        newFileScopedGeneratedExtension2.g(f50828l.l().get(1));
        newFileScopedGeneratedExtension3.g(f50828l.l().get(2));
        newFileScopedGeneratedExtension4.g(f50828l.l().get(3));
        newFileScopedGeneratedExtension5.g(f50828l.l().get(4));
        DescriptorProtos.c0();
    }

    public static Descriptors.FileDescriptor g() {
        return f50828l;
    }
}
